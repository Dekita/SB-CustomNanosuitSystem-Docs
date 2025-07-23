# CNS Changelog (for main mod files)
Changelog for [Custom Nanosuit System](https://www.nexusmods.com/stellarblade/mods/1496) by dekitarpg@gmail.com. 

## TODO: 


## v1.5: (unreleased)
- Fixed strange issue causing mouse cursor to not show after opening CNS UI, then opening fast travel UI. 
- Fixed issue causing configuration files to be re-read when cache enabled
- Fixed issue causing configuration files to be read twice.


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
