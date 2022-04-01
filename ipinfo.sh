#!/bin/bash

# First argument
IP_ADDRESS="$1"

# Second argument
PROPERTY="$2"

JQ_PATH="/usr/bin/jq"

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

if [ ! -x "$JQ_PATH" ]
then
  echo "Please, install jq before running this script again."
  exit 3
fi

curl -s "https://ipapi.co/$IP_ADDRESS/json" | $JQ_PATH ".$PROPERTY"
