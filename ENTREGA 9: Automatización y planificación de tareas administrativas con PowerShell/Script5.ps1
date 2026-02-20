mkdir C:\ResultadosScripts -ErrorAction SilentlyContinue

New-SmbShare -Name ResultadoScripts -Path C:\ResultadosScripts -ReadAccess "Todos" -ErrorAction SilentlyContinue

Get-Printer >> C:\ResultadosScripts\InformacionImpresora.txt
Get-WmiObject Win32_Printer > C:\ResultadosScripts\InformacionPermisosImpresora.txt