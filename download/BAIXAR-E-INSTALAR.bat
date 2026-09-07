@echo off
chcp 65001 >nul 2>&1
title Nexus Arcade - Baixar e Instalar
echo ============================================
echo   Nexus Arcade - Download Automatico
echo ============================================
echo.
echo Este script vai baixar todas as partes do Nexus Arcade
echo e montar o programa pronto para uso.
echo.
echo Pressione qualquer tecla para comecar...
pause >nul

echo.
echo [1/3] Baixando as partes...
powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "$base = 'https://raw.githubusercontent.com/AlexCromy/nexus-arcade-windows/main/download';" ^
  "$parts = 'aa','ab','ac','ad','ae','af','ag','ah','ai','aj';" ^
  "foreach ($p in $parts) {" ^
  "  $url = \"$base/NexusArcade.zip.part-$p\";" ^
  "  $out = \"NexusArcade.zip.part-$p\";" ^
  "  Write-Host \"  Baixando parte $p...\" -NoNewline;" ^
  "  try { Invoke-WebRequest -Uri $url -OutFile $out -UseBasicParsing; Write-Host ' OK'; }" ^
  "  catch { Write-Host ' FALHOU'; Write-Host \"Erro: $_\"; exit 1; }" ^
  "}"

if %errorlevel% neq 0 (
  echo.
  echo ERRO: Falha ao baixar as partes. Verifique sua internet e tente novamente.
  pause
  exit /b 1
)

echo.
echo [2/3] Juntando as partes...
copy /b NexusArcade.zip.part-aa+NexusArcade.zip.part-ab+NexusArcade.zip.part-ac+NexusArcade.zip.part-ad+NexusArcade.zip.part-ae+NexusArcade.zip.part-af+NexusArcade.zip.part-ag+NexusArcade.zip.part-ah+NexusArcade.zip.part-ai+NexusArcade.zip.part-aj NexusArcade-Windows-x64.zip >nul 2>&1

if %errorlevel% neq 0 (
  echo ERRO: Falha ao juntar as partes.
  pause
  exit /b 1
)

echo   Arquivo ZIP criado com sucesso!
echo.
echo [3/3] Extraindo...
if exist "Nexus Arcade-win32-x64" rmdir /s /q "Nexus Arcade-win32-x64" 2>nul
powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "Expand-Archive -Path 'NexusArcade-Windows-x64.zip' -DestinationPath '.' -Force"

if %errorlevel% neq 0 (
  echo ERRO: Falha ao extrair o ZIP.
  echo O arquivo NexusArcade-Windows-x64.zip foi criado. Voce pode extrai-lo manualmente.
  pause
  exit /b 1
)

echo.
echo ============================================
echo   PRONTO! Nexus Arcade baixado e extraido!
echo ============================================
echo.
echo O programa esta na pasta "Nexus Arcade-win32-x64".
echo Para abrir, de um duplo clique em "Nexus Arcade.exe"
echo.
echo Deseja abrir a pasta agora? (S/N)
set /p resposta=
if /i "%resposta%"=="S" explorer "Nexus Arcade-win32-x64"
echo.
echo Limpando arquivos temporarios...
del NexusArcade.zip.part-* >nul 2>&1
del NexusArcade-Windows-x64.zip >nul 2>&1
echo.
echo Concluido!
pause
