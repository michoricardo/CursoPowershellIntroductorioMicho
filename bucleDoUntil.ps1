#Bucle do until
#Ejecuta siempre y cuando la condicion sea falsa (mismo ejemplo pero ahora con do until)
$variable = 1
do{
    $variable =Read-Host "Escribe un valor o Pulsa 0 para salir"
    Start-Sleep 1
    Write-Host "Valor leido: $variable "
}until($variable -ne 0)
