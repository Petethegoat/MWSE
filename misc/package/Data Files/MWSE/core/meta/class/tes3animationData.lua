-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- @diagnostic disable:undefined-doc-name

--- A game object which contains information on actor's animations.
--- 
--- Animations are divided into three layers. The layer 0 is the base layer containing all the base animations for every humanoid in the game, including the player (when in third person). These animations come from `base_anim.nif`. Layer 1 is for female animations. Any animations present in `base_anim_female.nif` override their male counterparts for humanoid races. For beast races, layer 1 animations come from `base_anim_kna.nif`. Layer 2 are the custom animations assigned to the actor.
--- @class tes3animationData
--- @field actorNode niBillboardNode|niCollisionSwitch|niNode|niSwitchNode 
--- @field animationGroups tes3animationGroup[] *Read-only*. The animation groups, indexed by the [`tes3.animationGroup`](https://mwse.github.io/MWSE/references/animation-groups/) namespace.
--- @field animationGroupSoundgenCounts number[] *Read-only*. The number of sound generators for each of the animation groups, indexed by the [`tes3.animationGroup`](https://mwse.github.io/MWSE/references/animation-groups/) namespace.
--- @field animGroupLayerIndicies number[] *Read-only*. The layer from which each of the actor's animation groups come, indexed by the [`tes3.animationGroup`](https://mwse.github.io/MWSE/references/animation-groups/) namespace.
--- @field approxRootTravelSpeeds number[] *Read-only*. The approximate root node travel speed for each of the animation groups, indexed by the [`tes3.animationGroup`](https://mwse.github.io/MWSE/references/animation-groups/) namespace.
--- @field currentAnimGroupLayers number[] *Read-only*. 
--- @field currentAnimGroups number[] *Read-only*. The currently playing [animation group](https://mwse.github.io/MWSE/references/animation-groups/), on each of the [body sections](https://mwse.github.io/MWSE/references/animation-body-sections/).
--- @field currentNodeIndices number[] *Read-only*. 
--- @field currentSoundgenIndices number[] *Read-only*. The index of the currently used sound generator for each of the [body sections](https://mwse.github.io/MWSE/references/animation-body-sections/).
--- @field deltaTime number 
--- @field flags number 
--- @field hasOverrideAnimations boolean *Read-only*. 
--- @field headGeometry niGeometry|niTriBasedGeometry|niTriShape 
--- @field headNode niBillboardNode|niCollisionSwitch|niNode|niSwitchNode 
--- @field keyframeLayers tes3animationDataSequenceGroup[] *Read-only*. 
--- @field lipsyncLevel number 
--- @field loopCounts number[] *Read-only*. 
--- @field manager niKeyframeManager 
--- @field modelRootNode niBillboardNode|niCollisionSwitch|niNode|niSwitchNode 
--- @field movementSpeed number *Read-only*. The animation speed multiplier of movement animations. This includes walking, running, crouching, swimming, turning, jumping and other movement related animations.
--- @field nextLoopCounts number 
--- @field positionDeltaModelRoot tes3vector3 
--- @field spine1Node niBillboardNode|niCollisionSwitch|niNode|niSwitchNode 
--- @field spine2Node niBillboardNode|niCollisionSwitch|niNode|niSwitchNode 
--- @field spineAngle number 
--- @field timings number[] 
--- @field weaponSpeed number The animation speed multiplier of weapon animations. This includes all weapon related idle, attack, and ready/unready animations.
tes3animationData = {}

--- This method fetches the reference of the actor to whom this animation data belongs.
--- @return tes3reference result No description yet available.
function tes3animationData:getReference() end

--- This method plays an animation group on the related actor, invoking `playGroup` event.
--- @param animationGroup number The animation group to play. A value from [`tes3.animationGroup`](https://mwse.github.io/MWSE/references/animation-groups/) namespace.
--- @param startFlag number A flag for starting the group with, using [`tes3.animationStartFlag`](https://mwse.github.io/MWSE/references/animation-start-flags/) constants.
--- @param loopCount number If provided, the animation will repeat its loop section a given number of times. To make an animation play through once, set loopCount = 0, while -1 is used for infinite looping.
function tes3animationData:playAnimationGroup(animationGroup, startFlag, loopCount) end

--- This method plays an animation group on the provided body section of related actor, invoking `playGroup` event.
--- @param animationGroup number The animation group to play. A value from [`tes3.animationGroup`](https://mwse.github.io/MWSE/references/animation-groups/) namespace.
--- @param triIndex number The body section on which to play the animation. A value from [`tes3.animationBodySection`](https://mwse.github.io/MWSE/references/animation-body-sections/) namespace.
--- @param startFlag number A flag for starting the group with, using [`tes3.animationStartFlag`](https://mwse.github.io/MWSE/references/animation-start-flags/) constants.
--- @param loopCount number If provided, the animation will repeat its loop section a given number of times. To make an animation play through once, set loopCount = 0, while -1 is used for infinite looping.
function tes3animationData:playAnimationGroupForIndex(animationGroup, triIndex, startFlag, loopCount) end

--- 
--- @param head niBillboardNode|niCollisionSwitch|niNode|niSwitchNode 
function tes3animationData:setHeadNode(head) end

--- 
--- @param kfData tes3keyframeDefinition 
--- @return boolean success No description yet available.
function tes3animationData:setOverrideLayerKeyframes(kfData) end

