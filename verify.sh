#!/bin/bash

# Bash script to verify that the syllabus passes the Travis build.
#
# Author: François De Keersmaeker


CONTAINER="syllabus"  # Name of the container

# Build the container
echo "Please wait while the container is built..."
sudo docker build -q -t $CONTAINER .

# Run the container with the travis script
sudo docker run --rm --name $CONTAINER -i -t -v $(pwd):/syllabus $CONTAINER ./travis.sh
RET_CODE=$?  # Save return value to check result of build

# Check result of build
echo
if [[ $RET_CODE -eq 0 ]]
then
    echo "The syllabus passed the tests !"
else
    echo "The syllabus failed the tests..."
fi
