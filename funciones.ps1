function muestraFecha{ #Defino la funcion para mostrar la fecha
    Write-Host "Imprimiendo la fecha actual "
    Get-Date
}
function DameInfo{
    param($Nombre1) #Recibe un parametro
    Get-Process $Nombre1 | Select-Object CPU | Format-Table #Imprime valores de uso del CPU del proceso que se mande como parametro
}
function DameInfoPredeterminado{
    param($Nombre2="Notepad")
    Start-Process $Nombre2 
    Get-Process $Nombre2 | Format-Table ProcessName, Id #Llama al proceso con un format bonito en pipeline

}

muestraFecha #Mando a llamar a la funcion para mostrar la fecha
DameInfoPredeterminado #llamamos a la funcion sin parametros
DameInfo Chrome #mandamos a llamar a la funcion con el parametro Chrome