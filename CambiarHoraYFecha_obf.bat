��cho off
@echo off
@title Cambiar Fecha Y Hora
cls
setlocal enableextensions && setlocal enabledelayedexpansion
@echo off
color 8e
cls
start chrome /incognito time.is
cls
echo Establece Tu Hora :)
time
timeout 1 >nul
cls
start chrome /incognito fechadehoy.com
cls
pause
cls
echo La Fecha Es Con Numeros
date

 