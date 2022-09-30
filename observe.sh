#!/bin/bash

# if you input command line argument,
# the argument is reflected in. 
readonly OBSERVED_FILE="serverless.yml"

if which fswatch > /dev/null 2>&1 ; then
  echo "start observation $SOURCE_PATH"
  fswatch -0 $OBSERVED_FILE | while read -d "" event; do
    sls package
  done
else
  echo "fswatch is not found."
fi
