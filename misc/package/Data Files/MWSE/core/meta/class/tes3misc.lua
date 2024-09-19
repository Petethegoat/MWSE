-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- A core miscellaneous object.
--- @class tes3misc : tes3item, tes3physicalObject, tes3object, tes3baseObject
--- @field icon string The path to the object's icon. Relative to `Data Files\\icons\\`.
--- @field isGold boolean True if the misc item is a valid form of gold.
--- @field isKey boolean Access to the flag determining if this item is recognized as a key.
--- @field isSoulGem boolean *Read-only*. Determines if this item is a soul gem.
--- @field mesh string The path to the object's mesh. Relative to `Data Files\\meshes\\`.
--- @field name string The player-facing name for the object.
--- @field script tes3script *Read-only*. The script that runs on the object.
--- @field soulGemCapacity number *Read-only*. Fetches capacity of the soul gem, if this item is a soul gem.
--- @field soulGemData tes3soulGemData *Read-only*. Fetches related soul gem data, if this item is a soul gem.
--- @field value number The value of the object.
--- @field weight number The weight of the object.
tes3misc = {}

--- Use [`tes3.createObject()`](https://mwse.github.io/MWSE/apis/tes3/#tes3createobject) instead. This function creates a new misc item object, which will be stored as part of the current saved game.
--- @deprecated
--- @param params tes3misc.create.params This table accepts the following values:
--- 
--- `id`: string? — *Optional*. The new object's ID. Must be unique if provided.
--- 
--- `name`: string? — *Default*: `Miscellaneous item`. The new object's name.
--- 
--- `script`: tes3script? — *Optional*. A script to attach to the object.
--- 
--- `mesh`: string? — *Default*: ``. The mesh to use for the object.
--- 
--- `objectFlags`: number? — *Default*: `0`. The object flags initially set. Force set as modified.
--- 
--- `weight `: tes3script? — *Default*: `0`. The weight of the object.
--- 
--- `value `: string? — *Default*: `0`. The value of the object.
--- 
--- `flags `: number? — *Default*: `0`. The object flags initially set.
--- @return tes3misc newObject No description yet available.
function tes3misc.create(params) end

---Table parameter definitions for `tes3misc.create`.
--- @class tes3misc.create.params
--- @field id string? *Optional*. The new object's ID. Must be unique if provided.
--- @field name string? *Default*: `Miscellaneous item`. The new object's name.
--- @field script tes3script? *Optional*. A script to attach to the object.
--- @field mesh string? *Default*: ``. The mesh to use for the object.
--- @field objectFlags number? *Default*: `0`. The object flags initially set. Force set as modified.
--- @field weight  tes3script? *Default*: `0`. The weight of the object.
--- @field value  string? *Default*: `0`. The value of the object.
--- @field flags  number? *Default*: `0`. The object flags initially set.

--- Creates a copy of this object.
--- @param params tes3misc.createCopy.params This table accepts the following values:
--- 
--- `id`: string? — *Optional*. The new object's ID. If one is not provided, a randomly generated one will be used.
--- 
--- `addToObjectList`: boolean? — *Default*: `true`. If true, the object will be added to the data handler. If this is false, the new object may not have a randomly generated ID. Do not use this without knowing the implications.
--- 
--- `sourceless`: boolean? — *Default*: `false`. If true, the object will be made sourceless, and will not be serialized to the save game. If the object is copied outside of a save game, the object will **always** be sourceless.
--- @return tes3misc newObject No description yet available.
function tes3misc:createCopy(params) end

---Table parameter definitions for `tes3misc.createCopy`.
--- @class tes3misc.createCopy.params
--- @field id string? *Optional*. The new object's ID. If one is not provided, a randomly generated one will be used.
--- @field addToObjectList boolean? *Default*: `true`. If true, the object will be added to the data handler. If this is false, the new object may not have a randomly generated ID. Do not use this without knowing the implications.
--- @field sourceless boolean? *Default*: `false`. If true, the object will be made sourceless, and will not be serialized to the save game. If the object is copied outside of a save game, the object will **always** be sourceless.

