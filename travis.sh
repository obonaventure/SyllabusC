#!/bin/bash

# Bash script to be run by Travis CI,
# when a commit is pushed to the repository.
# This script is run into the syllabus container.

# Exit on error
set -e


#####################
# CHECK COMPILATION #
#####################
echo "**** FULL COMPILATION - LATEXPDF, EPUB, HTML ****"
make


##################
# CHECK SPELLING #
##################
echo "**** SPELLING CHECK ****"

# Sphinx flags used here, not in with `make` compilation:
#  -n   Run in nit-picky mode. Currently, this generates warnings for all missing references.
#  -W   Turn warnings into errors. This means that the build stops at the first warning and sphinx-build exits with exit status 1.
#  -T   output full traceback

# Theorie
cd Theorie
echo "**** Theorie ****"
sphinx-build -nWT -b spelling . /tmp

# Outils
cd ../Outils
echo "**** Outils ****"
sphinx-build -nWT -b spelling . /tmp

# Exercices
cd ../Exercices
echo "**** Exercices ****"
sphinx-build -nWT -b spelling . /tmp



# End of script
cd ../..
