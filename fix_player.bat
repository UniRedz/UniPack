@echo off
echo.
echo  ================================================
echo   UniPack v2.0  -  Fix Player Data by UniRedz
echo  ================================================
echo.

set /p PLAYER=  Nome del giocatore da resettare:

echo.
echo  Ricerca UUID di %PLAYER%...

powershell -NoProfile -Command "$c=Get-Content 'usercache.json'|ConvertFrom-Json;$e=$c|Where-Object{$_.name -ieq '%PLAYER%'};if($e){$e.uuid}else{'NOT_FOUND'}" > "%TEMP%\uuid_result.txt" 2>nul

set /p UUID=<"%TEMP%\uuid_result.txt"

if not defined UUID (
    echo  [!!] Errore lettura UUID. Esegui il bat dalla cartella UniPack.
    echo.
    pause & exit /b
)

if "%UUID%"=="NOT_FOUND" (
    echo  [!!] Giocatore "%PLAYER%" non trovato. Deve aver giocato almeno una volta.
    echo.
    pause & exit /b
)

echo  [OK] UUID: %UUID%
echo.
echo  Mondi disponibili:
for /D %%W in ("saves\*") do echo    - %%~nxW
echo.
set /p WORLD=  Nome del mondo (es. Dread):

set DATADIR=saves\%WORLD%\playerdata

if not exist "%DATADIR%\%UUID%.dat" (
    echo.
    echo  [!!] File non trovato: %DATADIR%\%UUID%.dat
    echo       Il giocatore potrebbe non aver mai giocato in questo mondo.
    echo.
    pause & exit /b
)

echo.
echo  Backup e reset in corso...

if exist "%DATADIR%\%UUID%.dat" (
    copy "%DATADIR%\%UUID%.dat" "%DATADIR%\%UUID%.dat.backup" >nul
    del /f /q "%DATADIR%\%UUID%.dat"
    echo   [OK] playerdata resettato
)

if exist "%DATADIR%\%UUID%.dat_old" (
    del /f /q "%DATADIR%\%UUID%.dat_old"
    echo   [OK] playerdata_old rimosso
)

if exist "%DATADIR%\%UUID%.cosarmor" (
    copy "%DATADIR%\%UUID%.cosarmor" "%DATADIR%\%UUID%.cosarmor.backup" >nul
    del /f /q "%DATADIR%\%UUID%.cosarmor"
    echo   [OK] cosarmor resettato
)

echo.
echo  %PLAYER% puo ora rientrare. Inventario e posizione azzerati.
echo  Backup salvati in: %DATADIR%\
echo.
pause
