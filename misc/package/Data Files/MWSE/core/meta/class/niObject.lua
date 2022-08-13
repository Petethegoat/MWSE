-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- @diagnostic disable:undefined-doc-name

--- The base-most object from which almost all NetImmerse structures are derived from.
--- @class niObject
--- @field refCount number *Read-only*. The number of references that exist for this object. When this value reaches zero, the object will be deleted.
--- @field RTTI niRTTI *Read-only*. The runtime type information for this object. This is an alias for the `.runTimeTypeInformation` property.
--- @field runTimeTypeInformation niRTTI *Read-only*. The runtime type information for this object.
niObject = {}

--- Creates a copy of this object.
--- @return niAlphaProperty|niAmbientLight|niBillboardNode|niCamera|niCollisionSwitch|niColorData|niDirectionalLight|niFogProperty|niGeometryData|niGravity|niKeyframeController|niKeyframeData|niLookAtController|niMaterialProperty|niNode|niParticleBomb|niParticleCollider|niParticleColorModifier|niParticleGrowFade|niParticleRotation|niParticleSystemController|niParticles|niParticlesData|niPixelData|niPlanarCollider|niPointLight|niRotatingParticles|niRotatingParticlesData|niSkinData|niSkinInstance|niSourceTexture|niSphericalCollider|niSpotLight|niStencilProperty|niStringExtraData|niSwitchNode|niTES3ExtraData|niTextKeyExtraData|niTexture|niTextureEffect|niTexturingProperty|niTimeController|niTriBasedGeometryData|niTriShape|niTriShapeData|niVertexColorProperty result No description yet available.
function niObject:clone() end

--- Determines if the object is of a given type, or of a type derived from the given type. Types can be found in the [`tes3.niType`](https://mwse.github.io/MWSE/references/niTypes/) table.
--- @param type number Use values in the [`tes3.niType`](https://mwse.github.io/MWSE/references/niTypes/) table.
--- @return boolean result No description yet available.
function niObject:isInstanceOfType(type) end

--- Determines if the object is of a given type. Types can be found in the [`tes3.niType`](https://mwse.github.io/MWSE/references/niTypes/) table.
--- @param type number Use values in the [`tes3.niType`](https://mwse.github.io/MWSE/references/niTypes/) table.
--- @return boolean result No description yet available.
function niObject:isOfType(type) end

--- Serializes the object, and writes it to the given file.
--- @param path string The path to write the file at, relative to the Morrowind installation folder.
--- @return boolean success If true the object was successfully serialized.
function niObject:saveBinary(path) end

