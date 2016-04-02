FOR %%A IN (Vorlage.acn Vorlage.acr Vorlage.alg Vorlage.aux Vorlage.bbl Vorlage.blg Vorlage.dvi Vorlage.glg Vorlage.glo Vorlage.gls Vorlage.ist Vorlage.lof Vorlage.log Vorlage.lot Vorlage.out Vorlage.synctex.gz Vorlage.toc Vorlage-pics.pdf Vorlage-pics.ps) DO DEL %%A
pdflatex -synctex=1 -interaction=nonstopmode --shell-escape Vorlage.tex
pdflatex -synctex=1 -interaction=nonstopmode --shell-escape Vorlage.tex
FOR %%A IN (Vorlage.acn Vorlage.acr Vorlage.alg Vorlage.aux Vorlage.bbl Vorlage.blg Vorlage.dvi Vorlage.glg Vorlage.glo Vorlage.gls Vorlage.ist Vorlage.lof Vorlage.log Vorlage.lot Vorlage.out Vorlage.synctex.gz Vorlage.toc Vorlage-pics.pdf Vorlage-pics.ps) DO DEL %%A
MOVE Vorlage.pdf "Brief.pdf"
