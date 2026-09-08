@echo off
setlocal EnableExtensions
cd /d "%~dp0"
echo.
echo ==============================================
echo  NEXUS ARCADE v1.5.8 FINAL - JUNTAR ARQUIVOS
echo ==============================================
echo.
if not exist "NexusArcade-v1.5.8-FINAL.zip.part-00" goto :faltando
if not exist "NexusArcade-v1.5.8-FINAL.zip.part-01" goto :faltando
if not exist "NexusArcade-v1.5.8-FINAL.zip.part-02" goto :faltando
if not exist "NexusArcade-v1.5.8-FINAL.zip.part-03" goto :faltando
if not exist "NexusArcade-v1.5.8-FINAL.zip.part-04" goto :faltando
if not exist "NexusArcade-v1.5.8-FINAL.zip.part-05" goto :faltando
if not exist "NexusArcade-v1.5.8-FINAL.zip.part-06" goto :faltando
if not exist "NexusArcade-v1.5.8-FINAL.zip.part-07" goto :faltando
if not exist "NexusArcade-v1.5.8-FINAL.zip.part-08" goto :faltando

echo Todas as 9 partes foram encontradas.
echo Juntando, aguarde...
copy /b "NexusArcade-v1.5.8-FINAL.zip.part-00"+"NexusArcade-v1.5.8-FINAL.zip.part-01"+"NexusArcade-v1.5.8-FINAL.zip.part-02"+"NexusArcade-v1.5.8-FINAL.zip.part-03"+"NexusArcade-v1.5.8-FINAL.zip.part-04"+"NexusArcade-v1.5.8-FINAL.zip.part-05"+"NexusArcade-v1.5.8-FINAL.zip.part-06"+"NexusArcade-v1.5.8-FINAL.zip.part-07"+"NexusArcade-v1.5.8-FINAL.zip.part-08" "Nexus-Arcade-Windows-v1.5.8-FINAL.zip" >nul
if errorlevel 1 goto :erro
echo.
echo PRONTO: Nexus-Arcade-Windows-v1.5.8-FINAL.zip
echo Apague a pasta antiga, extraia este ZIP e abra "Nexus Arcade.exe".
echo.
pause
exit /b 0

:faltando
echo ERRO: uma ou mais partes estao faltando nesta pasta.
echo Baixe as 9 partes, de part-00 ate part-08, e coloque junto deste BAT.
pause
exit /b 1

:erro
echo ERRO ao juntar os arquivos. Verifique o espaco livre no disco.
pause
exit /b 1
