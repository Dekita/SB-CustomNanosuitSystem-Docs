# CNS Changelog (for main mod files)
Changelog for [Custom Nanosuit System](https://www.nexusmods.com/stellarblade/mods/1496) by dekitarpg@gmail.com. 


## TODO: 
- Add support for other characters (Adam, Lily, Drone, Other?..)
- Make regular menu eve show cns equipped outfit.
- Additional camera options/features (orbit/scroll to zoom)
- Check custom skeletons and physics :)
- ???


## v1.6: (unreleased)
- Fixed issue where only the absolute last selected item would be reloaded on world load. 
- Fixed issue where previous outfit wouldnt be saved unless it had 'OutfitDatas' defined. (which most outfits dont) 
- Added `OutfitNames` data, to display a subtext for selected outfit variations. 
- Added Button Text Position option (to align the text of outfit buttons).
- UI now remembers previously selected outfit indexes correctly.
- Added Angle/Orbit selector for camera controls
- Added `CheckSaveData` Requirement Type for modders to restrict outfits unless a default outfit is already unlocked. 
- Added `Default` category and ALL default game outfits for EVE
- Added defaults for hair, earings, and face accessories
    - Default outfits etc will only show when unlocked (thanks nanosuit randomizer mod <3)
- Moved description text to allow for much longer descriptiosn to show correctly 
- Added open/close animation to camera control/description window area


## v1.5: 
- Added hardcoded Alt+N keybind to open the UI. 
  - For some yet unknown reason, the system isnt showing the UI from the configurable keybind for a number of players. This provides a hardcoded alternative that should always work. If the customizable binding still works for you, feel free to keep using that. 
- Fixed issue with non ascii characters breaking the config file scan
- Added support for subfolders in subfolders (ie: ~mods/CustomNanosuitSystem/FolderName) to allow for easily managing each cns mods files. 
- Fixed strange issue causing mouse cursor to not show after opening CNS UI, then opening fast travel UI. 
- Fixed issue causing configuration files to be re-read when cache enabled
- Fixed issue causing configuration files to be read twice.
- Removed some redundant code leftover from tests. 
- Added additional log data when `ExtraLogging` is enabled in main.lua. 
- v1.5b fixes virtual mouse cursor not moving. 


## v1.4:
- Added CNS version information to the UI
- Added virtual cursor as a temp solution for mouse cursor not showing in the UI
    - I consider this a temp solution as it is not ideal (slightly lags behind real cursor position), but it works for now
    - UseVirtualCursor can be enabled/disabled in main.lua
- Fixed issue where scalar and vector params were not applied
- Fixed issue where last selected outfit would not be saved
- Fixed CNS UI so that it should not open when in main menu
- Fixed issue where subfolders within ~mods directory would not be scanned for outfits
- Fixed various crash issues:
    - when reloading from last save 
    - loading into boss rush
    - transferring map
    - others


## v1.3:
- Fixed issue where non ascii folder names within ~mods directory would cause the mod to not load outfits within the ui 
- Added Camera Positions & Controls (left click + drag mouse on empty screen area)
- Added Material Parameter support to outfit json configs, scalars, vectors, textures
- Outfit skins are now sorted by alphabetical name in the UI
- Added outfit cache (so that outfits are not loaded every time the ui opens, but only once per session)
    - cache setting can be toggled in main.lua

## v1.2:
- Added support for Face, Hair, Earings, Glasses, and Weapons!!
- Seperated SkinSuit++ Example into additional mod file to reduce download size..

## v1.1:
- Fixed mouse cursor not displaying.
