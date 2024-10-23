#!/bin/bash

#this is called array,instead of single value it can hold multiple values.

PERSONS=("RAMESH" "SURESH" "SACHIN")
#PERSONS=
#Inside array we always refer values with index and it starts from 0

echo "First Person:${PERSONS[0]}"
echo "All Person:${PERSONS[@]}"

# @ refers or include all values in arrays