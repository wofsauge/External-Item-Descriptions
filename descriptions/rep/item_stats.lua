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
	[C_ID .. 67] = { TearFlags = { [TearFlags.TEAR_NORMAL] = 1 }, DamagePerTear = 6 }, -- Sister Maggy
    [C_ID .. 70] = { Speed = 0.2, Damage = 1 }, -- Growth Hormones
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
    [C_ID .. 155] = { ContactDamagePerSecond = 17.1 },  -- The Peeper
    [C_ID .. 169] = { Damage = 4, DamageMultiplier = 2, FireRateMultiplier = 0.42 }, -- Polyphemus
    [C_ID .. 172] = { Orbital = true, BlockProjectiles = true, ContactDamagePerSecond = 112.5 },  -- Sacrificial Dagger
    [C_ID .. 176] = { RedHeart = 1, ShotSpeed = 0.16, HealingRed = 1 }, -- Stem Cells
    [C_ID .. 182] = { RedHeart = 1, DamageMultiplier = 2.3, Damage = 1, Tears = -0.4, ShotSpeed = -0.25, FullHealth = 1, TearFlags = { [TearFlags.TEAR_HOMING] = 1 } }, -- Sacred Heart
    [C_ID .. 184] = { RedHeart = 1, HealingRed = 1, Flight = 1 }, -- Holy Grail
    [C_ID .. 189] = { RedHeart = 1, Speed = 0.2, Tears = 0.2, Damage = 0.3, Range = 2.5, FullHealth = 1 }, -- SMB Super Fan
    [C_ID .. 192] = { TearFlags = { [TearFlags.TEAR_HOMING] = 1 } }, -- Telepathy for Dummies
    [C_ID .. 193] = { RedHeart = 1, Damage = 0.3, HealingRed = 1 }, -- MEAT!
    [C_ID .. 194] = { ShotSpeed = 0.16, Spawns = {Card = 1}, PlanetariumChance = 15 }, -- Magic 8 Ball
    [C_ID .. 197] = { Damage = 0.5, Range = 1.5 }, -- Jesus Juice

    [C_ID .. 206] = { FireRate = 0.5, Damage = 1 }, -- Guillotine
    [C_ID .. 214] = { Range = 1.5 }, -- Anemic
    [C_ID .. 218] = { RedHeart = 1, HealingRed = 1 }, -- Placenta
    [C_ID .. 219] = { EmptyHeart = 1 }, -- Old Bandage
    [C_ID .. 222] = { FireRate = 1 }, -- Anti-Gravity
    [C_ID .. 224] = { FireRate = 0.5, RangeMultiplier = 0.8 }, -- Cricket's Body
    [C_ID .. 226] = { RedHeart = 1, HealingRed = 1, SoulHeart = 1, BlackHeart = 1}, -- Black Lotus
    [C_ID .. 228] = { FireRate = 0.5 }, -- Mom's Perfume
    [C_ID .. 229] = { FireRateMultiplier = 0.23 }, -- Monstro's Lung
    [C_ID .. 230] = { Speed = 0.2, Damage = 1.5, BlackHeart = 2 }, -- Abaddon
    [C_ID .. 233] = { Range = 6.5 }, -- Tiny Planet
    [C_ID .. 245] = { DamageMultiplier = 0.8 }, -- 20/20
    [C_ID .. 253] = { RedHeart = 1, HealingRed = 1, Luck = 1 }, -- Magic Scab
    [C_ID .. 254] = { }, -- Blood Clot  (Removed tear Height)
    [C_ID .. 261] = { Damage = 0.5 }, -- Proptosis
    [C_ID .. 263] = { Spawns = {Rune = 1} }, -- Proptosis
    [C_ID .. 264] = { Orbital = true, ContactDamagePerSecond = 6.5 },  -- Smart Fly
    [C_ID .. 274] = { ContactDamagePerSecond = 150 },  -- Best Bud
    [C_ID .. 288] = { Spawns={BlueSpider={4,8}} }, -- Box of Spiders

    [C_ID .. 307] = { RedHeart = 1, HealingRed = 1, Speed = 0.1, FireRate = 0.5, Damage = 0.5, Range = 0.75, CoinBombKey = 1 }, -- Capricorn
    [C_ID .. 309] = { FireRate = 0.5, TearSize = 0.12 }, -- Pisces
    [C_ID .. 310] = { DamageMultiplier = 2, ShotSpeed = -0.5, TearsMultiplier = 0.66 }, -- Eve's Mascara
    [C_ID .. 314] = { RedHeart = 1, Speed = -0.4, HealingRed = 1 }, -- Thunder Thighs
    [C_ID .. 320] = { ContactDamagePerSecond = 15 },  -- ???'s Only Friend
    [C_ID .. 328] = { Damage = 1 },  -- The Negative
    [C_ID .. 330] = { FireRateMultiplier = 5.5, DamageMultiplier = 0.2, TearSize = -0.3 }, -- Soy Milk
    [C_ID .. 331] = { Damage = 0.5, Tears = -0.3, ShotSpeed = -0.3 }, -- Godhead
    [C_ID .. 336] = { Range = -1.5, TearSize = 0.22, ShotSpeed = -0.4 }, -- Dead Onion
    [C_ID .. 339] = { Range = 2.5, ShotSpeed = 0.16, BlackHeart = 1 }, -- Safety Pin
    [C_ID .. 342] = { RedHeart = 1, Tears = 0.7, ShotSpeed = -0.16, HealingRed = 1 }, -- Blue Cap
    [C_ID .. 345] = { Damage = 1, Range = 2.5 }, -- Synthoil
    [C_ID .. 346] = { RedHeart = 1, HealingRed = 1 }, -- A Snack
    [C_ID .. 354] = { RedHeart = 1, HealingRed = 1 , Spawns = { RandomTrinket = 1 } }, -- Crack Jacks
    [C_ID .. 355] = { Range = 2.5, Luck = 1, SoulHeart = 1 }, -- Mom's Pearls
    [C_ID .. 365] = { ContactDamagePerSecond = 30 },  -- Lost Fly
    [C_ID .. 369] = { Range = 3  }, -- Continuum
    [C_ID .. 370] = { Tears = 0.7, Range = 2.5, Spawns = {RandomHeart = 3}  }, -- Mr. Dolly
    [C_ID .. 376] = { }, -- Restock (no longer spawns pickups)
    [C_ID .. 394] = { Tears = 0.7, Range = 3 }, -- Marked
    [C_ID .. 397] = { FireRate = 1, Range = 2.5, ShotSpeed = 0.16 }, -- Tractor Beam
    [C_ID .. 399] = { }, -- Maw of the Void (No longer adds damage)

    [C_ID .. 405] = { }, -- GB Bug (No longer does damage)
    [C_ID .. 433] = { ContactDamagePerSecond = 8.7 }, -- My Shadow
    [C_ID .. 440] = { }, -- Kidney Stone (Stats all got removed)
    [C_ID .. 453] = { Range = 1.5 }, -- Compound Fracture
    [C_ID .. 455] = { Range = 2.5 }, -- Dad's Lost Coin
    [C_ID .. 456] = { RedHeart = 1, HealingRed = 1 }, -- Moldy Bread
    [C_ID .. 462] = { Range = 1.5 }, -- Eye of Belial
    [C_ID .. 474] = { }, -- Glass Canon Item (Previously Tonsil)

    [C_ID .. 509] = { DamagePerTear = 3.5, ContactDamagePerSecond = 20 }, -- Bloodshot Eye
    [C_ID .. 531] = { DamageMultiplier = 1.5, Damage = 1, FireRateMultiplier = 0.33, RangeMultiplier = 0.8 }, -- Haemolacria
}
EID:updateDescriptionsViaTable(repentanceItemStats, EID.ItemStats)