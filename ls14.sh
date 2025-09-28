#!/bin/bash
# \e -> enable
# -e in echo -e is required to interpret \e sequences
# \033 can be used instead of \e
# It tells the terminal:
  #“The following characters are a control sequence, not regular text.”
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
# Without quotes, Bash tries to interpret \e[32m immediately, not as a string. That breaks your color variable.
# Quoting ensures \e is stored as text inside the variable,Then echo -e interprets it as an escape sequence.
# So now, "Hello World" should show up in green, and "Check this color" in normal text
# Always quote escape sequences when assigning them to variables in Bash ("\e[31m", not \e[31m).
echo -e "$G Hello World $N"
echo "Check this color"
