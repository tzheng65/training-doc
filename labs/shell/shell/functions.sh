#!/bin/bash

function sum() {
 return $(expr $1 + $2)
}

function string_test() {
 MY_VAR="Hello World!"
 eval "$1='$MY_VAR'"
}

# invoke sum function
sum 5 6
# retrieve sum function's result
SUM_RESULT=$?
echo $SUM_RESULT

STRING_RESULT=''
# invoke string_test function and pass parameter where result will be stored
string_test STRING_RESULT
echo $STRING_RESULT