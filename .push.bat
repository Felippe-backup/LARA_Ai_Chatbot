@echo off
setlocal enabledelayedexpansion

echo --------------------------------------
echo Limpando e formatando o codigo...
call dart fix --apply
call dart format .

:: Pega o nome da branch atual
for /f "tokens=*" %%i in ('git rev-parse --abbrev-ref HEAD') do set BRANCH=%%i

echo --------------------------------------
echo Branch atual: !BRANCH!
set /p MESSAGE="Digite a mensagem do commit: "

:: Se a mensagem for vazia, define um padrão
if "!MESSAGE!"=="" set MESSAGE=Ajustes automaticos em %date% %time%

echo --------------------------------------
echo Enviando para o GitHub...

git add .
git commit -m "!MESSAGE!"
git push origin !BRANCH!

echo --------------------------------------
echo Sucesso! Pipeline enviada para !BRANCH!.
pause