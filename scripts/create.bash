#!/bin/bash

starttime=$(date +%s.%N)

echo "### Delete Files ###"

./scripts/clean.bash

echo "### Precompile Preamble ###"

./scripts/precompile.bash

echo "### Finished: Precompile Preamble ###"

echo "### Create TikZ Figures ###"

./scripts/compile_tikz.bash

echo "### Finished: Create TikZ Figures ###"

echo "### Create Document ###"

echo "Set Output directory"
DIR="build"

echo "Create output directory if it does not exist"
if [ ! -d "$DIR" ]; then
  mkdir -p $DIR
fi

latexmk -pdf -silent -time -synctex=1 -output-directory="$DIR"  "dissertation"

echo "### Finished: Create Document ###"

endtime=$(date +%s.%N)    
runtime=$(python3 -c "print(${endtime} - ${starttime})")

echo "### FINISHED ###"
echo "Runtime was $runtime"
