#!/bin/bash

starttime=$(date +%s.%N)

echo "### Create Document ###"

latexmk -pdf -silent -time -synctex=1 "thesis"

echo "### Finished: Create Document ###"

endtime=$(date +%s.%N)    
runtime=$(python -c "print(${endtime} - ${starttime})")

echo "### FINISHED ###"
echo "Runtime was $runtime"
