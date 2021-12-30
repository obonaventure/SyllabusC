#!/bin/bash

# Bash script to set up the deployment of the syllabus,
# i.e. to get the Travis token.
#
# Author: François De Keersmaeker


CONTAINER="syllabus-setup"  # Name of the container

# Build the container
echo "Please wait while the container is built..."
sudo docker build -q -t $CONTAINER .

# Run the container with the get_token script
sudo docker run --rm --name $CONTAINER -i -t -v $(pwd):/syllabus $CONTAINER ./scripts/get_token.sh
