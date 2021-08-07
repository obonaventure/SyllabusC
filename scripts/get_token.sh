#!/bin/bash

# Bash script to login to Travis CI and get a token,
# to be used with the Travis REST API.
# ATTENTION: This script must be run inside the container !
#
# Author: François De Keersmaeker


# Welcome message: GitHub token
echo
echo "To login to Travis and generate a token, you first need" \
    "a GitHub token that will be used for login."
echo "Please go to https://github.com/settings/tokens to generate a GitHub token."
echo "You only need to give the 'repo' scope to the GitHub token."
echo "Then, please enter the GitHub token here to proceed:"

# Read GitHub token
read -p "> " GITHUB_TOKEN
echo "Login to Travis, please wait..."
travis login --pro --github-token $GITHUB_TOKEN --skip-completion-check
travis token --pro --skip-completion-check
echo
echo "Please paste this token in the file conf.yaml, " \
    "and check the repository slug and clone URL in this same file."
echo "You can now run the build script to build the syllabus."
echo

