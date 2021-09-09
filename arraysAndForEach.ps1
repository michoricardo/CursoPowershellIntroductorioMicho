#Los arrays son mejor conocidos como matrices, pueden tener varios tipos de datos
$pathMicho= "C:\Users\ricardo.garcia\Downloads"
Set-Location $pathMicho
$files =   Get-ChildItem -File  #Matriz de archivos 
Write-Host "Archivos encontrados:"
#$files.count"
Write-Host "Se imprimiran los siguientes archivos .txt: "
Foreach($archivo in $files){
    if($archivo.Extension -eq ".txt"){
        Write-Host $archivo
        Remove-Item $archivo -WhatIf #Simula el borrar un archivo
    }
}