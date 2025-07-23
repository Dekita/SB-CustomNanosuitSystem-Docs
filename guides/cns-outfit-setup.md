
# Custom Nanosuit System 
How to setup your custom outfits for compatiblity with the [Custom Nanosuit System](https://www.nexusmods.com/stellarblade/mods/1496) interface by dekitarpg@gmail.com. 


## Basic Steps
- Ensure your mod is fully working first (ie: create a regular asset replacement mod)
- Move all custom files for your mod into a completely unique directory within your unreal engine project. (Recommended to use the `OutfitMods/YourModName` directory)
- Configure the JSON file for your custom outfit, detailing the correct asset paths set in the previous step.


## Detailed Steps: 1 - Making Your Outfit
First and foremost, you should make sure that you have a full functional mod before attempting to setup your outfit for the CNS system. This process includes extracting/editing/importing your desired meshes, and ensuring the materials work correctly in game by replacing a default outfit.

The [Stellar Blade Modding Guides](https://github.com/Stellar-Blade-Modding-Team/Stellar-Blade-Modding-Guide/wiki) have a much more in depth guide to this process than I could ever write up, so its best to look there for detailed information when initially setting up your mod. Most notibly, the Textures, Models, Materials, Physics pages. Each one details exactly what you need, and how you can create custom versions of each desired asset.


## Detailed Steps: 2 - Making Your Outfit Custom
Once you have confirmed that your mod does indeed function as desired in game, it can safely be moved into a custom directory so that your outfit no longer overrides a default asset, and instead, works solely with the Custom Nanosuit System. 

Make sure to ensure that you have a safe copy of the functioning mod before going any further. It is always best to backup your files once you reach a milestone, just in case. 

After you create your backup, you can safely move your any required files that your outfit currently overrides into a custom directory, so that they no longer override any assets. It is recommended to create an `OutfitMods` folder, within your unreal engine projects `Content` folder, that can be used to house all of your CNS compatible mods. Then, create a folder for each individual outfit within the `OutfitMods` folder where you will place the files for each outfit. 

For Example;
- Content
  - OutfitMods
    - MyOutfit1
    - MyOutfit2
    - MyOutfit3
    
Each custom outfit folder should contain ALL files required by your outfit. This will include your custom Skeletal Mesh, Materials, Textures, Physics Assets, Skeletons, etc.. However, IF you are referencing a default game asset that is not being overrriden or altered in any way, such as a parent material or base game texture, you should keep those in their default location and NOT include them within your packaged mod files. 

When you have finished moving each required file into your `OutfitMods/MyCustomOutfit` folder, it is recommended to run `Fix Up Redirectors In Folder` by right clicking in Unreal Engine on the main `Content` folder. This will ensure that nay 'loose' references that have occured due to moving a lot of files will get resolved correctly. 

Finally, it is time to package your mod. I personally use the `Primary Asset Label` method, documented on the Stellar Blade Mod Guide Wiki [here](https://github.com/Stellar-Blade-Modding-Team/Stellar-Blade-Modding-Guide/wiki/Packaging-Mods#step-1-primaryassetlabel). This method allows for much higher `Chunk ID` assignments than manually assigning them to each file. Additionally, because all of the assets for your mod are contained within a single folder, you can select the `Label Assets In My Directory` checkbox within the `Primary Asset Label` (assuming it is within the root custom folder for your outfit, eg: `OutfitMods/MyCustomOutfit`) to easily include all assets you have modified. 

NOTE: DO NOT CHECK THE `Apply Recursively` OPTION WITHIN YOUR `Primary Asset Label` as this will automatically include any asset you have referenced, which is not desirable as it can cause default game assets to be overriden unintentionally. 

Once all of your custom assets, and the `Primary Asset Label` (or manual chunk id assignments) have been setup, you can now safely package your mod!


## Detailed Steps: 3 - Configuring Your Outfit JSON
See the [CNS JSON Setup Guide](/guides/cns-json-setup.md) for detailed information on configuring the json for your custom outfit. 


## Troubleshooting
- Use [FModel](https://github.com/4sval/FModel) to inspect the files within your packaged mod
- Use [MS Visual Studio Code](https://code.visualstudio.com/) to ensure your json is valid. it will provide syntax highlighting, and json specific extensions can be installed for additional readability etc. 
- Join my [Discord Support Server](https://discord.gg/DCXh2TUF2u) if you need some additional guidance in getting things setup for your own mod. 


<div align="center">

[![Discord](https://img.shields.io/discord/1132980259596271657?logo=discord&style=for-the-badge&logoColor=e4e4e4&label=Support%20Server)](https://discord.gg/WyTdramBkm)
[![Support on Patreon](https://img.shields.io/badge/Support-Patreon-orange?logo=patreon&style=for-the-badge)](https://www.patreon.com/DekitaRPG)
[![Donate via PayPal](https://img.shields.io/badge/Donate-PayPal-0070BA?logo=paypal&style=for-the-badge)](https://www.paypal.me/DekitaRPG)

</div>