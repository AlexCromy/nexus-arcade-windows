@echo off
chcp 65001 >nul
echo Baixando Nexus Arcade v1.5.7 (7 partes)...
for %%p in (00 01 02 03 04 05 06) do (
  curl -L -o NexusArcade.zip.part-%%p "https://raw.githubusercontent.com/AlexCromy/nexus-arcade-windows/main/download/NexusArcade.zip.part-%%p"
)
copy /b NexusArcade.zip.part-00+NexusArcade.zip.part-01+NexusArcade.zip.part-02+NexusArcade.zip.part-03+NexusArcade.zip.part-04+NexusArcade.zip.part-05+NexusArcade.zip.part-06 NexusArcade.zip
echo Extraindo...
tar -xf NexusArcade.zip
echo Pronto! Abra a pasta "Nexus Arcade-win32-x64" e execute "Nexus Arcade.exe".
pause
