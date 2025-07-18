
# Custom Nanosuit System 
How to setup the [Custom Nanosuit System](https://www.nexusmods.com/stellarblade/mods/????) interface by dekitarpg@gmail.com. 


## Install The Latest Stellar Blade UE4SS Release
[UE4SS For Stellar Blade](https://github.com/Chrisr0/RE-UE4SS)
- Download the latest release
- Extract the files from within the downloaded zip folder
- Copy the extracted ue4ss folder, and dwmapi.dll files to your games `SB/Binaries/Win64` folder 
- Done


## Install The Latest Custom Nanosuit System
[Custom Nanosuit System](https://www.nexusmods.com/stellarblade/mods/????)
- Download the latest release
- Extract the files from within the downloaded zip folder
- Copy the extracted `Binaries` and `Content` folders to your games `SB` folder. 
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
              - json.lua
              - main.lua
  - Content/
    - Paks/
      - ~mods/
        - DekCNS-SkinSuit.pak
        - DekCNS-SkinSuit.ucas
        - DekCNS-SkinSuit.utoc
        - DekCNS-Skinsuit.dekcns.json
      - LogicMods/
        - DekCNS_P.pak
        - DekCNS_P.ucas
        - DekCNS_P.utoc
        