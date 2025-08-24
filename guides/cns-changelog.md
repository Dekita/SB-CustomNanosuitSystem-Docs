# CNS Changelog (for main mod files)
Changelog for [Custom Nanosuit System](https://www.nexusmods.com/stellarblade/mods/1496) by dekitarpg@gmail.com. 


## v1.94: 
- Fixed issue where only EVE could have outfits using UserConfigs material toggles etc.
- Fixed issue where outfits would have missing materials, after switching from an outfit with disabled materials. 
- Fixed issue where hair/ponytail sub types would cause outfits save data to override one another. 
- Preset color selection buttons will now multiply values based on vector config max values. 
- Added `HiddenMats` property for use within `OutfitDatas` to hide specific materials. 
- Moved Adam, Drone, and Lily outfits into their own seperate defaults file. 
- Added `LoadOutfitsWhenOpenUI` configuration property in config.lua.
- Added `UseOutfitPhysicsFix` configuration property in config.lua. 
- Added `EnableAllCharacters` configuration property in config.lua.
- Added `CharacterScanMode` configuration property in config.lua.
- Added `OutfitLoadDelay` configuration property in config.lua.
- Removed `ReloadCharDataWhenRest` property from config.lua.
- Fixed missing physics animations for all default earrings.
- Added `PonyPhysics` property for json config.
- Fixed ponytail physics for all default outfits.
- Fixed physics for all default outfits.
- Improved overall stabiliity slightly. 


## v1.93:
- Improved stabliity of system overall. Significantly reduced frequency of crashes. 
- Hidden (removed) components should now re-hide on game/area load. 


## v1.92:
- Fixed issue causing crashes for a lot of users. If you still experience crashes when resting alter the `ReloadCharDataWhenRest` property within the `Win64/ue4ss/Mods/DekCNS/Scripts/config.lua` file. 
- Fixed issue where camera would orbit around eve regardless of selected character.
- Changed trigger for favourites/ui toggle/hairpin to use keydown instead of keyup. 
- Added SAVE_Version data to ensure saved config/outfit data will only reset when save file format updates. 
- Changed DefaultHairs file to use nier white for nier hairstyles and some nikke ones. (credit H0bbs)
- CNS Outfit will reload when CNS UI is opened. This is to provide a quick fix for when characters outfits have reset the ones selected in the default game menu. 


## v1.91:
- Fixed issue with material toggles not working correctly when being "ControlledBy" another. 
- Fixed config menu not properly reloading after clicking 'reset configuration'.
- Fixed issue with default hairs not properly using their animations. 
- Added `AnimationBP` to cns outfit json object, used for hairs etc. 
- Fixed description issue for hairpin toggle in cns settings ui. 
- Added hook to trigger refresh of outfit after resting at camp. 
- Altered delay in between procssing button batches.
- Disabled Button batches by default. 


## v1.9: 
- Added Lily, Adam, and Drone outfit support!!
- Moved system configuration options from main.lua into config.lua file. 
- Added configuration for hairpin toggle, favourite toggle, and ui toggle buttons. 
- Added Hotkeys to control hairpin toggle, and show/side ui toggle. 
- Toggle button to auto hide weapon when not in battle (hides hairpin model thing)
- Reduced UI loading lag by batching button creation over time. UI Now displays loading spinner while loading entries. 
- Added Show/Hide UI option, so you can easily take nice screenshots without actually leaving the CNS UI.
- Saved CNS data will now auto reset when new mod version detected to ensure compatibility with latest features. 
- Updated all default hairstyles to use new `UserConfigs` setup, allowing complete color customization. 
- Updated Default EVE face to use new `UserConfigs` setup, allowing for complete control over her eyes.
- `UserConfigs` data is now properly saved and re-applied on game load / map transfer. 
- `UserConfigs` now accepts a string, for a `UniqueOutfitID` within the same file for which to load the config from (for models that have the same exposed parameters)
- `UserConfigs` data structure now considered stable. See updated documentation for all details. Some properties slightly changed. 
- `UserConfigs.VectorControls` now accepts a `Sliders` [boolean] to determine available slider controls. 
- Added `ControlledBy` option to `UserConfigs`, to allow for one configuration to control another. (Used to make multiple changes happen with one slider/toggle/option button)
- Fixed WB_ToggleButton, so clicking its option pips properly trigger whatever change they should.
- Added some color options for the default game weapon. 
- Added Batch Enabled / Batch Count settings.
- Added Auto Load CNS Data setting.
- ???


## v1.8: 
- Added BETA feature - configurable blend shapes, material toggles, scalar controls, vector controls, and texture options (doesnt save data atm, please dont release mods using these features until the v1.9 update) 
- Fixed issue with DefaultWeapons.dekcns.json not loading all entries
- Fixed issue causing only specific json files to be allowed to define more than 10 entries. 
- Fixed `ParamDatas` showing previously selected model materials when `Materials` data empty. 
- Fixed `Reset Saved Data` now properly resets saved UI Hue, and text alignment data.
- Selection arrows now allow wrapping (can click > arrow to go back to first option when at last option) 
- Fixed issue where slider elements could not be click+dragged. 
- Added `search` feature with text input area / clear search buttons.
- Added favorite outfits. (press F to toggle currently hovered outfit as favorite)
- Added `MeshSubType` configuration (only currently used for `Ponytail` option)
- Added Hair/Ponytail selection when in hair menu. 
- Added help descriptions for all UI elements. 
- Improved UI element consistency


## v1.7: 
- Fixed missing entries from default outfits file
- Added DefaultWeaponsTest.dekcns.json - These are the various weapons from other in-game characters, and are known to be buggy, but can be fun to play around with. 
- Can now click option pips to select options
- Added additional camera angle options
- Added scroll mouse to zoom feature
- Slightly altered ui elements
- Added camera light toggle
- Esc now closes CNS UI


## v1.6: 
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
- Moved description text to allow for much longer descriptions to show correctly 
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

