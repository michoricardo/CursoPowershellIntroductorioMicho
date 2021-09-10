#Uri identificador de recurso especifico
#URL identificador que te dice como ingresar por ejemplo https://google.com
#Para enviar una peticion
$id = [System.Guid]::NewGuid().ToString() #:: Static member operator #Se crea un nuevo ID y se pasa a string
Write-Output "Your id is: $id"
Invoke-RestMethod -Method Post -Uri "https://webhookURI" -Body (( @{ejemploIdAlgo ="1111"; Id=$id; userId= "user@example.com"; property = "exampleProperty2" } )| ConvertTo-Json -Depth 100)