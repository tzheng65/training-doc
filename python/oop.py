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

### Utilize the class ###
# create instances
car1 = Car("Ford", 2016)
car2 = Car("Toyota", 2015)

# call start method on both instances
car1.start()
car2.start()

# access class level property
print Car.max_legal_speed

Car.max_legal_speed = 100
print Car.max_legal_speed

# access instance level property
print car1.make
car1.make = "Honda"

# alternative way for accessing instance level property
print getattr(car2, "make")
setattr(car2, "model", 2010)

# trigger garbage collector (call destructor)
del car1
del car2