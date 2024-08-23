return {
	type = "function",
	description = [[Creates a new Color picker inside given `parent` menu.

The canonical way to use this function is to pass a `parent` and `data` arguments. If passing only `data` table, Color picker's UI element tree won't be created. To do so, use Color picker's `create` method:

```lua
local myColorPicker = mwse.mcm.createColorPicker({ ... })
myColorPicker:create(parent)
```

The same is done by this function if you pass both `parent` and `data` arguments.
]],
	arguments = {
		{ name = "parent", type = "tes3uiElement|mwse.mcm.createColorPicker.data", description = "The UI element inside which the new ColorPicker will be created." },
		{
			name = "data",
			type = "table",
			optional = true,
			tableParams = {
				{ name = "label", type = "string", optional = true, description = "Text shown on the top of the picker." },
				{ name = "description", type = "string", optional = true, description = "If in a [Sidebar Page](../types/mwseMCMSideBarPage.md), the description will be shown on mouseover." },
				{ name = "alpha", type = "boolean", optional = true, default = false, description = "If `true` the picker will also allow picking an alpha value." },
				{ name = "vertical", type = "boolean", optional = true, default = false, description = "If `true`, saturation, hue and alpha bars and color previews are created in the second row below the main picker. If `false` they are created in the same row as the main picker. Color picker is a large widget and as such, might not fit into a sidebar page or a filter page. It's useful to pass `vertical = true` to make it fit on those pages." },
				{ name = "variable", type = "mwseMCMVariable|mwseMCMSettingNewVariable", optional = true,
					description = "A variable for this setting. If not provided, this setting will try to create a variable using the `config` and `configKey` parameters, if possible."
				},
				{ name = "config", type = "table", optional = true, default = "`parentComponent.config`",
					description = "The config to use when creating a [`mwseMCMTableVariable`](./mwseMCMTableVariable.md) for this `Setting`. \z
							If provided, it will override the config stored in `parentComponent`. \z
							Otherwise, the value in `parentComponent` will be used."
				},
				{ name = "defaultConfig", type = "table", optional = true, default = "`parentComponent.defaultConfig`",
					description = "The `defaultConfig` to use when creating a [`mwseMCMTableVariable`](./mwseMCMTableVariable.md) for this `Setting`. \z
						If provided, it will override the `defaultConfig` stored in `parentComponent`. \z
						Otherwise, the value in `parentComponent` will be used."
				},
				{ name = "configKey", type = "string|number", optional = true,
					description = "The `configKey` used to create a new [`mwseMCMTableVariable`](./mwseMCMTableVariable.md). \z
						If this is provided, along with a `config` (which may be inherited from the `parentComponent`), then a new \z
							[`mwseMCMTableVariable`](./mwseMCMTableVariable.md) variable will be created for this setting."
				},
				{ name = "converter", type = "fun(newValue: unknown): unknown", optional = true,
					description = "A converter to use for this component's `variable`."
				},
				{ name = "defaultSetting", type = "mwseColorTable|mwseColorATable", optional = true,
					description = "If `defaultSetting` wasn't passed in the `variable` table, can be passed here. \z
						The new variable will be initialized to this value. If not provided, then the value in `defaultConfig` will be used, if possible."
				},
				{ name = "showDefaultSetting", type = "boolean", optional = true, default = "`parentComponent.showDefaultSetting`",
					description = "If `true`, and in a [Sidebar Page](../types/mwseMCMSideBarPage.md), then the `defaultSetting` of this setting's `variable` will be shown below its `description`. \z
						The `defaultSetting` will be formatted in accordance with the `convertToLabelValue` function. \z
						**Note:** This parameter does not update the `description` field.",
				},
				{ name = "callback", type = "fun(self: mwseMCMColorPicker)", optional = true, description = "The custom function called when the player interacts with this Color picker." },
				{ name = "inGameOnly", type = "boolean", optional = true, default = false, description = "If true, the setting is disabled while the game is on main menu." },
				{ name = "restartRequired", type = "boolean", optional = true, default = false, description = "If true, updating this Setting will notify the player to restart the game." },
				{ name = "restartRequiredMessage", type = "string", optional = true, description = 'The message shown if restartRequired is triggered. The default text is a localized version of: "The game must be restarted before this change will come into effect."' },
				{ name = "indent", type = "integer", optional = true, default = 12, description = "The left padding size in pixels. Only used if the `childIndent` isn't set on the parent component." },
				{ name = "childIndent", type = "integer", optional = true, description = "The left padding size in pixels. Used on all the child components." },
				{ name = "paddingBottom", type = "integer", optional = true, default = 4, description = "The bottom border size in pixels. Only used if the `childSpacing` is unset on the parent component." },
				{ name = "childSpacing", type = "integer", optional = true, description = "The bottom border size in pixels. Used on all the child components." },
				{ name = "postCreate", type = "fun(self: mwseMCMColorPicker)", optional = true, description = "Can define a custom formatting function to make adjustments to any element saved in `self.elements`." },
			}
		}
	},
	returns = {{
		name = "picker", type = "mwseMCMColorPicker"
	}}
}
