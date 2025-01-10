-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- A script object.
--- @class tes3script : tes3baseObject
--- @field byteCode number[] *Read-only*. A byte representation of instructions that the script will run.
--- @field context tes3scriptContext *Read-only*. A special context used for getting and setting script's variables.
--- @field floatVariableCount number *Read-only*. The number of variables of float type in the script.
--- @field longVariableCount number *Read-only*. The number of variables of long type in the script.
--- @field shortVariableCount number *Read-only*. The number of variables of short type in the script.
--- @field text string *Read-only*. The plain text of the script. Note that line endings do not match the default lua line endings. This requires file IO, and is slow.
tes3script = {}

--- This method fetches all of the script's variables as a table. Returns nil if the script has no variables.
--- @param useLocals boolean? *Optional*. 
--- @return table<string, tes3scriptVariableData>|nil results A table with all of the script's variable names as keys.
function tes3script:getVariableData(useLocals) end

