# ucsmonograph

**Português abaixo! ;)**

LaTeX class made for typesetting academic documents according to the ABNT (Brazillian Technical Standards Association) standards, adjusted to the requirements of the UCS (University of Caxias do Sul).

The author of this document is Henrique Baron.
Contact information:
* E-mail: henrique.baron@gmail.com
* TeX Stack Exchange profile: https://tex.stackexchange.com/users/153467/henrique-baron

## License information
Copyright 2018 Henrique Baron

This work may be distributed and/or modified under the
conditions of the LaTeX Project Public License, either version 1.3c
of this license or (at your option) any later version.
The latest version of this license is in
  http://www.latex-project.org/lppl.txt
and version 1.3c or later is part of all distributions of LaTeX
version 2005/12/01 or later.

This work has the LPPL maintenance status `maintained'.

The Current Maintainer of this work is Henrique Baron.

This work consists of the files ucsmonograph.dtx and ucsmonograph.ins
and the derived file ucsmonograph.cls.

## Installation
There are three possibilities for installing the `ucsmonograph` class:
you may install it directly from your MiKTeX or TeXLive distribution;
you may download the `.dtx` `.ins` installation files;
or (specially if you are using an on-line LaTeX editor) you can download the compiled `.cls` directly.

### Installing through any TeX distribution
Open your TeX distribution's package manager, search for the `ucsmonograph` class and install it.
Even simpler, if your TeX installation is configured to install packages on-the-fly, you can just call `ucsmonograph` as your document class and this class and all its dependencies will be automatically installed.

### Installing from INS and DTX files
Firstly you shall download the following files:
* ucsmonograph.dtx
* ucsmonograph.ins

Then, you may run `latex` on the INS file to make it generate the class (.cls) file:

    latex ucsmonograph.ins
    
and you can run `pdflatex` on the DTX file to generate the class documentation:

    pdflatex ucsmonograph.dtx
    
Generate the index and changelog with `makeindex` commands:

    makeindex -s gglo.ist -o ucsmonograph.gls ucsmonograph.glo
    makeindex -s gind.ist -o ucsmonograph.ind ucsmonograph.idx
    
Run `pdflatex` once again to generate the class documentation with the index and changelog:

    pdflatex ucsmonograph.dtx

The generated .CLS file shall be copied to

    TEXMF/tex/latex/ucsmonograph
    
and the .PDF documentation file shall be copied to

    TEXMF/doc/latex/ucsmonograph
    
Where `TEXMF` is your TeX root, that is, your TeX installation folder.

### Installing the CLS file
This installation option is not recommended, but if you're using an on-line TeX editor, this is the way to go.

Download the compiled files in the repository's [Release](https://github.com/HenriqueBaron/ucsmonograph/releases) page.
It is recommended to download the PDF documentation of the class too!
The downloaded CLS file can be copied directly to your on-line project.

## Change log
v1.0.0 (2018-08-04, Henrique Baron):
* Initial version

# ucsmonograph - Português (BR)
Esta é uma classe LaTeX para formatação de trabalhos acadêmicos segundo o Guia para Elaboração de Trabalhos Acadêmicos da Universidade de Caxias do Sul.

O autor deste código é Henrique Baron.
Informações de contato:
* E-mail: henrique.baron@gmail.com
* Perfil do TeX Stack Exchange: https://tex.stackexchange.com/users/153467/henrique-baron

## Licença
Este trabalho utiliza a LPPL, a Licença Pública do Projeto LaTeX, e deve ser distribuído sob suas condições. A versão mais recente da licença está disponível (em inglês) em

http://www.latex-project.org/lppl.txt

Este trabalho possui o status atual de 'mantido', e o mantenedor atual é Henrique Baron.

Este trabalho consiste nos arquivos ucsmonograph.dtx, ucsmonograph.ins e no arquivo gerado ucsmonograph.cls.

## Instalação
Há três possibilidades para instalar a classe `ucsmonograph`:
você pode instalá-la diretamente pela sua distribuição MiKTeX ou TeXLive;
você pode baixar os arquivos de instalação `.dtx` e `.ins`;
ou (especialmente se você está utilizando um editor LaTeX on-line) você pode baixer o arquivo compilado `.cls` diretamente.

### Instalando por uma distribuição TeX
Abra o gerenciador de pacotes (package manager, ou console) da sua distribuição TeX, busque pela classe `ucsmonograph` e instale-a.
Mais simples ainda, se a sua instalação TeX estiver configurada para instalar pacotes on-the-fly, você pode apenas chamar a classe `ucsmonograph` como a sua document class, e a classe e todas as suas dependências serão instaladas automaticamente.

### Instalando a partir dos arquivos INS e DTX
Primeiramente você deve baixar os seguintes arquivos:
* ucsmonograph.dtx
* ucsmonograph.ins

Então, rode o comando `latex` no arquivo INS para gerar o arquivo da classe (.cls):
    
    latex ucsmonograph.ins
    
e rode o comando `pdflatex` no arquivo DTX para gerar a documentação da classe:

    pdflatex ucsmonograph.dtx
    
Gere o índice e o changelog com comandos `makeindex`:

    makeindex -s gglo.ist -o ucsmonograph.gls ucsmonograph.glo
    makeindex -s gind.ist -o ucsmonograph.ind ucsmonograph.idx
    
e execute o comando `pdflatex` mais uma vez para gerar a documentação da classe, agora com índice e changelog:

    pdflatex ucsmonograph.dtx
    
O arquivo .CLS gerado deve ser copiado para

    TEXMF/tex/latex/ucsmonograph
    
e a documentação .PDF deve ser copiada para

    TEXMF/doc/latex/ucsmonograph
    
onde `TEXMF` é a sua raiz TeX, isto é, a sua pasta de instalação do TeX.

### Instalando o arquivo CLS
Essa opção de isntalação não é recomendada, mas se você estiver utilizando um editor TeX on-line, é a opção a se tomar.

Baixe os arquivos compilados na página de [Release](https://github.com/HenriqueBaron/ucsmonograph/releases) do repositório.
É recomendável baixar a documentação em PDF da classe também!
O arquivo CLS baixado pode ser copiado diretamente para o seu projeto on-line.
