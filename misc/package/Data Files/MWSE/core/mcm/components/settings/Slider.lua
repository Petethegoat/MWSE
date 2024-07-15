--[[
	Slider:
		A Slider Setting
		Combines a text label with a slider widget. For tes3uiSlider the value range is [0, max].
		MCM sliders allow specifying minimal value different than 0. The implementation adds/subtracts
		`self.min` when reading/writing to the current tes3uiSlider's `widget.current` to account for
		that offset (so tes3uiSlider's value range is [0, self.max - self.min]). In addition, children
		may implement support for different conversions (e.g. to support floating-point values).
		This is accomplished by overloading the `convertToWidgetValue` and `convertToVariableValue` methods.

		- The `Slider:convertToWidgetValue(variableValue)` method is responsible for taking in a variable value
		and outputting the appropriate value to use on the slider widget.

		- The `Slider:convertToVariableValue(widgetValue)` method is responsible for taking in a value stored
		in a slider widget, and outputting the corresponding variable value.

		Usually, children of this component implement some of the following methods:
		- convertToWidgetValue - convert variable value to widget value. this will automatically define `convertToVariableValue` as well.
		- updateValueLabel - customize how the current variable value should be formatted in the widget display text.
]]--

--- These types have annotations in the core\meta\ folder. Let's stop the warning spam here in the implementation.
--- The warnings arise because each field set here is also 'set' in the annotations in the core\meta\ folder.
--- @diagnostic disable: duplicate-set-field

local Parent = require("mcm.components.settings.Setting")

--- @class mwseMCMSlider
local Slider = Parent:new()
Slider.min = 0
Slider.decimalPlaces = 0
Slider.max = 100
Slider.step = 1
Slider.jump = 5


function Slider:new(data)
	-- initialize metatable, make variable, etc
	local t = Parent.new(self, data)

	-- range of values (as requested by the user, not taking slider behavior into account)
	local dist = t.max - t.min

	if rawget(t, "jump") == nil then
		t.jump = math.min(dist, 5 * t.step)
	end

	assert(dist > 0, "mcm.Slider: Invalid 'max' and 'min' parameters provided. 'max' must be greater than 'min'.")
	assert(t.step > 0, "mcm.Slider: Invalid 'step' parameter provided. It must be greater than 0.")
	assert(t.jump > 0, "mcm.Slider: Invalid 'jump' parameter provided. It must be greater than 0.")

	assert(
		t.decimalPlaces % 1 == 0 and t.decimalPlaces >= 0,
		"mcm.Slider: Invalid 'decimalPlaces' parameter provided. It must be a nonnegative whole number."
	)

	-- Avoid breaking existing mods that have variable min or max but a fixed step/jump.
	-- Clamp instead of asserting.
	if t.step > dist + math.epsilon then
		mwse.log("mcm.Slider: 'step' parameter is greater than 'max' - 'min'")
		mwse.log(debug.traceback())
		t.step = dist
	end
	if t.jump > dist + math.epsilon then
		mwse.log("mcm.Slider: 'jump' parameter is greater than 'max' - 'min'")
		mwse.log(debug.traceback())
		t.jump = dist
	end

	return t
end


function Slider:convertToWidgetValue(variableValue)
	return (variableValue - self.min) * (10 ^ self.decimalPlaces)
end


-- `y == C * x + a` ~> (y - a) / C == x

function Slider:convertToVariableValue(widgetValue)
	-- e.g., consider `min == 10`. Then
	local a = self:convertToWidgetValue(0) 		-- `a == -10`
	local C = self:convertToWidgetValue(1) - a	-- `C == -9 - (-10) == 1
	return (widgetValue - a) / C				-- `returnVal == widgetValue + 10`
end

function Slider:convertToLabelValue(variableValue)
	return self.decimalPlaces == 0 and variableValue
		or string.format(table.concat{"%.", self.decimalPlaces, "f"}, variableValue)
end

function Slider:updateValueLabel()

	local value = self:convertToLabelValue(self.variable.value)

	if string.find(self.label, "%s", nil, true) then
		self.elements.label.text = self.label:format(value)
	else
		self.elements.label.text = string.format("%s: %s", self.label, value)
	end
end

function Slider:updateVariableValue()
	if self.elements.slider then
		local widgetValue = self.elements.slider.widget.current
		self.variable.value = self:convertToVariableValue(widgetValue)
	end
end

-- update the value stored in the slider to the value stored in the variable
function Slider:updateWidgetValue()
	if self.elements.slider then
		local widgetValue = self:convertToWidgetValue(self.variable.value)
		self.elements.slider.widget.current = widgetValue
	end
end

function Slider:setVariableValue(newValue)
	self.variable.value = newValue
	self:updateValueLabel()
	self:updateWidgetValue()
	Parent.update(self)
end


function Slider:update()
	self:updateVariableValue()
	Parent.update(self)
end

--- @param element tes3uiElement
function Slider:registerSliderElement(element)
	-- click
	element:register(tes3.uiEvent.mouseClick, function(e)
		self:update()
	end)
	-- drag
	element:register(tes3.uiEvent.mouseRelease, function(e)
		self:update()
	end)
end



function Slider:enable()
	Parent.enable(self)
	-- if the variable exists, use it to update the widget and the displayed label
	if self.variable.value then
		self:updateWidgetValue()
		self:updateValueLabel()
	end

	-- Register slider elements so that the value only updates when the mouse is released
	for _, sliderElement in ipairs(self.elements.slider.children) do
		self:registerSliderElement(sliderElement)
		for _, innerElement in ipairs(sliderElement.children) do
			self:registerSliderElement(innerElement)
		end
	end

	-- But we want the label to update in real time so you can see where it's going to end up
	self.elements.slider:register(tes3.uiEvent.partScrollBarChanged, function(e)
		self:updateVariableValue()
		self:updateValueLabel()
	end)
end

function Slider:disable()
	Parent.disable(self)

	self.elements.slider.children[2].children[1].visible = false
end

-- UI creation functions

--- @param parentBlock tes3uiElement
function Slider:createOuterContainer(parentBlock)
	Parent.createOuterContainer(self, parentBlock)
	self.elements.outerContainer.borderRight = self.indent -- * 2
end

--- @param parentBlock tes3uiElement
function Slider:createLabel(parentBlock)
	Parent.createLabel(self, parentBlock)
	self:updateValueLabel()
end

--- @param parentBlock tes3uiElement
function Slider:makeComponent(parentBlock)

	local sliderBlock = parentBlock:createBlock()
	sliderBlock.flowDirection = tes3.flowDirection.leftToRight
	sliderBlock.autoHeight = true
	sliderBlock.widthProportional = 1.0

	local slider = sliderBlock:createSlider{
		current = 0,
		max = self:convertToWidgetValue(self.max),
		-- get the `step` and `jump` by starting from `self.min`, incrementing a bit, then converting
		-- to the slider settings and seeing where we end up
		step = self:convertToWidgetValue(self.step + self.min),
		jump = self:convertToWidgetValue(self.jump + self.min),
	}
	slider.widthProportional = 1.0

	self.elements.slider = slider
	self.elements.sliderBlock = sliderBlock

	self:insertMouseovers(sliderBlock)
end

return Slider