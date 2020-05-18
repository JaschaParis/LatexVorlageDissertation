#!/bin/bash

cd tikz

# Set Target Directory
DIR="../build/tikz"
#file="tikz/cover_front"

#latexmk -pdf -time -f -output-directory="$DIR" "$file"

# Create target directory if it does not exist yet
if [ ! -d "$DIR" ]; then
  mkdir -p $DIR
fi

# Compile all tikz figures
for file in *.tex;
do
  echo "$file"
  echo ""
  sleep 2
  latexmk -pdf -time -output-directory="$DIR" "$file"
done

cd ..