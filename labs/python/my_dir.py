#!/usr/bin/python
# understanding variables

#import os module
import os

# declare and initialize variables
my_dir = ""
prompt = "Enter directory name to create:"
create_msg = "Creating directory " + my_dir + "..."
list_msg = "Listing directory contents..."
delete_msg = "Deleting directory " + my_dir + "..."

# prompt user and read directory name to create
my_dir = raw_input(prompt)

# create directory
print (create_msg)
os.mkdir(my_dir)

# list current directory contents
print (list_msg)
os.system("ls -l")

# delete the directory
print (delete_msg)
os.rmdir(my_dir)

# list current directory contents
print (list_msg)
os.system("ls -l")