# Python script to compile and deploy the syllabus
# 1. Get build info from Travis
# 2. Pull latest passing commit
# 3. Build syllabus with Sphinx
#
# Author: François De Keersmaeker

# Import packages
import subprocess, os, sys, shutil  # Base modules
import requests                     # HTTP requests
import yaml                         # YAML parsing


# Writes the error message on stderr
def error_message():
    error = """Please provide a valid compilation target:
    lepl1503   to compile the full syllabus in HTML, EPUB, and LaTeX PDF
    html       to make standalone HTML files
    dirhtml    to make HTML files named index.html in directories
    singlehtml to make a single large HTML file
    pickle     to make pickle files
    json       to make JSON files
    htmlhelp   to make HTML files and a HTML help project
    qthelp     to make HTML files and a qthelp project
    devhelp    to make HTML files and a Devhelp project
    epub       to make an epub
    latex      to make LaTeX files, you can set PAPER=a4 or PAPER=letter
    latexpdf   to make LaTeX files and run them through pdflatex
    text       to make text files
    man        to make manual pages
    texinfo    to make Texinfo files
    info       to make Texinfo files and run them through makeinfo
    gettext    to make PO message catalogs
    changes    to make an overview of all changed/added/deprecated items
    linkcheck  to check all external links for integrity
    doctest    to run all doctests embedded in the documentation (if enabled)\n"""
    sys.stderr.write(error)


#####################################
#      STAGE 0: INITIALISATION      #
# CHECK ARGUMENT & READ CONFIG FILE #
#####################################

# Possible compilation targets
POSSIBLE_TARGETS = ["", "lepl1503", "html", "dirhtml", "singlehtml", "pickle",
    "json", "htmlhelp", "qthelp", "devhelp", "epub", "latex", "latexpdf",
    "text", "man", "texinfo", "info", "gettext", "changes", "linkcheck",
    "doctest"]

container = "syllabus"  # Container name
target = sys.argv[1] if len(sys.argv) > 1 else ""  # First command line argument, make target
if target not in POSSIBLE_TARGETS:
    error_message()
    exit(-1)

# Welcome message to remind of the Travis token
print("""
Welcome to the LEPL1503 deployment script.
This script wil automatically pull the latest commit that passes the Travis build,
then compile the whole syllaus.
If you have not already done it, please first run the get_token.sh script
to get a Travis token, and copy this token to the config.yaml file,
in the field "travis_token".
Please also check, in the config.yaml file, the slug and clone URL of this repository.
(Please use the HTTPS URL as clone URL.)
""")

# Read YAML config file
yaml_file = "config.yaml"
config = {}
with open(yaml_file, 'r') as f:
    config = yaml.safe_load(f)


##############################
#       FIRST STAGE          #
# GET BUILD INFO FROM TRAVIS #
##############################

# Get Travis CLI token from config file
travis_token = config["travis_token"]

# Get repository slug from config file (replace '/' with HTML code for correct formatting)
repo_slug = config["repository"]["slug"].replace("/", "%2F")

# Build HTTP request to get builds info from Travis
travis_url = f"https://api.travis-ci.com/repo/{repo_slug}/builds"
headers = {
    "Travis-API-Version": "3",
    "Authorization": f"token {travis_token}"
}
json = requests.get(travis_url, headers=headers).json()

# Get latest passing build from Travis response
latest_build = ""
for build in json["builds"]:
    if build["state"] == "passed":
        latest_build = build
        break

##########################################
#              SECOND STAGE              #
# PULL LATEST PASSING COMMIT FROM GITHUB #
##########################################

clone_url = config["repository"]["clone_url"]
folder = "repo"  # Name of the folder where the repository will be cloned
subprocess.run(f"git clone {clone_url} {folder}", shell=True)  # Clone repo
os.chdir(folder)  # Go to cloned repo
commit_hash = latest_build["commit"]["sha"]  # Identifier of the latest passing commit
subprocess.run(f"git checkout {commit_hash}", shell=True)  # Go to latest passing commit


##############################
#         THIRD STAGE        #
# BUILD SYLLABUS WITH SPHINX #
##############################

# Build syllabus
subprocess.run(f"make {target} -C src", shell=True)
os.chdir("..")  # Go back to root folder
shutil.move("repo/web", "web")  # Move compiled syllabus in root folder
