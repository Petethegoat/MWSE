-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- The event library helps to instruct mwse to call a given function when a specific action is taken in the game.
--- @class eventlib
--- @field register fun(eventId: string, callback: fun(e: table): boolean?, options: table?)
--- @field register fun(eventId: '"absorbedMagic"', callback: (fun(e: absorbedMagicEventData): boolean?), options: table?)
--- @field register fun(eventId: '"activate"', callback: (fun(e: activateEventData): boolean?), options: table?)
--- @field register fun(eventId: '"activationTargetChanged"', callback: (fun(e: activationTargetChangedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"activeMagicEffectIconsUpdated"', callback: (fun(e: activeMagicEffectIconsUpdatedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"addSound"', callback: (fun(e: addSoundEventData): boolean?), options: table?)
--- @field register fun(eventId: '"addTempSound"', callback: (fun(e: addTempSoundEventData): boolean?), options: table?)
--- @field register fun(eventId: '"attack"', callback: (fun(e: attackEventData): boolean?), options: table?)
--- @field register fun(eventId: '"attackHit"', callback: (fun(e: attackHitEventData): boolean?), options: table?)
--- @field register fun(eventId: '"attackStart"', callback: (fun(e: attackStartEventData): boolean?), options: table?)
--- @field register fun(eventId: '"barterOffer"', callback: (fun(e: barterOfferEventData): boolean?), options: table?)
--- @field register fun(eventId: '"bodyPartAssigned"', callback: (fun(e: bodyPartAssignedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"bodyPartsUpdated"', callback: (fun(e: bodyPartsUpdatedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"bookGetText"', callback: (fun(e: bookGetTextEventData): boolean?), options: table?)
--- @field register fun(eventId: '"buttonPressed"', callback: (fun(e: buttonPressedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"calcArmorPieceHit"', callback: (fun(e: calcArmorPieceHitEventData): boolean?), options: table?)
--- @field register fun(eventId: '"calcArmorRating"', callback: (fun(e: calcArmorRatingEventData): boolean?), options: table?)
--- @field register fun(eventId: '"calcBarterPrice"', callback: (fun(e: calcBarterPriceEventData): boolean?), options: table?)
--- @field register fun(eventId: '"calcBlockChance"', callback: (fun(e: calcBlockChanceEventData): boolean?), options: table?)
--- @field register fun(eventId: '"calcChargenStats"', callback: (fun(e: calcChargenStatsEventData): boolean?), options: table?)
--- @field register fun(eventId: '"calcEnchantmentPrice"', callback: (fun(e: calcEnchantmentPriceEventData): boolean?), options: table?)
--- @field register fun(eventId: '"calcFlySpeed"', callback: (fun(e: calcFlySpeedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"calcHitChance"', callback: (fun(e: calcHitChanceEventData): boolean?), options: table?)
--- @field register fun(eventId: '"calcHitDetectionCone"', callback: (fun(e: calcHitDetectionConeEventData): boolean?), options: table?)
--- @field register fun(eventId: '"calcMoveSpeed"', callback: (fun(e: calcMoveSpeedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"calcRepairPrice"', callback: (fun(e: calcRepairPriceEventData): boolean?), options: table?)
--- @field register fun(eventId: '"calcRestInterrupt"', callback: (fun(e: calcRestInterruptEventData): boolean?), options: table?)
--- @field register fun(eventId: '"calcRunSpeed"', callback: (fun(e: calcRunSpeedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"calcSoulValue"', callback: (fun(e: calcSoulValueEventData): boolean?), options: table?)
--- @field register fun(eventId: '"calcSpellPrice"', callback: (fun(e: calcSpellPriceEventData): boolean?), options: table?)
--- @field register fun(eventId: '"calcSpellmakingPrice"', callback: (fun(e: calcSpellmakingPriceEventData): boolean?), options: table?)
--- @field register fun(eventId: '"calcSpellmakingSpellPointCost"', callback: (fun(e: calcSpellmakingSpellPointCostEventData): boolean?), options: table?)
--- @field register fun(eventId: '"calcSunDamageScalar"', callback: (fun(e: calcSunDamageScalarEventData): boolean?), options: table?)
--- @field register fun(eventId: '"calcSwimRunSpeed"', callback: (fun(e: calcSwimRunSpeedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"calcSwimSpeed"', callback: (fun(e: calcSwimSpeedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"calcTouchSpellCone"', callback: (fun(e: calcTouchSpellConeEventData): boolean?), options: table?)
--- @field register fun(eventId: '"calcTrainingPrice"', callback: (fun(e: calcTrainingPriceEventData): boolean?), options: table?)
--- @field register fun(eventId: '"calcTravelPrice"', callback: (fun(e: calcTravelPriceEventData): boolean?), options: table?)
--- @field register fun(eventId: '"calcWalkSpeed"', callback: (fun(e: calcWalkSpeedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"cameraControl"', callback: (fun(e: cameraControlEventData): boolean?), options: table?)
--- @field register fun(eventId: '"cellActivated"', callback: (fun(e: cellActivatedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"cellChanged"', callback: (fun(e: cellChangedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"cellDeactivated"', callback: (fun(e: cellDeactivatedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"charGenFinished"', callback: (fun(e: charGenFinishedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"collideWater"', callback: (fun(e: collideWaterEventData): boolean?), options: table?)
--- @field register fun(eventId: '"collision"', callback: (fun(e: collisionEventData): boolean?), options: table?)
--- @field register fun(eventId: '"combatStart"', callback: (fun(e: combatStartEventData): boolean?), options: table?)
--- @field register fun(eventId: '"combatStarted"', callback: (fun(e: combatStartedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"combatStop"', callback: (fun(e: combatStopEventData): boolean?), options: table?)
--- @field register fun(eventId: '"combatStopped"', callback: (fun(e: combatStoppedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"consoleReferenceChanged"', callback: (fun(e: consoleReferenceChangedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"containerClosed"', callback: (fun(e: containerClosedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"convertReferenceToItem"', callback: (fun(e: convertReferenceToItemEventData): boolean?), options: table?)
--- @field register fun(eventId: '"crimeWitnessed"', callback: (fun(e: crimeWitnessedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"damage"', callback: (fun(e: damageEventData): boolean?), options: table?)
--- @field register fun(eventId: '"damageHandToHand"', callback: (fun(e: damageHandToHandEventData): boolean?), options: table?)
--- @field register fun(eventId: '"damaged"', callback: (fun(e: damagedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"damagedHandToHand"', callback: (fun(e: damagedHandToHandEventData): boolean?), options: table?)
--- @field register fun(eventId: '"death"', callback: (fun(e: deathEventData): boolean?), options: table?)
--- @field register fun(eventId: '"detectSneak"', callback: (fun(e: detectSneakEventData): boolean?), options: table?)
--- @field register fun(eventId: '"determineAction"', callback: (fun(e: determineActionEventData): boolean?), options: table?)
--- @field register fun(eventId: '"determinedAction"', callback: (fun(e: determinedActionEventData): boolean?), options: table?)
--- @field register fun(eventId: '"dialogueEnvironmentCreated"', callback: (fun(e: dialogueEnvironmentCreatedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"dialogueFiltered"', callback: (fun(e: dialogueFilteredEventData): boolean?), options: table?)
--- @field register fun(eventId: '"disposition"', callback: (fun(e: dispositionEventData): boolean?), options: table?)
--- @field register fun(eventId: '"enchantChargeUse"', callback: (fun(e: enchantChargeUseEventData): boolean?), options: table?)
--- @field register fun(eventId: '"enchantedItemCreateFailed"', callback: (fun(e: enchantedItemCreateFailedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"enchantedItemCreated"', callback: (fun(e: enchantedItemCreatedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"enterFrame"', callback: (fun(e: enterFrameEventData): boolean?), options: table?)
--- @field register fun(eventId: '"equip"', callback: (fun(e: equipEventData): boolean?), options: table?)
--- @field register fun(eventId: '"equipmentReevaluated"', callback: (fun(e: equipmentReevaluatedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"equipped"', callback: (fun(e: equippedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"exerciseSkill"', callback: (fun(e: exerciseSkillEventData): boolean?), options: table?)
--- @field register fun(eventId: '"fadersCreated"', callback: (fun(e: fadersCreatedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"filterBarterMenu"', callback: (fun(e: filterBarterMenuEventData): boolean?), options: table?)
--- @field register fun(eventId: '"filterContentsMenu"', callback: (fun(e: filterContentsMenuEventData): boolean?), options: table?)
--- @field register fun(eventId: '"filterInventory"', callback: (fun(e: filterInventoryEventData): boolean?), options: table?)
--- @field register fun(eventId: '"filterInventorySelect"', callback: (fun(e: filterInventorySelectEventData): boolean?), options: table?)
--- @field register fun(eventId: '"filterSoulGemTarget"', callback: (fun(e: filterSoulGemTargetEventData): boolean?), options: table?)
--- @field register fun(eventId: '"infoFilter"', callback: (fun(e: infoFilterEventData): boolean?), options: table?)
--- @field register fun(eventId: '"infoGetText"', callback: (fun(e: infoGetTextEventData): boolean?), options: table?)
--- @field register fun(eventId: '"infoLinkResolve"', callback: (fun(e: infoLinkResolveEventData): boolean?), options: table?)
--- @field register fun(eventId: '"infoResponse"', callback: (fun(e: infoResponseEventData): boolean?), options: table?)
--- @field register fun(eventId: '"initialized"', callback: (fun(e: initializedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"isGuard"', callback: (fun(e: isGuardEventData): boolean?), options: table?)
--- @field register fun(eventId: '"itemDropped"', callback: (fun(e: itemDroppedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"itemTileUpdated"', callback: (fun(e: itemTileUpdatedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"journal"', callback: (fun(e: journalEventData): boolean?), options: table?)
--- @field register fun(eventId: '"jump"', callback: (fun(e: jumpEventData): boolean?), options: table?)
--- @field register fun(eventId: '"key"', callback: (fun(e: keyEventData): boolean?), options: table?)
--- @field register fun(eventId: '"keyDown"', callback: (fun(e: keyDownEventData): boolean?), options: table?)
--- @field register fun(eventId: '"keyUp"', callback: (fun(e: keyUpEventData): boolean?), options: table?)
--- @field register fun(eventId: '"keybindTested"', callback: (fun(e: keybindTestedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"keyframesLoad"', callback: (fun(e: keyframesLoadEventData): boolean?), options: table?)
--- @field register fun(eventId: '"keyframesLoaded"', callback: (fun(e: keyframesLoadedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"levelUp"', callback: (fun(e: levelUpEventData): boolean?), options: table?)
--- @field register fun(eventId: '"leveledCreaturePicked"', callback: (fun(e: leveledCreaturePickedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"leveledItemPicked"', callback: (fun(e: leveledItemPickedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"load"', callback: (fun(e: loadEventData): boolean?), options: table?)
--- @field register fun(eventId: '"loaded"', callback: (fun(e: loadedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"lockPick"', callback: (fun(e: lockPickEventData): boolean?), options: table?)
--- @field register fun(eventId: '"magicCasted"', callback: (fun(e: magicCastedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"magicEffectRemoved"', callback: (fun(e: magicEffectRemovedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"magicEffectsResolved"', callback: (fun(e: magicEffectsResolvedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"magicReflect"', callback: (fun(e: magicReflectEventData): boolean?), options: table?)
--- @field register fun(eventId: '"magicReflected"', callback: (fun(e: magicReflectedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"magicSelectionChanged"', callback: (fun(e: magicSelectionChangedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"menuEnter"', callback: (fun(e: menuEnterEventData): boolean?), options: table?)
--- @field register fun(eventId: '"menuExit"', callback: (fun(e: menuExitEventData): boolean?), options: table?)
--- @field register fun(eventId: '"meshLoad"', callback: (fun(e: meshLoadEventData): boolean?), options: table?)
--- @field register fun(eventId: '"meshLoaded"', callback: (fun(e: meshLoadedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"mobileActivated"', callback: (fun(e: mobileActivatedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"mobileDeactivated"', callback: (fun(e: mobileDeactivatedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"modConfigReady"', callback: (fun(e: modConfigReadyEventData): boolean?), options: table?)
--- @field register fun(eventId: '"mouseAxis"', callback: (fun(e: mouseAxisEventData): boolean?), options: table?)
--- @field register fun(eventId: '"mouseButtonDown"', callback: (fun(e: mouseButtonDownEventData): boolean?), options: table?)
--- @field register fun(eventId: '"mouseButtonUp"', callback: (fun(e: mouseButtonUpEventData): boolean?), options: table?)
--- @field register fun(eventId: '"mouseWheel"', callback: (fun(e: mouseWheelEventData): boolean?), options: table?)
--- @field register fun(eventId: '"musicChangeTrack"', callback: (fun(e: musicChangeTrackEventData): boolean?), options: table?)
--- @field register fun(eventId: '"musicSelectTrack"', callback: (fun(e: musicSelectTrackEventData): boolean?), options: table?)
--- @field register fun(eventId: '"objectCopied"', callback: (fun(e: objectCopiedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"objectCreated"', callback: (fun(e: objectCreatedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"objectInvalidated"', callback: (fun(e: objectInvalidatedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"playGroup"', callback: (fun(e: playGroupEventData): boolean?), options: table?)
--- @field register fun(eventId: '"playItemSound"', callback: (fun(e: playItemSoundEventData): boolean?), options: table?)
--- @field register fun(eventId: '"postInfoResponse"', callback: (fun(e: postInfoResponseEventData): boolean?), options: table?)
--- @field register fun(eventId: '"potionBrewFailed"', callback: (fun(e: potionBrewFailedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"potionBrewSkillCheck"', callback: (fun(e: potionBrewSkillCheckEventData): boolean?), options: table?)
--- @field register fun(eventId: '"potionBrewed"', callback: (fun(e: potionBrewedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"powerRecharged"', callback: (fun(e: powerRechargedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"preLevelUp"', callback: (fun(e: preLevelUpEventData): boolean?), options: table?)
--- @field register fun(eventId: '"preventRest"', callback: (fun(e: preventRestEventData): boolean?), options: table?)
--- @field register fun(eventId: '"projectileExpire"', callback: (fun(e: projectileExpireEventData): boolean?), options: table?)
--- @field register fun(eventId: '"projectileHitActor"', callback: (fun(e: projectileHitActorEventData): boolean?), options: table?)
--- @field register fun(eventId: '"projectileHitObject"', callback: (fun(e: projectileHitObjectEventData): boolean?), options: table?)
--- @field register fun(eventId: '"projectileHitTerrain"', callback: (fun(e: projectileHitTerrainEventData): boolean?), options: table?)
--- @field register fun(eventId: '"referenceActivated"', callback: (fun(e: referenceActivatedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"referenceDeactivated"', callback: (fun(e: referenceDeactivatedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"referenceSceneNodeCreated"', callback: (fun(e: referenceSceneNodeCreatedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"repair"', callback: (fun(e: repairEventData): boolean?), options: table?)
--- @field register fun(eventId: '"restInterrupt"', callback: (fun(e: restInterruptEventData): boolean?), options: table?)
--- @field register fun(eventId: '"save"', callback: (fun(e: saveEventData): boolean?), options: table?)
--- @field register fun(eventId: '"saved"', callback: (fun(e: savedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"shieldBlocked"', callback: (fun(e: shieldBlockedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"simulate"', callback: (fun(e: simulateEventData): boolean?), options: table?)
--- @field register fun(eventId: '"simulated"', callback: (fun(e: simulatedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"skillRaised"', callback: (fun(e: skillRaisedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"soundObjectPlay"', callback: (fun(e: soundObjectPlayEventData): boolean?), options: table?)
--- @field register fun(eventId: '"spellCast"', callback: (fun(e: spellCastEventData): boolean?), options: table?)
--- @field register fun(eventId: '"spellCasted"', callback: (fun(e: spellCastedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"spellCastedFailure"', callback: (fun(e: spellCastedFailureEventData): boolean?), options: table?)
--- @field register fun(eventId: '"spellCreated"', callback: (fun(e: spellCreatedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"spellMagickaUse"', callback: (fun(e: spellMagickaUseEventData): boolean?), options: table?)
--- @field register fun(eventId: '"spellResist"', callback: (fun(e: spellResistEventData): boolean?), options: table?)
--- @field register fun(eventId: '"spellResisted"', callback: (fun(e: spellResistedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"spellTick"', callback: (fun(e: spellTickEventData): boolean?), options: table?)
--- @field register fun(eventId: '"startGlobalScript"', callback: (fun(e: startGlobalScriptEventData): boolean?), options: table?)
--- @field register fun(eventId: '"topicAdded"', callback: (fun(e: topicAddedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"trapDisarm"', callback: (fun(e: trapDisarmEventData): boolean?), options: table?)
--- @field register fun(eventId: '"uiActivated"', callback: (fun(e: uiActivatedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"uiEvent"', callback: (fun(e: uiEventEventData): boolean?), options: table?)
--- @field register fun(eventId: '"uiObjectTooltip"', callback: (fun(e: uiObjectTooltipEventData): boolean?), options: table?)
--- @field register fun(eventId: '"uiPreEvent"', callback: (fun(e: uiPreEventEventData): boolean?), options: table?)
--- @field register fun(eventId: '"uiRefreshed"', callback: (fun(e: uiRefreshedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"uiShowRestMenu"', callback: (fun(e: uiShowRestMenuEventData): boolean?), options: table?)
--- @field register fun(eventId: '"uiSkillTooltip"', callback: (fun(e: uiSkillTooltipEventData): boolean?), options: table?)
--- @field register fun(eventId: '"uiSpellTooltip"', callback: (fun(e: uiSpellTooltipEventData): boolean?), options: table?)
--- @field register fun(eventId: '"unequipped"', callback: (fun(e: unequippedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"vfxCreated"', callback: (fun(e: vfxCreatedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"weaponReadied"', callback: (fun(e: weaponReadiedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"weaponUnreadied"', callback: (fun(e: weaponUnreadiedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"weatherChangedImmediate"', callback: (fun(e: weatherChangedImmediateEventData): boolean?), options: table?)
--- @field register fun(eventId: '"weatherCycled"', callback: (fun(e: weatherCycledEventData): boolean?), options: table?)
--- @field register fun(eventId: '"weatherTransitionFinished"', callback: (fun(e: weatherTransitionFinishedEventData): boolean?), options: table?)
--- @field register fun(eventId: '"weatherTransitionStarted"', callback: (fun(e: weatherTransitionStartedEventData): boolean?), options: table?)
event = {}

--- Removes all callbacks registered for a given event.
--- @param eventId string|tes3.event|nil *Optional*. No description yet available.
--- @param filter userdata|string|number|tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3birthsign|tes3bodyPart|tes3book|tes3cell|tes3class|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3dialogue|tes3dialogueInfo|tes3door|tes3enchantment|tes3faction|tes3gameSetting|tes3globalVariable|tes3ingredient|tes3land|tes3landTexture|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3magicSourceInstance|tes3misc|tes3npc|tes3npcInstance|tes3pathGrid|tes3probe|tes3quest|tes3race|tes3reference|tes3region|tes3repairTool|tes3script|tes3skill|tes3sound|tes3soundGenerator|tes3spell|tes3startScript|tes3static|tes3weapon|nil *Optional*. No description yet available.
function event.clear(eventId, filter) end

--- Returns true for a function previously registered to an event with `event.register()`.
--- @param eventId string|tes3.event No description yet available.
--- @param callback function No description yet available.
--- @param options event.isRegistered.options? This table accepts the following values:
--- 
--- `filter`: userdata|string|number|tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3birthsign|tes3bodyPart|tes3book|tes3cell|tes3class|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3dialogue|tes3dialogueInfo|tes3door|tes3enchantment|tes3faction|tes3gameSetting|tes3globalVariable|tes3ingredient|tes3land|tes3landTexture|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3magicSourceInstance|tes3misc|tes3npc|tes3npcInstance|tes3pathGrid|tes3probe|tes3quest|tes3race|tes3reference|tes3region|tes3repairTool|tes3script|tes3skill|tes3sound|tes3soundGenerator|tes3spell|tes3startScript|tes3static|tes3weapon|nil — *Optional*. Allows searching for a callback function registered with the specified filter.
--- @return boolean result No description yet available.
function event.isRegistered(eventId, callback, options) end

---Table parameter definitions for `event.isRegistered`.
--- @class event.isRegistered.options
--- @field filter userdata|string|number|tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3birthsign|tes3bodyPart|tes3book|tes3cell|tes3class|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3dialogue|tes3dialogueInfo|tes3door|tes3enchantment|tes3faction|tes3gameSetting|tes3globalVariable|tes3ingredient|tes3land|tes3landTexture|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3magicSourceInstance|tes3misc|tes3npc|tes3npcInstance|tes3pathGrid|tes3probe|tes3quest|tes3race|tes3reference|tes3region|tes3repairTool|tes3script|tes3skill|tes3sound|tes3soundGenerator|tes3spell|tes3startScript|tes3static|tes3weapon|nil *Optional*. Allows searching for a callback function registered with the specified filter.

--- Registers a function to be called when an event is raised.
--- @param eventId string|tes3.event No description yet available.
--- @param callback function No description yet available.
--- @param options event.register.options? This table accepts the following values:
--- 
--- `doOnce`: boolean? — *Default*: `false`. If this option is set to `true`, the function registered will be executed only once, and automatically unregistered thereafter.
--- 
--- `filter`: userdata|string|number|tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3birthsign|tes3bodyPart|tes3book|tes3cell|tes3class|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3dialogue|tes3dialogueInfo|tes3door|tes3enchantment|tes3faction|tes3gameSetting|tes3globalVariable|tes3ingredient|tes3land|tes3landTexture|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3magicSourceInstance|tes3misc|tes3npc|tes3npcInstance|tes3pathGrid|tes3probe|tes3quest|tes3race|tes3reference|tes3region|tes3repairTool|tes3script|tes3skill|tes3sound|tes3soundGenerator|tes3spell|tes3startScript|tes3static|tes3weapon|nil — *Optional*. This parameter allows selectively executing the callback function only when a specific condition is met. The exact behavior depends on each event.
--- 
--- `priority`: number? — *Optional*. Event callback with higher priority is executed before callback with lower priority. Typically used to make certain mods compatible.
function event.register(eventId, callback, options) end

---Table parameter definitions for `event.register`.
--- @class event.register.options
--- @field doOnce boolean? *Default*: `false`. If this option is set to `true`, the function registered will be executed only once, and automatically unregistered thereafter.
--- @field filter userdata|string|number|tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3birthsign|tes3bodyPart|tes3book|tes3cell|tes3class|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3dialogue|tes3dialogueInfo|tes3door|tes3enchantment|tes3faction|tes3gameSetting|tes3globalVariable|tes3ingredient|tes3land|tes3landTexture|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3magicSourceInstance|tes3misc|tes3npc|tes3npcInstance|tes3pathGrid|tes3probe|tes3quest|tes3race|tes3reference|tes3region|tes3repairTool|tes3script|tes3skill|tes3sound|tes3soundGenerator|tes3spell|tes3startScript|tes3static|tes3weapon|nil *Optional*. This parameter allows selectively executing the callback function only when a specific condition is met. The exact behavior depends on each event.
--- @field priority number? *Optional*. Event callback with higher priority is executed before callback with lower priority. Typically used to make certain mods compatible.

--- Triggers an event. This can be used to trigger custom events with specific data.
--- @param eventId string|tes3.event No description yet available.
--- @param payload table? *Optional*. No description yet available.
--- @param options event.trigger.options? This table accepts the following values:
--- 
--- `filter`: userdata|string|number|tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3birthsign|tes3bodyPart|tes3book|tes3cell|tes3class|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3dialogue|tes3dialogueInfo|tes3door|tes3enchantment|tes3faction|tes3gameSetting|tes3globalVariable|tes3ingredient|tes3land|tes3landTexture|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3magicSourceInstance|tes3misc|tes3npc|tes3npcInstance|tes3pathGrid|tes3probe|tes3quest|tes3race|tes3reference|tes3region|tes3repairTool|tes3script|tes3skill|tes3sound|tes3soundGenerator|tes3spell|tes3startScript|tes3static|tes3weapon|nil — *Optional*. Assigning a filter will make the event callbacks with filters matching this one to be executed first. All the other unfiltered callbacks are executed after.
--- @return table resultPayload This is the modified payload after all the callback functions registered on the triggered event are executed. Returning `true` from a callback function will set both `payload.block` and `payload.claim` to `true`. After an event has been claimed by a certain function (by setting the `claim` in eventData to `true`) no other registered callback functions will be executed on this event trigger. This is useful if you wish to implement blocking system for your event. In addition, this can be used to the same effect as some MWSE's events allow changing some of the `eventData` values to modify the behavior of the vanilla mechanics.
function event.trigger(eventId, payload, options) end

---Table parameter definitions for `event.trigger`.
--- @class event.trigger.options
--- @field filter userdata|string|number|tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3birthsign|tes3bodyPart|tes3book|tes3cell|tes3class|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3dialogue|tes3dialogueInfo|tes3door|tes3enchantment|tes3faction|tes3gameSetting|tes3globalVariable|tes3ingredient|tes3land|tes3landTexture|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3magicSourceInstance|tes3misc|tes3npc|tes3npcInstance|tes3pathGrid|tes3probe|tes3quest|tes3race|tes3reference|tes3region|tes3repairTool|tes3script|tes3skill|tes3sound|tes3soundGenerator|tes3spell|tes3startScript|tes3static|tes3weapon|nil *Optional*. Assigning a filter will make the event callbacks with filters matching this one to be executed first. All the other unfiltered callbacks are executed after.

--- Unregisters a function previously registered for an event with `event.register()`.
--- @param eventId string|tes3.event No description yet available.
--- @param callback function No description yet available.
--- @param options event.unregister.options? This table accepts the following values:
--- 
--- `filter`: userdata|string|number|tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3birthsign|tes3bodyPart|tes3book|tes3cell|tes3class|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3dialogue|tes3dialogueInfo|tes3door|tes3enchantment|tes3faction|tes3gameSetting|tes3globalVariable|tes3ingredient|tes3land|tes3landTexture|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3magicSourceInstance|tes3misc|tes3npc|tes3npcInstance|tes3pathGrid|tes3probe|tes3quest|tes3race|tes3reference|tes3region|tes3repairTool|tes3script|tes3skill|tes3sound|tes3soundGenerator|tes3spell|tes3startScript|tes3static|tes3weapon|nil — *Optional*. If a callback function was registered with a filter, the same filter needs to be passed to `event.unregister` to successfully unregister the callback function.
function event.unregister(eventId, callback, options) end

---Table parameter definitions for `event.unregister`.
--- @class event.unregister.options
--- @field filter userdata|string|number|tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3birthsign|tes3bodyPart|tes3book|tes3cell|tes3class|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3dialogue|tes3dialogueInfo|tes3door|tes3enchantment|tes3faction|tes3gameSetting|tes3globalVariable|tes3ingredient|tes3land|tes3landTexture|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3magicSourceInstance|tes3misc|tes3npc|tes3npcInstance|tes3pathGrid|tes3probe|tes3quest|tes3race|tes3reference|tes3region|tes3repairTool|tes3script|tes3skill|tes3sound|tes3soundGenerator|tes3spell|tes3startScript|tes3static|tes3weapon|nil *Optional*. If a callback function was registered with a filter, the same filter needs to be passed to `event.unregister` to successfully unregister the callback function.

