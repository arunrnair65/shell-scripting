#!/bin/bash

#if condition
#if [expression]
# then
#...commands...
#fi

if [ 1 -eq 1 ]
then
  echo "matched.."
fi

#expressions
#1. String Tests
#OPerators : ==, !=, -z,

a="abc"
if [ "$a" == "ABC" ]
then
  echo "both are equal"
fi

if [ "$a" != "abc" ]; then
  echo "both are not equal"
fi

if [ -z "$b" ]; then
  echo "$b is empty"
fi










