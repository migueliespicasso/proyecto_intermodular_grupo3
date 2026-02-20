Get-SmbShare | Out-File -FilePath C:\ResultadoScripts\InfoConectividad.txt -Append

$carpetas=smbShare
foreach($carpeta in $carpetas){
    Write-Host "Nombre: $($carpeta.Name)"
}


Get-SmbShareAccess -Name $($carpeta.Name) | Out-File -FilePath C:\ResultadoScripts\InfoConectividad.txt -Append

#Juan Carlos Cros Flor
