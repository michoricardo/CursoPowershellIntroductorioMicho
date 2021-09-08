$a = Read-Host "Pon un numero" #leer una entrada
if($a -gt 5){ 
    Write-Host "El valor es mayor a 5" #Escribir una salida
}
elseif($a -eq 5){
    Write-Host "El valor es igual chavo!"
}
else{
    Write-Host "El valor es menor a 5"
}