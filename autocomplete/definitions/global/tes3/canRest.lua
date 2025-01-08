return {
	type = "function",
	description = [[This function returns true if player can rest.]],
	arguments = {{
		name = "params",
		type = "table",
		optional = true,
		tableParams = {
			{ name = "checkForEnemies", type = "boolean", optional = true, default = true, description = "Perform a check whether there are enemies nearby before opening rest menu. If there are, false is returned." },
			{ name = "checkForSolidGround", type = "boolean", optional = true, default = true, description = "Perform a check if the player is underwater. If underwater, false is returned." },
			{ name = "showMessage", type = "boolean", optional = true, default = false, description = "If true, a messagebox will be shown if the player can't rest because some condition isn't met." },
		},
	}},
	returns = {
		{ name = "canRest", type = "boolean" },
	},
}
