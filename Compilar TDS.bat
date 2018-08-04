@echo off
del ucsmono.cls /Q
del ucsmono.tds.zip /Q
latex ucsmono.ins
pdflatex ucsmono.dtx
mkdir ucsmono.tds\tex\latex\ucsmono
mkdir ucsmono.tds\doc\latex\ucsmono
mkdir ucsmono.tds\source\latex\ucsmono
xcopy ucsmono.cls ucsmono.tds\tex\latex\ucsmono /K /I /Y
xcopy ucsmono.pdf ucsmono.tds\doc\latex\ucsmono /K /I /Y
xcopy ucsmono.dtx ucsmono.tds\source\latex\ucsmono /K /I /Y
xcopy ucsmono.ins ucsmono.tds\source\latex\ucsmono /K /I /Y
"C:\Program Files\7-Zip\7z" a ucsmono.tds.zip .\ucsmono.tds\*
rmdir .\ucsmono.tds /Q /S
git clean -x -f -e *.zip -e *.cls