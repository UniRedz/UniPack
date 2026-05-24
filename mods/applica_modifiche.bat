@echo off
color 0A
echo.
echo  ██╗   ██╗███╗   ██╗██╗██████╗  █████╗  ██████╗██╗  ██╗
echo  ██║   ██║████╗  ██║██║██╔══██╗██╔══██╗██╔════╝██║ ██╔╝
echo  ██║   ██║██╔██╗ ██║██║██████╔╝███████║██║     █████╔╝
echo  ██║   ██║██║╚██╗██║██║██╔═══╝ ██╔══██║██║     ██╔═██╗
echo  ╚██████╔╝██║ ╚████║██║██║     ██║  ██║╚██████╗██║  ██╗
echo   ╚═════╝ ╚═╝  ╚═══╝╚═╝╚═╝     ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝
echo.
echo             Modpack Installer  ^|  by UniRedz
echo  ════════════════════════════════════════════════════════
echo   (c) 2026 UniRedz  ^|  UniPack  ^|  All rights reserved
echo  ════════════════════════════════════════════════════════
echo.
timeout /t 2 /nobreak >nul

echo  [1/4] Rimozione mod incompatibili...
echo.

if not exist "mods\_disabled" mkdir "mods\_disabled"

if exist "mods\biomereplacer-2.1-toad-forge.jar" (
    move "mods\biomereplacer-2.1-toad-forge.jar" "mods\_disabled\" >nul
    echo   [OK] biomereplacer disabilitato
) else ( echo   [--] biomereplacer non trovato )

if exist "mods\Terralith_1.19.3_v2.3.12.jar" (
    move "mods\Terralith_1.19.3_v2.3.12.jar" "mods\_disabled\" >nul
    echo   [OK] Terralith disabilitato
) else ( echo   [--] Terralith non trovato )

if exist "mods\nonetherportal-1.2.jar" (
    move "mods\nonetherportal-1.2.jar" "mods\_disabled\" >nul
    echo   [OK] nonetherportal disabilitato
) else ( echo   [--] nonetherportal non trovato )

echo.
echo  [2/4] Download mod aggiuntive...
echo.

if not exist "mods\sophisticatedcore-1.19.2-0.6.4.730.jar" (
    echo   ^> Sophisticated Core...
    powershell -Command "Invoke-WebRequest -Uri 'https://cdn.modrinth.com/data/nmoqTijg/versions/LRDUyYPU/sophisticatedcore-1.19.2-0.6.4.730.jar' -OutFile 'mods\sophisticatedcore-1.19.2-0.6.4.730.jar'"
    if exist "mods\sophisticatedcore-1.19.2-0.6.4.730.jar" (
        echo   [OK] Sophisticated Core
    ) else ( echo   [!!] ERRORE - Sophisticated Core non scaricato )
) else ( echo   [--] Sophisticated Core gia presente )

if exist "mods\sophisticatedbackpacks-1.19.2-3.18.50.847.jar" (
    del /f /q "mods\sophisticatedbackpacks-1.19.2-3.18.50.847.jar" >nul
)

if not exist "mods\sophisticatedbackpacks-1.19.2-3.20.2.1035.jar" (
    echo   ^> Sophisticated Backpacks...
    powershell -Command "Invoke-WebRequest -Uri 'https://cdn.modrinth.com/data/TyCTlI4b/versions/1TblkbcZ/sophisticatedbackpacks-1.19.2-3.20.2.1035.jar' -OutFile 'mods\sophisticatedbackpacks-1.19.2-3.20.2.1035.jar'"
    if exist "mods\sophisticatedbackpacks-1.19.2-3.20.2.1035.jar" (
        echo   [OK] Sophisticated Backpacks
    ) else ( echo   [!!] ERRORE - Sophisticated Backpacks non scaricato )
) else ( echo   [--] Sophisticated Backpacks gia presente )

if not exist "mods\xaerominimap-forge-1.19.2-25.3.13.jar" (
    echo   ^> Xaero's Minimap...
    powershell -Command "Invoke-WebRequest -Uri 'https://cdn.modrinth.com/data/1bokaNcj/versions/fDLqg252/xaerominimap-forge-1.19.2-25.3.13.jar' -OutFile 'mods\xaerominimap-forge-1.19.2-25.3.13.jar'"
    if exist "mods\xaerominimap-forge-1.19.2-25.3.13.jar" (
        echo   [OK] Xaero's Minimap
    ) else ( echo   [!!] ERRORE - Xaero's Minimap non scaricato )
) else ( echo   [--] Xaero's Minimap gia presente )

if not exist "mods\xaeroworldmap-forge-1.19.2-1.40.16.jar" (
    echo   ^> Xaero's World Map...
    powershell -Command "Invoke-WebRequest -Uri 'https://cdn.modrinth.com/data/NcUtCpym/versions/B6EOtlnt/xaeroworldmap-forge-1.19.2-1.40.16.jar' -OutFile 'mods\xaeroworldmap-forge-1.19.2-1.40.16.jar'"
    if exist "mods\xaeroworldmap-forge-1.19.2-1.40.16.jar" (
        echo   [OK] Xaero's World Map
    ) else ( echo   [!!] ERRORE - Xaero's World Map non scaricato )
) else ( echo   [--] Xaero's World Map gia presente )

echo.
echo  [3/4] Copia configurazioni...
echo.
echo   [OK] Config applicata

echo.
echo  [4/4] Installazione datapack nei mondi...
echo.

if exist "saves" (
    for /D %%W in ("saves\*") do (
        if not exist "%%W\datapacks" mkdir "%%W\datapacks"
        xcopy /E /I /Y "datapacks\dread_spawn_boost" "%%W\datapacks\dread_spawn_boost" >nul
        echo   [OK] Datapack installato in: %%W
    )
) else (
    echo   [--] Nessun mondo trovato - installa il datapack manualmente dopo aver creato un mondo
)

echo.
echo  ════════════════════════════════════════════════════════
echo   Installazione completata! Avvia Minecraft e buon gioco.
echo   UniPack v1.0  ^|  (c) 2026 UniRedz
echo  ════════════════════════════════════════════════════════
echo.
pause
