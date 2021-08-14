--- @meta

--- The key event fires when a key is released.
--- @class keyUpEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field isAltDown number *Read-only*. True if either alt key is held.
--- @field isControlDown number *Read-only*. True if either control key is held.
--- @field isShiftDown number *Read-only*. True if either shift key is held.
--- @field isSuperDown number *Read-only*. True if super (Windows key) is held.
--- @field keyCode number *Read-only*. The scan code of the key that raised the event.
