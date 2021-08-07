#!/bin/bash

# Shell script to build and run the syllabus container.
#
# Author: François De Keersmaeker


CONTAINER="syllabus"  # Name of the container

sudo docker build -t $CONTAINER .
sudo docker run --rm --name $CONTAINER -i -t -v $(pwd):/syllabus $CONTAINER /bin/bash
