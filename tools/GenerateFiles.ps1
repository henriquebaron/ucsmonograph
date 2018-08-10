$class = "ucsmonograph"
del *.cls,*.pdf
latex ./$class.ins
pdflatex ./$class.dtx
makeindex -s gglo.ist -o ./$class.gls ./$class.glo
makeindex -s gind.ist -o ./$class.ind ./$class.idx
pdflatex ./$class.dtx
del *.aux,*.glo,*.gls,*.gls,*.idx,*.ilg,*.ind,*.log