#!/bin/bash

# Set Target Directory with respect to the -cd option of latexmk
DIR="build/tikz"

# Create target directory if it does not exist yet
if [ ! -d "$DIR" ]; then
  mkdir -p $DIR
fi

# Compile all tikz figures
for file in tikz/*.tex;
do
  echo "$file"
  latexmk -pdf -time -output-directory="../$DIR" -cd "$file"
done

## Old script from Jascha with additional features that I haven´t understood, yet
## @Jascha: Why is it necessary to remove .log; .fls and .blg files directly?
## @Jascha: Is this still necessary when we are using a build directory?

#compileTexFile() {
#
#	file=$1
#
#	latexmk -pdf -time -silent -output-directory="../build/tikz" "$file"
#
#	file_basis=$(basename "$file" .tex)
#	for ext in "${extlist[@]}"
#	do
#		if [ -f "$file_basis$ext" ]
#		then
#			echo "Lösche $file_basis$ext"
#			rm "$file_basis$ext"
#		fi
#	done
#
#}
#
#
#declare -a extlist=(".log" ".fls" ".blg")
#
#echo "Kompiliere alle Bilder"
#
#N=16
#(
#for file in *.tex
#do
#	((i=i%N)); ((i++==0)) && wait
#	compileTexFile $file &
#done
#)