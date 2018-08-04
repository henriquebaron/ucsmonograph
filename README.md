# ucsmono
LaTeX class made for typesetting academic documents according to the ABNT (Brazillian Technical Standards Association) standards, adjusted to the requirements of the UCS (University of Caxias do Sul).

The author of this document is Henrique Baron

## Installation
There are two possibilities for installing the `ucsmono` class: you may get it in a zipped TDS (TeX Directory Structure) or you may download the following files:
* ucsmono.ins
* ucsmono.dtx

### Installing from TDS
The **ucsmono.tds** folder contains the subfolders **doc**, **source** and **tex**. The following structure is present in your LaTeX root (TEXMF) folder. The downloaded folders can be copied and merged to this directory structure.

### Installing from INS and DTX files
You may run `latex` on the INS file to make it generate the class (.cls) file:

    latex ucsmono.ins
    
and you can run ´pdflatex´ on the DTX file to generate the class documentation:

    pdflatex ucsmono.dtx

The generated .CLS file shall be copied to

    TEXMF/tex/latex/ucsmono
    
and the .PDF documentation file shall be copied to

    TEXMF/doc/latex/ucsmono

## Change log
v1.0 (2018-08-04):
* Initial version
