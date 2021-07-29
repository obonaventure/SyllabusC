#!/bin/bash

# Shell script to deploy the syllabus container.
# Author: François De Keersmaeker

# Name of the container
CONTAINER="syllabus"
IMAGE_ID=""

# If the container still exists, remove it
LINE=$(sudo docker ps -a | grep $CONTAINER)
if [ ! -z "$LINE" ]
then
  sudo docker rm -f $CONTAINER
fi

# If old image exists, remove it
LINE=$(sudo docker images | grep $CONTAINER)
if [ ! -z "$LINE" ]
then
  # Old image still exists
  i=0
  for WORD in $LINE
  do
    if [ $i -eq 2 ]
    then
      IMAGE_ID=$WORD
      break
    fi
    i=$((i+1))
  done
  # Remove the old image
  sudo docker rmi $IMAGE_ID
fi

# Build container image
sudo docker build -t $CONTAINER .

# Run container
sudo docker run --name $CONTAINER -i -t $CONTAINER /bin/bash
