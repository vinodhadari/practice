#!/bin/bash/

echo "please enter the numbefr below"
read NUMBER

if [ ($NUMBER % 2) -eq 0 ]; then 
  echo "given number $NUMBER is eveb "
else 
  echo "given number $NUMBER IS odd "
fi
