#!/bin/bash

TEMPERATURE="$1"
FORMAT="$2"

# If the first argument is empty
if [ -z "$TEMPERATURE" ]
then
  echo "First argument cannot be empty."
  exit 1
fi

# If the second argument is empty
if [ -z "$FORMAT" ]
then
  echo "Second argument cannot be empty."
  exit 2
fi

# If the second argument is not "celsius" nor "fahrenheit"
if [ "$FORMAT" != "celsius" -a "$FORMAT" != "fahrenheit" ]
then
  echo "Second argument expected to be either celsius or fahrenheit"
  exit 3
fi

if [ "$FORMAT" == "celsius" ]
then
  # Using python here for the decimal computation
  python -c "print(($TEMPERATURE - 32) / 1.8)"
  
  # Stops the script to prevent accessing the rest of the code
  exit 0
fi

# We could have used anything else instead of python (bc, node, ruby, ...)
python -c "print($TEMPERATURE * 1.8 + 32)"
