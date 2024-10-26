#!bin/bash

VAR1=$1
VAR2=$2

echo "script name :$0"

# $0 gives script name.

echo "variable 1: $VAR1"

echo "all vars:$@"

echo "no. of vars:$#"

# #indicates how many variables.

echo "vars:$!"

# $! it is exit status.