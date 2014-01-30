#!/bin/bash

# Sometimes i need to use HTTPS over GIT because of proxy problems.
# This script changes the .gitmodules from using the GIT protocol to
# using the https protocol.  After that, it initializes the submodules 
# and updates them. Then it reverts the file back to its original GIT format
# Example: 
# URL using GIT protocol:
#   git@github.com:tpope/vim-fugitive.git
# URL using HTTPS protocol:
#   https://github.com/tpope/vim-fugitive.git

echo "Changing URLs"
sed -e "s/git@github.com:/https:\/\/github.com\//g" .gitmodules > .gitmodules.https
mv .gitmodules .gitmodules.git
mv .gitmodules.https .gitmodules

echo "Initializing submodules"
git submodule init 2>&1 1>/dev/null
submodule_init_status=$?

if [ $submodule_init_status != 0 ]
then
  echo "Error while initializing submodules"
  exit 1
fi

echo "Updating submodules"
git submodule update 2>&1 1>/dev/null
submodule_update_status=$?

if [ $submodule_update_status != 0 ]
then
  echo "Error while updating submodules"
  exit 1
fi

echo "Done."

echo "Cleaning up"
rm .gitmodules
mv .gitmodules.git .gitmodules
