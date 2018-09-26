#!/bin/bash
# understanding variables

# declare and initialize variables
MY_DIR=""
PROMPT="Enter directory name to create:"
CREATE_MSG="Creating directory $MY_DIR..."
readonly CREATE_MSG
LIST_MSG="Listing directory contents..."
readonly LIST_MSG
DELETE_MSG="Deleting directory $MY_DIR..."
readonly DELETE_MSG

# prompt user and read directory name to create
echo $PROMPT
read MY_DIR

# create directory
echo $CREATE_MSG
mkdir $MY_DIR

# list current directory contents
echo $LIST_MSG
ls

# delete the directory
echo $DELETE_MSG
rm -df $MY_DIR

# list current directory contents
echo $LIST_MSG
ls