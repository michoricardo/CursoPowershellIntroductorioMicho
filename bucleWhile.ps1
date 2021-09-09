#Bucle while Para cierta condicion
$variable = 1
While ($variable -ne 0){
    $variable =Read-Host "Escribe un valor o Pulsa 0 para salir"
    Start-Sleep 1
    Write-Host "Valor leido: $variable "
}