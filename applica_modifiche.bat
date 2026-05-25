@echo off
echo.
echo  ================================================
echo   UniPack v1.0  -  Modpack Installer by UniRedz
echo   (c) 2026 UniRedz - All rights reserved
echo  ================================================
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
    echo   Sophisticated Core...
    powershell -Command "Invoke-WebRequest -Uri 'https://cdn.modrinth.com/data/nmoqTijg/versions/LRDUyYPU/sophisticatedcore-1.19.2-0.6.4.730.jar' -OutFile 'mods\sophisticatedcore-1.19.2-0.6.4.730.jar'"
    if exist "mods\sophisticatedcore-1.19.2-0.6.4.730.jar" (
        echo   [OK] Sophisticated Core
    ) else ( echo   [!!] ERRORE - Sophisticated Core non scaricato )
) else ( echo   [--] Sophisticated Core gia presente )

if exist "mods\sophisticatedbackpacks-1.19.2-3.18.50.847.jar" (
    del /f /q "mods\sophisticatedbackpacks-1.19.2-3.18.50.847.jar"
)

if not exist "mods\sophisticatedbackpacks-1.19.2-3.20.2.1035.jar" (
    echo   Sophisticated Backpacks...
    powershell -Command "Invoke-WebRequest -Uri 'https://cdn.modrinth.com/data/TyCTlI4b/versions/1TblkbcZ/sophisticatedbackpacks-1.19.2-3.20.2.1035.jar' -OutFile 'mods\sophisticatedbackpacks-1.19.2-3.20.2.1035.jar'"
    if exist "mods\sophisticatedbackpacks-1.19.2-3.20.2.1035.jar" (
        echo   [OK] Sophisticated Backpacks
    ) else ( echo   [!!] ERRORE - Sophisticated Backpacks non scaricato )
) else ( echo   [--] Sophisticated Backpacks gia presente )

if not exist "mods\Clumps-forge-1.19.2-9.0.0+14.jar" (
    echo   Clumps...
    powershell -Command "Invoke-WebRequest -Uri 'https://cdn.modrinth.com/data/Wnxd13zP/versions/3GURrv52/Clumps-forge-1.19.2-9.0.0+14.jar' -OutFile 'mods\Clumps-forge-1.19.2-9.0.0+14.jar'"
    if exist "mods\Clumps-forge-1.19.2-9.0.0+14.jar" (
        echo   [OK] Clumps
    ) else ( echo   [!!] ERRORE - Clumps non scaricato )
) else ( echo   [--] Clumps gia presente )

if not exist "mods\canary-mc1.19.2-0.3.3.jar" (
    echo   Canary...
    powershell -Command "Invoke-WebRequest -Uri 'https://cdn.modrinth.com/data/qa2H4BS9/versions/kbjigmpt/canary-mc1.19.2-0.3.3.jar' -OutFile 'mods\canary-mc1.19.2-0.3.3.jar'"
    if exist "mods\canary-mc1.19.2-0.3.3.jar" (
        echo   [OK] Canary
    ) else ( echo   [!!] ERRORE - Canary non scaricato )
) else ( echo   [--] Canary gia presente )

if not exist "mods\ImmediatelyFast-Forge-1.4.0+1.19.2.jar" (
    echo   ImmediatelyFast...
    powershell -Command "Invoke-WebRequest -Uri 'https://cdn.modrinth.com/data/5ZwdcRci/versions/OWO57F2j/ImmediatelyFast-Forge-1.4.0+1.19.2.jar' -OutFile 'mods\ImmediatelyFast-Forge-1.4.0+1.19.2.jar'"
    if exist "mods\ImmediatelyFast-Forge-1.4.0+1.19.2.jar" (
        echo   [OK] ImmediatelyFast
    ) else ( echo   [!!] ERRORE - ImmediatelyFast non scaricato )
) else ( echo   [--] ImmediatelyFast gia presente )

if not exist "mods\xaerominimap-forge-1.19.2-25.3.13.jar" (
    echo   Xaero's Minimap...
    powershell -Command "Invoke-WebRequest -Uri 'https://cdn.modrinth.com/data/1bokaNcj/versions/fDLqg252/xaerominimap-forge-1.19.2-25.3.13.jar' -OutFile 'mods\xaerominimap-forge-1.19.2-25.3.13.jar'"
    if exist "mods\xaerominimap-forge-1.19.2-25.3.13.jar" (
        echo   [OK] Xaero's Minimap
    ) else ( echo   [!!] ERRORE - Xaero's Minimap non scaricato )
) else ( echo   [--] Xaero's Minimap gia presente )

if not exist "mods\xaeroworldmap-forge-1.19.2-1.40.16.jar" (
    echo   Xaero's World Map...
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
    echo   [--] Nessun mondo trovato - copia manuale dopo aver creato un mondo
)

echo.
echo  ================================================
echo   Installazione completata. Avvia Minecraft.
echo   UniPack v1.0  -  (c) 2026 UniRedz
echo  ================================================
echo.
pause
