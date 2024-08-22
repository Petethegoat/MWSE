-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- This is an abstract MCM Button Setting used in MCM internally for sharing code between various key/mouse binders.
--- @class mwseMCMBinder : mwseMCMButton, mwseMCMSetting, mwseMCMComponent
--- @field allowCombinations boolean If true, the keybinder will let the user use modification keys: Shift, Ctrl, and Alt when rebinding. Set to `true` by default.
--- @field keybindName string|nil The keybind name. Shown in the popup menu header. This string is formatted into a localized version of "SET %s KEYBIND". If none is provided the popup has "SET NEW KEYBIND" as header text.
--- @field observeEvents table<tes3.event, true> The events on which this Binder will register user input.
mwseMCMBinder = {}

--- Method is set to `getComboString`.
--- @param keyCombo mwseKeyMouseCombo No description yet available.
--- @return string labelValue No description yet available.
function mwseMCMBinder:convertToLabelValue(keyCombo) end

--- Returns a string representing given `keyCombo`. For example, "Ctrl - C".
--- @param keyCombo mwseKeyMouseCombo No description yet available.
--- @return string result No description yet available.
function mwseMCMBinder:getComboString(keyCombo) end

--- Returns localized help text based on which input can be used in the Binder.
--- @return string helpText No description yet available.
function mwseMCMBinder:getHelpText() end

--- Used to convert raw input event data into `mwseKeyMouseCombo`.
--- @param e keyDownEventData|mouseWheelEventData|mouseButtonDownEventData|mwseKeyMouseCombo No description yet available.
--- @return mwseKeyMouseCombo keyCombo No description yet available.
function mwseMCMBinder:getKeyComboFromEventData(e) end

--- Returns true if given `mwseKeyMouseCombo` represents unbound key.
--- @param keyCombo mwseKeyMouseCombo No description yet available.
--- @return boolean isUnbound No description yet available.
function mwseMCMBinder:isUnbound(keyCombo) end

--- Changes the `variable.value` to the key combination.
--- @param keyCombo mwseKeyMouseCombo No description yet available.
function mwseMCMBinder:keySelected(keyCombo) end

--- Creates a new Binder.
--- @param data mwseMCMBinder.new.data? This table accepts the following values:
--- 
--- `label`: string? — *Optional*. Text shown next to the button.
--- 
--- `description`: string? — *Optional*. If in a [Sidebar Page](../types/mwseMCMSideBarPage.md), the description will be shown on mouseover.
--- 
--- `allowCombinations `: boolean? — *Default*: `true`. If true, the Binder will let the user use modification keys: Shift, Ctrl, and Alt when rebinding.
--- 
--- `keybindName`: string? — *Optional*. The keybind name. Shown in the popup menu header. This string is formatted into a localized version of "SET %s KEYBIND". If none is provided the popup has "SET NEW KEYBIND" as header text.
--- 
--- `leftSide`: boolean? — *Default*: `true`. If true, the button will be created on the left and label on the right.
--- 
--- `variable`: mwseMCMConfigVariable|mwseMCMCustomVariable|mwseMCMGlobal|mwseMCMGlobalBoolean|mwseMCMPlayerData|mwseMCMTableVariable|mwseMCMVariable|mwseMCMSettingNewVariable|nil — *Optional*. A variable for this Binder.
--- 
--- `defaultSetting`: mwseKeyCombo|mwseKeyMouseCombo|mwseKeyMouseCombo|nil — *Optional*. If `defaultSetting` wasn't passed in the `variable` table, can be passed here. The new variable will be initialized to this value.
--- 
--- `callback`: nil|fun(self: mwseMCMBinder) — *Optional*. The custom function called when the player interacts with this Binder.
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
--- `postCreate`: nil|fun(self: mwseMCMBinder) — *Optional*. Can define a custom formatting function to make adjustments to any element saved in `self.elements`.
--- 
--- `class`: string? — *Optional*. No description yet available.
--- 
--- `componentType`: string? — *Optional*. No description yet available.
--- 
--- `parentComponent`: mwseMCMActiveInfo|mwseMCMBinder|mwseMCMButton|mwseMCMCategory|mwseMCMColorPicker|mwseMCMColorPickerButton|mwseMCMComponent|mwseMCMCycleButton|mwseMCMDropdown|mwseMCMExclusionsPage|mwseMCMFilterPage|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMMouseBinder|mwseMCMMouseOverInfo|mwseMCMMouseOverPage|mwseMCMOnOffButton|mwseMCMPage|mwseMCMParagraphField|mwseMCMPercentageSlider|mwseMCMSetting|mwseMCMSideBarPage|mwseMCMSideBySideBlock|mwseMCMSlider|mwseMCMTemplate|mwseMCMTextField|mwseMCMYesNoButton|nil — *Optional*. No description yet available.
--- @return mwseMCMBinder|mwseMCMKeyBinder|mwseMCMMouseBinder button No description yet available.
function mwseMCMBinder:new(data) end

---Table parameter definitions for `mwseMCMBinder.new`.
--- @class mwseMCMBinder.new.data
--- @field label string? *Optional*. Text shown next to the button.
--- @field description string? *Optional*. If in a [Sidebar Page](../types/mwseMCMSideBarPage.md), the description will be shown on mouseover.
--- @field allowCombinations  boolean? *Default*: `true`. If true, the Binder will let the user use modification keys: Shift, Ctrl, and Alt when rebinding.
--- @field keybindName string? *Optional*. The keybind name. Shown in the popup menu header. This string is formatted into a localized version of "SET %s KEYBIND". If none is provided the popup has "SET NEW KEYBIND" as header text.
--- @field leftSide boolean? *Default*: `true`. If true, the button will be created on the left and label on the right.
--- @field variable mwseMCMConfigVariable|mwseMCMCustomVariable|mwseMCMGlobal|mwseMCMGlobalBoolean|mwseMCMPlayerData|mwseMCMTableVariable|mwseMCMVariable|mwseMCMSettingNewVariable|nil *Optional*. A variable for this Binder.
--- @field defaultSetting mwseKeyCombo|mwseKeyMouseCombo|mwseKeyMouseCombo|nil *Optional*. If `defaultSetting` wasn't passed in the `variable` table, can be passed here. The new variable will be initialized to this value.
--- @field callback nil|fun(self: mwseMCMBinder) *Optional*. The custom function called when the player interacts with this Binder.
--- @field inGameOnly boolean? *Default*: `false`. If true, the setting is disabled while the game is on main menu.
--- @field restartRequired boolean? *Default*: `false`. If true, updating this Setting will notify the player to restart the game.
--- @field restartRequiredMessage string? *Optional*. The message shown if restartRequired is triggered. The default text is a localized version of: "The game must be restarted before this change will come into effect."
--- @field indent integer? *Default*: `12`. The left padding size in pixels. Only used if the `childIndent` isn't set on the parent component.
--- @field childIndent integer? *Optional*. The left padding size in pixels. Used on all the child components.
--- @field paddingBottom integer? *Default*: `4`. The bottom border size in pixels. Only used if the `childSpacing` is unset on the parent component.
--- @field childSpacing integer? *Optional*. The bottom border size in pixels. Used on all the child components.
--- @field postCreate nil|fun(self: mwseMCMBinder) *Optional*. Can define a custom formatting function to make adjustments to any element saved in `self.elements`.
--- @field class string? *Optional*. No description yet available.
--- @field componentType string? *Optional*. No description yet available.
--- @field parentComponent mwseMCMActiveInfo|mwseMCMBinder|mwseMCMButton|mwseMCMCategory|mwseMCMColorPicker|mwseMCMColorPickerButton|mwseMCMComponent|mwseMCMCycleButton|mwseMCMDropdown|mwseMCMExclusionsPage|mwseMCMFilterPage|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMMouseBinder|mwseMCMMouseOverInfo|mwseMCMMouseOverPage|mwseMCMOnOffButton|mwseMCMPage|mwseMCMParagraphField|mwseMCMPercentageSlider|mwseMCMSetting|mwseMCMSideBarPage|mwseMCMSideBySideBlock|mwseMCMSlider|mwseMCMTemplate|mwseMCMTextField|mwseMCMYesNoButton|nil *Optional*. No description yet available.

--- Shows the rebind prompt popup. The popup is active until some valid input is given.
function mwseMCMBinder:press() end

--- Updates the label that shows currently bound key combination in the rebind popup to the given combination.
--- @param keyCombo mwseKeyMouseCombo No description yet available.
--- @return boolean updated No description yet available.
function mwseMCMBinder:updatePopupLabel(keyCombo) end

