
## OutfitDatas `[object]` [optional] (ADVANCED)
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
  - Association `string` - The association type for this parameter (can be Layer, Blend, or Global)
  - Value `float|[float]|string` 
    - When param type is Scalar, this should be a float value. 
    - When param type is Vector, this should be an array of 4 float values, for RGBA. 
    - When param type is Texture, this should be a soft reference string for the texture path. 
Most of this information can be found from within the fmodels exported json data for the material you are controlling. 
