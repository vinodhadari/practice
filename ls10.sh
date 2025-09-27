#!/bin/bash

number=$1

if [ $number -lt 10 ]; then
    echo "Given $number is less than 10"
elif [ $number -eq 10 ];then
    echo "Given $number is equal to 10"
else
        echo "Given $number is greater than 10"
fi
#ls10.sh: line 5: [: -lt: unary operator expected
#ls10.sh: line 7: [: -eq: unary operator expected
#Given  is greater than 10 it print this because the 2 above commands didn't execute

# -gt
# -eq
# -ne
