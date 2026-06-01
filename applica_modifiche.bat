@echo off
setlocal enabledelayedexpansion

echo.
echo  ================================================
echo   UniPack - Mod Manager v2.0 by UniRedz
echo   (c) 2026 UniRedz - All rights reserved
echo  ================================================
echo.
timeout /t 2 /nobreak >nul

if not exist "mods\_disabled" mkdir "mods\_disabled"

echo  [1/5] Disabilitazione mod incompatibili...
echo.

call :dis "mods\biomereplacer-*.jar"       "biomereplacer"
call :dis "mods\Terralith_*.jar"            "Terralith"
call :dis "mods\nonetherportal-*.jar"      "nonetherportal"
call :dis "mods\smoothswapping-*.jar"      "Smooth Swapping"
call :dis "mods\bloodybits-*.jar"           "Bloody Bits (duplicato)"
call :dis "mods\rubidium-mc*.jar"           "Rubidium (sostituito da Embeddium)"
call :dis "mods\rubidium_extras-*.jar"     "Rubidium Extras"

echo.
echo  [2/5] Verifica e sincronizzazione mod...
echo.

call :mod "Embeddium"                "embeddium-0.3.18.1+mc1.19.2.jar"                    "embeddium-*.jar"                         "https://cdn.modrinth.com/data/sk9rgfiA/versions/AYqEbec0/embeddium-0.3.18.1+mc1.19.2.jar"
call :mod "Rubidium Extra"           "rubidium-extra-0.4.19+mc1.19.2-build.105.jar"       "rubidium-extra-*.jar"                    "https://cdn.modrinth.com/data/oY2B1pjg/versions/MCSKG4Ve/rubidium-extra-0.4.19+mc1.19.2-build.105.jar"
call :mod "Noisium"                  "noisium-1.0.2.jar"                                   "noisium-*.jar"                           "https://cdn.modrinth.com/data/JRYQR8rr/versions/f16ggOyj/noisium-1.0.2.jar"
call :mod "Sophisticated Core"       "sophisticatedcore-1.19.2-0.6.4.730.jar"             "sophisticatedcore-*.jar"                 "https://cdn.modrinth.com/data/nmoqTijg/versions/LRDUyYPU/sophisticatedcore-1.19.2-0.6.4.730.jar"
call :mod "Sophisticated Backpacks"  "sophisticatedbackpacks-1.19.2-3.20.2.1035.jar"      "sophisticatedbackpacks-*.jar"            "https://cdn.modrinth.com/data/TyCTlI4b/versions/1TblkbcZ/sophisticatedbackpacks-1.19.2-3.20.2.1035.jar"
call :mod "Clumps"                   "Clumps-forge-1.19.2-9.0.0+14.jar"                   "Clumps-forge-*.jar"                      "https://cdn.modrinth.com/data/Wnxd13zP/versions/3GURrv52/Clumps-forge-1.19.2-9.0.0+14.jar"
call :mod "Canary"                   "canary-mc1.19.2-0.3.3.jar"                           "canary-*.jar"                            "https://cdn.modrinth.com/data/qa2H4BS9/versions/kbjigmpt/canary-mc1.19.2-0.3.3.jar"
call :mod "ImmediatelyFast"          "ImmediatelyFast-Forge-1.4.0+1.19.2.jar"             "ImmediatelyFast-*.jar"                   "https://cdn.modrinth.com/data/5ZwdcRci/versions/OWO57F2j/ImmediatelyFast-Forge-1.4.0+1.19.2.jar"
call :mod "Xaero Minimap"            "xaerominimap-forge-1.19.2-25.3.13.jar"              "xaerominimap-forge-*.jar"                "https://cdn.modrinth.com/data/1bokaNcj/versions/fDLqg252/xaerominimap-forge-1.19.2-25.3.13.jar"
call :mod "Xaero World Map"          "xaeroworldmap-forge-1.19.2-1.40.16.jar"             "xaeroworldmap-forge-*.jar"               "https://cdn.modrinth.com/data/NcUtCpym/versions/B6EOtlnt/xaeroworldmap-forge-1.19.2-1.40.16.jar"
call :mod "Curios API"               "curios-forge-1.19.2-5.1.6.4.jar"                    "curios-forge-*.jar"                      "https://cdn.modrinth.com/data/vvuO3ImH/versions/uUAY30IE/curios-forge-1.19.2-5.1.6.4.jar"
call :mod "TrashSlot"                "trashslot-forge-1.19.2-12.1.0.jar"                  "trashslot-forge-*.jar"                   "https://cdn.modrinth.com/data/vRYk0bv7/versions/VLnMeNCk/trashslot-forge-1.19.2-12.1.0.jar"
call :mod "Cosmetic Armor Reworked"  "CosmeticArmorReworked-1.19.2-v1a.jar"               "CosmeticArmorReworked-*.jar"             "https://edge.forgecdn.net/files/4016/732/CosmeticArmorReworked-1.19.2-v1a.jar"
call :mod "Corpse x Curios"          "corpsecurioscompat-1.18.x-1.20.x-Forge-2.2.2.jar"  "corpsecurioscompat-*.jar"                "https://cdn.modrinth.com/data/pJGcKPh1/versions/svYuXRgL/corpsecurioscompat-1.18.x-1.20.x-Forge-2.2.2.jar"
call :mod "Corpse x Cosm. Armor"     "cosmeticcorpsecompat-1.19.x-1.20.x-Forge-1.0.0.jar" "cosmeticcorpsecompat-*.jar"             "https://cdn.modrinth.com/data/VrbUxhCI/versions/IUCHHmk5/cosmeticcorpsecompat-1.19.x-1.20.x-Forge-1.0.0.jar"

echo.
echo  [3/5] Configurazioni...
echo.

if exist "config\Blood Bits.toml" (
    xcopy /Y "config\Blood Bits.toml" "config\" >nul
    echo   [OK] Blood Bits config
)
if exist "config\badmobs-common.toml" (
    xcopy /Y "config\badmobs-common.toml" "config\" >nul
    echo   [OK] BadMobs config
)
if exist "config\sound_physics_remastered\soundphysics.properties" (
    if not exist "config\sound_physics_remastered" mkdir "config\sound_physics_remastered"
    xcopy /Y "config\sound_physics_remastered\soundphysics.properties" "config\sound_physics_remastered\" >nul
    echo   [OK] Sound Physics config
)

echo.
echo  [4/5] Datapacks...
echo.

if exist "saves" (
    for /D %%W in ("saves\*") do (
        if not exist "%%W\datapacks" mkdir "%%W\datapacks"
        xcopy /E /I /Y "datapacks\dread_spawn_boost" "%%W\datapacks\dread_spawn_boost" >nul
        xcopy /E /I /Y "datapacks\auto_save" "%%W\datapacks\auto_save" >nul
        xcopy /E /I /Y "datapacks\horde_mode" "%%W\datapacks\horde_mode" >nul
        echo   [OK] %%W
    )
) else (
    echo   [--] Nessun mondo trovato
)

echo.
echo  [5/5] Controllo duplicati...
echo.

powershell -NoProfile -Command ^
  "$mods = Get-ChildItem 'mods' -Filter '*.jar' | Where-Object { $_.Name -notlike '_*' };" ^
  "$prefixes = @('embeddium','rubidium','noisium','sophisticatedcore','sophisticatedbackpacks','Clumps','canary','ImmediatelyFast','xaerominimap','xaeroworldmap','curios','trashslot','CosmeticArmor','corpse','cosmeticarmor');" ^
  "foreach ($p in $prefixes) {" ^
  "  $matches = $mods | Where-Object { $_.Name -ilike ($p + '*.jar') };" ^
  "  if ($matches.Count -gt 1) {" ^
  "    Write-Host ('  [!!] DUPLICATO: ' + $p + ' (' + $matches.Count + ' file)');" ^
  "    $matches | ForEach-Object { Write-Host ('        ' + $_.Name) }" ^
  "  }" ^
  "}"

echo.
echo  ================================================
echo   Completato. Avvia Minecraft.
echo   UniPack v2.0  -  (c) 2026 UniRedz
echo  ================================================
echo.
pause
goto :eof

:: ================================================
:dis
for %%F in (%~1) do (
    if exist "%%F" (
        move "%%F" "mods\_disabled\" >nul
        echo   [DIS] %~2
    )
)
goto :eof

:: ================================================
:mod
set _N=%~1
set _F=%~2
set _G=%~3
set _U=%~4

for %%X in (mods\!_G!) do (
    if /I not "%%~nxX"=="!_F!" (
        move "%%X" "mods\_disabled\" >nul
        echo   [OLD] !_N! - versione errata rimossa: %%~nxX
    )
)

if not exist "mods\!_F!" (
    echo   [DL]  !_N!...
    powershell -NoProfile -Command "Invoke-WebRequest -Uri '!_U!' -OutFile 'mods\!_F!' -UseBasicParsing" >nul 2>&1
    if exist "mods\!_F!" (
        echo   [OK]  !_N!
    ) else (
        echo   [!!]  !_N! - DOWNLOAD FALLITO
    )
) else (
    echo   [ ]   !_N! gia presente
)
goto :eof
