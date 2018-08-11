$class = "ucsmonograph"
$7zipPath = "C:\Program Files\7-Zip"
$currentPath = (Get-Location).Path

# Apaga a distribuição anterior
Remove-Item -Recurse $class/
Remove-Item "$class.zip"

# Compila os arquivos .cls e .pdf
.\tools\GenerateFiles.ps1

# Cria uma pasta e copia os arquivos necessários, convertendo terminações DOS (CRLF) para Unix (LF)
New-Item -ItemType directory -Path .\$class
Copy-Item .\$class.pdf -Destination .\$class\
[IO.File]::WriteAllText("$currentPath\$class\README.md", ([IO.File]::ReadAllText("$currentPath\README.md") -replace "`r`n", "`n"))
[IO.File]::WriteAllText("$currentPath\$class\$class.ins", ([IO.File]::ReadAllText("$currentPath\$class.ins") -replace "`r`n", "`n"))
[IO.File]::WriteAllText("$currentPath\$class\$class.dtx", ([IO.File]::ReadAllText("$currentPath\$class.dtx") -replace "`r`n", "`n"))

# Compacta a distribuição e apaga a pasta fonte
& "$7zipPath\7z.exe" a "$class.zip" ".\$class\"
Remove-Item -Recurse $class/