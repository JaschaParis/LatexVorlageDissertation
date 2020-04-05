
@echo off

pdflatex -ini -recorder -jobname="DissertationPreamble" "&pdflatex" DissertationPreamble.tex\dump"
pause
pdflatex -ini -recorder -jobname="TikZPreamble" "&pdflatex" TikZPreamble.tex\dump"
pause