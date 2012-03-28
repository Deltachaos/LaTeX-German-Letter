make:
	./preclear
	pdflatex -synctex=1 -interaction=nonstopmode --shell-escape Vorlage.tex
	- pdflatex -synctex=1 -interaction=nonstopmode --shell-escape Vorlage.tex
	./preclear
show:
	xdg-open Vorlage.pdf

