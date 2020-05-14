#!/bin/bash

echo "Set Output directory"
DIR="build/preamble"

echo "Create output directory if it does not exist"
if [ ! -d "$DIR" ]; then
  mkdir -p $DIR
fi

pdflatex -ini -recorder -output-directory="$DIR" -jobname="DissertationPreamble" "&pdflatex DissertationPreamble.tex\dump"

pdflatex -ini -recorder -output-directory="$DIR" -jobname="TikZPreamble" "&pdflatex TikZPreamble.tex\dump"
