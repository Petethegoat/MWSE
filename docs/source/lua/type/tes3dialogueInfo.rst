tes3dialogueInfo
====================================================================================================

A child for a given dialogue. Whereas a dialogue may be a conversation topic, a tes3dialogueInfo would be an individual response.

Properties
----------------------------------------------------------------------------------------------------

`actor`_ (`tes3actor`_)
    The speaker's actor that the info is filtered for.

`cell`_ (`tes3cell`_)
    The speaker's current cell that the info is filtered for.

`deleted`_ (`boolean`_)
    The deleted state of the object.

`disabled`_ (`boolean`_)
    The disabled state of the object.

`disposition`_ (`number`_)
    The minimum disposition that the info is filtered for.

`firstHeardFrom`_ (`tes3actor`_)
    The actor that the player first heard the info from.

`id`_ (`string`_)
    The unique long string ID for the info. This is not kept in memory, and must be loaded from files for each call.

`id`_ (`string`_)
    The unique identifier for the object.

`modified`_ (`boolean`_)
    The modification state of the object since the last save.

`npcClass`_ (`tes3class`_)
    The speaker's class that the info is filtered for.

`npcFaction`_ (`tes3faction`_)
    The speaker's faction that the info is filtered for.

`npcRace`_ (`tes3actor`_)
    The speaker's race that the info is filtered for.

`npcRank`_ (`number`_)
    The speaker's faction rank that the info is filtered for.

`npcSex`_ (`number`_)
    The speaker's sex that the info is filtered for.

`objectFlags`_ (`number`_)
    The raw flags of the object.

`objectType`_ (`number`_)
    The type of object. Maps to values in tes3.objectType.

`pcFaction`_ (`number`_)
    The player's joined faction that the info is filtered for.

`pcRank`_ (`number`_)
    The player's rank required rank in the speaker's faction.

`sourceMod`_ (`string`_)
    The filename of the mod that owns this object.

`text`_ (`string`_)
    String contents for the info. This is not kept in memory, and must be loaded from files for each call.

`type`_ (`number`_)
    The type of the info.

.. toctree::
    :hidden:

    tes3dialogueInfo/actor
    tes3dialogueInfo/cell
    tes3dialogueInfo/deleted
    tes3dialogueInfo/disabled
    tes3dialogueInfo/disposition
    tes3dialogueInfo/firstHeardFrom
    tes3dialogueInfo/id
    tes3dialogueInfo/id
    tes3dialogueInfo/modified
    tes3dialogueInfo/npcClass
    tes3dialogueInfo/npcFaction
    tes3dialogueInfo/npcRace
    tes3dialogueInfo/npcRank
    tes3dialogueInfo/npcSex
    tes3dialogueInfo/objectFlags
    tes3dialogueInfo/objectType
    tes3dialogueInfo/pcFaction
    tes3dialogueInfo/pcRank
    tes3dialogueInfo/sourceMod
    tes3dialogueInfo/text
    tes3dialogueInfo/type

.. _`actor`: tes3dialogueInfo/actor.html
.. _`cell`: tes3dialogueInfo/cell.html
.. _`deleted`: tes3dialogueInfo/deleted.html
.. _`disabled`: tes3dialogueInfo/disabled.html
.. _`disposition`: tes3dialogueInfo/disposition.html
.. _`firstHeardFrom`: tes3dialogueInfo/firstHeardFrom.html
.. _`id`: tes3dialogueInfo/id.html
.. _`id`: tes3dialogueInfo/id.html
.. _`modified`: tes3dialogueInfo/modified.html
.. _`npcClass`: tes3dialogueInfo/npcClass.html
.. _`npcFaction`: tes3dialogueInfo/npcFaction.html
.. _`npcRace`: tes3dialogueInfo/npcRace.html
.. _`npcRank`: tes3dialogueInfo/npcRank.html
.. _`npcSex`: tes3dialogueInfo/npcSex.html
.. _`objectFlags`: tes3dialogueInfo/objectFlags.html
.. _`objectType`: tes3dialogueInfo/objectType.html
.. _`pcFaction`: tes3dialogueInfo/pcFaction.html
.. _`pcRank`: tes3dialogueInfo/pcRank.html
.. _`sourceMod`: tes3dialogueInfo/sourceMod.html
.. _`text`: tes3dialogueInfo/text.html
.. _`type`: tes3dialogueInfo/type.html

.. _`tes3creature`: ../../lua/type/tes3creature.html
.. _`niObject`: ../../lua/type/niObject.html
.. _`tes3npc`: ../../lua/type/tes3npc.html
.. _`tes3book`: ../../lua/type/tes3book.html
.. _`tes3matrix33`: ../../lua/type/tes3matrix33.html
.. _`tes3actor`: ../../lua/type/tes3actor.html
.. _`tes3inputConfig`: ../../lua/type/tes3inputConfig.html
.. _`tes3itemStack`: ../../lua/type/tes3itemStack.html
.. _`tes3globalVariable`: ../../lua/type/tes3globalVariable.html
.. _`tes3containerInstance`: ../../lua/type/tes3containerInstance.html
.. _`tes3magicSourceInstance`: ../../lua/type/tes3magicSourceInstance.html
.. _`niAVObject`: ../../lua/type/niAVObject.html
.. _`tes3iterator`: ../../lua/type/tes3iterator.html
.. _`tes3raceHeightWeight`: ../../lua/type/tes3raceHeightWeight.html
.. _`tes3class`: ../../lua/type/tes3class.html
.. _`tes3mobileProjectile`: ../../lua/type/tes3mobileProjectile.html
.. _`tes3apparatus`: ../../lua/type/tes3apparatus.html
.. _`tes3door`: ../../lua/type/tes3door.html
.. _`tes3weatherThunder`: ../../lua/type/tes3weatherThunder.html
.. _`tes3directInputMouseState`: ../../lua/type/tes3directInputMouseState.html
.. _`tes3weatherSnow`: ../../lua/type/tes3weatherSnow.html
.. _`niRTTI`: ../../lua/type/niRTTI.html
.. _`tes3weatherRain`: ../../lua/type/tes3weatherRain.html
.. _`niObjectNET`: ../../lua/type/niObjectNET.html
.. _`tes3light`: ../../lua/type/tes3light.html
.. _`tes3clothing`: ../../lua/type/tes3clothing.html
.. _`tes3weatherController`: ../../lua/type/tes3weatherController.html
.. _`tes3mobilePlayer`: ../../lua/type/tes3mobilePlayer.html
.. _`tes3armor`: ../../lua/type/tes3armor.html
.. _`nil`: ../../lua/type/nil.html
.. _`tes3npcInstance`: ../../lua/type/tes3npcInstance.html
.. _`tes3weatherBlizzard`: ../../lua/type/tes3weatherBlizzard.html
.. _`tes3container`: ../../lua/type/tes3container.html
.. _`tes3dataHandler`: ../../lua/type/tes3dataHandler.html
.. _`tes3rangeInt`: ../../lua/type/tes3rangeInt.html
.. _`tes3dialogueInfo`: ../../lua/type/tes3dialogueInfo.html
.. _`tes3weather`: ../../lua/type/tes3weather.html
.. _`tes3weatherAsh`: ../../lua/type/tes3weatherAsh.html
.. _`tes3wearablePart`: ../../lua/type/tes3wearablePart.html
.. _`tes3vector4`: ../../lua/type/tes3vector4.html
.. _`tes3dialogue`: ../../lua/type/tes3dialogue.html
.. _`tes3gameFile`: ../../lua/type/tes3gameFile.html
.. _`tes3faction`: ../../lua/type/tes3faction.html
.. _`tes3referenceList`: ../../lua/type/tes3referenceList.html
.. _`tes3inputController`: ../../lua/type/tes3inputController.html
.. _`tes3lockpick`: ../../lua/type/tes3lockpick.html
.. _`tes3combatSession`: ../../lua/type/tes3combatSession.html
.. _`boolean`: ../../lua/type/boolean.html
.. _`tes3vector2`: ../../lua/type/tes3vector2.html
.. _`tes3magicEffect`: ../../lua/type/tes3magicEffect.html
.. _`string`: ../../lua/type/string.html
.. _`tes3travelDestinationNode`: ../../lua/type/tes3travelDestinationNode.html
.. _`tes3iteratorNode`: ../../lua/type/tes3iteratorNode.html
.. _`tes3fader`: ../../lua/type/tes3fader.html
.. _`tes3quest`: ../../lua/type/tes3quest.html
.. _`tes3nonDynamicData`: ../../lua/type/tes3nonDynamicData.html
.. _`tes3ingredient`: ../../lua/type/tes3ingredient.html
.. _`tes3race`: ../../lua/type/tes3race.html
.. _`tes3gameSetting`: ../../lua/type/tes3gameSetting.html
.. _`tes3transform`: ../../lua/type/tes3transform.html
.. _`table`: ../../lua/type/table.html
.. _`tes3soulGemData`: ../../lua/type/tes3soulGemData.html
.. _`tes3mobileObject`: ../../lua/type/tes3mobileObject.html
.. _`tes3mobileNPC`: ../../lua/type/tes3mobileNPC.html
.. _`tes3regionSound`: ../../lua/type/tes3regionSound.html
.. _`tes3vector3`: ../../lua/type/tes3vector3.html
.. _`tes3reference`: ../../lua/type/tes3reference.html
.. _`tes3raceSkillBonus`: ../../lua/type/tes3raceSkillBonus.html
.. _`tes3activator`: ../../lua/type/tes3activator.html
.. _`tes3raceBodyParts`: ../../lua/type/tes3raceBodyParts.html
.. _`tes3inventory`: ../../lua/type/tes3inventory.html
.. _`tes3boundingBox`: ../../lua/type/tes3boundingBox.html
.. _`tes3markData`: ../../lua/type/tes3markData.html
.. _`tes3raceBaseAttribute`: ../../lua/type/tes3raceBaseAttribute.html
.. _`tes3creatureInstance`: ../../lua/type/tes3creatureInstance.html
.. _`tes3effect`: ../../lua/type/tes3effect.html
.. _`tes3game`: ../../lua/type/tes3game.html
.. _`tes3probe`: ../../lua/type/tes3probe.html
.. _`tes3physicalObject`: ../../lua/type/tes3physicalObject.html
.. _`tes3object`: ../../lua/type/tes3object.html
.. _`tes3weatherClear`: ../../lua/type/tes3weatherClear.html
.. _`number`: ../../lua/type/number.html
.. _`tes3moon`: ../../lua/type/tes3moon.html
.. _`tes3weatherCloudy`: ../../lua/type/tes3weatherCloudy.html
.. _`tes3region`: ../../lua/type/tes3region.html
.. _`tes3misc`: ../../lua/type/tes3misc.html
.. _`tes3leveledListNode`: ../../lua/type/tes3leveledListNode.html
.. _`tes3mobileCreature`: ../../lua/type/tes3mobileCreature.html
.. _`tes3mobileActor`: ../../lua/type/tes3mobileActor.html
.. _`function`: ../../lua/type/function.html
.. _`tes3magicEffectInstance`: ../../lua/type/tes3magicEffectInstance.html
.. _`tes3baseObject`: ../../lua/type/tes3baseObject.html
.. _`tes3bodyPart`: ../../lua/type/tes3bodyPart.html
.. _`tes3factionRank`: ../../lua/type/tes3factionRank.html
.. _`mwseTimer`: ../../lua/type/mwseTimer.html
.. _`tes3weatherBlight`: ../../lua/type/tes3weatherBlight.html
.. _`tes3packedColor`: ../../lua/type/tes3packedColor.html
.. _`bool`: ../../lua/type/boolean.html
.. _`tes3equipmentStack`: ../../lua/type/tes3equipmentStack.html
.. _`tes3weatherFoggy`: ../../lua/type/tes3weatherFoggy.html
.. _`mwseTimerController`: ../../lua/type/mwseTimerController.html
.. _`tes3leveledCreature`: ../../lua/type/tes3leveledCreature.html
.. _`tes3lockNode`: ../../lua/type/tes3lockNode.html
.. _`tes3activeMagicEffect`: ../../lua/type/tes3activeMagicEffect.html
.. _`tes3cellExteriorData`: ../../lua/type/tes3cellExteriorData.html
.. _`tes3weatherOvercast`: ../../lua/type/tes3weatherOvercast.html
.. _`tes3leveledItem`: ../../lua/type/tes3leveledItem.html
.. _`tes3alchemy`: ../../lua/type/tes3alchemy.html
.. _`tes3enchantment`: ../../lua/type/tes3enchantment.html
.. _`tes3cell`: ../../lua/type/tes3cell.html
.. _`tes3actionData`: ../../lua/type/tes3actionData.html
.. _`tes3itemData`: ../../lua/type/tes3itemData.html
.. _`tes3factionReaction`: ../../lua/type/tes3factionReaction.html
