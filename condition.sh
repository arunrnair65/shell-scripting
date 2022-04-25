#!/bin/bash
#--------------------------------------------------------------------------------
#expressions
#1. String Tests
#OPerators : ==, !=, -z,
#--------------------------------------------------------------------------------
#2. Number test
#Operators : -eq, -ne, -le, -lt, -gt, -ge
#--------------------------------------------------------------------------------
#2. File tests
#Operators Link :https://tldp.org/LDP/abs/html/fto.html
#Operators : -e (to check if file exists.)

#if [ -e <filepath> ]
#then
#command...
#fi
#--------------------------------------------------------------------------------
# Best Practice - use doublequotes ("") for variables
#--------------------------------------------------------------------------------
#if condition
#if [ expression ]
# then
#...commands...
#fi
#--------------------------------------------------------------------------------
#Else If
#if [ expression ]
#then
#command...
#elif [expression 2]
#then
#commands...
#else
#commands....
#fi
#--------------------------------------------------------------------------------


if [ 1 -eq 1 ]
then
  echo "matched.."
fi


a="abc"
if [ "$a" == "abc" ]
then
  echo "both are equal"
fi

if [ "$a" != "abc" ]; then
  echo "both are not equal"
fi

if [ -z "$b" ]; then
  echo "$b is empty"
fi
