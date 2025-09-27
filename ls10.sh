#!bin/bash

number=$1

if [number -lt 10 ]; then
    echo "print $number is less than 10"
elseif [number -eq 10 ];then
    echo"$number is equal to 10"
else
        echo"$number is greater than 10"
fi
