# ucsmonograph
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
There are two possibilities for installing the `ucsmonograph` class: you may get it in a zipped TDS (TeX Directory Structure) or you may download the following files:
* ucsmonograph.ins
* ucsmonograph.dtx

### Installing from TDS
The **ucsmonograph.tds** folder contains the subfolders **doc**, **source** and **tex**. The following structure is present in your LaTeX root (TEXMF) folder. The downloaded folders can be copied and merged to this directory structure.

### Installing from INS and DTX files
You may run `latex` on the INS file to make it generate the class (.cls) file:

    latex ucsmonograph.ins
    
and you can run ´pdflatex´ on the DTX file to generate the class documentation:

    pdflatex ucsmonograph.dtx

The generated .CLS file shall be copied to

    TEXMF/tex/latex/ucsmonograph
    
and the .PDF documentation file shall be copied to

    TEXMF/doc/latex/ucsmonograph

## Change log
v1.0 (2018-08-04, Henrique Baron):
* Initial version
