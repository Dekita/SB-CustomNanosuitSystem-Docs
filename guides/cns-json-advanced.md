
# OutfitDatas `[object]` [optional] (ADVANCED)
An array of outfit data objects, can be used to provide more granular control over custom outfits, giving access to material parameter configuration. If OutfitDatas is defined and has at least 1 element, then OutfitPaths will be ignored.

Example JSON: 
```json
{
    "OutfitDatas": [
        {
            "Mesh": "/Game/OutfitMods/DekSkinSuit/CH_P_EVE_InnerSuit_Clean.CH_P_EVE_InnerSuit_Clean",
            "Materials": [
                "/Game/Art/Character/PC/CH_P_EVE_InnerSuit/Materials/MI_EVE_Costume_Temp_Inner_Suit.MI_EVE_Costume_Temp_Inner_Suit",
                "/Game/Art/Character/PC/CH_P_EVE_InnerSuit/Materials/MI_EVE_Costume_Temp_Inner_Skin01.MI_EVE_Costume_Temp_Inner_Skin01",
                "/Game/Art/Character/PC/CH_P_EVE_InnerSuit/Materials/MI_EVE_Costume_Temp_Inner_Skin02.MI_EVE_Costume_Temp_Inner_Skin02"
            ],
            "Parameters": [
                {
                    "MaterialIndex": 0,
                    "LayerIndex": 0,
                    "ParamType": "Texture",
                    "ParamName": "BaseColor",
                    "Association": "Layer",
                    "Value": "/Game/OutfitMods/DekSkinSuit/Textures/Variants/EVE_Costume_Temp_Inner_Suit_BlackPurple_A.EVE_Costume_Temp_Inner_Suit_BlackPurple_A"
                },
                {
                    "MaterialIndex": 0,
                    "LayerIndex": 1,
                    "ParamType": "Texture",
                    "ParamName": "BaseColor",
                    "Association": "Layer",
                    "Value": "/Game/OutfitMods/DekSkinSuit/Textures/Variants/EVE_Costume_Temp_Inner_Suit_BlackPurple_A.EVE_Costume_Temp_Inner_Suit_BlackPurple_A"
                },
                {
                    "MaterialIndex": 2,
                    "LayerIndex": 0,
                    "ParamType": "Texture",
                    "ParamName": "BaseColor",
                    "Association": "Layer",
                    "Value": "/Game/OutfitMods/DekSkinSuit/Textures/EVE_Costume_Temp_Inner_Skin_A.EVE_Costume_Temp_Inner_Skin_A"
                },
                {
                    "MaterialIndex": 2,
                    "LayerIndex": 1,
                    "ParamType": "Texture",
                    "ParamName": "BaseColor",
                    "Association": "Layer",
                    "Value": "/Game/OutfitMods/DekSkinSuit/Textures/Variants/EVE_Costume_Temp_Inner_Suit_BlackPurple_A.EVE_Costume_Temp_Inner_Suit_BlackPurple_A"
                }
            ]
        }
    ]
}
```
- Mesh `string` - A single soft reference string pointing to your desired skeletal mesh.
- Materials `[string]` - An array of soft reference strings pointing to your desired materials for the skeletal mesh.
- Parameters `[object]` - An array of objects that control material parameter scalars, vectors, and textures. 
  - MaterialIndex `integer` - The index of the material this parameter should affect.
  - LayerIndex `integer` - The index of the layer that this parameter should affect.
  - ParamType `string` - The type of parameter this is controlling (can be Scalar, Vector, or Texture) 
  - ParamName `string` - The name of the parameter this is controlling. Should match (case sensitive) with the name in the material.
  - Association `string` - The association type for this parameter (can be Layer, Blend, or Global)
  - Value `float|[float]|string` 
    - When param type is Scalar, this should be a float value. 
    - When param type is Vector, this should be an array of 4 float values, for RGBA. 
    - When param type is Texture, this should be a soft reference string for the texture path. 
Most of this information can be found from within the fmodels exported json data for the material you are controlling. 


# UserConfigs `object` [optional] (VERY-ADVANCED)
| :exclamation: THIS CONFIGURATION IS SUBJECT TO CHANGE UNTIL V1.9 OF CNS! |
|---|

`UserConfigs` is an additional property that can be added to the base json structure. It contains an object that defines user customizable properties within your model. For example, you may want to have modular materials that can be toggled on/off, or allow certain textures to be selectable for specific areas within your model. The `UserConfigs` configuration is designed specifically for this! It allows for user controllable shape keys, material toggles, scalar controls, vector controls, and texture options. 

All properties within the `UserConfigs` object are required, even if their array is unused/empty. The system purposely checks to ensure these proeprties are defined and throws an error otherwise. 

```json
{
    "UserConfigs": {
        "ShapeKeys": [],
        "MaterialToggles": [],
        "ScalarControls": [],
        "VectorControls": [],
        "TextureOptions": []
    }
}
```

Each configurable property has slightly different setup as detailed below;


## UserConfigs.ShapeKeys `[object]` [required] 

```json
{
    "UserConfigs": {
        "ShapeKeys": [
            {
                "Name": "Upper",
                "Desc": "Upper Body Shape Key",
                "Min": 0.0,
                "Max": 1.0,
                "Step": 0.01,
                "Value": 0.5
            }
        ]
    }
}
```
- Name `string` - Defines the name of the shape key to be used. This should match the name of the shape key on the mesh.
- Desc `string` - The description shown to the player when they hover over the configurable slider for this option.
- Min `float` - The minimum possible allowed value for this shape key slider.
- Max `float` - The maximum possible allowed value for this shape key slider.
- Step `float` - The change each 'step' of the slider will move. 
- Value `float` - The default value for the slider. 


## UserConfigs.MaterialToggles `[object]` [required]
```json
{
    "UserConfigs": {
        "MaterialToggles": [
            {
                "Name": "Toggle Material",
                "Desc": "Toggle Material for index 1",
                "MaterialIndex": 1,
                "Value": true
            }
        ]
    }
}
```
- Name `string` - Defines the name shown within the ui for this toggle.
- Desc `string` - The description shown to the player when they hover over the toggle.
- MaterialIndex `integer` - Determines the material slot this toggle will affect. 
- Value `boolean` - The default boolean value for the toggle. 


## UserConfigs.ScalarControls `[object]` [required]
```json
{
    "UserConfigs": {
        "ScalarControls": [
            {
                "Name": "Some Scalar Name",
                "Desc": "Description for Some Scalar Name",
                "ParamName": "SomeScalarName",
                "Association": "Global",
                "LayerIndex": -1,
                "MaterialIndex": 0,
                "Value": 1.0
            }
        ]
    }
}
```
- Name `string` - Defines the name of the scalar shown within the interface. 
- Desc `string` - The description shown to the player when they hover over the configurable slider for this option.
- MaterialIndex `integer` - Determines the material slot this scalar will affect. 
- Association `string` - The association type for this parameter (can be Layer, Blend, or Global)
- LayerIndex `integer` - The index of the layer that this parameter should affect.
- ParamName `string` - The name of the scalar parameter this slider is controlling. Should match (case sensitive) with the name in the material.
- Value `float` - The default value for the slider. 


## UserConfigs.VectorControls `[object]` [required]
```json
{
    "UserConfigs": {
        "VectorControls": [
            {
                "Name": "Some Vector Name",
                "Desc": "Description for Some Vector Name",
                "ParamName": "SomeVectorName",
                "Association": "Global",
                "LayerIndex": -1,
                "MaterialIndex": 1,
                "Value": [1.0, 0.0, 0.0, 1.0]
            }
        ]
    }
}
```
- Name `string` - The display name of the vector to be shown within the ui. 
- Desc `string` - The description shown to the player when they hover over the configurable slider for this option.
- MaterialIndex `integer` - Determines the material slot this vector will affect. 
- Association `string` - The association type for this parameter (can be Layer, Blend, or Global)
- LayerIndex `integer` - The index of the layer that this parameter should affect.
- ParamName `string` - The name of the vector parameter this is controlling. Should match (case sensitive) with the name in the material.
- Value `[float]` - The default value for the vector. An array of [r, g, b, a] float values. 1.0 = 255 in 256 bit color format. 


## UserConfigs.TextureOptions `[object]` [required]
```json
{
    "UserConfigs": {
        "TextureOptions": [
            {
                "Name": "Some Texture Name",
                "Desc": "Description for Some Texture Name",
                "MaterialIndex": 0,
                "Association": "Global",
                "ParamName": "BaseColor",
                "LayerIndex": -1,
                "OptionNames": [
                    "Black",
                    "White",
                    "Red"
                ],
                "Textures": [
                    "/Game/OutfitMods/SomeAwesomeMod/Textures/Black_A.Black_A",
                    "/Game/OutfitMods/SomeAwesomeMod/Textures/White_A.White_A",
                    "/Game/OutfitMods/SomeAwesomeMod/Textures/Red_A.Red_A"
                ],
                "Value": 0
            }
        ]
    }
}
```
- Name `string` - Defines the name of the shape key to be used. This should match the name of the shape key on the mesh.
- Desc `string` - The description shown to the player when they hover over the configurable slider for this option.
- MaterialIndex `integer` - Determines the material slot this vector will affect. 
- Association `string` - The association type for this parameter (can be Layer, Blend, or Global)
- LayerIndex `integer` - The index of the layer that this parameter should affect.
- ParamName `string` - The name of the vector parameter this is controlling. Should match (case sensitive) with the name in the material.
- OptionNames `[string]` - An array of strings to display as subtext for each option within the `Textures` section when selected.
- Textures `[string]` - An array of soft reference strings for each texture to use when this option is selected. 
- Value `integer` - The index within the `Textures` array to use as the default value for this option. 


## UserConfigs Complete Example 
```json
{
    "UserConfigs": {
        "ShapeKeys": [
            {
                "Name": "Upper",
                "Desc": "Upper Body Shape Key",
                "Min": 0.0,
                "Max": 1.0,
                "Step": 0.01,
                "Value": 0.5
            }
        ],
        "MaterialToggles": [
            {
                "Name": "Toggle Material",
                "Desc": "Toggle Material for index 1",
                "MaterialIndex": 1,
                "Value": true
            }
        ],
        "ScalarControls": [
            {
                "Name": "Some Scalar Name",
                "Desc": "Description for Some Scalar Name",
                "ParamName": "SomeScalarName",
                "Association": "Global",
                "LayerIndex": -1,
                "MaterialIndex": 0,
                "Value": 1.0
            }
        ],
        "VectorControls": [
            {
                "Name": "Some Vector Name",
                "Desc": "Description for Some Vector Name",
                "ParamName": "SomeVectorName",
                "Association": "Global",
                "LayerIndex": -1,
                "MaterialIndex": 1,
                "Value": [1.0, 0.0, 0.0, 1.0]
            }
        ],
        "TextureOptions": [
            {
                "Name": "Some Texture Name",
                "Desc": "Description for Some Texture Name",
                "MaterialIndex": 0,
                "Association": "Global",
                "ParamName": "BaseColor",
                "LayerIndex": -1,
                "OptionNames": [
                    "Black",
                    "White",
                    "Red"
                ],
                "Textures": [
                    "/Game/OutfitMods/SomeAwesomeMod/Textures/Black_A.Black_A",
                    "/Game/OutfitMods/SomeAwesomeMod/Textures/White_A.White_A",
                    "/Game/OutfitMods/SomeAwesomeMod/Textures/Red_A.Red_A"
                ],
                "Value": 0
            }
        ]
    }
}
```

<div align="center">

[![Discord](https://img.shields.io/discord/1132980259596271657?logo=discord&style=for-the-badge&logoColor=e4e4e4&label=Support%20Server)](https://discord.gg/WyTdramBkm)
[![Support on Patreon](https://img.shields.io/badge/Support-Patreon-orange?logo=patreon&style=for-the-badge)](https://www.patreon.com/DekitaRPG)
[![Donate via PayPal](https://img.shields.io/badge/Donate-PayPal-0070BA?logo=paypal&style=for-the-badge)](https://www.paypal.me/DekitaRPG)

</div>