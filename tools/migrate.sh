#!/bin/bash

set -e

if [ $# -lt 3 ]; then
  echo 'failed'
  exit 1
fi

# Assume we are in your home directory
# cd ~/

# Clone the repo from GitLab using the `--mirror` option
git clone --mirror "$2"

# Change into newly created repo directory
cd $1.git

# Push to GitHub using the `--mirror` option.  The `--no-verify` option skips any hooks.
git push --no-verify --mirror "$3"

# Set push URL to the mirror location
git remote set-url --push origin "$3"

# To periodically update the repo on GitHub with what you have in GitLab
git fetch -p origin
git push --no-verify --mirror

# Clean
cd -
rm -rf $1.git
