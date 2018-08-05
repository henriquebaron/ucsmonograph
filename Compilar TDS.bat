@echo off
del ucsmonography.cls /Q
del ucsmonography.zip /Q
latex ucsmonography.ins
pdflatex ucsmonography.dtx
mkdir ucsmonography
xcopy README.md ucsmonography /K /I /Y
xcopy ucsmonography.dtx ucsmonography /K /I /Y
xcopy ucsmonography.ins ucsmonography /K /I /Y
"C:\Program Files\7-Zip\7z" a ucsmonography.zip .\ucsmonography\
rmdir .\ucsmonography /Q /S
git clean -x -f -e *.zip -e *.cls