#!/bin/bash

# Bash script to login to Travis CI and get a token,
# to be used with the Travis REST API.
#
# Author: François De Keersmaeker

if [[ $# -eq 1 ]]
then
    travis login --pro --github-token $1 --skip-completion-check
    travis token --pro --skip-completion-check
else
    echo
    echo "To login to Travis and generate a token, you first need" \
        "a GitHub token that will be used for login."
    echo "Please go to https://github.com/settings/tokens to generate a GitHub token."
    echo "You only need to give the 'repo' scope to the GitHub token."
    echo "Then, re-run this script with the GitHub token as first command line argument."
    echo
fi
