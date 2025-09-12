-- AB+ Modular Descriptions
-- Generates item descriptions based on stat changes defined in statValues
local C_ID = "5.100."

EID.ItemStats = {
    [C_ID .. 1] = { Tears = 0.7 }, -- The Sad Onion
    [C_ID .. 2] = { TearsMultiplier = 0.48, TearDelay = 3 }, -- The Inner Eye
    [C_ID .. 3] = { TearFlags = { [TearFlags.TEAR_HOMING] = 1.0 } }, -- Spoon Bender
    [C_ID .. 4] = { Damage = 0.5, DamageMultiplier = 1.5 }, -- Cricket's Head
    [C_ID .. 5] = { Range = 1.5, TearHeight = 1, ShotSpeed = 0.6, TearFlags = { [TearFlags.TEAR_BOOMERANG] = 1.0 } }, -- My Reflection
    [C_ID .. 6] = { Tears = 1.5, TearHeight = 0.76, Range = -17.62 }, -- Number One
    [C_ID .. 7] = { Damage = 1 }, -- Blood of the Martyr
    [C_ID .. 10] = { Flies = 2 }, -- Halo of Flies
    [C_ID .. 11] = { Life = 1 }, -- 1up!
    [C_ID .. 12] = { RedHeart = 1, Speed = 0.3, Damage = 0.3, DamageMultiplier = 1.5, Range = 5.25, TearHeight = 0.5, SizeUp = 1, FullHealth = 1 }, -- Magic Mushroom
    [C_ID .. 13] = { Speed = -0.1 }, -- The Virus
    [C_ID .. 14] = { Speed = 0.6, Range = 5.25, TearHeight = 0.5 }, -- Roid Rage
    [C_ID .. 15] = { RedHeart = 1, FullHealth = 1 }, -- <3
    [C_ID .. 16] = { RedHeart = 2, FullHealth = 1 }, -- Raw Liver
    [C_ID .. 17] = { Key = 99 }, -- Skeleton Key
    [C_ID .. 18] = { Coin = 99 }, -- Dollar
    [C_ID .. 19] = { Bomb = 10 }, -- Boom
    [C_ID .. 20] = { Flight = 1 }, -- Transcendence
    [C_ID .. 22] = { RedHeart = 1 }, -- Lunch
    [C_ID .. 23] = { RedHeart = 1 }, -- Dinner
    [C_ID .. 24] = { RedHeart = 1 }, -- Dessert
    [C_ID .. 25] = { RedHeart = 1 }, -- Breakfast
    [C_ID .. 26] = { RedHeart = 1 }, -- Rotten Meat
    [C_ID .. 27] = { Speed = 0.3 }, -- Wooden Spoon
    [C_ID .. 28] = { Speed = 0.3 }, -- Belt
    [C_ID .. 29] = { Range = 5.25, TearHeight = 0.5 }, -- Mom's Underwear
    [C_ID .. 30] = { Range = 5.25, TearHeight = 0.5 }, -- Mom's Heels
    [C_ID .. 31] = { Range = 5.25, TearHeight = 0.5 }, -- Mom's Lipstick
    [C_ID .. 32] = { Tears = 0.7 }, -- Wire Coat Hanger
    [C_ID .. 34] = { OnActivation = { PersistentRoomEffect = {Damage = 2} } }, -- Book of Belial
    [C_ID .. 45] = { HealingRed = 1 }, -- Yum Heart
    [C_ID .. 46] = { Luck = 1 }, -- Lucky Foot
    [C_ID .. 48] = { TearFlags = { [TearFlags.TEAR_PIERCING] = 1.0 } }, -- Cupid's Arrow
    [C_ID .. 50] = { Damage = 1 }, -- Steven
    [C_ID .. 51] = { Damage = 1, AngelDevilChance = 10 }, -- Pentagram
    [C_ID .. 52] = { TearsMultiplier = 0.4 }, -- Dr. Fetus
    [C_ID .. 71] = { Speed = 0.3, TearHeight = 1.5, SizeDown = 1, Range = -4.25 }, -- Mini Mush
    [C_ID .. 72] = { SoulHeart = 3 }, -- Rosary
    [C_ID .. 74] = { Coin = 25 }, -- A Quarter
    [C_ID .. 75] = { RedHeart = 2, HealingRed = 2, Pill = 1 }, -- PHD
    [C_ID .. 78] = { SoulHeart = 1, AngelDevilChance = 17.5 }, -- Book of Revelations
    [C_ID .. 79] = { Speed = 0.2, Damage = 1, SoulHeart = 1 }, -- The Mark
    [C_ID .. 80] = { Tears = 0.7, Damage = 0.5, SoulHeart = 2 }, -- The Pact
    [C_ID .. 81] = { Life = 9 }, -- Dead Cat
    [C_ID .. 82] = { Speed = 0.3, Flight = 1 }, -- Lord of the Pit
    [C_ID .. 85] = { Card = 1 }, -- Deck of Cards
    [C_ID .. 89] = { TearFlags = { [TearFlags.TEAR_SLOW] = 0.25 } }, -- Spider Bite
    [C_ID .. 90] = { Tears = 0.2, Damage = 1, Speed = -0.2 }, -- Small Rock
    [C_ID .. 92] = { RedHeart = 1, HealingRed = 1, SoulHeart = 2 }, -- Super Bandage
    [C_ID .. 97] =  {Spawns = {RandomPickup = 1}}, -- The Book of Sin

    [C_ID .. 101] = { RedHeart = 1, Speed = 0.3, Tears = 0.2, Damage = 0.3, Range = 0.25, TearHeight = 0.5 }, -- Halo
    [C_ID .. 102] = { Spawns = {Pill = 1} }, -- Mom's Bottle of Pills
    [C_ID .. 103] = { TearFlags = { [TearFlags.TEAR_POISON] = 0.25 } }, -- The Common Cold
    [C_ID .. 106] = { BombDamage = 1.83, Bomb = 5 }, -- Mr. Mega
    [C_ID .. 110] = { Range = 0.25, TearHeight = 0.5 }, -- Mom's Contacts
    [C_ID .. 115] = { TearFlags = { [TearFlags.TEAR_SPECTRAL] = 1 }}, -- Ouija Board
    [C_ID .. 118] = { TearsMultiplier = 0.33 }, -- Brimstone
    [C_ID .. 119] = { RedHeart = 1, Speed = 0.3, HealingRed = 4 }, -- Blood Bag
    [C_ID .. 120] = { Speed = 0.3, Tears = 1.7, DamageMultiplier = 0.9, Damage = -0.4 }, -- Odd Mushroom (Thin)
    [C_ID .. 121] = { EmptyHeart = 1, Damage = 0.3, Range = 0.25, TearHeight = 0.5, Speed = -0.1 }, -- Odd Mushroom (Large)
    [C_ID .. 125] = { Bomb = 5 }, -- Bobby-Bomb
    [C_ID .. 129] = { EmptyHeart = 2, Speed = -0.2, HealingRed = 0.5 }, -- Bucket of Lard
    [C_ID .. 137] = { Bomb = 5 }, -- Remote Detonator
    [C_ID .. 138] = { RedHeart = 1, Damage = 0.3 }, -- Stigmata
    [C_ID .. 140] = { Bomb = 5 }, -- Bob's Curse
    [C_ID .. 141] = { Spawns = {RandomCoin = 7} }, -- Pageant Boy
    [C_ID .. 143] = { Speed = 0.3, ShotSpeed = 0.2 }, -- Speed Ball
    [C_ID .. 145] = { Spawns = {BlueFly = {2,4}} }, -- Guppy's Head 
    [C_ID .. 146] = { EternalHeart = 1 }, -- Prayer Card
    [C_ID .. 149] = { Damage = 40, TearsMultiplier = 0.5, TearDelay = 10 }, -- Ipecac
    [C_ID .. 152] = { TearsMultiplier = 0.5, DamageMultiplier = 0.65 }, -- Technology 2
    [C_ID .. 153] = { TearsMultiplier = 0.48, TearDelay = 3 }, -- Mutant Spider
    [C_ID .. 159] = { Flight = 1, TearFlags = { [TearFlags.TEAR_SPECTRAL] = 1 }}, -- Spirit of the Night
    [C_ID .. 165] = { Damage = 1, ShotSpeed = 0.23 }, -- Cat-o-nine-tails
    [C_ID .. 169] = { Damage = 4, DamageMultiplier = 2, TearsMultiplier = 0.48, TearDelay = 3 }, -- Polyphemus
    [C_ID .. 176] = { RedHeart = 1, ShotSpeed = 0.16 }, -- Stem Cells
    [C_ID .. 179] = { EternalHeart = 1, Flight = 1 }, -- Fate
    [C_ID .. 182] = { RedHeart = 1, DamageMultiplier = 2.3, Damage = 1, Range = 0.38, TearHeight = 0.75, Tears = -0.4, ShotSpeed = -0.25, FullHealth = 1, TearFlags = { [TearFlags.TEAR_HOMING] = 1 } }, -- Sacred Heart
    [C_ID .. 183] = { Tears = 0.7, ShotSpeed = 0.16 }, -- Tooth Picks
    [C_ID .. 184] = { RedHeart = 1, Flight = 1 }, -- Holy Grail
    [C_ID .. 185] = { Flight = 1 }, -- Dead Dove
    [C_ID .. 189] = { RedHeart = 1, Speed = 0.2, Tears = 0.2, Damage = 0.3, Range = 0.5, TearHeight = 1, FullHealth = 1 }, -- SMB Super Fan
    [C_ID .. 190] = { Bomb = 99 }, -- Pyro
    [C_ID .. 193] = { RedHeart = 1, Damage = 0.3 }, -- MEAT!
    [C_ID .. 194] = { ShotSpeed = 0.16, Spawns = {Card = 1} }, -- Magic 8 Ball
    [C_ID .. 195] = { Spawns = {Pill = 4} }, -- Mom's Coin Purse
    [C_ID .. 196] = { Tears = 0.4, Spawns = {SoulHeart = 2} }, -- Squeezy
    [C_ID .. 197] = { Damage = 0.5, Range = 0.25, TearHeight = 0.5 }, -- Jesus Juice
    [C_ID .. 199] = { Key = 2 }, -- Mom's Key

    [C_ID .. 334] = { RedHeart = 3 }, -- The Body
    [C_ID .. 335] = { SoulHeart = 2 }, -- The Soul
    [C_ID .. 336] = { Range = 0.25, TearHeight = -0.5, TearSize = 1.5, ShotSpeed = -0.4 }, -- Dead Onion
    [C_ID .. 339] = { Range = 5.25, TearHeight = 0.5, ShotSpeed = 0.16, BlackHeart = 1 }, -- Safety Pin
    [C_ID .. 340] = { Speed = 0.3, SizeDown = 1, Pill = 1 }, -- Caffeine Pill
    [C_ID .. 341] = { Tears = 0.7, ShotSpeed = 0.16 }, -- Torn Photo
    [C_ID .. 342] = { RedHeart = 1, Tears = 0.7, ShotSpeed = -0.16 }, -- Blue Cap
    [C_ID .. 343] = { Luck = 1, SoulHeart = 1, Key = 2 }, -- Latch Key
    [C_ID .. 344] = { BlackHeart = 1, Bomb = 3 }, -- Match Book
    [C_ID .. 345] = { Damage = 1, Range = 5.25, TearHeight = 0.5 }, -- Synthoil
    [C_ID .. 346] = { RedHeart = 1 }, -- A Snack
}