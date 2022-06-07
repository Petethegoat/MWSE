--- @meta
--- @diagnostic disable:undefined-doc-name

--- Allows control of MGE camera features.
--- @class mgeCameraConfig
--- @field fov number Horizontal FOV, in degrees.
--- @field shakeAcceleration number Camera shake acceleration. Camera shake must be enabled to see an effect.
--- @field shakeEnable boolean Set if camera shake is active.
--- @field shakeMagnitude number Camera shake magnitude. Camera shake must be enabled to see an effect.
--- @field thirdPersonOffset tes3vector3 The position offset (from the character) of the third person camera.
--- @field zoom number Camera zoom multiplier. Default is 1.0. Camera zoom must be enabled to see an effect.
--- @field zoomEnable boolean Set if camera zoom is enabled.
mgeCameraConfig = {}

--- Stops any continuous camera zoom.
function mgeCameraConfig.stopZoom() end

--- Sets up continuous camera zoom. The zoom speed starts at `rate`. The speed will approach `targetRate` over time, if provided.
--- @param params mgeCameraConfig.zoomContinuous.params This table accepts the following values:
--- 
--- `rate`: number? — *Optional*. No description yet available.
--- 
--- `targetRate`: number? — *Optional*. No description yet available.
function mgeCameraConfig.zoomContinuous(params) end

---Table parameter definitions for `mgeCameraConfig.zoomContinuous`.
--- @class mgeCameraConfig.zoomContinuous.params
--- @field rate number? *Optional*. No description yet available.
--- @field targetRate number? *Optional*. No description yet available.

--- Zooms in by the specified amount, or by a small amount if no amount is provided.
--- @param params mgeCameraConfig.zoomIn.params This table accepts the following values:
--- 
--- `amount`: number? — *Default*: `0.0625`. No description yet available.
function mgeCameraConfig.zoomIn(params) end

---Table parameter definitions for `mgeCameraConfig.zoomIn`.
--- @class mgeCameraConfig.zoomIn.params
--- @field amount number? *Default*: `0.0625`. No description yet available.

--- Zooms out by the specified amount, or by a small amount if no amount is provided.
--- @param params mgeCameraConfig.zoomOut.params This table accepts the following values:
--- 
--- `amount`: number — No description yet available.
function mgeCameraConfig.zoomOut(params) end

---Table parameter definitions for `mgeCameraConfig.zoomOut`.
--- @class mgeCameraConfig.zoomOut.params
--- @field amount number No description yet available.

