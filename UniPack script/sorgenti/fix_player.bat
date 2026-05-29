@echo off
echo.
echo  ================================================
echo   UniPack v1.0  -  Fix Player Data by UniRedz
echo  ================================================
echo.
echo  Esegui questo bat dalla cartella dell'istanza DREAD
echo  quando un amico riceve "invalid player data".
echo.

set /p PLAYER=  Nome del giocatore da resettare:

echo.
echo  Ricerca UUID di %PLAYER%...

powershell -Command ^
  "$cache = Get-Content 'usercache.json' | ConvertFrom-Json; ^
   $entry = $cache | Where-Object { $_.name -eq '%PLAYER%' }; ^
   if ($entry) { Write-Output $entry.uuid } else { Write-Output 'NOT_FOUND' }" > %TEMP%\uuid_result.txt

set /p UUID=<%TEMP%\uuid_result.txt

if "%UUID%"=="NOT_FOUND" (
    echo  [!!] Giocatore "%PLAYER%" non trovato in usercache.json
    echo       Assicurati che abbia gia giocato almeno una volta.
    echo.
    pause
    exit /b
)

echo  [OK] UUID trovato: %UUID%
echo.
echo  Mondi disponibili:
echo.
for /D %%W in ("saves\*") do echo    - %%W
echo.
set /p WORLD=  Nome del mondo da fixare (es. Dread):

set DATAFILE=saves\%WORLD%\playerdata\%UUID%.dat
set BACKUPFILE=saves\%WORLD%\playerdata\%UUID%.dat.backup

if not exist "%DATAFILE%" (
    echo.
    echo  [!!] File non trovato: %DATAFILE%
    echo       Il giocatore potrebbe non aver mai giocato in questo mondo.
    pause
    exit /b
)

echo.
echo  Backup in corso...
copy "%DATAFILE%" "%BACKUPFILE%" >nul
echo  [OK] Backup salvato: %BACKUPFILE%

del /f /q "%DATAFILE%"
echo  [OK] Playerdata di %PLAYER% resettato.
echo.
echo  Il giocatore puo ora rientrare nel mondo.
echo  NOTA: inventario e posizione saranno azzerati.
echo        Il backup e in: %BACKUPFILE%
echo.
pause
