-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- This event is triggered after an NPC's disposition is calculated. This is done frequently. The disposition value can be changed to alter the resulting value. The disposition should be consistent between calls.
---
--- [Examples available in online documentation](https://mwse.github.io/MWSE/events/disposition).
--- @class dispositionEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field clamped boolean *Read-only*. If true, the `disposition` value will end up clamped between 0 and 100.
--- @field disposition number The precalculated disposition. This can be set to override the value.
--- @field mobile tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer *Read-only*. Convenient access to the `reference`'s mobile. The mobile may not be available if the target has not been visited recently, e.g. when scripts access dispositions.
--- @field reference tes3reference *Read-only*. The reference whose disposition is being calculated.
