--- @meta

--- The loaded event fires after the game has been successfully loaded. This event is preceded by the load event.
--- @class loadedEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field filename string *Read-only*. The filename of the save that was loaded, not including file extension.
--- @field newGame boolean *Read-only*. If true, a new game was started.
--- @field quickload boolean *Read-only*. If true, the load came from the quickload system.
