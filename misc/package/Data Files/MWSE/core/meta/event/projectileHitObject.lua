--- @meta

--- The projectileHitObject event fires when a projectile collides with an object.
--- @class projectileHitObjectEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field collisionPoint tes3vector3 *Read-only*. The collision point of the mobile projectile.
--- @field firingReference tes3reference *Read-only*. Reference to the actor that fired the projectile.
--- @field firingWeapon tes3weapon *Read-only*. The weapon that fired the projectile.
--- @field mobile tes3mobileProjectile|tes3mobileSpellProjectile *Read-only*. The mobile projectile that is expiring.
--- @field target tes3reference *Read-only*. Reference to the object that was hit.
