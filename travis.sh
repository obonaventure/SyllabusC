#!/bin/bash

# Bash script to be run by Travis CI,
# when a commit is pushed to the repository.
# This script is run into the syllabus container.

# Exit on error
#set -e


#####################
# CHECK COMPILATION #
#####################
echo -e "\n**** FULL COMPILATION - LATEXPDF, EPUB, HTML ****\n"
make


##################
# CHECK SPELLING #
##################
echo -e "\n**** SPELLING CHECK ****\n"

# Sphinx flags used here, not in with `make` compilation:
#  -n   Run in nit-picky mode. Currently, this generates warnings for all missing references.
#  -W   Turn warnings into errors. This means that the build stops at the first warning and sphinx-build exits with exit status 1.
#  -T   output full traceback

# Theorie
cd Theorie
echo -e "\n**** Theorie ****\n"
sphinx-build -n -b spelling . /tmp

# Outils
cd ../Outils
echo -e "\n**** Outils ****\n"
sphinx-build -n -b spelling . /tmp

# Exercices
cd ../Exercices
echo -e "\n**** Exercices ****\n"
sphinx-build -n -b spelling . /tmp


###############
# CHECK LINKS #
###############
echo -e "\n**** LINKS CHECK ****\n"

# Sphinx flags used here, not in with `make` compilation:
#  -n   Run in nit-picky mode. Currently, this generates warnings for all missing references.
#  -W   Turn warnings into errors. This means that the build stops at the first warning and sphinx-build exits with exit status 1.
#  -T   output full traceback

# Theorie
cd ../Theorie
echo -e "\n**** Theorie ****\n"
sphinx-build -n -b linkcheck . /tmp

# Outils
cd ../Outils
echo -e "\n**** Outils ****\n"
sphinx-build -n -b linkcheck . /tmp

# Exercices
cd ../Exercices
echo -e "\n**** Exercices ****\n"
sphinx-build -n -b linkcheck . /tmp


# End of script
cd ../..
