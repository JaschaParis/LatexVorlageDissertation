# LatexVorlageDissertation
This is a latex template for (german) dissertations tailored for the area of mechanical engineering.

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
