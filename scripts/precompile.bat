
@echo off

pdflatex -ini -recorder -jobname="DissertationPreamble" "&pdflatex" DissertationPreamble.tex\dump"
pause
pdflatex -ini -recorder -jobname="preamble-tikz" "&pdflatex" preamble-tikz.tex\dump"
pause