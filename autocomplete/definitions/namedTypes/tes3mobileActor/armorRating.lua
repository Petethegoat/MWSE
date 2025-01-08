return {
	type = "value",
	description = [[The actor's current armour rating, taking equipment condition into account. Armour mitigation can be automatically applied to damage by using the `applyDamage` function.

!!! note "Armour mitigation calculation:"
	```
	x = damage / (damage + target.armorRating)

	damage *= max(fCombatArmorMinMult, x)

	if damage < 1 then

		damage = 1

	end
	```
]],
	readOnly = true,
	valuetype = "number",
}