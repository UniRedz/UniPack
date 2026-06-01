@echo off
setlocal

set /p PACK_VERSION=<"VERSION.txt"

echo.
echo  ================================================
echo   UniPack - Mod Manager  v%PACK_VERSION%  by UniRedz
echo   (c) 2026 UniRedz - All rights reserved
echo  ================================================
echo.
timeout /t 2 /nobreak >nul

if not exist "mods\_disabled" mkdir "mods\_disabled"

:: ================================================
echo  [1/5] Disabilitazione mod incompatibili...
echo.

call :dis "mods\biomereplacer-*.jar"       "biomereplacer"
call :dis "mods\Terralith_*.jar"            "Terralith"
call :dis "mods\nonetherportal-*.jar"      "nonetherportal"
call :dis "mods\smoothswapping-*.jar"      "Smooth Swapping"
call :dis "mods\bloodybits-*.jar"           "Bloody Bits"
call :dis "mods\rubidium-mc*.jar"           "Rubidium"
call :dis "mods\rubidium_extras-*.jar"     "Rubidium Extras"

:: ================================================
echo.
echo  [2/5] Verifica e sincronizzazione mod...
echo.

set URL_EMBEDDIUM=https://cdn.modrinth.com/data/sk9rgfiA/versions/AYqEbec0/embeddium-0.3.18.1+mc1.19.2.jar
set URL_RUBEXTRA=https://cdn.modrinth.com/data/oY2B1pjg/versions/MCSKG4Ve/rubidium-extra-0.4.19+mc1.19.2-build.105.jar
set URL_NOISIUM=https://cdn.modrinth.com/data/JRYQR8rr/versions/f16ggOyj/noisium-1.0.2.jar
set URL_SOPHCORE=https://cdn.modrinth.com/data/nmoqTijg/versions/LRDUyYPU/sophisticatedcore-1.19.2-0.6.4.730.jar
set URL_SOPHBACK=https://cdn.modrinth.com/data/TyCTlI4b/versions/1TblkbcZ/sophisticatedbackpacks-1.19.2-3.20.2.1035.jar
set URL_CLUMPS=https://cdn.modrinth.com/data/Wnxd13zP/versions/3GURrv52/Clumps-forge-1.19.2-9.0.0+14.jar
set URL_CANARY=https://cdn.modrinth.com/data/qa2H4BS9/versions/kbjigmpt/canary-mc1.19.2-0.3.3.jar
set URL_IFAST=https://cdn.modrinth.com/data/5ZwdcRci/versions/OWO57F2j/ImmediatelyFast-Forge-1.4.0+1.19.2.jar
set URL_XMINI=https://cdn.modrinth.com/data/1bokaNcj/versions/fDLqg252/xaerominimap-forge-1.19.2-25.3.13.jar
set URL_XWORLD=https://cdn.modrinth.com/data/NcUtCpym/versions/B6EOtlnt/xaeroworldmap-forge-1.19.2-1.40.16.jar
set URL_CURIOS=https://cdn.modrinth.com/data/vvuO3ImH/versions/uUAY30IE/curios-forge-1.19.2-5.1.6.4.jar
set URL_TRASH=https://cdn.modrinth.com/data/vRYk0bv7/versions/VLnMeNCk/trashslot-forge-1.19.2-12.1.0.jar
set URL_COSARM=https://edge.forgecdn.net/files/4016/732/CosmeticArmorReworked-1.19.2-v1a.jar
set URL_CORCUR=https://cdn.modrinth.com/data/pJGcKPh1/versions/svYuXRgL/corpsecurioscompat-1.18.x-1.20.x-Forge-2.2.2.jar
set URL_CORCOS=https://cdn.modrinth.com/data/VrbUxhCI/versions/IUCHHmk5/cosmeticcorpsecompat-1.19.x-1.20.x-Forge-1.0.0.jar

call :mod "Embeddium"                "embeddium-0.3.18.1+mc1.19.2.jar"                     "embeddium-*.jar"             "%URL_EMBEDDIUM%"
call :mod "Rubidium Extra"           "rubidium-extra-0.4.19+mc1.19.2-build.105.jar"        "rubidium-extra-*.jar"        "%URL_RUBEXTRA%"
call :mod "Noisium"                  "noisium-1.0.2.jar"                                    "noisium-*.jar"               "%URL_NOISIUM%"
call :mod "Sophisticated Core"       "sophisticatedcore-1.19.2-0.6.4.730.jar"              "sophisticatedcore-*.jar"     "%URL_SOPHCORE%"
call :mod "Sophisticated Backpacks"  "sophisticatedbackpacks-1.19.2-3.20.2.1035.jar"       "sophisticatedbackpacks-*.jar" "%URL_SOPHBACK%"
call :mod "Clumps"                   "Clumps-forge-1.19.2-9.0.0+14.jar"                    "Clumps-forge-*.jar"          "%URL_CLUMPS%"
call :mod "Canary"                   "canary-mc1.19.2-0.3.3.jar"                            "canary-*.jar"                "%URL_CANARY%"
call :mod "ImmediatelyFast"          "ImmediatelyFast-Forge-1.4.0+1.19.2.jar"              "ImmediatelyFast-*.jar"       "%URL_IFAST%"
call :mod "Xaero Minimap"            "xaerominimap-forge-1.19.2-25.3.13.jar"               "xaerominimap-forge-*.jar"    "%URL_XMINI%"
call :mod "Xaero World Map"          "xaeroworldmap-forge-1.19.2-1.40.16.jar"              "xaeroworldmap-forge-*.jar"   "%URL_XWORLD%"
call :mod "Curios API"               "curios-forge-1.19.2-5.1.6.4.jar"                     "curios-forge-*.jar"          "%URL_CURIOS%"
call :mod "TrashSlot"                "trashslot-forge-1.19.2-12.1.0.jar"                   "trashslot-forge-*.jar"       "%URL_TRASH%"
call :mod "Cosmetic Armor Reworked"  "CosmeticArmorReworked-1.19.2-v1a.jar"                "CosmeticArmorReworked-*.jar" "%URL_COSARM%"
call :mod "Corpse x Curios"          "corpsecurioscompat-1.18.x-1.20.x-Forge-2.2.2.jar"   "corpsecurioscompat-*.jar"    "%URL_CORCUR%"
call :mod "Corpse x Cosm. Armor"     "cosmeticcorpsecompat-1.19.x-1.20.x-Forge-1.0.0.jar" "cosmeticcorpsecompat-*.jar"  "%URL_CORCOS%"

:: ================================================
echo.
echo  [3/5] Configurazioni...
echo.

if exist "config\Blood Bits.toml"                                    (echo   [OK] Blood Bits config) else (echo   [--] Blood Bits config non trovata)
if exist "config\badmobs-common.toml"                                (echo   [OK] BadMobs config) else (echo   [--] BadMobs config non trovata)
if exist "config\sound_physics_remastered\soundphysics.properties"   (echo   [OK] Sound Physics config) else (echo   [--] Sound Physics config non trovata)

:: ================================================
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

:: ================================================
echo.
echo  [5/5] Controllo duplicati...
echo.

powershell -NoProfile -Command "$m=Get-ChildItem 'mods' -Filter '*.jar';$pfx=@('embeddium-','rubidium-extra-','noisium-','sophisticatedcore-','sophisticatedbackpacks-','Clumps-forge-','canary-','ImmediatelyFast-','xaerominimap-','xaeroworldmap-','curios-forge-','trashslot-forge-','CosmeticArmorReworked-','corpsecurioscompat-','cosmeticcorpsecompat-');foreach($p in $pfx){$hits=$m|Where-Object{$_.Name -like ($p+'*')};if($hits.Count -gt 1){Write-Host ('  [!!] DUPLICATO: '+$p+'* ('+$hits.Count+' file)');$hits|ForEach-Object{Write-Host ('        '+$_.Name)}}}"

echo.
echo  ================================================
echo   Completato. Avvia Minecraft.
echo   UniPack v%PACK_VERSION%  -  (c) 2026 UniRedz
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

for %%X in (mods\%_G%) do (
    if /I not "%%~nxX"=="%_F%" (
        move "%%X" "mods\_disabled\" >nul
        echo   [OLD] %_N% - versione errata: %%~nxX
    )
)

if not exist "mods\%_F%" (
    echo   [DL]  %_N%...
    powershell -NoProfile -Command "Invoke-WebRequest -Uri '%_U%' -OutFile 'mods\%_F%' -UseBasicParsing -ErrorAction SilentlyContinue"
    if exist "mods\%_F%" (
        echo   [OK]  %_N%
    ) else (
        echo   [!!]  %_N% - DOWNLOAD FALLITO
    )
) else (
    echo   [ ]   %_N%
)
goto :eof
