#!/bin/bash

# format: link.sh <path_to_webapp>

MY_PATH="`dirname \"$0\"`"              # relative
MY_PATH="`( cd \"$MY_PATH\" && pwd )`"  # absolutized and normalized
if [ -z "$MY_PATH" ] ; then
  exit 1  # fail
fi

ln -s $MY_PATH/target/configuration $1
