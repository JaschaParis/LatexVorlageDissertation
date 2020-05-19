#!/bin/bash

# Set Target Directory with respect to the -cd option of latexmk
DIR="../build/tikz"

# Create target directory if it does not exist yet
if [ ! -d "$DIR" ]; then
  mkdir -p $DIR
fi

# Compile all tikz figures
for file in tikz/*.tex;
do
  echo "$file"
  latexmk -pdf -time -output-directory="$DIR" -cd "$file"
done

cd ..