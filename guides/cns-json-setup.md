

# Custom Nanosuit System JSON structure
How to add your own mods configuration options into the [Custom Nanosuit System](https://www.nexusmods.com/stellarblade/mods/????) interface by dekitarpg@gmail.com. 

# Basic Configuration Setup
In order for your dekcns.json file to be compatible with the CNS menu, it MUST be a valid json structure formatted in the way the system expects. The following structure details the most basic configurable options. This is all the json you would need to add your own custom outfit into the menu's interface; 

```json
[
    {
        "UniqueFitID": "{YourCustomOutfitID}",
        "Requirement": "{RequiredDLC}",
        "DisplayName": "{YourOutfitDisplayName}",
        "Description": "{YourOutfitDescription}",
        "OutfitTypes": ["{OutfitType1}", "{OutfitType2}", "..."],
        "OutfitImage": "{SoftReferenceToYourOutfitIcon}",
        "OutfitPaths": [
            "{SoftReferenceToYourOutfitVariation1}",
            "{SoftReferenceToYourOutfitVariation2}",
            "..."
        ]
    }
]
```

Simply paste this json into a file named "MyAwesomeOutfit.dekcns.json", add it to your Stellar Blade installations Content/Paks/~mods folder. Once you configure the options, it should be displayed within the CNS interface. 

:exclamation: Remember to configure your json properly before loading the interface in game!


## Detailed Structure Breakdown
Essentially, the json structure consists of an array of objects, where each object defines a custom outfit's data. Your json file can have as many objects as you desire, to allow for multiple outfit configurations per json file. 

For the purposes of this guide, "Object" will always refer to an outfit configuration object within the main json array.  

All of the properties within the object are either strings, or arrays of strings. See below for specific information related to each property within the outfit definition "Object".


## UniqueFitID `string` 
Should be a completely unique identifier for each outfit. It is recommended to set this string to contain your username and mod name, to ensure that it will always be unique. 

Example JSON: 
```json
{
    "UniqueFitID": "Dek_SuperAwsomeSkinSuit69",
}
```


## Requirement `string` [optional] (default = None)
Allows you to specify a DLC requirement that you rely on in order for your custom outfit to function correctly. For example, if you are making an edit to the CoolingSuit skin, which is part of the Nikke DLC, and reference assets from that DLC within your outfits skeletal mesh, you should fill in this field to ensure that only users who have those files will be shown the button for the outfit within the interface.

Example JSON: 
```json
{
    "Requirement": "None",
}
```
String should contain any one (and only one) of the following values if required;
- TachyonDLC
- DeluxeDLC
- NikkeDLC
- NierDLC
- None


## DisplayName `string` 
This determines the outfit name shown within the interface to users. You should set this to be human readable, and somewhat unique (but uniqueness is not required)

Example JSON: 
```json
{
    "DisplayName": "Super Awesome Skin Suit 69",
}
```


## Description `string` 
Allows for a description that is shown to users within the UI, when hovering the button for over your outfit. Should be no more than two lines long in order to remain consistent and not overflow onto other UI elements. 

Example JSON: 
```json
{
    "Description": "My super awesome, lore friendly,\nfabulous outfit description!",
}
```
Note: `\n` creates a newline. 


## OutfitTypes `[string]` [optional]
A string array containing the type(s) of outfit the "Object" is defining. 

Example JSON: 
```json
{
    "OutfitTypes": ["Swimsuit", "NSFW"],
}
```
Can be any/all of the following values; (case sensitive)
- Swimsuit
- Dress
- NSFW


## OutfitImage `string` 
Should contain a "soft reference" to the path where your desired icon resides. This could be any one of the default game outfit icons, or a custom icon you provide within your outfits .pak files. 

Example JSON: 
```json
{
    "OutfitImage": "/Game/Art/UI/Texture/Item/NanoSuit/NanoSuit_Icon_BS_20.NanoSuit_Icon_BS_20",
}
```
Notice: soft references have `/Game` as the root path rather than `SB/Content` or `Content`. The `Art` folder in this example, would be within the UE projects `Content/Art` folder. Additionally, notice the repeating of the asset name (`.NanoSuit_Icon_BS_20` in the above example) rather than `.uasset` or similar. This is also required for a soft reference to function correctly. 


## OutfitPaths `[string]` 
An array of soft reference strings, where each string is a soft ref to the underlying Skeletal Mesh for your outfit. When there is more than one element within this array, the UI will treat them as variants for the first outfit, and allow users to cycle through them (with left/right arrows). This should be used for its intended purpose; to provide alternate variants of a single outfit, rather than to define multiple different outfits. 

Example JSON: 
```json
{
    "OutfitPaths": [
        "/Game/OutfitMods/Dek_SuperAwsomeSkinSuit/DekSuit69.DekSuit69",
        "/Game/OutfitMods/Dek_SuperAwsomeSkinSuit/DekSuit69_V2.DekSuit69_V2"
    ]
}
```


## Combined Examples
Below is a complete EXAMPLE setup for an outfit. 

```json
[
    {
        "UniqueFitID": "Dek_SuperAwsomeSkinSuit69",
        "Requirement": "None",
        "DisplayName": "Super Awesome Skin Suit 69",
        "Description": "My super awesome, lore friendly,\nfabulous outfit description!",
        "OutfitTypes": ["Swimsuit", "NSFW"],
        "OutfitImage": "/Game/Art/UI/Texture/Item/NanoSuit/NanoSuit_Icon_BS_20.NanoSuit_Icon_BS_20",
        "OutfitPaths": [
            "/Game/OutfitMods/Dek_SuperAwsomeSkinSuit/DekSuit69.DekSuit69",
            "/Game/OutfitMods/Dek_SuperAwsomeSkinSuit/DekSuit69_V2.DekSuit69_V2"
        ]
    }
]
```

Here is a complete FUNCTIONAL example setup for an outfir from the default game.This is just an example to give a copy/paste solution to demonstrate how to setup a working outfit config. You should ALWAYS make sure your outfit is in a custom game directory so that it doesnt override default assets!!

```json
[
    {
        "UniqueFitID": "Dek_PlanetDivingSuitV7",
        "Requirement": "None",
        "DisplayName": "Example Planet Diving Suit (7th)",
        "Description": "Custom description for example planet diving suit",
        "OutfitTypes": [],
        "OutfitPaths": ["/Game/Art/Character/PC/CH_P_EVE_09/CH_P_EVE_09.CH_P_EVE_09"]
    }
]
```

# Extra
- feel free to request additional information be added. 
- join my [Discord Support Server](https://discord.gg/DCXh2TUF2u) if you need some additional guidance in getting things setup for your own mod. 
