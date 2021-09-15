#Se tiene que ejecutar con privilegios de administrador
Enable-PSRemoting -Force
#A veces se tiene que dar thrust entre anfrition e invitado
#Para a;adir la informacion del anfitrion, podemos buscar su host name con: SystemInfo (se puede poner una ip tambien)
Set-Item WSMan :\localhost\Client\TrustedHosts Host-Example

#En la compu invitada tambien ponemos el nombre del otro
Set-Item WSMan:\localhost\client\trustedhosts Host-Example2-

#Despues de esto ya se confian

Restart-Service WinRm #para reiniciar el servicio de remoting

#Para iniciar con una compu remota, se puede usar: 
Enter-PSSession Host-Example
#Para terminar una sesion hacemos:
Exit-PSSession

#Se pueden ejecutar comandos en el ordenador conectado sin sesion
Invoke-Command Host-Example -ScriptBlock {Get-Date}
#Para crear una sesion persistente
$Session = New-PSSession -ComputerName Host-Example