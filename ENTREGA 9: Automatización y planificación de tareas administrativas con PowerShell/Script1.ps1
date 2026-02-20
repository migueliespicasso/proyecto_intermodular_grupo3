# Crear carpeta si no existe
mkdir C:\ResultadoScripts -ErrorAction SilentlyContinue

# Redirigir salida a archivo
hostname > C:\ResultadoScripts\Info.txt
whoami >> C:\ResultadoScripts\Info.txt
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" >> C:\ResultadoScripts\Info.txt
ipconfig | findstr "IPv4" >> C:\ResultadoScripts\Info.txt
