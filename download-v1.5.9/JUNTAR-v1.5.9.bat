@echo off
setlocal EnableExtensions
cd /d "%~dp0"
echo ==============================================
echo  NEXUS ARCADE v1.5.9 - JUNTAR ARQUIVOS
echo ==============================================
set Z=NexusArcade-v1.5.9.zip
if not exist "%Z%.part-00" goto faltou
if not exist "%Z%.part-01" goto faltou
if not exist "%Z%.part-02" goto faltou
if not exist "%Z%.part-03" goto faltou
if not exist "%Z%.part-04" goto faltou
if not exist "%Z%.part-05" goto faltou
if not exist "%Z%.part-06" goto faltou
if not exist "%Z%.part-07" goto faltou
if not exist "%Z%.part-08" goto faltou
if not exist "%Z%.part-09" goto faltou
if not exist "%Z%.part-10" goto faltou
if exist "%Z%" del "%Z%"
copy /b "%Z%.part-00"+"%Z%.part-01"+"%Z%.part-02"+"%Z%.part-03"+"%Z%.part-04"+"%Z%.part-05"+"%Z%.part-06"+"%Z%.part-07"+"%Z%.part-08"+"%Z%.part-09"+"%Z%.part-10" "%Z%"
echo.
echo PRONTO! Extraia %Z% e abra "Nexus Arcade.exe".
pause
exit /b 0
:faltou
echo ERRO: faltam partes na pasta. Baixe todas as 11 partes (part-00 ate part-10).
pause
