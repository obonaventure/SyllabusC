#!/bin/bash

# Bash script to be run by Travis CI,
# when a commit is pushed to the repository.
# This script is run into the syllabus container.

# Script return value: 0 if success, anything else if failed
RETURN=0

# If the file passed as argument indicates warnings,
# switch the return value of the script to 1.
# Then, delete the file.
#   :param $1: file to check for warnings
check_warnings () {
    if [[ $(grep WARNING $1) ]]; then
        RETURN=1
    fi
    rm -f $1
}

# Exit on error
set -e

# Go to the source directory for compilation
cd src


#####################
# CHECK COMPILATION #
#####################
echo -e "\n\n**** FULL COMPILATION - LATEXPDF, EPUB, HTML ****\n\n"
make


##################
# CHECK SPELLING #
##################
echo -e "\n\n**** SPELLING CHECK ****\n"

# Sphinx flags used here, not in with `make` compilation:
#  -n   Run in nit-picky mode. Currently, this generates warnings for all missing references.
#  -w   write warnings (and errors) to the given file, in addition to standard error.

# Theorie
cd Theorie
echo -e "\n**** Theorie ****\n"
sphinx-build -n -w log.txt -b spelling . /tmp
check_warnings log.txt

# Outils
cd ../Outils
echo -e "\n**** Outils ****\n"
sphinx-build -n -w log.txt -b spelling . /tmp
check_warnings log.txt

# Exercices
cd ../Exercices
echo -e "\n**** Exercices ****\n"
sphinx-build -n -w log.txt -b spelling . /tmp
check_warnings log.txt


###############
# CHECK LINKS #
###############
echo -e "\n\n**** LINKS CHECK ****\n"

# Sphinx flags used here, not in with `make` compilation:
#  -n   Run in nit-picky mode. Currently, this generates warnings for all missing references.
#  -w   write warnings (and errors) to the given file, in addition to standard error.

# Theorie
cd ../Theorie
echo -e "\n**** Theorie ****\n"
sphinx-build -n -w log.txt -b linkcheck . /tmp
check_warnings log.txt

# Outils
cd ../Outils
echo -e "\n**** Outils ****\n"
sphinx-build -n -w log.txt -b linkcheck . /tmp
check_warnings log.txt

# Exercices
cd ../Exercices
echo -e "\n**** Exercices ****\n"
sphinx-build -n -w log.txt -b linkcheck . /tmp
check_warnings log.txt


# End of script
cd ../../..
exit $RETURN
