-- Repentance Modular Descriptions
-- Generates item descriptions based on stat changes defined in statValues
local C_ID = "5.100."

local repentanceItemStats = {
    [C_ID .. 2] = { FireRateMultiplier = 0.51 }, -- Inner Eye
    [C_ID .. 5] = { Damage = 1.5, Range = 1.5, RangeMultiplier = 2, ShotSpeedMultiplier = 1.6, Luck = -1 }, -- My Reflection
    [C_ID .. 6] = { Tears = 1.5, Range = -1.5, RangeMultiplier = 0.8 }, -- Number One
    [C_ID .. 12] = { RedHeart = 1, Speed = 0.3, Damage = 0.3, DamageMultiplier = 1.5, Range = 2.5, SizeUp = 1, FullHealth = 1 }, -- Magic Mushroom
    [C_ID .. 13] = { Speed = 0.2 }, -- The Virus
    [C_ID .. 14] = { Speed = 0.3, Range = 2.5 }, -- Roid Rage
    [C_ID .. 18] = { Coin = 100 }, -- Dollar
    [C_ID .. 22] = { RedHeart = 1, HealingRed = 1 }, -- Lunch
    [C_ID .. 23] = { RedHeart = 1, HealingRed = 1 }, -- Dinner
    [C_ID .. 24] = { RedHeart = 1, HealingRed = 1 }, -- Dessert
    [C_ID .. 25] = { RedHeart = 1, HealingRed = 1 }, -- Breakfast
    [C_ID .. 26] = { RedHeart = 1, HealingRed = 1 }, -- Rotten Meat
    [C_ID .. 29] = { Range = 2.5 , Spawns = {BlueFly = {3,6}}}, -- Mom's Underwear
    [C_ID .. 30] = { Range = 2.5 }, -- Mom's Heels
    [C_ID .. 31] = { Range = 3.75, Spawns = {RandomHeart = 1}}, -- Mom's Lipstick
    [C_ID .. 52] = { FireRateMultiplier = 0.4 }, -- Dr. Fetus
    [C_ID .. 59] = { AngelDevilChance = 12.5 }, -- Book of Belial (passive)
    [C_ID .. 62] = { Damage = 0.3 }, -- Charm of the Vampire
    [C_ID .. 71] = { Speed = 0.3, Range = 2.5, SizeDown = 1 }, -- Mini Mush
    [C_ID .. 72] = { Tears = 0.5, SoulHeart = 3 }, -- Rosary
    [C_ID .. 79] = { Speed = 0.2, Damage = 1, BlackHeart = 1 }, -- The Mark
    [C_ID .. 80] = { Tears = 0.7, Damage = 0.5, BlackHeart = 2 }, -- The Pact

    [C_ID .. 101] = { RedHeart = 1, Speed = 0.3, Tears = 0.2, Damage = 0.3, Range = 1.5, HealingRed = 1 }, -- The Halo
    [C_ID .. 106] = { BombDamage = 1.85, Bomb = 5 }, -- Mr. Mega
    [C_ID .. 110] = { Range = 1.5 }, -- Mom's Contacts
    [C_ID .. 115] = { Tears = 0.5, TearFlags = { [TearFlags.TEAR_SPECTRAL] = 1 } }, -- Ouija Board
    [C_ID .. 118] = { FireRateMultiplier = 0.33 }, -- Brimstone
    [C_ID .. 121] = { RedHeart = 1, Damage = 1, Range = 1.5, Speed = -0.2 }, -- Odd Mushroom (Large)
    [C_ID .. 129] = { RedHeart = 2, Speed = -0.2 }, -- Bucket of Lard
    [C_ID .. 138] = { RedHeart = 1, Damage = 0.3, HealingRed = 1 }, -- Stigmata
    [C_ID .. 139] = { Spawns = {RandomTrinket = 1}}, -- Mom's Purse
    [C_ID .. 140] = { Bomb = 5 }, -- Bob's Curse
    [C_ID .. 149] = { Damage = 40, FireRateMultiplier = 0.33, RangeMultiplier = 0.8, ShotSpeedMultiplier = 0.8 }, -- Ipecac
    [C_ID .. 152] = { FireRateMultiplier = 0.67 }, -- Technology 2
    [C_ID .. 153] = { FireRateMultiplier = 0.42 }, -- Mutant Spider
    [C_ID .. 169] = { Damage = 4, DamageMultiplier = 2, FireRateMultiplier = 0.42 }, -- Polyphemus
    [C_ID .. 176] = { RedHeart = 1, ShotSpeed = 0.16, HealingRed = 1 }, -- Stem Cells
    [C_ID .. 182] = { RedHeart = 1, DamageMultiplier = 2.3, Damage = 1, Tears = -0.4, ShotSpeed = -0.25, FullHealth = 1, TearFlags = { [TearFlags.TEAR_HOMING] = 1 } }, -- Sacred Heart
    [C_ID .. 184] = { RedHeart = 1, HealingRed = 1, Flight = 1 }, -- Holy Grail
    [C_ID .. 189] = { RedHeart = 1, Speed = 0.2, Tears = 0.2, Damage = 0.3, Range = 2.5, FullHealth = 1 }, -- SMB Super Fan
    [C_ID .. 192] = { Range = 3, TearFlags = { [TearFlags.TEAR_HOMING] = 1 } }, -- Telepathy for Dummies
    [C_ID .. 193] = { RedHeart = 1, Damage = 0.3, HealingRed = 1 }, -- MEAT!
    [C_ID .. 194] = { ShotSpeed = 0.16, Card = 1, PlanetariumChance = 15 }, -- Magic 8 Ball
    [C_ID .. 197] = { Damage = 0.5, Range = 1.5 }, -- Jesus Juice

}
EID:updateDescriptionsViaTable(repentanceItemStats, EID.ItemStats)