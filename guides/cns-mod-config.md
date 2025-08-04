# CNS Configurable Settings
This page details various configuration options for the CNS system. 


## KeyForUI `Win64/ue4ss/Mods/DekCNS/Scripts/main.lua` [default="N"]
Defines the key to open the Custom Nanosuit System UI. You can change this to your desired key, A-Z, 0-9, Num0-Num9. NOTE: This will not work for all players. If this configuration doesnt work, you MUST use Alt+N


## ExtraLogging `Win64/ue4ss/Mods/DekCNS/Scripts/main.lua` [default=false]
Setting `ExtraLogging` to `true` will tell CNS to log a LOT of additional information. This includes things like json data for CNS json files, information about configuration being loaded or applied to the character, and much more. 


## UseOutfitCache `Win64/ue4ss/Mods/DekCNS/Scripts/main.lua` [default=true]
Setting `UseOutfitCache` to false will make CNS reload all json files each time the UI is opened. This can be quite useful when developing/debugging your json file as you then dont need to reload the game each time to test some basic changes. 


## UseVirtualCursor `Win64/ue4ss/Mods/DekCNS/Scripts/main.lua` [default=true]
The `UseVirtualCursor` option tells CNS to use a virtual cursor when the UI is opened. Setting this to `false` will disable this feature; however, there is a known issue that the default game cursor will not always display after CNS UI is opened. 


## ManualSaveFilePath `Win64/ue4ss/Mods/DekCNS/Scripts/main.lua` [default=""]
If the game does not load your unlocked default outfits, and you do have the DEkCNS-DefaultXXXX.dekcns.json files within your `~mods/CustomNanosuitSystem` folder, then the CNS system is having some kind of issue locating your save file. You can manually set the path for this by editing the `ManualSaveFilePath` configuration. 

Entering `%appdata%/../Local/SB/Saved/SaveGames` in Windows Explorer directory path bar, then pressing enter, will take you to the directory where you can find your save file. It should look something like this;

```lua
local ManualSaveFilePath = "C:/Users/YuuugiiiOhhh/AppData/Local/SB/Saved/SaveGames/13545341/StellarBladeSave00.sav" 
```

Note: the save file path should always end with `StellarBladeSave00.sav`, as this points the system directly to your save file. 


## UE4SS-Console `Win64/ue4ss/UE4SS-settings.ini` [default=0]
You can enable the UE4SS console within the UE4SS-settings.ini file, at around line 90, set `ConsoleEnabled` to 1 instead of 0. Then, when you next launch the game, an additional console window will appear, which allows you to view the logs for UE4SS in real time. This can be especially useful when you are trying to debug why things arent working as expected!

Note: You do not need to set `GuiConsoleEnabled` or `GuiConsoleVisible` unless you are developing LUA mods for UE4SS and wish to dump game object information.
