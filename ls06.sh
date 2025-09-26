#!/bin/bash

# Set environment variables
export COURSE="AWS Dev Practice"
export INSTRUCTOR="Jane Doe"
export PLATFORM="AWS EC2"
export OS="RHEL"

# Print the values of the environment variables
echo "Course name is: $COURSE"
echo "Instructor is: $INSTRUCTOR"
echo "Platform is: $PLATFORM"
echo "Operating System is: $OS"

# Note: Use 'export' to set environment variables so they are available to child processes.
# You can verify the variables are set using the 'env' command.
# Example: env | grep COURSE
# To unset an environment variable, use the 'unset' command.
# Example: unset COURSE
# To make environment variables permanent, add the export commands to your shell profile file (e.g., ~/.bashrc or ~/.bash_profile).
#enveronment variables are in uppercase by convention
#local variables are in lowercase by convention
#variables are case sensitive
# there should be no space before or after equal sign while assigning value to variable
# while using variable we should use $ before variable name
# enveronment variables only run for current session, if we open new terminal they will not be available
# to make them permanent we should add them to .bashrc or .bash_profile file in home directory
# we can use env command to see all environment variables
#if we want access enveronment file in whole sesson use run sourse ls06.sh or . ls06.sh
#you can go to vim .bashrc file and add export COURSE="AWS Dev Practice" before last line to make it permanent
#after adding to .bashrc file run source .bashrc to make it effective in current