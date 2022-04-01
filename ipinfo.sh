#!/bin/bash

# First argument
IP_ADDRESS="$1"

# Second argument
PROPERTY="$2"

# If the first argument is empty
if [ -z "$IP_ADDRESS" ]
then
  echo "First argument is mandatory"
  exit 1
fi

# If the second argument is empty
if [ -z "$PROPERTY" ]
then
  echo "Second argument is mandatory"
  exit 2
fi

curl -s "https://ipapi.co/$IP_ADDRESS/$PROPERTY"
