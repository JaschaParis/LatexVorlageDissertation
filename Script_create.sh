#!/bin/bash

starttime=$(date +%s.%N)

echo "### Delete Files ###"

./Script_clean.sh

echo "### Precompile Preamble ###"

./Script_precompile.sh

echo "### Finished: Precompile Preamble ###"

echo "### Create TikZ Figures ###"

cd tikz/

./Script_compile_figures.sh

./Script_compile_figures.sh

./Script_compile_figures.sh

cd ..

echo "### Finished: Create TikZ Figures ###"

echo "### Create Document ###"

latexmk -pdf -silent -time -synctex=1 "thesis"

echo "### Finished: Create Document ###"

endtime=$(date +%s.%N)    
runtime=$(python -c "print(${endtime} - ${starttime})")

echo "### FINISHED ###"
echo "Runtime was $runtime"
