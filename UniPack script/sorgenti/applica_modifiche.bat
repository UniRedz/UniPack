@echo off
echo.
echo  ================================================
echo   UniPack v1.0  -  Modpack Installer by UniRedz
echo   (c) 2026 UniRedz - All rights reserved
echo  ================================================
echo.
timeout /t 2 /nobreak >nul

echo  [1/4] Rimozione mod incompatibili e obsolete...
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

for %%F in ("mods\smoothswapping-*.jar") do (
    if exist "%%F" (
        move "%%F" "mods\_disabled\" >nul
        echo   [OK] smoothswapping disabilitato
    )
)

for %%F in ("mods\bloodybits-*.jar") do (
    if exist "%%F" (
        move "%%F" "mods\_disabled\" >nul
        echo   [OK] bloodybits disabilitato (duplicato)
    )
)

for %%F in ("mods\rubidium-mc*.jar") do (
    if exist "%%F" (
        move "%%F" "mods\_disabled\" >nul
        echo   [OK] rubidium disabilitato (sostituito da Embeddium)
    )
)

for %%F in ("mods\rubidium_extras-*.jar") do (
    if exist "%%F" (
        move "%%F" "mods\_disabled\" >nul
        echo   [OK] rubidium_extras disabilitato
    )
)

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

if not exist "mods\embeddium-0.3.18.1+mc1.19.2.jar" (
    echo   Embeddium ^(sostituto Rubidium^)...
    powershell -Command "Invoke-WebRequest -Uri 'https://cdn.modrinth.com/data/sk9rgfiA/versions/AYqEbec0/embeddium-0.3.18.1+mc1.19.2.jar' -OutFile 'mods\embeddium-0.3.18.1+mc1.19.2.jar'"
    if exist "mods\embeddium-0.3.18.1+mc1.19.2.jar" (
        echo   [OK] Embeddium
    ) else ( echo   [!!] ERRORE - Embeddium non scaricato )
) else ( echo   [--] Embeddium gia presente )

if not exist "mods\rubidium-extra-0.4.19+mc1.19.2-build.105.jar" (
    echo   Rubidium Extra...
    powershell -Command "Invoke-WebRequest -Uri 'https://cdn.modrinth.com/data/oY2B1pjg/versions/MCSKG4Ve/rubidium-extra-0.4.19+mc1.19.2-build.105.jar' -OutFile 'mods\rubidium-extra-0.4.19+mc1.19.2-build.105.jar'"
    if exist "mods\rubidium-extra-0.4.19+mc1.19.2-build.105.jar" (
        echo   [OK] Rubidium Extra
    ) else ( echo   [!!] ERRORE - Rubidium Extra non scaricato )
) else ( echo   [--] Rubidium Extra gia presente )

if not exist "mods\noisium-1.0.2.jar" (
    echo   Noisium ^(chunk gen ottimizzato^)...
    powershell -Command "Invoke-WebRequest -Uri 'https://cdn.modrinth.com/data/JRYQR8rr/versions/f16ggOyj/noisium-1.0.2.jar' -OutFile 'mods\noisium-1.0.2.jar'"
    if exist "mods\noisium-1.0.2.jar" (
        echo   [OK] Noisium
    ) else ( echo   [!!] ERRORE - Noisium non scaricato )
) else ( echo   [--] Noisium gia presente )

if not exist "mods\CosmeticArmorReworked-1.19.2-v1a.jar" (
    echo   Cosmetic Armor Reworked...
    powershell -Command "Invoke-WebRequest -Uri 'https://edge.forgecdn.net/files/4016/732/CosmeticArmorReworked-1.19.2-v1a.jar' -OutFile 'mods\CosmeticArmorReworked-1.19.2-v1a.jar'"
    if exist "mods\CosmeticArmorReworked-1.19.2-v1a.jar" (
        echo   [OK] Cosmetic Armor Reworked
    ) else ( echo   [!!] ERRORE - Cosmetic Armor Reworked non scaricato )
) else ( echo   [--] Cosmetic Armor Reworked gia presente )

if not exist "mods\curios-forge-1.19.2-5.1.6.4.jar" (
    echo   Curios API...
    powershell -Command "Invoke-WebRequest -Uri 'https://cdn.modrinth.com/data/vvuO3ImH/versions/uUAY30IE/curios-forge-1.19.2-5.1.6.4.jar' -OutFile 'mods\curios-forge-1.19.2-5.1.6.4.jar'"
    if exist "mods\curios-forge-1.19.2-5.1.6.4.jar" (
        echo   [OK] Curios API
    ) else ( echo   [!!] ERRORE - Curios API non scaricato )
) else ( echo   [--] Curios API gia presente )

if not exist "mods\trashslot-forge-1.19.2-12.1.0.jar" (
    echo   TrashSlot...
    powershell -Command "Invoke-WebRequest -Uri 'https://cdn.modrinth.com/data/vRYk0bv7/versions/VLnMeNCk/trashslot-forge-1.19.2-12.1.0.jar' -OutFile 'mods\trashslot-forge-1.19.2-12.1.0.jar'"
    if exist "mods\trashslot-forge-1.19.2-12.1.0.jar" (
        echo   [OK] TrashSlot
    ) else ( echo   [!!] ERRORE - TrashSlot non scaricato )
) else ( echo   [--] TrashSlot gia presente )

if not exist "mods\corpsecurioscompat-1.18.x-1.20.x-Forge-2.2.2.jar" (
    echo   Corpse x Curios Compat...
    powershell -Command "Invoke-WebRequest -Uri 'https://cdn.modrinth.com/data/pJGcKPh1/versions/svYuXRgL/corpsecurioscompat-1.18.x-1.20.x-Forge-2.2.2.jar' -OutFile 'mods\corpsecurioscompat-1.18.x-1.20.x-Forge-2.2.2.jar'"
    if exist "mods\corpsecurioscompat-1.18.x-1.20.x-Forge-2.2.2.jar" (
        echo   [OK] Corpse x Curios Compat
    ) else ( echo   [!!] ERRORE - Corpse x Curios Compat non scaricato )
) else ( echo   [--] Corpse x Curios Compat gia presente )

if not exist "mods\cosmeticcorpsecompat-1.19.x-1.20.x-Forge-1.0.0.jar" (
    echo   Corpse x Cosmetic Armor Compat...
    powershell -Command "Invoke-WebRequest -Uri 'https://cdn.modrinth.com/data/VrbUxhCI/versions/IUCHHmk5/cosmeticcorpsecompat-1.19.x-1.20.x-Forge-1.0.0.jar' -OutFile 'mods\cosmeticcorpsecompat-1.19.x-1.20.x-Forge-1.0.0.jar'"
    if exist "mods\cosmeticcorpsecompat-1.19.x-1.20.x-Forge-1.0.0.jar" (
        echo   [OK] Corpse x Cosmetic Armor Compat
    ) else ( echo   [!!] ERRORE - Corpse x Cosmetic Armor Compat non scaricato )
) else ( echo   [--] Corpse x Cosmetic Armor Compat gia presente )

echo.
echo  [3/4] Copia configurazioni...
echo.

if exist "config\Blood Bits.toml" (
    xcopy /Y "config\Blood Bits.toml" "config\" >nul
    echo   [OK] Blood Bits config applicata
) else ( echo   [!!] Blood Bits config non trovata )

if exist "config\badmobs-common.toml" (
    xcopy /Y "config\badmobs-common.toml" "config\" >nul
    echo   [OK] BadMobs config applicata
) else ( echo   [!!] BadMobs config non trovata )

if exist "config\sound_physics_remastered\soundphysics.properties" (
    if not exist "config\sound_physics_remastered" mkdir "config\sound_physics_remastered"
    xcopy /Y "config\sound_physics_remastered\soundphysics.properties" "config\sound_physics_remastered\" >nul
    echo   [OK] Sound Physics config applicata
) else ( echo   [!!] Sound Physics config non trovata )

echo.
echo  [4/4] Installazione datapack nei mondi...
echo.

if exist "saves" (
    for /D %%W in ("saves\*") do (
        if not exist "%%W\datapacks" mkdir "%%W\datapacks"
        xcopy /E /I /Y "datapacks\dread_spawn_boost" "%%W\datapacks\dread_spawn_boost" >nul
        xcopy /E /I /Y "datapacks\auto_save" "%%W\datapacks\auto_save" >nul
        xcopy /E /I /Y "datapacks\horde_mode" "%%W\datapacks\horde_mode" >nul
        echo   [OK] Datapack installati in: %%W
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
