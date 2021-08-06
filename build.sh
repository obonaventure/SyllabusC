#!/bin/bash

# Shell script to build and run the syllabus container.
#
# Author: François De Keersmaeker

# Name of the container
CONTAINER="syllabus"

sudo docker build -t $CONTAINER .
sudo docker run --rm --name $CONTAINER -i -t -v $(pwd):/syllabus $CONTAINER /bin/bash
