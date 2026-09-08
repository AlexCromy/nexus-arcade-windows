@echo off
setlocal EnableExtensions
cd /d "%~dp0"
echo.
echo ==============================================
echo     NEXUS ARCADE v1.5.8 - JUNTAR ARQUIVOS
echo ==============================================
echo.
for /L %%N in (0,1,8) do (
  set "P=0%%N"
  call set "P=%%P:~-2%%"
  call if not exist "NexusArcade-v1.5.8.zip.part-%%P%%" (
    echo ERRO: falta NexusArcade-v1.5.8.zip.part-%%P%%
    pause
    exit /b 1
  )
)
copy /b NexusArcade-v1.5.8.zip.part-0+NexusArcade-v1.5.8.zip.part-1+NexusArcade-v1.5.8.zip.part-2+NexusArcade-v1.5.8.zip.part-3+NexusArcade-v1.5.8.zip.part-4+NexusArcade-v1.5.8.zip.part-5+NexusArcade-v1.5.8.zip.part-6+NexusArcade-v1.5.8.zip.part-7+NexusArcade-v1.5.8.zip.part-8 Nexus-Arcade-Windows-v1.5.8.zip >nul
if errorlevel 1 (
  echo ERRO ao juntar os arquivos.
  pause
  exit /b 1
)
echo.
echo PRONTO: Nexus-Arcade-Windows-v1.5.8.zip
echo Extraia esse ZIP e abra "Nexus Arcade.exe".
echo IMPORTANTE: apague qualquer pasta antiga antes de extrair.
echo.
pause
