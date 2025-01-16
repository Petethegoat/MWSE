-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- An exterior or interior game area.
--- @class tes3cell : tes3baseObject
--- @field activators tes3referenceList *Read-only*. One of the three reference collections for a cell.
--- @field actors tes3referenceList *Read-only*. One of the three reference collections for a cell.
--- @field ambientColor niPackedColor The cell's ambient color. Only available on interior cells.
--- @field behavesAsExterior boolean If true, the cell behaves as an exterior instead of an interior for certain properties. Only available on interior cells.
--- @field cellFlags number A numeric representation of the packed bit flags for the cell, typically accessed from other properties.
--- @field displayName string The name of the cell as displayed on the in-game UI. For exterior cells without an assigned name, this is the region name.
--- @field editorName string The name of the cell as displayed in the Construction Set. For exterior cells, this includes the cell coordinates.
--- @field fogColor niPackedColor The cell's fog color. Only available on interior cells.
--- @field fogDensity number The cell's fog density. Only available on interior cells.
--- @field gridX number The cell's X grid coordinate. Only available on exterior cells.
--- @field gridY number The cell's Y grid coordinate. Only available on exterior cells.
--- @field hasMapMarker boolean *Read-only*. If true, the cell will be marked on the player's map. This does not take into account if the player has been to that cell.
--- @field hasWater boolean If true, the cell has water. Only applies to interior cells.
--- @field isInterior boolean If true, the cell is an interior.
--- @field isOrBehavesAsExterior boolean *Read-only*. `true` if the cell is not an interior or if it behaves as an exterior.
--- @field landscape tes3land *Read-only*. Access to the cell's landscape object. It's only available on exterior cells.
--- @field name string|nil The name and id of the cell. Only available on interior cells. See also `displayName` and `editorName`.
--- @field pathGrid tes3pathGrid|nil *Read-only*. Access to the cell's pathgrid. Not all cells have a pathgrid. The property is unaccessible on unloaded cells.
--- @field pickObjectsRoot niBSAnimationNode|niBSParticleNode|niBillboardNode|niCollisionSwitch|niNode|niSortAdjustNode|niSwitchNode The scenegraph node containing player-interactable objects from this cell.
--- @field region tes3region|nil The region associated with the cell. Only available on exterior cells, or interior cells that behave as exterior cells.
--- @field restingIsIllegal boolean If true, the player may not rest in the cell.
--- @field staticObjectsRoot niBSAnimationNode|niBSParticleNode|niBillboardNode|niCollisionSwitch|niNode|niSortAdjustNode|niSwitchNode The scenegraph node containing static non-player-interactable objects from this cell.
--- @field statics tes3referenceList *Read-only*. One of the three reference collections for a cell.
--- @field sunColor niPackedColor The cell's sun color. Only available on interior cells.
--- @field waterLevel number|nil The water level in the cell. In extirior cells, water level is 0, while the interior cells can have custom water, usually set in the Construction Set, or don't have water at all. In that case, this property will be `nil`.
tes3cell = {}

--- Determines if a given X/Y coordinate falls in the given cell. This will always be true for interior cells.
--- @param x number The X position to test.
--- @param y number The Y position to test.
--- @return boolean inCell true, if the point is found in the cell.
function tes3cell:isPointInCell(x, y) end

--- Used in a for loop, iterates over objects in the cell.
--- 
--- !!! note
--- 	This iterator will also yield disabled and deleted references.
--- 
--- @param filter integer|integer[]|nil *Optional*. The TES3 object type to filter results by. If you need multiple filters, just pass them as a table, e.g. `{ tes3.objectType.npc, tes3.objectType.creature }`. Those are stored in [`tes3.objectType`](https://mwse.github.io/MWSE/references/object-types/) namespace.
--- @return fun(): tes3reference iterator No description yet available.
function tes3cell:iterateReferences(filter) end

