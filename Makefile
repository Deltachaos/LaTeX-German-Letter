make:
	- rm `ls Vorlage.{aux,bbl,blg,dvi,log,out,synctex.gz}`
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
	- rm `ls Vorlage.{aux,bbl,blg,dvi,log,out,synctex.gz}`
show:
	xdg-open Vorlage.pdf

