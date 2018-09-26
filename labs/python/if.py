#!/usr/bin/python

import sys
import os

switch = sys.argv[1]
option = sys.argv[2]

if switch == "-p":
 if option == "l":
   os.system("ls")
 elif option == "c":
   os.system("cal")
 elif option == "d":
   os.system("date")
 else:
   print ("Usage: if.py -p [l | c | d]")
else:
  print ("Usage: if.py -p [l | c | d]")