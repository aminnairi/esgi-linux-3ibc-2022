#!/bin/bash

# We check that we have the jq program before starting
if [ ! -x "/usr/bin/jq" ]
then
  echo "Please, install jq and make sure it is available globally before using this script."
  exit 1
fi

# We ask the needed informations
read -p "Name: " NAME
read -p "Version: " VERSION
read -p "Description: " DESCRIPTION
read -p "Home: " HOMEPAGE
read -p "Bug: " BUGPAGE

# We create the package.json
jq \
  -n \
  --arg "name" "$NAME" \
  --arg "version" "$VERSION" \
  --arg "description" "$DESCRIPTION" \
  --arg "homepage" "$HOMEPAGE" \
  --arg "bugpage" "$BUGPAGE" \
  '{"name":$name,"version":$version,"description":$description,"homepage":$homepage,"bug":$bugpage}' > package.json
