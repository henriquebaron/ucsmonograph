#!/bin/bash

class="ucsmonograph"

# Apaga a compilação anterior
rm *.cls *.pdf

# Compila os documentos da classe e da documentação
latex ./$class.ins
pdflatex ./$class.dtx
makeindex -s gglo.ist -o ./$class.gls ./$class.glo
makeindex -s gind.ist -o ./$class.ind ./$class.idx
pdflatex ./$class.dtx

# Apaga os arquivos auxiliares
rm *.aux *.glo *.gls *.idx *.ilg *.ind *.log *.out
