#!/bin/bash
# \e -> enable
# -e in echo -e is required to interpret \e sequences
# \033 can be used instead of \e
# It tells the terminal:
  #“The following characters are a control sequence, not regular text.”
R="\e[31m"
G=\e[32m
Y="\e[33m"
N="\e[0m"

echo -e "$G Hello World $N"
echo "Check this color"
