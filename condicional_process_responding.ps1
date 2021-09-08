$nombreProceso = Read-Host "Escribe el nombre del proceso a checar"
$objetoProceso = Get-Process $nombreProceso
if($objetoProceso.Responding){
    Write-Host "El proceso responde correctamente!"
}
else{
    Write-Host "El proceso $nombreProceso no responde, lo cerrare"
    $objetoProceso.kill()
}
