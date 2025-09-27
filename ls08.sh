
#!/bin/bash

# type some manes or anything for $@ and $*
# | Variable | Quoted `"..."`                 | Effect                               |
# | -------- | ------------------------------ | ------------------------------------ |
# | `"$@"`   | `"one"` `"two three"` `"four"` | Each argument preserved individually |
# | `"$*"`   | `"one two three four"`         | Everything combined into one string  |"

echo "All variables passed to the script: $@"
echo "All variables passed to the script: $*"
echo "Script name: $0"
echo "Current directory: $PWD"
echo "Who is running this: $USER"
echo "Home directory of user: $HOME"
echo "PID of this script: $$"
sleep 50 
echo "PID of the last command in background is: $!"
