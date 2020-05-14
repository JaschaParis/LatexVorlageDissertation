#!/bin/bash

#echo "Set Output directory"
#DIR="../build/tikz"

#echo "Create output directory if it does not exist"
#if [ ! -d "$DIR" ]; then
#  mkdir -p $DIR
#fi

compileTexFile() {

	file=$1

	latexmk -pdf -time -silent -output-directory="../build/tikz" "$file"

	file_basis=$(basename "$file" .tex)
	for ext in "${extlist[@]}"
	do
		if [ -f "$file_basis$ext" ]
		then
			echo "Lösche $file_basis$ext"
			rm "$file_basis$ext"
		fi
	done

}


declare -a extlist=(".log" ".fls" ".blg")

echo "Kompiliere alle Bilder"

N=16
(
for file in *.tex
do
	((i=i%N)); ((i++==0)) && wait
	compileTexFile $file &
done
)
