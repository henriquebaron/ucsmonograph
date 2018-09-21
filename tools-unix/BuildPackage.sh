#!/bin/bash

class="ucsmonograph"

# Apaga a distribuição anterior
rm -r $class/
rm $class.zip

# Compila os arquivos
./tools-ubuntu/GenerateFiles.sh

# Cria uma pasta e coloca os arquivos necessários
mkdir ./$class
cp ./$class.* ./$class/

zip -r $class.zip $class/

# Apaga a pasta criada para compactar
rm -r ./$class/
