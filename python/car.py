#!/usr/bin/python

### Car class ###
class Car:
 # static / class-level variable
 max_legal_speed = 110 

 #constructor
 def __init__(self, make, model):
  class_name = self.__class__.__name__
  print class_name, "constructed"
  self.make = make # instance level property
  self.model = model # instance level property
 
 # destructor
 def __del__(self):
  class_name = self.__class__.__name__
  print class_name, "destroyed"

 #method
 def start(self):
  print "Starting " + self.make + "..."

 #method
 def stop(self):
  print "Stopping " + self.make + "..."
