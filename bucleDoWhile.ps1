#Bucle do while
#Ejecuta al menos una vez el ciclo
$variable = 1
do{
    $variable =Read-Host "Escribe un valor o Pulsa 0 para salir"
    Start-Sleep 1
    Write-Host "Valor leido: $variable "
}while($variable -ne 0)
