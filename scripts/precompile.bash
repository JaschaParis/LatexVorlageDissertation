#!/bin/bash

echo "Set Output directory"
DIR="build/preamble"

echo "Create output directory if it does not exist"
if [ ! -d "$DIR" ]; then
  mkdir -p $DIR
fi

pdflatex -ini -recorder -output-directory="$DIR" -jobname="preamble-dissertation" -cd "&pdflatex preamble/preamble-dissertation.tex\dump"

pdflatex -ini -recorder -output-directory="$DIR" -jobname="preamble-tikz" -cd "&pdflatex preamble/preamble-tikz.tex\dump"
