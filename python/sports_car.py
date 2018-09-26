#!/usr/bin/python

import car

class SportsCar(car.Car):
 def __init__(self, max_speed):
  class_name = self.__class__.__name__
  print class_name, "constructed"
  self.sports_car_max_speed = max_speed

 def drive_faster(self):
  print "SportsCar.drive_faster"

 def start(self):
  print "SportsCar.start"