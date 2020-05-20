
@echo off

pdflatex -ini -recorder -jobname="DissertationPreamble" "&pdflatex" DissertationPreamble.tex\dump"
pause
pdflatex -ini -recorder -jobname="preamble_tikz" "&pdflatex" preamble_tikz.tex\dump"
pause