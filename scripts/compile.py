# Python script to compile and deploy the syllabus
# 1. Get build info from Travis
# 2. Pull latest passing commit
# 3. Build syllabus with Sphinx
#
# ATTENTION: This script must be run inside the container !
#
# Author: François De Keersmaeker

# Import packages
import subprocess, os, sys, shutil  # Base modules
import requests                     # HTTP requests
import yaml                         # YAML parsing


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
target = sys.argv[1] of len(sys.argv) > 1 else ""  # Argument, make target
subprocess.run(f"make {target} -C src", shell=True)
os.chdir("..")  # Go back to root folder
shutil.move("repo/web", "web")  # Move compiled syllabus in root folder
