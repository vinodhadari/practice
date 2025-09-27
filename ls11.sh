#!/bin/bash

echo "Please enter the number:"
read NUMBER

if [ $(($NUMBER % 2)) -eq 0 ]; then #if (( NUMBER % 2 == 0 )); then is also correct
#$(($NUMBER % 2)) → arithmetic expansion.
# Bash computes % first.
#[ ] (the test command) now just compares two numbers (1 -eq 0).
#(( ... )) is arithmetic evaluation, not string test. 
# so [ $(( ... )) -eq 0 ] is like a universal commnd
    echo "Given number $NUMBER is EVEN"
else
    echo "Given number $NUMBER is ODD"
fi

# In short → [ ] can compare numbers, but it cannot do arithmetic calculations
# we use $(( )) ,To perform arithmetic calculations
# % is modulus operator which gives remainder after division
# "if [ 0 -eq 0 ] ; then   # for even
#  "if [ 1 -eq 0 ] ; then   # for odd
#  Now [ ] can understand it, because it’s just comparing numbers with -eq.
