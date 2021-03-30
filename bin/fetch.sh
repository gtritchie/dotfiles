#!/usr/bin/env bash

# fetches a Mac IDE build and opens it

set -e
if [ -z "$1" ]; then
   echo "Error: must specify version on command line (e.g. 1.4.821)"
   exit 1
fi

INSTALLER=RStudio-${1}.dmg
if [ ! -e "$INSTALLER" ]; then
   wget https://rstudio-ide-build.s3.amazonaws.com/desktop/macos/$INSTALLER
fi
if [ ! -e "$INSTALLER" ]; then
   echo "Error: failed to download installer $INSTALLER"
   exit 1
fi

open ./$INSTALLER
