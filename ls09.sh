#!/bin/bash

# everything in shell is considerd as string
NUMBER1=100
NUMBER2=200
NAME=DevOps

SUM=$(($NUMBER1+$NUMBER2+$NAME))

echo "SUM is: ${SUM}"

# Size = 4, Max index = 3
#given below is the example of array
#{LEADERS[@]} represent all
LEADERS=("Modi" "Putin" "Trudo" "Trump")
#positioning index start from 0 1 2 3 etc

echo "All leaders: ${LEADERS[@]}"
echo "First Leader: ${LEADERS[0]}"
echo "First Leader: ${LEADERS[10]}"
#dicpite 10 is not index it wont show error since it isnot programming it leave vecant
