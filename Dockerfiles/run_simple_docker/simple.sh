#!/bin/bash

# set -e

# simple test script for first Dockerfile
echo "Creating some output..."
cat *.txt > output/alltext.txt
ls -alFs > output/listing.txt
echo "...and we're done!"
