#!/bin/bash

starttime=$(date +%s.%N)

echo "### Delete Files ###"

./scripts/clean.bash

echo "### Precompile Preamble ###"

./scripts/precompile.bash

echo "### Finished: Precompile Preamble ###"

echo "### Create TikZ Figures ###"

cd tikz/

./Script_compile_figures.bash

#./Script_compile_figures.bash

#./Script_compile_figures.bash

cd ..

echo "### Finished: Create TikZ Figures ###"

echo "### Create Document ###"

echo "Set Output directory"
DIR="build"

echo "Create output directory if it does not exist"
if [ ! -d "$DIR" ]; then
  mkdir -p $DIR
fi

latexmk -pdf -silent -time -synctex=1 -output-directory="$DIR"  "thesis"

echo "### Finished: Create Document ###"

endtime=$(date +%s.%N)    
runtime=$(python -c "print(${endtime} - ${starttime})")

echo "### FINISHED ###"
echo "Runtime was $runtime"
