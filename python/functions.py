#!/usr/bin/python

# import time and calendar modules
import time;
import calendar;

# simple function that returns sum of two arguments
def sum(a, b):
 return a + b


# define function for returning date / time
def print_time():
 unformatted_time = time.localtime(time.time())
 formatted_time = time.asctime( time.localtime(time.time()) )
 print "Unformatted time: " , unformatted_time
 print "Formatted time: " , formatted_time
 return

# define function for returning calendar
def print_cal():
 cal = calendar.month(2016,1)
 print (cal)
 return

# define function with default parameter value
def print_employee_info(id, name, department = "IT"):
 print "Id: " + id + "\n" \
     + "Name: " + name + "\n" \
     + "Department: " + department
 return

# function calls
sum(5,6)
print_time()
print_cal()
print_employee_info(name = "Bob", id = "1")

## lambda expression / anonymous function
sum2 = lambda a, b: a + b;
# function call
print "Sum of 5 and 6 is: ", sum2(5,6)