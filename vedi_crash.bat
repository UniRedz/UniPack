@echo off
set INSTANCE=%~dp0
set CRASH_DIR=%INSTANCE%crash-reports
set DESKTOP=%USERPROFILE%\Desktop
set OUTPUT=%DESKTOP%\UNIPACK-CRASHDETTAGLI.txt

if not exist "%CRASH_DIR%" (
    echo Nessuna cartella crash-reports trovata.
    pause
    exit /b
)

for /f "delims=" %%F in ('dir /b /o-d "%CRASH_DIR%\*.txt" 2^>nul') do (
    set LATEST=%CRASH_DIR%\%%F
    goto :found
)

echo Nessun crash report trovato.
pause
exit /b

:found
echo.
echo  ================================================
echo   UniPack - Ultimo crash report
echo  ================================================
echo.
echo  File: %LATEST%
echo  Copiato in: %OUTPUT%
echo.
copy /Y "%LATEST%" "%OUTPUT%" >nul
echo  [OK] Aperto sul desktop come UNIPACK-CRASHDETTAGLI.txt
echo.
echo  Passa questo file a UniRedz per diagnosticare il problema.
echo.
pause
