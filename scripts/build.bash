#!/bin/bash

echo "Set Output directory"
DIR="build"

echo "Create output directory if it does not exist"
if [ ! -d "$DIR" ]; then
  mkdir -p $DIR
fi

starttime=$(date +%s.%N)

echo "### Create Document ###"

latexmk -pdf -silent -time -synctex=1 -output-directory="$DIR" "dissertation"

echo "### Finished: Create Document ###"

endtime=$(date +%s.%N)    
runtime=$(python -c "print(${endtime} - ${starttime})")

echo "### FINISHED ###"
echo "Runtime was $runtime"
