-- Repentance Modular Descriptions
-- Generates item descriptions based on stat changes defined in statValues
local C_ID = "5.100."
local T_ID = "5.350."
local Pill_ID = "5.70."
local Card_ID = "5.300."
local HorseID = PillColor.PILL_GIANT_FLAG

local repentancePlusItemStats = {

---------- Collectibles ----------

    [C_ID .. 186] = { DamageToAllEnemies = 40, RoomEffect = { FireRate = 0.48 } }, -- Blood Rights (added FireRate)
    [C_ID .. 281] = { BlockProjectiles = true }, -- Punching Bag
    [C_ID .. 329] = { ShotSpeed = 0.2 }, -- The Ludovico Technique
    [C_ID .. 554] = { Tears = 0.5, ShotSpeed = 0.2 },  -- 2Spooky
	[C_ID .. 594] = { EmptyHeart = 2, Speed = -0.3, HealingRed = 2 }, -- Jupiter
	[C_ID .. 643] = { Flight = true }, -- Revelation (Removed +2 Soul Hearts)
    [C_ID .. 651] = { EffectList = { TearsMultiplier = 2.5, DamageMultiplier = 1.2, TearEffect = "Homing"} }, -- Star of Bethlehem (Changed DamageMultiplier)

---------- Trinkets ----------

    [T_ID .. 7] = { AngelChance = 50 }, -- Rosary Bead
	[T_ID .. 66] = { Damage = 0.5, ShotSpeed = -0.5 }, -- Lazy Worm
    [T_ID .. 97] = { Variables = { RANGE = {6, 12} } }, --Tonsil
	[T_ID .. 99] = { LuckChance = { Formula = "Additive", Top = 1, Bottom = 10, Multiplier = 0.05 } }, -- Super Ball (Formula is not documented on the wiki. This is a best guess)
    [T_ID .. 104] = { Variables = { [1] = 5 } }, -- Wish Bone
    [T_ID .. 105] = { Variables = { [1] = 5 } }, -- Bag Lunch

------------ Cards ------------

    [Card_ID .. 38] = { }, -- Berkano (replace blue spider/fly spawns with abyss locusts)

---------- Horse Pills ----------

    [Pill_ID .. (HorseID + 29)] = { FullHealth = true, ItemDescription = "5.70.29" }, -- Percs! (Added full heal information)
    [Pill_ID .. (HorseID + 30)] = { BrokenHeart = 1, ItemDescription = "5.70.30" }, -- Addicted! (Added broken heart)
}

EID:updateDescriptionsViaTable(repentancePlusItemStats, EID.ItemStats)