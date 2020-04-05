# LatexVorlageDissertation
This is a latex template for (german) dissertations tailored for the area of mechanical engineering.
English version of the readme below.

tldr, Windows: \texttt{setData.tex} ändern, \texttt{Script\_precompile.bat} ausführen, alle \texttt{*.tex}-Dateien in \texttt{tikz} kompilieren und anschließend \texttt{thesis.tex} mit \texttt{latexmk} kompilieren.

tldr, Linux: \texttt{setData.tex} ändern, \texttt{Script\_create.sh} ausführen.

Latex entwickelt sich schnell weiter und viele Pakete, die in Vorlagen verwendet werden, sind inzwischen veraltet. Dementsprechend wollte ich für meine Dissertation eine aktuelle Vorlage erstellen. Zusätzlich wollte ich gerne ein automatisch sortiertes Symbolverzeichnis und nach und nach kamen weitere Anforderungen hinzu. Insgesamt entstand so eine Vorlage, die unter anderem über die folgenden Eigenschaften verfügt:

* Vorkompilieren der Präambel zur Beschleunigung des Kompilierens.
* Layouts für die Einreichung (einseitig) und die finale Version (zweiseitg) in einer Datei.
* Automatisch sortiertes Symbolverzeichnis und Verlinkung im Text mit Angabe der Seitenzahl des ersten Vorkommens.
* Verlinkte Symbole im Text und in Bildern.
* Literaturverzeichnis mit Angabe der Seitenzahlen auf denen die Literaturstelle verwendet wird.
* Direkte Einbindung der TikZ-Dateien für die finale Version oder Einbindung der PDF-Dateien zur Beschleunigung des Kompilierens.
* Einhaltung von Empfehlung zur Typografie und zum Satz. Ausnahme bildet hier die Zeichen pro Zeile, die leicht zu hoch ist.
* Umgebunden für Abbildungen und Tabellen, die keine fließenden Umgebungen darstellen. Diese können im Anhang verwendet werden, wenn viele Abbildungen hintereinander eingefügt werden.
* Bash-Skripte zum Kompilieren unter Linux

----

tldr, windows: change \texttt{setData.tex}, run \texttt{Script\_precompile.bat}, compile all \texttt{*.tex}-files in \texttt{tikz} and finally run \texttt{thesis.tex} with \texttt{latexmk}.

tldr, linux: change \texttt{setData.tex}, run \texttt{Script\_create.sh}.

Latex is evolving rapidly and many packages used in templates are now obsolete. Accordingly I wanted to create a current template for my dissertation. Additionally I wanted an automatically sorted symbol directory and little by little more requirements were added. All in all, a template was created that has the following features, among others:

* Pre-compile the preamble to speed up compilation.
* Layouts for the submission (one page) and the final version (two pages) in one file.
* Automatically sorted list of symbols and links in the text with the page number of the first occurrence.
* Linked symbols in text and images.
* Bibliography with indication of the page numbers on which the reference is used.
* Direct integration of TikZ-files for the final version or integration of PDF files to speed up compilation.
* Compliance with recommendations on typography and typesetting. The exception are the characters per line, which is slightly too high.
* Environments for figures and tables that do not represent floating environments. These can be used in the appendix if many figures are inserted one after the other.
* Bash-scripts for compilation using linux

