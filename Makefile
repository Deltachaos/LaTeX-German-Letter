make:
	touch Vorlage.dummy
	rm ${echo Vorlage.* | tr ' ' '\n' | sed "/^Vorlage.tex/d"}
	latex -interaction=nonstopmode Vorlage.tex
	- bibtex Vorlage.aux
	- makeglossaries Vorlage
	latex -interaction=nonstopmode Vorlage.tex
	- bibtex Vorlage.aux
	- makeglossaries Vorlage
	latex -interaction=nonstopmode Vorlage.tex
	- makeglossaries Vorlage
	- bibtex Vorlage.aux
	latex -interaction=nonstopmode Vorlage.tex
	pdflatex -synctex=1 -interaction=nonstopmode --shell-escape Vorlage.tex
	rm ${echo Vorlage.* | tr ' ' '\n' | sed '/^Vorlage.tex/d' | sed '/^Vorlage.pdf/d'}
	
show:
	evince Vorlage.pdf

