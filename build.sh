#!/bin/bash

# Shell script to deploy the syllabus container,
# to compile the syllabus with Sphinx.
# Author: François De Keersmaeker

# Name of the container
CONTAINER="syllabus"

# Build container image
sudo docker build -t $CONTAINER .

# Get compilation option from command line argument
CMD=""
case $1 in
  lepl1503 | html | epub | latexpdf) CMD="make $1" ;;
  *) CMD=/bin/bash ;;
esac
echo $CMD

# Run container with command
sudo docker run --rm --name $CONTAINER -i -t -v $(pwd):/syllabus $CONTAINER $CMD
