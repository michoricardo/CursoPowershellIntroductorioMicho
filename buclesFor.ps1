for($i=1; $i -le 5; $i+=1){
    $name = "Archivo_$i.txt"
    $path = Join-Path -path "C:\Users\ricardo.garcia\Downloads" -ChildPath "$name"
    New-Item $path -ItemType File
    Write-Host "Se crearon 5 nuevos archivos"
}