Get-PSDrive > C:\ResultadosScripts\Script6.txt
type C:\ResultadosScripts\Script6.txt

Write-Host "Último inicio del sistema:"
(Get-CimInstance Win32_OperatingSystem).LastBootUpTime
