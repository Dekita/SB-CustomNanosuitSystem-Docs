@echo off
setlocal enabledelayedexpansion

:: === Prompt for inputs ===
set /p id=UniqueFitID (e.g. MiniDress_P):
echo %id% | findstr /i "_P" >nul
if errorlevel 1 (
    set id=%id%_P
)

set /p requirement=Requirement (None, TachyonDLC, etc.):
if /i "%requirement%"=="none" set requirement=None

set /p name=DisplayName:
set /p desc=Description (use \n for new lines):
set /p meshType=FitMeshType (Body, Face, Hair, etc.):

:: === Prompt for outfit type(s) ===
set /p types=OutfitTypes (comma-separated, e.g. Swimsuit,NSFW):

:: === Process OutfitTypes into clean JSON array ===
set "types_line="
set first=1

for %%T in (%types%) do (
    set "token=%%T"
    set "token=!token:"=!"
    set "token=!token: =!"

    if /i "!token!"=="nsfw" (
        set "entry=NSFW"
    ) else (
        set "entry=!token:~0,1!!token:~1!"
        set "entry=!entry:~0,1!!entry:~1!"
    )

    if !first! == 1 (
        set "types_line=!types_line!!entry!"
        set first=0
    ) else (
        set "types_line=!types_line!,!entry!"
    )
)

:: Convert final string to JSON array: add quotes and commas
set "json_types="
for %%T in (!types_line!) do (
    if defined json_types (
        set "json_types=!json_types!, "%%T""
    ) else (
        set "json_types="%%T""
    )
)

:: === Prompt for outfit image ===
set /p icon=OutfitImage (leave blank or type "none" for default):
if /i "%icon%"=="none" set icon=
if "%icon%"=="" (
    set icon=/Game/Art/UI/Texture/Item/NanoSuit/NanoSuit_Icon_BS_20.NanoSuit_
)

:: === Prompt for folder and meshes ===
set /p folder=Outfit Folder Name (e.g. SuperSuit):
set /p meshes=Mesh Name(s) (comma-separated, e.g. outfit1, outfit2):

:: === Build OutfitPaths and OutfitNames arrays ===
set "paths_line="
set "names_line="
set first=1

for %%M in (%meshes%) do (
    set "mesh=%%M"
    set "mesh=!mesh: =!"

    set "path=/Game/OutfitMods/%folder%/Models/!mesh!.!mesh!"

    if !first! == 1 (
        set "paths_line="!path!""
        set "names_line="!mesh!""
        set first=0
    ) else (
        set "paths_line=!paths_line!, "!path!""
        set "names_line=!names_line!, "!mesh!""
    )
)

:: === Prompt for output name and force .dekcns.json extension ===
set /p outbase=Output file base name (e.g. MyMod_Suit):
set "outfile=%outbase%.dekcns.json"

:: === Create JSON ===
(
echo [
echo     {
echo         "UniqueFitID": "%id%",
echo         "Requirement": "%requirement%",
echo         "DisplayName": "%name%",
echo         "Description": "%desc%",
echo         "FitMeshType": "%meshType%",
echo         "OutfitTypes": [ %json_types% ],
echo         "OutfitImage": "%icon%",
echo         "OutfitPaths": [ %paths_line% ],
echo         "OutfitNames": [ %names_line% ]
echo     }
echo ]
) > "%outfile%"

echo.
echo ✅ File "%outfile%" created successfully!
pause
