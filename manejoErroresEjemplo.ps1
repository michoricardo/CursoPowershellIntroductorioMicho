#Existen excepciones de terminacion y de no terminacion
#Un bloc catch solo se ejecuta si hay una excepcion de terminacion

$ErrorActionPreference = "Stop" #se agrega para evitar que los errores sean no terminales (Es variable automatica)
$Nombre = Read-Host "Escribe un nombre para el nuevo archivo"
$Path = Read-Host "Escribe un path"
Try{
   New-Item -Path $Path -Name $Nombre -ItemType File  # -ErrorAction Stop se puede agregar aqui para que sea un error de terminacion
}
Catch{
    Write-Host "Un error ocurrio..."
}
Finally{
    #Esta parte del codigo siempre se ejecuta. Sirve para cerrar conexiones, limpiar cosas, etc
    $Date = Get-Date
    Write-Host = "Intento de creacion de archivo el $Date"
}
Write-Host "Finalizo el codigo"