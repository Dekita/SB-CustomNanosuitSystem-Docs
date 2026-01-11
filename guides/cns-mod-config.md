# CNS Configurable Settings
This page details various configuration options for the CNS system. 


## KeyForUI `Win64/ue4ss/Mods/DekCNS/Scripts/config.lua` [default="N"]
Defines the key to open the Custom Nanosuit System UI. You can change this to your desired key, A-Z, 0-9, Num0-Num9. NOTE: This will not work for all players. If this configuration doesnt work, you MUST use Alt+N


## KeyForFavourite `Win64/ue4ss/Mods/DekCNS/Scripts/config.lua` [default="F"] 
Defines the key used for toggling favourite outfit within the CNS UI.


## KeyForToggleHairpin `Win64/ue4ss/Mods/DekCNS/Scripts/config.lua` [default="H"] 
Defines the key used to toggle hairpin visibility. Hairpin visibility will automatically show/hide the weapon when battle state changes. 


## KeyForToggleShowHideUI `Win64/ue4ss/Mods/DekCNS/Scripts/config.lua` [default="U"] 
Defines the key used to show/hide CNS UI. 


## ExtraLogging `Win64/ue4ss/Mods/DekCNS/Scripts/config.lua` [default=false]
Setting `ExtraLogging` to `true` will tell CNS to log a LOT of additional information. This includes things like json data for CNS json files, information about configuration being loaded or applied to the character, and much more. 


## UseOutfitCache `Win64/ue4ss/Mods/DekCNS/Scripts/config.lua` [default=true]
Setting `UseOutfitCache` to false will make CNS reload all json files each time the UI is opened. This can be quite useful when developing/debugging your json file as you then dont need to reload the game each time to test some basic changes. 


## UseVirtualCursor `Win64/ue4ss/Mods/DekCNS/Scripts/config.lua` [default=true]
The `UseVirtualCursor` option tells CNS to use a virtual cursor when the UI is opened. Setting this to `false` will disable this feature; however, there is a known issue that the default game cursor will not always display after CNS UI is opened. 


## CharacterScanMode `Win64/ue4ss/Mods/DekCNS/Scripts/config.lua` [default=1]
Defines the scan mode used to search for characters. Setting to 1 may help reduce system crashes, but can cause additional delay when opening ui
0 = Caches characters when spawned. 
1 = Searches for characters on demand. 


## EnableAllCharacters `Win64/ue4ss/Mods/DekCNS/Scripts/config.lua` [default=true]
Allows CNS to control outfits for all characters. Setting to false may help reduce system crashes
true = Enable control for all characters (Adam, Eve, Lily, Drone)
false = Enable control for only the main character (Eve)


## LoadOutfitsWhenOpenUI `Win64/ue4ss/Mods/DekCNS/Scripts/config.lua` [default=false]
Auto sets outfits when opening the UI. This will automatically load the last equipped outfits for the character when the UI is opened


## UseOutfitPhysicsFix `Win64/ue4ss/Mods/DekCNS/Scripts/config.lua` [default=false]
Enable or disable outfit physics fix. This will fix outfit cloth physics issues; however,
- the ponytail may act funny when changing outfits/sheathing weapon
- and outfits without proper physics assets setup will cause characters to fall through the world. 
Enable at your own risk <3 


## ManualSaveFilePath `Win64/ue4ss/Mods/DekCNS/Scripts/config.lua` [default=""]
If the game does not load your unlocked default outfits, and you do have the DEkCNS-DefaultXXXX.dekcns.json files within your `~mods/CustomNanosuitSystem` folder, then the CNS system is having some kind of issue locating your save file. You can manually set the path for this by editing the `ManualSaveFilePath` configuration. 

Entering `%appdata%/../Local/SB/Saved/SaveGames` in Windows Explorer directory path bar, then pressing enter, will take you to the directory where you can find your save file. It should look something like this; C:/Users/YuuugiiiOhhh/AppData/Local/SB/Saved/SaveGames/13545341/StellarBladeSave00.sav

Enter the last part of the path as the ManualSaveFilePath string, eg;
```lua
local ManualSaveFilePath = "13545341/StellarBladeSave00.sav" 
```

Note: the save file path should always end with `StellarBladeSave00.sav`, as this points the system directly to your save file. 


## UE4SS-Console `Win64/ue4ss/UE4SS-settings.ini` [default=0]
You can enable the UE4SS console within the UE4SS-settings.ini file, at around line 90, set `ConsoleEnabled` to 1 instead of 0. Then, when you next launch the game, an additional console window will appear, which allows you to view the logs for UE4SS in real time. This can be especially useful when you are trying to debug why things arent working as expected!

Note: You do not need to set `GuiConsoleEnabled` or `GuiConsoleVisible` unless you are developing LUA mods for UE4SS and wish to dump game object information.
