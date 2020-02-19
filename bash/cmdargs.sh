#!/bin/bash
# This script demonstrates how the shift command works

# create an empty array to put the command line arguments into
myargs=()
# loop through the command line arguments
while [ $# -gt 0 ]; do
  # tell the user how many things are left on the command line
  echo "There are $# things left to process on the command line."
  # add whatever is in $1 to the myargs array
  myargs+=("$1")
  # tell the user what we did
  echo "Added \'$1\' to the arguments array"

# TASK 1: instead of just adding arguments to an array, use a case statement to recognize some options
#          Options to recognize: -h for help, -v for verbose mode, -d N for debug mode with N being a single digit number
#          If the help option is recognized, print out help for the command and exit
#          If the verbose option is recognized, set a variable to indicate verbose mode is on
#          If the debug optionis recognized, set a variable with the debug level from the number given after the -d on the command line
#             display an error if the user gave the -d option without a single digit number after it
#          Anything that wasn't recognized on the command line should still go into the myargs array


#########################################
#######Task1############
################
vmode=0
debugmode=1
case $1 in
  -h | --help )
        echo "Added '-h' option for help"
        echo "help mode is processing"
        echo "##########################"
        help
        echo "For more options"
        echo "-v option for verbose mode"
        echo "-d option for debug "
        exit
        ;;
  -v )
        echo "Added -v with the command for verbose mode"
        echo "verbose mode is ON"
        ;;
  -d )
        case $2 in
        [1-9] )
              debugmode=$2
              echo "Added -d for debug mode with the command"
              shift
        ;;
  *)
        echo "given input is not in between 1-9 "
        esac
        shift
    ;;
  esac

  # each time through the loop, shift the arguments left
  # this decrements the argument count for us
  shift
  # tell the user we shifted things
  echo "Shifted command line, leaving $# things left to process."
  echo "--------------------------"
  # go back to the top of the loop to see if anything is left to work on
done
echo "Done"

# TASK2: display the settings and myargs contents
#         Tell the user if vebose mode is on
#         Tell the user if debug mode is on and if it is, what number it is set to
#         Print out the myargs array with a label

###############################
########task2#######
############

if [ $vmode = 1 ] ; then
  echo "verbose mode is now on"
esle
    echo"verbose mode is off"
fi
if [ $debugmode -gt 1 ] ; then
  echo "debugmode with level $debugmode"
else
    echo "debug mode is currently off"
fi
