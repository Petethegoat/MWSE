tes3mobilePlayer
====================================================================================================

A mobile object for a the player.

Properties
----------------------------------------------------------------------------------------------------

`acrobatics`_ (`tes3skillStatistic`_)
    Direct access to the NPC's acrobatics skill statistic.

`actionBeforeCombat`_ (`tes3actionData`_)
    Action data stored before the actor entered combat.

`actionData`_ (`tes3actionData`_)
    Current action data. Pre-combat action data is stored in the actionBeforeCombat property.

`activeAI`_ (`boolean`_)
    Friendly access to the actor's flag that controls if AI is active.

`activeMagicEffectCount`_ (`number`_)
    The number of active magic effects currently operating on the actor.

`activeMagicEffects`_ (`tes3activeMagicEffect`_)
    The first active magic effect on the actor, from which all others can be accessed.

`actorType`_ (`number`_)
    The type of the mobile actor. 0 is a creature, 1 is an NPC, 2 is the player.

`agility`_ (`tes3statistic`_)
    Direct access to the actor's agility attribute statistic.

`aiPlanner`_ (`tes3aiPlanner`_)
    Access to the mobile's AI planner and AI package information.

`alarm`_ (`number`_)
    The actor's alarm AI value.

`alchemy`_ (`tes3skillStatistic`_)
    Direct access to the NPC's alchemy skill statistic.

`alteration`_ (`tes3skillStatistic`_)
    Direct access to the NPC's alteration skill statistic.

`alwaysRun`_ (`boolean`_)
    Toggle flag for if the player should always run.

`animationData`_ (`tes3playerAnimationData`_)
    No description available.

`animationData`_ (`tes3actorAnimationData`_)
    No description available.

`armorer`_ (`tes3skillStatistic`_)
    Direct access to the NPC's armorer skill statistic.

`athletics`_ (`tes3skillStatistic`_)
    Direct access to the NPC's athletics skill statistic.

`attackBonus`_ (`number`_)
    Direct access to the actor's attack bonus effect attribute.

`attackDisabled`_ (`boolean`_)
    Toggle flag for if the player can attack.

`attacked`_ (`boolean`_)
    Friendly access to the actor's flag that controls if the actor has been attacked.

`attributes`_ (`table`_)
    Access to a table of 8 tes3statistic objects for the actor's attributes.

`autoRun`_ (`boolean`_)
    Toggle flag for if the player should constantly run forward.

`axe`_ (`tes3skillStatistic`_)
    Direct access to the NPC's axe skill statistic.

`barterGold`_ (`number`_)
    The current amount of gold that the actor has access to for bartering.

`blind`_ (`number`_)
    Direct access to the actor's blind effect attribute.

`block`_ (`tes3skillStatistic`_)
    Direct access to the NPC's block skill statistic.

`bluntWeapon`_ (`tes3skillStatistic`_)
    Direct access to the NPC's blunt weapon skill statistic.

`boundSize`_ (`tes3vector3`_)
    A vector that shows the size of the bounding box in each direction.

`bounty`_ (`number`_)
    The player's current bounty.

`castReady`_ (`boolean`_)
    Toggle flag for if the player has casting ready.

`cell`_ (`tes3cell`_)
    Fetches the cell that the actor is in.

`cellX`_ (`number`_)
    The X grid coordinate of the cell the mobile is in.

`cellY`_ (`number`_)
    The Y grid coordinate of the cell the mobile is in.

`chameleon`_ (`number`_)
    Direct access to the actor's chameleon effect attribute.

`clawMultiplier`_ (`tes3globalVariable`_)
    Quick access to the ClawMultiplier global variable.

`collidingReference`_ (`tes3reference`_)
    The reference that the mobile has collided with this frame.

`conjuration`_ (`tes3skillStatistic`_)
    Direct access to the NPC's conjuration skill statistic.

`controlsDisabled`_ (`boolean`_)
    Toggle flag for if the player's controls are disabled.

`corpseHourstamp`_ (`number`_)
    No description available.

`currentEnchantedItem`_ (`tes3equipmentStack`_)
    The currently equipped enchanted item that the actor will use.

`currentSpell`_ (`tes3spell`_)
    The currently equipped spell that the actor will use.

`destruction`_ (`tes3skillStatistic`_)
    Direct access to the NPC's destruction skill statistic.

`dialogueList`_ (`tes3iterator`_)
    Access to the collection that holds what dialogue topics the player has access to.

`effectAttributes`_ (`table`_)
    Access to a table of 24 numbers for the actor's effect attributes.

`enchant`_ (`tes3skillStatistic`_)
    Direct access to the NPC's enchant skill statistic.

`encumbrance`_ (`tes3statistic`_)
    Access to the actor's encumbrance statistic.

`endurance`_ (`tes3statistic`_)
    Direct access to the actor's endurance attribute statistic.

`fatigue`_ (`tes3statistic`_)
    Access to the actor's fatigue statistic.

`fight`_ (`number`_)
    The actor's fight AI value.

`firstPerson`_ (`tes3npc`_)
    Quick access to the first person NPC.

`firstPersonReference`_ (`tes3reference`_)
    Quick access to the first person NPC's reference.

`flags`_ (`number`_)
    Access to the root mobile object flags, represented as an integer. Should not be accessed directly.

`flee`_ (`number`_)
    The actor's flee AI value.

`flySpeed`_ (`number`_)
    The calculated fly movement speed.

`forceJump`_ (`boolean`_)
    Toggle flag for if the NPC jumps.

`forceMoveJump`_ (`boolean`_)
    Toggle flag for if the NPC moves and jumps.

`forceRun`_ (`boolean`_)
    Toggle flag for if the NPC runs.

`forceSneak`_ (`boolean`_)
    Toggle flag for if the NPC sneaks.

`friendlyActors`_ (`tes3iterator`_)
    A collection of other tes3mobileActors that this actor considers friendly.

`greetDuration`_ (`number`_)
    No description available.

`greetTimer`_ (`number`_)
    No description available.

`handToHand`_ (`tes3skillStatistic`_)
    Direct access to the NPC's hand to hand skill statistic.

`health`_ (`tes3statistic`_)
    Access to the actor's health statistic.

`heavyArmor`_ (`tes3skillStatistic`_)
    Direct access to the NPC's heavy armor skill statistic.

`height`_ (`number`_)
    The height of the mobile above the ground.

`hello`_ (`number`_)
    The actor's hello AI value.

`holdBreathTime`_ (`number`_)
    No description available.

`hostileActors`_ (`tes3iterator`_)
    A collection of other tes3mobileActors that this actor considers hostile.

`idleAnim`_ (`boolean`_)
    Friendly access to the actor's flag that controls if the actor is using their idle animation.

`illusion`_ (`tes3skillStatistic`_)
    Direct access to the NPC's illusion skill statistic.

`impulseVelocity`_ (`tes3vector3`_)
    A vector that represents the 3D acceleration of the object.

`inCombat`_ (`boolean`_)
    Friendly access to the actor's flag that controls if the actor is in combat.

`inJail`_ (`boolean`_)
    Toggle flag for if the player is currently in jail.

`inactivityTime`_ (`number`_)
    The time that the player has spent inactive.

`intelligence`_ (`tes3statistic`_)
    Direct access to the actor's intelligence attribute statistic.

`invisibility`_ (`number`_)
    Direct access to the actor's invisibility effect attribute.

`is3rdPerson`_ (`boolean`_)
    Shows if the player's camera is currently in 3rd person view.

`isCrittable`_ (`boolean`_)
    Friendly access to the actor's flag that controls if the actor can be crittically hit.

`isFlying`_ (`boolean`_)
    Direct access to the actor's current movement flags, showing if the actor is flying.

`isJumping`_ (`boolean`_)
    Direct access to the actor's current movement flags, showing if the actor is jumping.

`isMovingBack`_ (`boolean`_)
    Direct access to the actor's current movement flags, showing if the actor is moving backwards.

`isMovingForward`_ (`boolean`_)
    Direct access to the actor's current movement flags, showing if the actor is moving forwards.

`isMovingLeft`_ (`boolean`_)
    Direct access to the actor's current movement flags, showing if the actor is moving left.

`isMovingRight`_ (`boolean`_)
    Direct access to the actor's current movement flags, showing if the actor is moving right.

`isRunning`_ (`boolean`_)
    Direct access to the actor's current movement flags, showing if the actor is running.

`isSneaking`_ (`boolean`_)
    Direct access to the actor's current movement flags, showing if the actor is sneaking.

`isStartingJump`_ (`boolean`_)
    Direct access to the actor's current movement flags, showing if the actor has started jumping.

`isSwimming`_ (`boolean`_)
    Direct access to the actor's current movement flags, showing if the actor is swimming.

`isTurningLeft`_ (`boolean`_)
    Direct access to the actor's current movement flags, showing if the actor is turning left.

`isTurningRight`_ (`boolean`_)
    Direct access to the actor's current movement flags, showing if the actor is turning right.

`isWalking`_ (`boolean`_)
    Direct access to the actor's current movement flags, showing if the actor is walking.

`jump`_ (`number`_)
    Direct access to the actor's jump effect attribute.

`jumpingDisabled`_ (`boolean`_)
    Toggle flag for if the player can jump.

`knownWerewolf`_ (`tes3globalVariable`_)
    Quick access to the KnownWerewolf global variable.

`lastGroundZ`_ (`number`_)
    No description available.

`lastUsedAlembic`_ (`tes3apparatus`_)
    The last used alchemy alembic.

`lastUsedAmmoCount`_ (`number`_)
    The amount of ammo for the ranged weapon that that was last equipped.

`lastUsedCalcinator`_ (`tes3apparatus`_)
    The last used alchemy calcinator.

`lastUsedMortar`_ (`tes3apparatus`_)
    The last used alchemy mortar.

`lastUsedRetort`_ (`tes3apparatus`_)
    The last used alchemy retort.

`levelUpProgress`_ (`number`_)
    The progress the player has made towards leveling up.

`levelupPerSpecialization`_ (`table`_)
    Array-style table access to how many skill levels there have been for each of the 3 specializations.

`levelupsPerAttribute`_ (`table`_)
    Array-style table access to how many skill levels there have been for each of the 8 attributes.

`levitate`_ (`number`_)
    Direct access to the actor's levitate effect attribute.

`lightArmor`_ (`tes3skillStatistic`_)
    Direct access to the NPC's light armor skill statistic.

`longBlade`_ (`tes3skillStatistic`_)
    Direct access to the NPC's long blade skill statistic.

`luck`_ (`tes3statistic`_)
    Direct access to the actor's luck attribute statistic.

`magicDisabled`_ (`boolean`_)
    Toggle flag for if the player can use magic.

`magicka`_ (`tes3statistic`_)
    Access to the actor's magicka statistic.

`magickaMultiplier`_ (`tes3statistic`_)
    Access to the actor's magicka multiplier statistic.

`markLocation`_ (`tes3markData`_)
    Access to the structure that holds the player's current mark/recall location.

`marksman`_ (`tes3skillStatistic`_)
    Direct access to the NPC's marksman skill statistic.

`mediumArmor`_ (`tes3skillStatistic`_)
    Direct access to the NPC's medium armor skill statistic.

`mercantile`_ (`tes3skillStatistic`_)
    Direct access to the NPC's mercantile skill statistic.

`mouseLookDisabled`_ (`boolean`_)
    Toggle flag for if the player's mouse look controls are disabled.

`moveSpeed`_ (`number`_)
    The calculated base movement speed.

`movementFlags`_ (`number`_)
    Access to the root mobile object movement flags, represented as an integer. Should not be accessed directly.

`mysticism`_ (`tes3skillStatistic`_)
    Direct access to the NPC's mysticism skill statistic.

`nextActionWeight`_ (`number`_)
    No description available.

`object`_ (`tes3npcInstance`_)
    The actor object that maps to this mobile.

`objectType`_ (`number`_)
    The type of mobile object. Maps to values in tes3.objectType.

`paralyze`_ (`number`_)
    Direct access to the actor's paralyze effect attribute.

`personality`_ (`tes3statistic`_)
    Direct access to the actor's personality attribute statistic.

`position`_ (`tes3vector3`_)
    A vector that represents the 3D position of the object.

`prevMovementFlags`_ (`number`_)
    Access to the root mobile object movement flags from the previous frame, represented as an integer. Should not be accessed directly.

`readiedAmmo`_ (`tes3equipmentStack`_)
    The currently equipped ammo.

`readiedAmmoCount`_ (`number`_)
    The number of ammo equipped for the readied ammo.

`readiedShield`_ (`tes3equipmentStack`_)
    The currently equipped shield.

`readiedWeapon`_ (`tes3equipmentStack`_)
    The currently equipped weapon.

`reference`_ (`tes3reference`_)
    Access to the reference object for the mobile, if any.

`resistBlightDisease`_ (`number`_)
    Direct access to the actor's blight disease resistance effect attribute.

`resistCommonDisease`_ (`number`_)
    Direct access to the actor's common disease resistance effect attribute.

`resistCorprus`_ (`number`_)
    Direct access to the actor's corprus disease resistance effect attribute.

`resistFire`_ (`number`_)
    Direct access to the actor's fire resistance effect attribute.

`resistFrost`_ (`number`_)
    Direct access to the actor's frost resistance effect attribute.

`resistMagicka`_ (`number`_)
    Direct access to the actor's magicka resistance effect attribute.

`resistNormalWeapons`_ (`number`_)
    Direct access to the actor's normal weapon resistance effect attribute.

`resistParalysis`_ (`number`_)
    Direct access to the actor's paralysis resistance effect attribute.

`resistPoison`_ (`number`_)
    Direct access to the actor's poison resistance effect attribute.

`resistShock`_ (`number`_)
    Direct access to the actor's shock resistance effect attribute.

`restHoursRemaining`_ (`number`_)
    How many hours are left while resting.

`restoration`_ (`tes3skillStatistic`_)
    Direct access to the NPC's restoration skill statistic.

`runSpeed`_ (`number`_)
    The calculated run movement speed.

`sanctuary`_ (`number`_)
    Direct access to the actor's sanctuary effect attribute.

`scanInterval`_ (`number`_)
    No description available.

`scanTimer`_ (`number`_)
    No description available.

`security`_ (`tes3skillStatistic`_)
    Direct access to the NPC's security skill statistic.

`shield`_ (`number`_)
    Direct access to the actor's shield effect attribute.

`shortBlade`_ (`tes3skillStatistic`_)
    Direct access to the NPC's short blade skill statistic.

`silence`_ (`number`_)
    Direct access to the actor's silence effect attribute.

`skillProgress`_ (`table`_)
    Array-style table access to skill progress for each of the 27 skills.

`skills`_ (`table`_)
    An array-style table with access to the twenty seven NPC skill statistics.

`sleeping`_ (`boolean`_)
    Toggle flag for if the player is currently sleeping.

`sneak`_ (`tes3skillStatistic`_)
    Direct access to the NPC's sneak skill statistic.

`sound`_ (`number`_)
    Direct access to the actor's sound effect attribute.

`spear`_ (`tes3skillStatistic`_)
    Direct access to the NPC's spear skill statistic.

`speechcraft`_ (`tes3skillStatistic`_)
    Direct access to the NPC's speechcraft skill statistic.

`speed`_ (`tes3statistic`_)
    Direct access to the actor's speed attribute statistic.

`spellReadied`_ (`boolean`_)
    Friendly access to the actor's flag that controls if the actor has a spell readied.

`strength`_ (`tes3statistic`_)
    Direct access to the actor's strength attribute statistic.

`swiftSwim`_ (`number`_)
    Direct access to the actor's swift swim effect attribute.

`swimRunSpeed`_ (`number`_)
    The calculated swim movement speed while running.

`swimSpeed`_ (`number`_)
    The calculated swim movement speed.

`telekinesis`_ (`number`_)
    Direct access to the player's telekinesis effect attribute.

`torchSlot`_ (`tes3equipmentStack`_)
    The currently equipped light.

`travelling`_ (`boolean`_)
    Toggle flag for if the player is currently travelling.

`unarmored`_ (`tes3skillStatistic`_)
    Direct access to the NPC's unarmored skill statistic.

`underwater`_ (`boolean`_)
    Friendly access to the actor's flag that controls if the actor is under water.

`vanityDisabled`_ (`boolean`_)
    Toggle flag for if the player's vanity camera is disabled.

`velocity`_ (`tes3vector3`_)
    A vector that represents the 3D velocity of the object.

`viewSwitchDisabled`_ (`boolean`_)
    Toggle flag for if the player can switch between first person and vanity cameras.

`visionBonus`_ (`number`_)
    Direct access to the player's vision bonus effect attribute.

`waiting`_ (`boolean`_)
    Toggle flag for if the player is currently waiting.

`walkSpeed`_ (`number`_)
    The calculated walk movement speed.

`waterBreathing`_ (`number`_)
    Direct access to the actor's water breathing effect attribute.

`waterWalking`_ (`number`_)
    Direct access to the actor's water walking effect attribute.

`weaponDrawn`_ (`boolean`_)
    Friendly access to the actor's flag that controls if the actor has a weapon readied.

`weaponReady`_ (`boolean`_)
    Toggle flag for if the player has a weapon ready.

`werewolf`_ (`boolean`_)
    Friendly access to the actor's flag that controls if the actor in werewolf form.

`width`_ (`number`_)
    No description available.

`willpower`_ (`tes3statistic`_)
    Direct access to the actor's willpower attribute statistic.

.. toctree::
    :hidden:

    tes3mobilePlayer/acrobatics
    tes3mobilePlayer/actionBeforeCombat
    tes3mobilePlayer/actionData
    tes3mobilePlayer/activeAI
    tes3mobilePlayer/activeMagicEffectCount
    tes3mobilePlayer/activeMagicEffects
    tes3mobilePlayer/actorType
    tes3mobilePlayer/agility
    tes3mobilePlayer/aiPlanner
    tes3mobilePlayer/alarm
    tes3mobilePlayer/alchemy
    tes3mobilePlayer/alteration
    tes3mobilePlayer/alwaysRun
    tes3mobilePlayer/animationData
    tes3mobilePlayer/animationData
    tes3mobilePlayer/armorer
    tes3mobilePlayer/athletics
    tes3mobilePlayer/attackBonus
    tes3mobilePlayer/attackDisabled
    tes3mobilePlayer/attacked
    tes3mobilePlayer/attributes
    tes3mobilePlayer/autoRun
    tes3mobilePlayer/axe
    tes3mobilePlayer/barterGold
    tes3mobilePlayer/blind
    tes3mobilePlayer/block
    tes3mobilePlayer/bluntWeapon
    tes3mobilePlayer/boundSize
    tes3mobilePlayer/bounty
    tes3mobilePlayer/castReady
    tes3mobilePlayer/cell
    tes3mobilePlayer/cellX
    tes3mobilePlayer/cellY
    tes3mobilePlayer/chameleon
    tes3mobilePlayer/clawMultiplier
    tes3mobilePlayer/collidingReference
    tes3mobilePlayer/conjuration
    tes3mobilePlayer/controlsDisabled
    tes3mobilePlayer/corpseHourstamp
    tes3mobilePlayer/currentEnchantedItem
    tes3mobilePlayer/currentSpell
    tes3mobilePlayer/destruction
    tes3mobilePlayer/dialogueList
    tes3mobilePlayer/effectAttributes
    tes3mobilePlayer/enchant
    tes3mobilePlayer/encumbrance
    tes3mobilePlayer/endurance
    tes3mobilePlayer/fatigue
    tes3mobilePlayer/fight
    tes3mobilePlayer/firstPerson
    tes3mobilePlayer/firstPersonReference
    tes3mobilePlayer/flags
    tes3mobilePlayer/flee
    tes3mobilePlayer/flySpeed
    tes3mobilePlayer/forceJump
    tes3mobilePlayer/forceMoveJump
    tes3mobilePlayer/forceRun
    tes3mobilePlayer/forceSneak
    tes3mobilePlayer/friendlyActors
    tes3mobilePlayer/greetDuration
    tes3mobilePlayer/greetTimer
    tes3mobilePlayer/handToHand
    tes3mobilePlayer/health
    tes3mobilePlayer/heavyArmor
    tes3mobilePlayer/height
    tes3mobilePlayer/hello
    tes3mobilePlayer/holdBreathTime
    tes3mobilePlayer/hostileActors
    tes3mobilePlayer/idleAnim
    tes3mobilePlayer/illusion
    tes3mobilePlayer/impulseVelocity
    tes3mobilePlayer/inCombat
    tes3mobilePlayer/inJail
    tes3mobilePlayer/inactivityTime
    tes3mobilePlayer/intelligence
    tes3mobilePlayer/invisibility
    tes3mobilePlayer/is3rdPerson
    tes3mobilePlayer/isCrittable
    tes3mobilePlayer/isFlying
    tes3mobilePlayer/isJumping
    tes3mobilePlayer/isMovingBack
    tes3mobilePlayer/isMovingForward
    tes3mobilePlayer/isMovingLeft
    tes3mobilePlayer/isMovingRight
    tes3mobilePlayer/isRunning
    tes3mobilePlayer/isSneaking
    tes3mobilePlayer/isStartingJump
    tes3mobilePlayer/isSwimming
    tes3mobilePlayer/isTurningLeft
    tes3mobilePlayer/isTurningRight
    tes3mobilePlayer/isWalking
    tes3mobilePlayer/jump
    tes3mobilePlayer/jumpingDisabled
    tes3mobilePlayer/knownWerewolf
    tes3mobilePlayer/lastGroundZ
    tes3mobilePlayer/lastUsedAlembic
    tes3mobilePlayer/lastUsedAmmoCount
    tes3mobilePlayer/lastUsedCalcinator
    tes3mobilePlayer/lastUsedMortar
    tes3mobilePlayer/lastUsedRetort
    tes3mobilePlayer/levelUpProgress
    tes3mobilePlayer/levelupPerSpecialization
    tes3mobilePlayer/levelupsPerAttribute
    tes3mobilePlayer/levitate
    tes3mobilePlayer/lightArmor
    tes3mobilePlayer/longBlade
    tes3mobilePlayer/luck
    tes3mobilePlayer/magicDisabled
    tes3mobilePlayer/magicka
    tes3mobilePlayer/magickaMultiplier
    tes3mobilePlayer/markLocation
    tes3mobilePlayer/marksman
    tes3mobilePlayer/mediumArmor
    tes3mobilePlayer/mercantile
    tes3mobilePlayer/mouseLookDisabled
    tes3mobilePlayer/moveSpeed
    tes3mobilePlayer/movementFlags
    tes3mobilePlayer/mysticism
    tes3mobilePlayer/nextActionWeight
    tes3mobilePlayer/object
    tes3mobilePlayer/objectType
    tes3mobilePlayer/paralyze
    tes3mobilePlayer/personality
    tes3mobilePlayer/position
    tes3mobilePlayer/prevMovementFlags
    tes3mobilePlayer/readiedAmmo
    tes3mobilePlayer/readiedAmmoCount
    tes3mobilePlayer/readiedShield
    tes3mobilePlayer/readiedWeapon
    tes3mobilePlayer/reference
    tes3mobilePlayer/resistBlightDisease
    tes3mobilePlayer/resistCommonDisease
    tes3mobilePlayer/resistCorprus
    tes3mobilePlayer/resistFire
    tes3mobilePlayer/resistFrost
    tes3mobilePlayer/resistMagicka
    tes3mobilePlayer/resistNormalWeapons
    tes3mobilePlayer/resistParalysis
    tes3mobilePlayer/resistPoison
    tes3mobilePlayer/resistShock
    tes3mobilePlayer/restHoursRemaining
    tes3mobilePlayer/restoration
    tes3mobilePlayer/runSpeed
    tes3mobilePlayer/sanctuary
    tes3mobilePlayer/scanInterval
    tes3mobilePlayer/scanTimer
    tes3mobilePlayer/security
    tes3mobilePlayer/shield
    tes3mobilePlayer/shortBlade
    tes3mobilePlayer/silence
    tes3mobilePlayer/skillProgress
    tes3mobilePlayer/skills
    tes3mobilePlayer/sleeping
    tes3mobilePlayer/sneak
    tes3mobilePlayer/sound
    tes3mobilePlayer/spear
    tes3mobilePlayer/speechcraft
    tes3mobilePlayer/speed
    tes3mobilePlayer/spellReadied
    tes3mobilePlayer/strength
    tes3mobilePlayer/swiftSwim
    tes3mobilePlayer/swimRunSpeed
    tes3mobilePlayer/swimSpeed
    tes3mobilePlayer/telekinesis
    tes3mobilePlayer/torchSlot
    tes3mobilePlayer/travelling
    tes3mobilePlayer/unarmored
    tes3mobilePlayer/underwater
    tes3mobilePlayer/vanityDisabled
    tes3mobilePlayer/velocity
    tes3mobilePlayer/viewSwitchDisabled
    tes3mobilePlayer/visionBonus
    tes3mobilePlayer/waiting
    tes3mobilePlayer/walkSpeed
    tes3mobilePlayer/waterBreathing
    tes3mobilePlayer/waterWalking
    tes3mobilePlayer/weaponDrawn
    tes3mobilePlayer/weaponReady
    tes3mobilePlayer/werewolf
    tes3mobilePlayer/width
    tes3mobilePlayer/willpower

.. _`acrobatics`: tes3mobilePlayer/acrobatics.html
.. _`actionBeforeCombat`: tes3mobilePlayer/actionBeforeCombat.html
.. _`actionData`: tes3mobilePlayer/actionData.html
.. _`activeAI`: tes3mobilePlayer/activeAI.html
.. _`activeMagicEffectCount`: tes3mobilePlayer/activeMagicEffectCount.html
.. _`activeMagicEffects`: tes3mobilePlayer/activeMagicEffects.html
.. _`actorType`: tes3mobilePlayer/actorType.html
.. _`agility`: tes3mobilePlayer/agility.html
.. _`aiPlanner`: tes3mobilePlayer/aiPlanner.html
.. _`alarm`: tes3mobilePlayer/alarm.html
.. _`alchemy`: tes3mobilePlayer/alchemy.html
.. _`alteration`: tes3mobilePlayer/alteration.html
.. _`alwaysRun`: tes3mobilePlayer/alwaysRun.html
.. _`animationData`: tes3mobilePlayer/animationData.html
.. _`animationData`: tes3mobilePlayer/animationData.html
.. _`armorer`: tes3mobilePlayer/armorer.html
.. _`athletics`: tes3mobilePlayer/athletics.html
.. _`attackBonus`: tes3mobilePlayer/attackBonus.html
.. _`attackDisabled`: tes3mobilePlayer/attackDisabled.html
.. _`attacked`: tes3mobilePlayer/attacked.html
.. _`attributes`: tes3mobilePlayer/attributes.html
.. _`autoRun`: tes3mobilePlayer/autoRun.html
.. _`axe`: tes3mobilePlayer/axe.html
.. _`barterGold`: tes3mobilePlayer/barterGold.html
.. _`blind`: tes3mobilePlayer/blind.html
.. _`block`: tes3mobilePlayer/block.html
.. _`bluntWeapon`: tes3mobilePlayer/bluntWeapon.html
.. _`boundSize`: tes3mobilePlayer/boundSize.html
.. _`bounty`: tes3mobilePlayer/bounty.html
.. _`castReady`: tes3mobilePlayer/castReady.html
.. _`cell`: tes3mobilePlayer/cell.html
.. _`cellX`: tes3mobilePlayer/cellX.html
.. _`cellY`: tes3mobilePlayer/cellY.html
.. _`chameleon`: tes3mobilePlayer/chameleon.html
.. _`clawMultiplier`: tes3mobilePlayer/clawMultiplier.html
.. _`collidingReference`: tes3mobilePlayer/collidingReference.html
.. _`conjuration`: tes3mobilePlayer/conjuration.html
.. _`controlsDisabled`: tes3mobilePlayer/controlsDisabled.html
.. _`corpseHourstamp`: tes3mobilePlayer/corpseHourstamp.html
.. _`currentEnchantedItem`: tes3mobilePlayer/currentEnchantedItem.html
.. _`currentSpell`: tes3mobilePlayer/currentSpell.html
.. _`destruction`: tes3mobilePlayer/destruction.html
.. _`dialogueList`: tes3mobilePlayer/dialogueList.html
.. _`effectAttributes`: tes3mobilePlayer/effectAttributes.html
.. _`enchant`: tes3mobilePlayer/enchant.html
.. _`encumbrance`: tes3mobilePlayer/encumbrance.html
.. _`endurance`: tes3mobilePlayer/endurance.html
.. _`fatigue`: tes3mobilePlayer/fatigue.html
.. _`fight`: tes3mobilePlayer/fight.html
.. _`firstPerson`: tes3mobilePlayer/firstPerson.html
.. _`firstPersonReference`: tes3mobilePlayer/firstPersonReference.html
.. _`flags`: tes3mobilePlayer/flags.html
.. _`flee`: tes3mobilePlayer/flee.html
.. _`flySpeed`: tes3mobilePlayer/flySpeed.html
.. _`forceJump`: tes3mobilePlayer/forceJump.html
.. _`forceMoveJump`: tes3mobilePlayer/forceMoveJump.html
.. _`forceRun`: tes3mobilePlayer/forceRun.html
.. _`forceSneak`: tes3mobilePlayer/forceSneak.html
.. _`friendlyActors`: tes3mobilePlayer/friendlyActors.html
.. _`greetDuration`: tes3mobilePlayer/greetDuration.html
.. _`greetTimer`: tes3mobilePlayer/greetTimer.html
.. _`handToHand`: tes3mobilePlayer/handToHand.html
.. _`health`: tes3mobilePlayer/health.html
.. _`heavyArmor`: tes3mobilePlayer/heavyArmor.html
.. _`height`: tes3mobilePlayer/height.html
.. _`hello`: tes3mobilePlayer/hello.html
.. _`holdBreathTime`: tes3mobilePlayer/holdBreathTime.html
.. _`hostileActors`: tes3mobilePlayer/hostileActors.html
.. _`idleAnim`: tes3mobilePlayer/idleAnim.html
.. _`illusion`: tes3mobilePlayer/illusion.html
.. _`impulseVelocity`: tes3mobilePlayer/impulseVelocity.html
.. _`inCombat`: tes3mobilePlayer/inCombat.html
.. _`inJail`: tes3mobilePlayer/inJail.html
.. _`inactivityTime`: tes3mobilePlayer/inactivityTime.html
.. _`intelligence`: tes3mobilePlayer/intelligence.html
.. _`invisibility`: tes3mobilePlayer/invisibility.html
.. _`is3rdPerson`: tes3mobilePlayer/is3rdPerson.html
.. _`isCrittable`: tes3mobilePlayer/isCrittable.html
.. _`isFlying`: tes3mobilePlayer/isFlying.html
.. _`isJumping`: tes3mobilePlayer/isJumping.html
.. _`isMovingBack`: tes3mobilePlayer/isMovingBack.html
.. _`isMovingForward`: tes3mobilePlayer/isMovingForward.html
.. _`isMovingLeft`: tes3mobilePlayer/isMovingLeft.html
.. _`isMovingRight`: tes3mobilePlayer/isMovingRight.html
.. _`isRunning`: tes3mobilePlayer/isRunning.html
.. _`isSneaking`: tes3mobilePlayer/isSneaking.html
.. _`isStartingJump`: tes3mobilePlayer/isStartingJump.html
.. _`isSwimming`: tes3mobilePlayer/isSwimming.html
.. _`isTurningLeft`: tes3mobilePlayer/isTurningLeft.html
.. _`isTurningRight`: tes3mobilePlayer/isTurningRight.html
.. _`isWalking`: tes3mobilePlayer/isWalking.html
.. _`jump`: tes3mobilePlayer/jump.html
.. _`jumpingDisabled`: tes3mobilePlayer/jumpingDisabled.html
.. _`knownWerewolf`: tes3mobilePlayer/knownWerewolf.html
.. _`lastGroundZ`: tes3mobilePlayer/lastGroundZ.html
.. _`lastUsedAlembic`: tes3mobilePlayer/lastUsedAlembic.html
.. _`lastUsedAmmoCount`: tes3mobilePlayer/lastUsedAmmoCount.html
.. _`lastUsedCalcinator`: tes3mobilePlayer/lastUsedCalcinator.html
.. _`lastUsedMortar`: tes3mobilePlayer/lastUsedMortar.html
.. _`lastUsedRetort`: tes3mobilePlayer/lastUsedRetort.html
.. _`levelUpProgress`: tes3mobilePlayer/levelUpProgress.html
.. _`levelupPerSpecialization`: tes3mobilePlayer/levelupPerSpecialization.html
.. _`levelupsPerAttribute`: tes3mobilePlayer/levelupsPerAttribute.html
.. _`levitate`: tes3mobilePlayer/levitate.html
.. _`lightArmor`: tes3mobilePlayer/lightArmor.html
.. _`longBlade`: tes3mobilePlayer/longBlade.html
.. _`luck`: tes3mobilePlayer/luck.html
.. _`magicDisabled`: tes3mobilePlayer/magicDisabled.html
.. _`magicka`: tes3mobilePlayer/magicka.html
.. _`magickaMultiplier`: tes3mobilePlayer/magickaMultiplier.html
.. _`markLocation`: tes3mobilePlayer/markLocation.html
.. _`marksman`: tes3mobilePlayer/marksman.html
.. _`mediumArmor`: tes3mobilePlayer/mediumArmor.html
.. _`mercantile`: tes3mobilePlayer/mercantile.html
.. _`mouseLookDisabled`: tes3mobilePlayer/mouseLookDisabled.html
.. _`moveSpeed`: tes3mobilePlayer/moveSpeed.html
.. _`movementFlags`: tes3mobilePlayer/movementFlags.html
.. _`mysticism`: tes3mobilePlayer/mysticism.html
.. _`nextActionWeight`: tes3mobilePlayer/nextActionWeight.html
.. _`object`: tes3mobilePlayer/object.html
.. _`objectType`: tes3mobilePlayer/objectType.html
.. _`paralyze`: tes3mobilePlayer/paralyze.html
.. _`personality`: tes3mobilePlayer/personality.html
.. _`position`: tes3mobilePlayer/position.html
.. _`prevMovementFlags`: tes3mobilePlayer/prevMovementFlags.html
.. _`readiedAmmo`: tes3mobilePlayer/readiedAmmo.html
.. _`readiedAmmoCount`: tes3mobilePlayer/readiedAmmoCount.html
.. _`readiedShield`: tes3mobilePlayer/readiedShield.html
.. _`readiedWeapon`: tes3mobilePlayer/readiedWeapon.html
.. _`reference`: tes3mobilePlayer/reference.html
.. _`resistBlightDisease`: tes3mobilePlayer/resistBlightDisease.html
.. _`resistCommonDisease`: tes3mobilePlayer/resistCommonDisease.html
.. _`resistCorprus`: tes3mobilePlayer/resistCorprus.html
.. _`resistFire`: tes3mobilePlayer/resistFire.html
.. _`resistFrost`: tes3mobilePlayer/resistFrost.html
.. _`resistMagicka`: tes3mobilePlayer/resistMagicka.html
.. _`resistNormalWeapons`: tes3mobilePlayer/resistNormalWeapons.html
.. _`resistParalysis`: tes3mobilePlayer/resistParalysis.html
.. _`resistPoison`: tes3mobilePlayer/resistPoison.html
.. _`resistShock`: tes3mobilePlayer/resistShock.html
.. _`restHoursRemaining`: tes3mobilePlayer/restHoursRemaining.html
.. _`restoration`: tes3mobilePlayer/restoration.html
.. _`runSpeed`: tes3mobilePlayer/runSpeed.html
.. _`sanctuary`: tes3mobilePlayer/sanctuary.html
.. _`scanInterval`: tes3mobilePlayer/scanInterval.html
.. _`scanTimer`: tes3mobilePlayer/scanTimer.html
.. _`security`: tes3mobilePlayer/security.html
.. _`shield`: tes3mobilePlayer/shield.html
.. _`shortBlade`: tes3mobilePlayer/shortBlade.html
.. _`silence`: tes3mobilePlayer/silence.html
.. _`skillProgress`: tes3mobilePlayer/skillProgress.html
.. _`skills`: tes3mobilePlayer/skills.html
.. _`sleeping`: tes3mobilePlayer/sleeping.html
.. _`sneak`: tes3mobilePlayer/sneak.html
.. _`sound`: tes3mobilePlayer/sound.html
.. _`spear`: tes3mobilePlayer/spear.html
.. _`speechcraft`: tes3mobilePlayer/speechcraft.html
.. _`speed`: tes3mobilePlayer/speed.html
.. _`spellReadied`: tes3mobilePlayer/spellReadied.html
.. _`strength`: tes3mobilePlayer/strength.html
.. _`swiftSwim`: tes3mobilePlayer/swiftSwim.html
.. _`swimRunSpeed`: tes3mobilePlayer/swimRunSpeed.html
.. _`swimSpeed`: tes3mobilePlayer/swimSpeed.html
.. _`telekinesis`: tes3mobilePlayer/telekinesis.html
.. _`torchSlot`: tes3mobilePlayer/torchSlot.html
.. _`travelling`: tes3mobilePlayer/travelling.html
.. _`unarmored`: tes3mobilePlayer/unarmored.html
.. _`underwater`: tes3mobilePlayer/underwater.html
.. _`vanityDisabled`: tes3mobilePlayer/vanityDisabled.html
.. _`velocity`: tes3mobilePlayer/velocity.html
.. _`viewSwitchDisabled`: tes3mobilePlayer/viewSwitchDisabled.html
.. _`visionBonus`: tes3mobilePlayer/visionBonus.html
.. _`waiting`: tes3mobilePlayer/waiting.html
.. _`walkSpeed`: tes3mobilePlayer/walkSpeed.html
.. _`waterBreathing`: tes3mobilePlayer/waterBreathing.html
.. _`waterWalking`: tes3mobilePlayer/waterWalking.html
.. _`weaponDrawn`: tes3mobilePlayer/weaponDrawn.html
.. _`weaponReady`: tes3mobilePlayer/weaponReady.html
.. _`werewolf`: tes3mobilePlayer/werewolf.html
.. _`width`: tes3mobilePlayer/width.html
.. _`willpower`: tes3mobilePlayer/willpower.html

Methods
----------------------------------------------------------------------------------------------------

`applyHealthDamage`_ (`boolean`_)
    Damages the actor.

`equip`_ (`boolean`_)
    Equips an item, optionally adding the item if needed.

`exerciseSkill`_
    Exercises a skill, providing experience in it.

`getSkillStatistic`_ (`tes3skillStatistic`_)
    Fetches the statistic object of a skill with a given index. This converts to the limited options available for creatures.

`getSkillValue`_ (`number`_)
    Fetches the current value of a skill with a given index. This converts to the limited options available for creatures.

`hasFreeAction`_ (`boolean`_)
    If true, the actor isn't paralyzed, dead, stunned, or otherwise unable to take action.

`isAffectedByObject`_ (`boolean`_)
    Determines if the actor is currently being affected by a given alchemy, enchantment, or spell.

`levelSkill`_
    Checks to see if a skill is ready to be leveled up, and performs any levelup logic.

`startCombat`_
    Forces the actor into combat with another actor.

`startDialogue`_
    Starts dialogue with this actor for the player.

`stopCombat`_
    Ends combat for the actor.

`unequip`_ (`boolean`_)
    Unequips one or more items from the actor.

.. toctree::
    :hidden:

    tes3mobilePlayer/applyHealthDamage
    tes3mobilePlayer/equip
    tes3mobilePlayer/exerciseSkill
    tes3mobilePlayer/getSkillStatistic
    tes3mobilePlayer/getSkillValue
    tes3mobilePlayer/hasFreeAction
    tes3mobilePlayer/isAffectedByObject
    tes3mobilePlayer/levelSkill
    tes3mobilePlayer/startCombat
    tes3mobilePlayer/startDialogue
    tes3mobilePlayer/stopCombat
    tes3mobilePlayer/unequip

.. _`applyHealthDamage`: tes3mobilePlayer/applyHealthDamage.html
.. _`equip`: tes3mobilePlayer/equip.html
.. _`exerciseSkill`: tes3mobilePlayer/exerciseSkill.html
.. _`getSkillStatistic`: tes3mobilePlayer/getSkillStatistic.html
.. _`getSkillValue`: tes3mobilePlayer/getSkillValue.html
.. _`hasFreeAction`: tes3mobilePlayer/hasFreeAction.html
.. _`isAffectedByObject`: tes3mobilePlayer/isAffectedByObject.html
.. _`levelSkill`: tes3mobilePlayer/levelSkill.html
.. _`startCombat`: tes3mobilePlayer/startCombat.html
.. _`startDialogue`: tes3mobilePlayer/startDialogue.html
.. _`stopCombat`: tes3mobilePlayer/stopCombat.html
.. _`unequip`: tes3mobilePlayer/unequip.html

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
