# CNS Helper Scripts & Tools
This page will list various helper/utility scripts or tools that can be used to assist in development of CNS compatible mods. 

## Basic CNS JSON Generator
Dex (jhosuers) on Discord created a helpful batch utility script to auto generate CNS compatible JSON files. Simply download, and run the batch file to be presented with a basic interface for easily creating basic CNS compatible JSON files.

Note: for the script to work correctly the path for your mod within unreal engine should be `/Content/OutfitMods/YourModNameHere/` and your skeletal mesh should be inside a folder name `Models`. eg: `/Content/OutfitMods/YourModNameHere/Models`

[CNS JSON Generator](/scripts/CNS_JSON_Generator_ByDex_v1.2.bat)


## Pak Mod Audit Tool
The Pak Mod Audit Tool is a powerful utility designed to help modders and players easily analyze mod files for your game. Its main purpose is to scan all installed mod utoc files and provide clear insights into which mods override default game assets and identify any potential chunk ID conflicts between mods.

[Pak Mod Audit Tool](https://www.nexusmods.com/stellarblade/mods/1632)  


## Pak Chunk ID Patcher
Scans all the mods you have installed and looks for mods that are using the same package Container ID. If it finds any duplicates, it automatically changes the numbers so each mod has its own unique ID. This way, the game no longer gets confused, and your mods can work together without crashing.

[Mod Pak Chunk ID Patcher](https://www.nexusmods.com/stellarblade/mods/861) to patch mods with conflicting chunk ID's.
