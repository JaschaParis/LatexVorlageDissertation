#!/bin/bash

pdflatex -ini -recorder -jobname="DissertationPreamble" "&pdflatex DissertationPreamble.tex\dump"

pdflatex -ini -recorder -jobname="TikZPreamble" "&pdflatex TikZPreamble.tex\dump"
