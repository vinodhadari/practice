#!/bin/bash

echo "Please enter the number below"
read NUMBER

if (( NUMBER % 2 == 0 )); then
  echo "Given number $NUMBER is even"
else
  echo "Given number $NUMBER is odd"
fi
