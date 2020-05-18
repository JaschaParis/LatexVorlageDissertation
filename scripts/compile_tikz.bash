#!/bin/bash

cd tikz

# Set Target Directory
DIR="../build/tikz"

# Create target directory if it does not exist yet
if [ ! -d "$DIR" ]; then
  mkdir -p $DIR
fi

# Compile all tikz figures
for file in *.tex;
do
  echo "$file"
  latexmk -pdf -time -output-directory="$DIR" "$file"
done

cd ..