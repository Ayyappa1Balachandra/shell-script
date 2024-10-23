#!/bin/bash

# this is best practice because instead of giving values here we can give in command line so no error can happen.

NUMBER1=$1
NUMBER2=$2

# I need to run a command inside shell to add these 2 numbers

SUM=$((NUMBER1+NUMBER2))

echo "Addition of 2 no.s is :$SUM"