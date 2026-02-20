$Grupo = Read-Host "Pon el nombre el grupo"
$Ruta = "C:\ResultadoScripts"
$Archivo = "$Ruta\InfoUsuarios.txt"

if (!(Test-Path $Ruta)) {
New-Item -ItemType Directory -Path $Ruta
}

Import-Module ActiveDirectory

$DN = (Get-ADGroup $Grupo).DistinguishedName

$Resultado = Get-ADUser -Filter * -Properties MemberOf, Enabled, ManagedBy |
Where-Object { $_.ManagedBy -eq $DN } |
ForEach-Object {
$Grupos = ($_.MemberOf | ForEach-Object { (Get-ADGroup $_).Name }) -join ", "
"$($_.SamAccountName) | $Grupos | " + ($(if($_.Enabled){"Habilitado"}else{"Deshabilitado"}))
}


$Resultado

$Resultado | Out-File $Archivo