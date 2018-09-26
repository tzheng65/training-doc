#!/usr/bin/python

import os

## display contents of /home folder
files = os.listdir("/home")

### for loop ###
for f in files:
 print f

# create a list
dirs = []

### use 'while' loop to append more items to the list ###
counter = 1
while (counter <= 3):
 dirs.append("Item " +  str(counter))
 counter = counter + 1

print "Display items using \"for\" loop"

### use 'for' loop to iterate over and display items ###
for item in dirs:
 print item

### use 'for' loop to iterate by sequence index ###
print "Display items using sequence index"
for index in range(len(dirs)):
 print dirs[index]

### remove items by using 'for' loop ###
for item in dirs:
 dirs.remove(item)