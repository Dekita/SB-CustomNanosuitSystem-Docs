# Custom Nanosuit System Animations JSON structure
How to add your own custom animations into the [Custom Nanosuit System](https://www.nexusmods.com/stellarblade/mods/1496) interface by dekitarpg@gmail.com. 

# Animation Configuration Setup
In order for your dekani.json file to be compatible with the CNS menu, it MUST be a valid json structure formatted in the way the system expects. The following structure details the available configurable options. This is all the json you would need to add your own custom animation into the menu's interface; 

```json
[
    {
        "CharacterID": "{TargetCharacterID}",
        "AniTargetID": "{AnimationTargetType}",
        "UniqueAniID": "{YourCustomAnimationID}",
        "DisplayName": "{YourOutfitDisplayName}",
        "Description": "{YourOutfitDescription}",
        "AniCatTypes": ["{Category1}", "{Category2}"],
        "AniFilePath": "{SoftReferenceToAnimationSequence}",
        "LinkedAnims": ["{LinkedAnimationID1}", "{LinkedAnimationID1}"]
    }
]
```

Simply paste this json into a file named "MyAwesomeAnimation.dekani.json", add it to your Stellar Blade installations Content/Paks/~mods/CustomNanosuitSystem/Animations folder. Once you configure the options, it should be displayed within the CNS animations interface. 

:exclamation: Remember to configure your json properly before loading the interface in game!


## Detailed Structure Breakdown
Essentially, the json structure consists of an array of objects, where each object defines a custom animations's data. Your json file can have as many animation objects as you desire, to allow for multiple animation definitions per json file. 

For the purposes of this guide, "Object" will always refer to an animation configuration object within the main json array.  

All of the properties within the object are either strings, or arrays of strings. See below for specific information related to each property within the animation definition "Object".


## CharacterID `string` [optional] (Default="EVE")
A string containing the character for whom this animation should be used by. 

Example JSON: 
```json
{
    "CharacterID": "EVE",
}
```
Can be any one of the following; 
- EVE
- LILY
- ADAM


## AniTargetID `string` [optional] (Default="Body")
A string containing the target for which this animation should be used by. 

Example JSON: 
```json
{
    "AniTargetID": "Body",
}
```
Can be any one of the following; 
- Body
- Face


## AniFilePath `string` [reqiured]
A soft reference string pointing to your desired AnimationSequence file within the games animation files. For adding custom Animations, you should use a completely custom path, such as the one shown below;

Custom Animation Example JSON: 
```json
{
    "AniFilePath": "/Game/AnimationMods/Character/PC/CH_P_EVE_01/Animation/Proto_Walk.Proto_Walk",
}
```

Default Animation Example JSON: 
```json
{
    "AniFilePath": "/Game/Art/Character/PC/CH_P_EVE_01/Animation/Proto_Walk.Proto_Walk",
}
```



## UniqueAniID `string` [optional] (Default=AniFilePath)
Should be a completely unique identifier for each animation. It is recommended to set this string to contain your username and mod name, to ensure that it will always be unique. 

Example JSON: 
```json
{
    "UniqueAniID": "Dek_SuperAwsomeAnimation42069",
}
```


## DisplayName `string` [optional] (Default=Animation Asset Name)
This determines the animation name shown within the interface to users. You should set this to be human readable, and somewhat unique (but uniqueness is not required)

Example JSON: 
```json
{
    "DisplayName": "Super Awesome Animation",
}
```


## Description `string` [optional] (Default=AniFilePath)
Allows for a description that is shown to users within the UI, when hovering the button for over your animation. Should be no more than two lines long in order to remain consistent and not overflow onto other UI elements. 

Example JSON: 
```json
{
    "Description": "My super awesome, lore friendly,\nfabulous animation description!",
}
```
Note: `\n` creates a newline. 


## AniCatTypes `[string]` 
A string array containing the categories for the animation.

Example JSON: 
```json
{
    "AniCatTypes": ["Pose", "Misc"],
}
```

Can be any/all of the following values; (case sensitive)
**For Body Type Animation**
- Pose
- Combat
- Movement
- Interaction
- Utility
- Misc

**For Face Type Animation**
- Expression
- Dialogue
- Sequence
- Utility
- Misc


## LinkedAnims `[string]` (beta feature)
A string array containing the ID's for linked animations. 
Allows triggering multiple animations for characters at the same time. 

Example JSON: 
```json
{
    "LinkedAnims": ["SomeAnimationID"],
}
```