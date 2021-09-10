#Cuando un guion o cmdlet se ejecuta, no se peude obtener el resultado hasta que deje de funcionar
#Permite ejecutar los comandos meintras tiene el control de la consola
Start-Job -ScriptBlock {Get-Process} #ScriptBlock se usa para especificar el comando que debe ser ejecutado
Start-Job -FilePath .\funciones.ps1 #Para ejecutar un script como job

#Para ver que jobs se estan ejecutando
Get-Job
#Para ver la salida del job
Receive-Job
#Wait-Job Job3 por ejemplo va a esperar a que acabe el Job 3 y v avisas
#Stop-Job Job 3 para pararlo
#Remove-Job Job3 para quitarlo
