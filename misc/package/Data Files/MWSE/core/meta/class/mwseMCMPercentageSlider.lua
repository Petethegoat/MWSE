-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- A slider that displays values as percentages in the range 0%-100%, while storing values in the range 0.0-1.0. The minimum and maximum range can be changed via the `min` and `max` parameters.
--- @class mwseMCMPercentageSlider : mwseMCMSlider, mwseMCMSetting, mwseMCMComponent
--- @field decimalPlaces integer The number of decimal places of precision. Must be a positive integer. Default is `2`.
--- @field max number Maximum value the `variable` should take.  The value displayed in the slider will be 100 times greater than this value. Default is `1.0`.
--- @field min number Minimum value the `variable` should take. The value displayed in the slider will be 100 times greater than this value. Default is `0.0`.
--- @field step number How far the slider moves when you press the arrows. Default is `0.01`.
mwseMCMPercentageSlider = {}

--- Creates a new `PercentageSlider`.
--- @param data mwseMCMPercentageSlider.new.data? This table accepts the following values:
--- 
--- `label`: string? — *Optional*. Text shown above the slider. If left as a normal string, it will be shown in the form: [`label`]: [`self.variable.value`]. If the string contains a '%s' format operator, the value will be formatted into it.
--- 
--- `variable`: mwseMCMConfigVariable|mwseMCMCustomVariable|mwseMCMGlobal|mwseMCMGlobalBoolean|mwseMCMPlayerData|mwseMCMTableVariable|mwseMCMVariable|mwseMCMSettingNewVariable|nil — *Optional*. A variable for this setting.
--- 
--- `defaultSetting`: unknown? — *Optional*. If `defaultSetting` wasn't passed in the `variable` table, can be passed here. The new variable will be initialized to this value.
--- 
--- `min`: number? — *Default*: `0`. Minimum value of slider.
--- 
--- `max`: number? — *Default*: `1`. Maximum value of slider.
--- 
--- `step`: number? — *Default*: `0.01`. How far the slider moves when you press the arrows.
--- 
--- `jump`: number? — *Default*: `0.05`. How far the slider jumps when you click an area inside the slider.
--- 
--- `decimalPlaces`: integer? — *Default*: `0`. The number of decimal places of precision. Must be a nonnegative integer.
--- 
--- `description`: string? — *Optional*. If in a [Sidebar Page](../types/mwseMCMSideBarPage.md), the description will be shown on mouseover.
--- 
--- `callback`: nil|fun(self: mwseMCMPercentageSlider) — *Optional*. The custom function called when the player interacts with this Setting.
--- 
--- `inGameOnly`: boolean? — *Default*: `false`. If true, the setting is disabled while the game is on main menu.
--- 
--- `restartRequired`: boolean? — *Default*: `false`. If true, updating this Setting will notify the player to restart the game.
--- 
--- `restartRequiredMessage`: string? — *Optional*. The message shown if restartRequired is triggered. The default text is a localized version of: "The game must be restarted before this change will come into effect."
--- 
--- `indent`: integer? — *Default*: `12`. The left padding size in pixels. Only used if the `childIndent` isn't set on the parent component.
--- 
--- `childIndent`: integer? — *Optional*. The left padding size in pixels. Used on all the child components.
--- 
--- `paddingBottom`: integer? — *Default*: `4`. The bottom border size in pixels. Only used if the `childSpacing` is unset on the parent component.
--- 
--- `childSpacing`: integer? — *Optional*. The bottom border size in pixels. Used on all the child components.
--- 
--- `postCreate`: nil|fun(self: mwseMCMPercentageSlider) — *Optional*. Can define a custom formatting function to make adjustments to any element saved in `self.elements`.
--- 
--- `class`: string? — *Optional*. No description yet available.
--- 
--- `componentType`: string? — *Optional*. No description yet available.
--- 
--- `parentComponent`: mwseMCMActiveInfo|mwseMCMBinder|mwseMCMButton|mwseMCMCategory|mwseMCMColorPicker|mwseMCMColorPickerButton|mwseMCMComponent|mwseMCMCycleButton|mwseMCMDropdown|mwseMCMExclusionsPage|mwseMCMFilterPage|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMMouseBinder|mwseMCMMouseOverInfo|mwseMCMMouseOverPage|mwseMCMOnOffButton|mwseMCMPage|mwseMCMParagraphField|mwseMCMPercentageSlider|mwseMCMSetting|mwseMCMSideBarPage|mwseMCMSideBySideBlock|mwseMCMSlider|mwseMCMTemplate|mwseMCMTextField|mwseMCMYesNoButton|nil — *Optional*. No description yet available.
--- @return mwseMCMPercentageSlider slider No description yet available.
function mwseMCMPercentageSlider:new(data) end

---Table parameter definitions for `mwseMCMPercentageSlider.new`.
--- @class mwseMCMPercentageSlider.new.data
--- @field label string? *Optional*. Text shown above the slider. If left as a normal string, it will be shown in the form: [`label`]: [`self.variable.value`]. If the string contains a '%s' format operator, the value will be formatted into it.
--- @field variable mwseMCMConfigVariable|mwseMCMCustomVariable|mwseMCMGlobal|mwseMCMGlobalBoolean|mwseMCMPlayerData|mwseMCMTableVariable|mwseMCMVariable|mwseMCMSettingNewVariable|nil *Optional*. A variable for this setting.
--- @field defaultSetting unknown? *Optional*. If `defaultSetting` wasn't passed in the `variable` table, can be passed here. The new variable will be initialized to this value.
--- @field min number? *Default*: `0`. Minimum value of slider.
--- @field max number? *Default*: `1`. Maximum value of slider.
--- @field step number? *Default*: `0.01`. How far the slider moves when you press the arrows.
--- @field jump number? *Default*: `0.05`. How far the slider jumps when you click an area inside the slider.
--- @field decimalPlaces integer? *Default*: `0`. The number of decimal places of precision. Must be a nonnegative integer.
--- @field description string? *Optional*. If in a [Sidebar Page](../types/mwseMCMSideBarPage.md), the description will be shown on mouseover.
--- @field callback nil|fun(self: mwseMCMPercentageSlider) *Optional*. The custom function called when the player interacts with this Setting.
--- @field inGameOnly boolean? *Default*: `false`. If true, the setting is disabled while the game is on main menu.
--- @field restartRequired boolean? *Default*: `false`. If true, updating this Setting will notify the player to restart the game.
--- @field restartRequiredMessage string? *Optional*. The message shown if restartRequired is triggered. The default text is a localized version of: "The game must be restarted before this change will come into effect."
--- @field indent integer? *Default*: `12`. The left padding size in pixels. Only used if the `childIndent` isn't set on the parent component.
--- @field childIndent integer? *Optional*. The left padding size in pixels. Used on all the child components.
--- @field paddingBottom integer? *Default*: `4`. The bottom border size in pixels. Only used if the `childSpacing` is unset on the parent component.
--- @field childSpacing integer? *Optional*. The bottom border size in pixels. Used on all the child components.
--- @field postCreate nil|fun(self: mwseMCMPercentageSlider) *Optional*. Can define a custom formatting function to make adjustments to any element saved in `self.elements`.
--- @field class string? *Optional*. No description yet available.
--- @field componentType string? *Optional*. No description yet available.
--- @field parentComponent mwseMCMActiveInfo|mwseMCMBinder|mwseMCMButton|mwseMCMCategory|mwseMCMColorPicker|mwseMCMColorPickerButton|mwseMCMComponent|mwseMCMCycleButton|mwseMCMDropdown|mwseMCMExclusionsPage|mwseMCMFilterPage|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMMouseBinder|mwseMCMMouseOverInfo|mwseMCMMouseOverPage|mwseMCMOnOffButton|mwseMCMPage|mwseMCMParagraphField|mwseMCMPercentageSlider|mwseMCMSetting|mwseMCMSideBarPage|mwseMCMSideBySideBlock|mwseMCMSlider|mwseMCMTemplate|mwseMCMTextField|mwseMCMYesNoButton|nil *Optional*. No description yet available.

