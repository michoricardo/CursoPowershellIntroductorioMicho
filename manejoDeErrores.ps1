
Try{
    #Codigo potencialmente problematico
    Throw "Ocurrio un error" #Simula que un error ocurrio
}
Catch{
    Write-Host "Un error ocurrio, continuaremos como quiera..."
}

Write-Host "Ultima parte del codigo, ejecuta de todos modos"