--- @meta

--- This event is raised when determining the hit chance for an actor.
--- @class calcHitChanceEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field attacker tes3reference *Read-only*. A shortcut to the mobile's reference.
--- @field attackerMobile tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer *Read-only*. The mobile who is making the attack.
--- @field hitChance number The hit chance for the actor. This may be adjusted.
--- @field target tes3reference *Read-only*. A shortcut to the target mobile's reference. May not always be available.
--- @field targetMobile tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer *Read-only*. The mobile who is being attacked. May not always be available.
