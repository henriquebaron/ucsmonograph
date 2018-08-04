@echo off
del ucsmono.cls /Q
latex ucsmono.ins
pdflatex ucsmono.dtx
mkdir ucsmono.tds\tex\latex\ucsmono
mkdir ucsmono.tds\doc\latex\ucsmono
xcopy ucsmono.cls ucsmono.tds\tex\latex\ucsmono /K /I /Y
xcopy ucsmono.pdf ucsmono.tds\doc\latex\ucsmono /K /I /Y