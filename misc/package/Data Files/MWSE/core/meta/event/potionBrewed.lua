--- @meta

--- The potionBrewed event is raised when the player brews a new potion.
---
--- [Examples available in online documentation](https://mwse.github.io/MWSE/events/potionBrewed).
--- @class potionBrewedEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field alembic tes3apparatus *Read-only*. The alembic apparatus used to create the potion.
--- @field calcinator tes3apparatus *Read-only*. The calcinator apparatus used to create the potion.
--- @field ingredients table *Read-only*. An array of up to 4 tes3ingredient objects, which were used to create the potion.
--- @field mortar tes3apparatus *Read-only*. The mortar apparatus used to create the potion.
--- @field object tes3alchemy *Read-only*. The potion created by the player.
--- @field retort tes3apparatus *Read-only*. The retort apparatus used to create the potion.
