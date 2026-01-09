
# Custom Nanosuit System 
How to setup the [Custom Nanosuit System](https://www.nexusmods.com/stellarblade/mods/1496) by dekitarpg@gmail.com. 


## Install The Latest Stellar Blade UE4SS Release
[UE4SS For Stellar Blade](https://github.com/Chrisr0/RE-UE4SS)
- Download the latest release (**NOT THE DEV VERSION**)
- Extract the files from within the downloaded zip folder
- Copy the extracted ue4ss folder, and dwmapi.dll files to your games `SB/Binaries/Win64` folder 
- Done


## Install The Latest Custom Nanosuit System
[Custom Nanosuit System](https://www.nexusmods.com/stellarblade/mods/????)
- Download the latest release
- Extract the files from within the downloaded zip folder
- Copy the extracted `SB` folder, and merge it with your games `SB` folder. 
- Done


## Additional Notes
When installation is complete, you should have the following structure within your games folder; (removed some ue4ss folders and default game files from the list for ease of understanding)

- SB/
  - Binaries/
    - Win64/
      - dwmapi.dll
      - ue4ss/
        - Mods/
          - DekCNS
            - enabled.txt
            - Scripts/
              - config.lua
              - json.lua
              - main.lua
  - Content/
    - Paks/
      - ~mods/
        - CustomNanosuitSystem
          - Animations/
            - DekCNS-AnimationsADAM.dekani.json
            - DekCNS-AnimationsEVE.dekani.json
            - DekCNS-AnimationsLILY.dekani.json
            - {Other Animation Mods Go Here..}
          - Cosmetics/
            - DekCNS-DefaultAccessories.dekcns.json
            - DekCNS-DefaultEarings.dekcns.json
            - DekCNS-DefaultFaces.dekcns.json
            - DekCNS-DefaultHairs.dekcns.json
            - DekCNS-DefaultOutfitsAdam.dekcns.json
            - DekCNS-DefaultOutfitsDrone.dekcns.json
            - DekCNS-DefaultOutfitsEve.dekcns.json
            - DekCNS-DefaultOutfitsLily.dekcns.json
            - DekCNS-DefaultWeaponsTest.dekcns.json
            - {Other Cosmetic Mods Go Here.. eg:}
            - DekCNS-Skinsuit.dekcns.json
            - DekCNS-SkinSuit.pak
            - DekCNS-SkinSuit.ucas
            - DekCNS-SkinSuit.utoc
      - LogicMods/
        - DekCNS_P.pak
        - DekCNS_P.ucas
        - DekCNS_P.utoc


## Configuration Information
[CNS Mod Config Options](/guides/cns-mod-config.md) 

## Common Issues
- **OPEN CNS MENU FROM THE GAME WORLD. NOT WHILE IN MENU!!**
- **Pause Screen Freezing Game** - This occurs when you are playing in Fullscreen mode, and alt+tab out of the game. When you return to the game screen, it will have automatically paused. Simple switch from `Fullscreen` to `Borderless Window Mode`. The game will still seem fullscreen, but it will no longer pause when you alt+tab to other screens. 
- {ComingSoon..}



## Troubleshooting
- [CNS Helper Scripts](/guides/cns-helper-scripts.md) Various scripts and tools to help CNS mod development, and to ensure mods are not causing conflicts with one another. 

