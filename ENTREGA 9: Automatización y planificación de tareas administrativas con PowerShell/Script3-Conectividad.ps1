$Servidor = "192.168.1.100"
$Cliente = "192.168.1.101"
$Router = "192.168.1.102"

function Comprobar-Conectividad {
    param (
        [string]$Nombre,
        [string]$Direccion
    )
    if (Test-Connection -ComputerName $Direccion -Count 2 -Quiet) { 
        $test= "$Nombre ($Direccion): Conectado" 
        $test | Out-File -FilePath C:\ResultadoScripts\InfoConectividad.txt -Append
    }
    else {
        $test= "$Nombre ($Direccion): No conectado"
        $test | Out-File -FilePath C:\ResultadoScripts\InfoConectividad.txt -Append
    }
}

Get-Date -Format "dd/MM/yyyy" | Out-File -FilePath C:\ResultadoScripts\InfoConectividad.txt -Append
Comprobar-Conectividad -Nombre "Servidor" -Direccion $Servidor  
Comprobar-Conectividad -Nombre "Cliente" -Direccion $Cliente 
Comprobar-Conectividad -Nombre "Router" -Direccion $Router
