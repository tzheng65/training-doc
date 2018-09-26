#!/usr/bin/python

import os
import random
 
 
def main():
 
    if os.path.isfile('./responses.txt'):
        responses = 'yes'
        file = open('./responses.txt', 'r')
        list = file.readlines()
    else:
        responses = "no"
 
    print "\nI'm thinking of a number between 1 and 100. You have to guess \
    what it is.\n"
 
    num = random.randrange(100)
    guess = ""
 
    while guess != num:
        guess = int(raw_input("Take a guess: "))
        if guess < num:
            if responses == "yes":
                print random.choice(list)
            print "Guess higher next time\n"
        elif guess > num:
            if responses == "yes":
                print random.choice(list)
            print "Guess lower next time\n"
    print "!!***CONGRATULATIONS***!!"
    raw_input()
    if responses == "yes":
        file.close()
 
main()