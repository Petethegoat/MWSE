-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- One of the movement events, **calcSwimSpeed** is used when calculating the movement speed while in water when running.
--- 
--- The movement event flow is described below:
--- 
--- - Swimming: [calcWalkSpeed](https://mwse.github.io/MWSE/events/calcWalkSpeed) -> **calcSwimSpeed** -> [calcMoveSpeed](https://mwse.github.io/MWSE/events/calcMoveSpeed)
--- - Swimming (while running): [calcWalkSpeed](https://mwse.github.io/MWSE/events/calcWalkSpeed) -> **calcSwimSpeed** -> [calcSwimRunSpeed](https://mwse.github.io/MWSE/events/calcSwimRunSpeed) -> [calcMoveSpeed](https://mwse.github.io/MWSE/events/calcMoveSpeed)
--- @class calcSwimSpeedEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field mobile tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer *Read-only*. The mobile actor whose speed is being calculated.
--- @field reference tes3reference *Read-only*. mobile’s related reference.
--- @field speed number The previous speed calculated, starting with the base engine values.
--- @field type number *Read-only*. The type of movement that was calculated. This is always 3 for this event.
