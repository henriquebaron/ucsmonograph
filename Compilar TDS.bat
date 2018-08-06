@echo off
set class="ucsmonograph"
del %class%.cls /Q
del %class%.zip /Q
latex %class%.ins
pdflatex %class%.dtx
mkdir %class%
xcopy README.md %class% /K /I /Y
xcopy %class%.dtx %class% /K /I /Y
xcopy %class%.ins %class% /K /I /Y
xcopy %class%.pdf %class% /K /I /Y
"C:\Program Files\7-Zip\7z" a %class%.zip .\%class%\
rmdir .\%class% /Q /S
git clean -x -f -e *.zip -e *.cls