-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- This event is raised just before a touch spell completes casting, to set up the hit detection cone for spell targets. See `calcHitDetectionCone` for the melee equivalent.
--- @class calcTouchSpellConeEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field angleXY number The maximum allowable angle offset (in degrees) in the horizontal direction that will hit. This is related to game setting fCombatAngleXY but using different units. May be adjusted. The highest effective angle is 90 degrees, and larger angles will behave like 90 degrees.
--- @field angleZ number The maximum allowable angle offset (in degrees) in the vertical direction that will hit. This is related to game setting fCombatAngleZ but using different units. May be adjusted. The highest effective angle is 90 degrees, and larger angles will behave like 90 degrees.
--- @field caster tes3reference *Read-only*. The reference of the caster.
--- @field casterMobile tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer *Read-only*. The mobile which is casting the magic.
--- @field reach number The touch spell search range in world units. Currently, changes to this value do not have an effect without further engine modifications.
--- @field source tes3alchemy|tes3enchantment|tes3spell *Read-only*. The magic source.
--- @field sourceInstance tes3magicSourceInstance *Read-only*. The unique instance of the magic source.
