@echo off
setlocal EnableExtensions
cd /d "%~dp0"
echo.
echo ==============================================
echo  NEXUS ARCADE v1.5.8 FINAL - JUNTAR ARQUIVOS
echo ==============================================
echo.
for /L %%N in (0,1,8) do (
  set "P=0%%N"
  call set "P=%%P:~-2%%"
  call if not exist "NexusArcade-v1.5.8-FINAL.zip.part-%%P%%" (
    echo ERRO: falta NexusArcade-v1.5.8-FINAL.zip.part-%%P%%
    pause
    exit /b 1
  )
)
copy /b NexusArcade-v1.5.8-FINAL.zip.part-00+NexusArcade-v1.5.8-FINAL.zip.part-01+NexusArcade-v1.5.8-FINAL.zip.part-02+NexusArcade-v1.5.8-FINAL.zip.part-03+NexusArcade-v1.5.8-FINAL.zip.part-04+NexusArcade-v1.5.8-FINAL.zip.part-05+NexusArcade-v1.5.8-FINAL.zip.part-06+NexusArcade-v1.5.8-FINAL.zip.part-07+NexusArcade-v1.5.8-FINAL.zip.part-08 Nexus-Arcade-Windows-v1.5.8-FINAL.zip >nul
if errorlevel 1 (echo ERRO ao juntar os arquivos.& pause & exit /b 1)
echo.
echo PRONTO: Nexus-Arcade-Windows-v1.5.8-FINAL.zip
echo Apague a pasta antiga, extraia este ZIP e abra "Nexus Arcade.exe".
echo.
pause
