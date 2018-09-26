#!/usr/bin/python

import car
import sports_car

# create instances
car1 = car.Car("Ford", 2016)
car2 = car.Car("Toyota", 2015)

# call start method on both instances
car1.start()
car2.start()

# access class level property
print car.Car.max_legal_speed

car.Car.max_legal_speed = 100
print car.Car.max_legal_speed

# access instance level property
print car1.make
car1.make = "Honda"

# alternative way for accessing instance level property
print getattr(car2, "make")
setattr(car2, "model", 2010)

# trigger garbage collector (call destructor)
del car1
del car2

print "==========testing inheritance=========="

ferrari = sports_car.SportsCar(300)
ferrari.start()

del ferrari