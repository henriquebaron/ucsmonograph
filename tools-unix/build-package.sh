#!/bin/bash

class="ucsmonograph"

# Apaga a distribuição anterior
rm -r $class/
rm $class.zip

# Compila os arquivos
./tools-unix/generate-files.sh

# Cria uma pasta e coloca os arquivos necessários
mkdir ./$class
cp ./$class{.ins,.dtx,.pdf} ./$class/
cp ./README.md ./$class/README.md

zip -r $class.zip $class/

# Apaga a pasta criada para compactar
rm -r ./$class/
