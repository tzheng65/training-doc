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

### SportsCar class. Inherits Car ###
class SportsCar(Car):
 def __init__(self, max_speed):
  class_name = self.__class__.__name__
  print class_name, "constructed"
  self.sports_car_max_speed = max_speed

 def drive_faster(self):
  print "SportsCar.drive_faster"

 def start(self):
  print "SportsCar.start"

print "==========testing inheritance==========" 
ferrari = SportsCar(300)
ferrari.start()

del ferrari
