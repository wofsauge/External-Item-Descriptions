-- AB+ Modular Descriptions
-- Generates item descriptions based on stat changes defined in statValues
local C_ID = "5.100."
local T_ID = "5.350."
local Pill_ID = "5.70."
local Card_ID = "5.300."

EID.ItemStats = {

---------- Collectibles ----------

    [C_ID .. 1] = { Tears = 0.7 }, -- The Sad Onion
    [C_ID .. 2] = { TearsMultiplier = 0.48, TearDelay = 3 }, -- The Inner Eye
    [C_ID .. 3] = { TearEffect = "Homing" }, -- Spoon Bender
    [C_ID .. 4] = { Damage = 0.5, DamageMultiplier = 1.5 }, -- Cricket's Head
    [C_ID .. 5] = { Range = 1.5, TearHeight = 1, ShotSpeed = 0.6 }, -- My Reflection
    [C_ID .. 6] = { Tears = 1.5, TearHeight = 0.76, Range = -17.62 }, -- Number One
    [C_ID .. 7] = { Damage = 1 }, -- Blood of the Martyr
	[C_ID .. 8] = { DamagePerTear = 3.5 }, -- Brother Bobby
    [C_ID .. 10] = { Flies = 2, BlockProjectiles = true }, -- Halo of Flies
    [C_ID .. 11] = { Life = 1 }, -- 1up!
    [C_ID .. 12] = { RedHeart = 1, Speed = 0.3, Damage = 0.3, DamageMultiplier = 1.5, Range = 5.25, TearHeight = 0.5, SizeUp = 1, FullHealth = 1 }, -- Magic Mushroom
    [C_ID .. 13] = { Speed = -0.1 }, -- The Virus
    [C_ID .. 14] = { Speed = 0.6, Range = 5.25, TearHeight = 0.5 }, -- Roid Rage
    [C_ID .. 15] = { RedHeart = 1, FullHealth = 1 }, -- <3
    [C_ID .. 16] = { RedHeart = 2, FullHealth = 1 }, -- Raw Liver
    [C_ID .. 17] = { Key = 99 }, -- Skeleton Key
    [C_ID .. 18] = { Coin = 99 }, -- Dollar
    [C_ID .. 19] = { Bomb = 10 }, -- Boom
    [C_ID .. 20] = { Flight = true }, -- Transcendence
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
    [C_ID .. 34] = { HeldEffect = {AngelDevilChance = 12.5}, RoomEffect = {Damage = 2} }, -- Book of Belial
    [C_ID .. 35] = { DamageToAllEnemies = 40 }, -- The Necronomicon
    [C_ID .. 37] = { Variables = { [1] = 110 } }, -- Mr. Boom
    [C_ID .. 45] = { HealingRed = 1 }, -- Yum Heart
    [C_ID .. 46] = { Luck = 1 }, -- Lucky Foot
    [C_ID .. 48] = { TearEffect = "Piercing" }, -- Cupid's Arrow
    [C_ID .. 49] = { Variables = { [1] = 26, [2] = 0.9 } }, -- Shoop da Whoop!
    [C_ID .. 50] = { Damage = 1 }, -- Steven
    [C_ID .. 51] = { Damage = 1, AngelDevilChance = 10 }, -- Pentagram
    [C_ID .. 52] = { TearsMultiplier = 0.4 }, -- Dr. Fetus
    [C_ID .. 55] = { LuckChance = {Top = 1, Bottom = 2, Multiplier = 0.5 } }, -- Mom's Eye
    [C_ID .. 57] = { ContactDamagePerSecond = 75 }, -- Distant Admiration
    [C_ID .. 58] = { TimedEffect = { Duration = 10, Invincibility = true} }, -- Book of Shadows
	[C_ID .. 67] = { DamagePerTear = 3.5 }, -- Sister Maggy
    [C_ID .. 70] = { Speed = 0.4, Damage = 1 }, -- Growth Hormones
    [C_ID .. 71] = { Speed = 0.3, TearHeight = 1.5, SizeDown = 1, Range = -4.25 }, -- Mini Mush
    [C_ID .. 72] = { SoulHeart = 3 }, -- Rosary
    [C_ID .. 74] = { Coin = 25 }, -- A Quarter
    [C_ID .. 75] = { HealingRed = 2, Spawns = {Pill = 1} }, -- PHD
    [C_ID .. 77] = { TimedEffect = { Duration = 6, Speed = 0.28, Invincibility = true, CantShoot = true, PlayerContactDamage = 40 } }, -- My Little Unicorn
    [C_ID .. 78] = { SoulHeart = 1, AngelDevilChance = 17.5 }, -- Book of Revelations
    [C_ID .. 79] = { Speed = 0.2, Damage = 1, SoulHeart = 1 }, -- The Mark
    [C_ID .. 80] = { Tears = 0.7, Damage = 0.5, SoulHeart = 2 }, -- The Pact
    [C_ID .. 81] = { Life = 9 }, -- Dead Cat
    [C_ID .. 82] = { Speed = 0.3, Flight = true }, -- Lord of the Pit
    [C_ID .. 83] = { OnUseEffect = { SoulHeart = 1}, RoomEffect = { Damage = 0.7, Speed = -0.18, PlayerContactDamage = 40 } }, -- The Nail
    [C_ID .. 85] = { Spawns = {Card = 1} }, -- Deck of Cards
    [C_ID .. 87] = { LuckChance = {Top = 1, Bottom = 8 } }, -- Loki's Horns
    [C_ID .. 88] = { ContactDamagePerSecond = 52.5 }, -- Little Chubby
    [C_ID .. 89] = { LuckChance = {Top = 1, Bottom = 4, Multiplier = 0.2 } }, -- Spider Bite
    [C_ID .. 90] = { Tears = 0.2, Damage = 1, Speed = -0.2 }, -- Small Rock
    [C_ID .. 92] = { RedHeart = 1, HealingRed = 1, SoulHeart = 2 }, -- Super Bandage
    [C_ID .. 93] = { TimedEffect = { Duration = 6.5, Invincibility = true, CantShoot = true, PlayerContactDamage = 40 } }, -- The Gamekid
    [C_ID .. 95] = { DamagePerShot = 3.5 }, -- Robo-Baby
    [C_ID .. 97] = { Spawns = {RandomPickup = 1}}, -- The Book of Sin
    [C_ID .. 98] = { Variables = { RANGE = {5,6} } }, -- The Relic
	[C_ID .. 99] = { DamagePerTear = 3.5 }, -- Little Gish
	[C_ID .. 100] = { DamagePerTear = 3.5 }, -- Little Steven

    [C_ID .. 101] = { RedHeart = 1, Speed = 0.3, Tears = 0.2, Damage = 0.3, Range = 0.25, TearHeight = 0.5 }, -- Halo
    [C_ID .. 102] = { Spawns = {Pill = 1} }, -- Mom's Bottle of Pills
    [C_ID .. 103] = { LuckChance = {Top = 1, Bottom = 4, Multiplier = 0.25 } }, -- The Common Cold
    [C_ID .. 106] = { BombDamage = 1.83, Bomb = 5 }, -- Mr. Mega
    [C_ID .. 107] = { Variables = { [1] = 82.5 }, RoomEffect = { Flight = true } }, -- The Pinking Shears
    [C_ID .. 110] = { Range = 0.25, TearHeight = 0.5, LuckChance = {Top = 1, Bottom = 5, Multiplier = 0.15, Maximum = 0.5 } }, -- Mom's Contacts
    [C_ID .. 112] = { Orbital = true, BlockProjectiles = true, ContactDamagePerSecond = 105 },  -- Guardian Angel
    [C_ID .. 113] = { DamagePerTear = 3 }, -- Demon Baby
    [C_ID .. 115] = { TearEffect = "Spectral" }, -- Ouija Board
    [C_ID .. 117] = { ContactDamagePerSecond = 4.3 },  -- Dead Bird
    [C_ID .. 118] = { TearsMultiplier = 0.33, Variables = {[1] = 13, [2] = 0.9} }, -- Brimstone
    [C_ID .. 119] = { RedHeart = 1, Speed = 0.3, HealingRed = 4 }, -- Blood Bag
    [C_ID .. 120] = { Speed = 0.3, Tears = 1.7, DamageMultiplier = 0.9, Damage = -0.4 }, -- Odd Mushroom (Thin)
    [C_ID .. 121] = { EmptyHeart = 1, Damage = 0.3, Range = 0.25, TearHeight = 0.5, Speed = -0.1 }, -- Odd Mushroom (Large)
    [C_ID .. 122] = { EffectList = { Speed = 0.2, Damage = 1.5 } }, -- Whore of Babylon
    [C_ID .. 125] = { Bomb = 5 }, -- Bobby-Bomb
	[C_ID .. 127] = { SingleUseInfo = true }, -- Forget Me Now
    [C_ID .. 128] = { ContactDamagePerSecond = 30 },  -- Forever Alone
    [C_ID .. 129] = { EmptyHeart = 2, Speed = -0.2, HealingRed = 0.5 }, -- Bucket of Lard
    [C_ID .. 137] = { Bomb = 5 }, -- Remote Detonator
    [C_ID .. 138] = { RedHeart = 1, Damage = 0.3 }, -- Stigmata
    [C_ID .. 140] = { Bomb = 5 }, -- Bob's Curse
    [C_ID .. 141] = { Spawns = {RandomCoin = 7} }, -- Pageant Boy
    [C_ID .. 143] = { Speed = 0.3, ShotSpeed = 0.2 }, -- Speed Ball
    [C_ID .. 145] = { Spawns = {BlueFly = {2,4}} }, -- Guppy's Head 
    [C_ID .. 146] = { EternalHeart = 1 }, -- Prayer Card
    [C_ID .. 148] = { Variables = { RANGE = {1,3}} }, -- Infestation
    [C_ID .. 149] = { Damage = 40, TearsMultiplier = 0.5, TearDelay = 10 }, -- Ipecac
    [C_ID .. 150] = { LuckChance = {Top = 1, Bottom = 10 } }, -- Tough Love
    [C_ID .. 152] = { TearsMultiplier = 0.5, DamageMultiplier = 0.65 }, -- Technology 2
    [C_ID .. 153] = { TearsMultiplier = 0.48, TearDelay = 3 }, -- Mutant Spider
	[C_ID .. 154] = { LeftEye = { Damage = 2 } }, -- Chemical Peel
    [C_ID .. 155] = { ContactDamagePerSecond = 17 },  -- The Peeper
	[C_ID .. 158] = { EffectList = { FullMapping = "Exception"} }, -- Crystal Ball
    [C_ID .. 159] = { Flight = true, TearEffect = "Spectral" }, -- Spirit of the Night
    [C_ID .. 162] = { LuckChance = {Top = 1, Bottom = 5, Multiplier = 0.15 } }, -- Celtic Cross
	[C_ID .. 163] = { DamagePerTear = 3.5 }, -- Ghost Baby
    [C_ID .. 165] = { Damage = 1, ShotSpeed = 0.23 }, -- Cat-o-nine-tails
	[C_ID .. 167] = { DamagePerTear = 4 }, -- Harlequin Baby
    [C_ID .. 169] = { Damage = 4, DamageMultiplier = 2, TearsMultiplier = 0.48, TearDelay = 3 }, -- Polyphemus
    [C_ID .. 170] = { DamagePerSecond = 40 }, -- Daddy Longlegs
    [C_ID .. 171] = { DamageToAllEnemies = 10 }, -- Spider Butt
    [C_ID .. 172] = { Orbital = true, BlockProjectiles = true, ContactDamagePerSecond = 225 },  -- Sacrificial Dagger
    [C_ID .. 173] = { Variables = { [1] = 50 } }, -- Mitre
	[C_ID .. 174] = { DamagePerTear = {3, 5} }, -- Rainbow Baby
    [C_ID .. 176] = { RedHeart = 1, ShotSpeed = 0.16 }, -- Stem Cells
    [C_ID .. 179] = { EternalHeart = 1, Flight = 1 }, -- Fate
    [C_ID .. 182] = { RedHeart = 1, DamageMultiplier = 2.3, Damage = 1, Range = 0.38, TearHeight = 0.75, Tears = -0.4, ShotSpeed = -0.25, FullHealth = 1, TearEffect = "Homing" }, -- Sacred Heart
    [C_ID .. 183] = { Tears = 0.7, ShotSpeed = 0.16 }, -- Tooth Picks
    [C_ID .. 184] = { RedHeart = 1, Flight = 1 }, -- Holy Grail
    [C_ID .. 185] = { TearEffect = "Spectral", Flight = true }, -- Dead Dove
    [C_ID .. 186] = { DamageToAllEnemies = 40 }, -- Blood Rights
    [C_ID .. 188] = { DamagePerTear = 3.5 }, -- Abel
    [C_ID .. 189] = { RedHeart = 1, Speed = 0.2, Tears = 0.2, Damage = 0.3, Range = 0.5, TearHeight = 1, FullHealth = 1 }, -- SMB Super Fan
    [C_ID .. 190] = { Bomb = 99 }, -- Pyro
    [C_ID .. 192] = { RoomEffect = { TearEffect = "Homing" } }, -- Telepathy For Dummies
    [C_ID .. 193] = { RedHeart = 1, Damage = 0.3 }, -- MEAT!
    [C_ID .. 194] = { ShotSpeed = 0.16, Spawns = {Card = 1} }, -- Magic 8 Ball
    [C_ID .. 195] = { Spawns = {Pill = 4} }, -- Mom's Coin Purse
    [C_ID .. 196] = { Tears = 0.4, Spawns = {SoulHeart = 2} }, -- Squeezy
    [C_ID .. 197] = { Damage = 0.5, Range = 0.25, TearHeight = 0.5 }, -- Jesus Juice
    [C_ID .. 199] = { Key = 2 }, -- Mom's Key
    [C_ID .. 200] = { LuckChance = {Top = 1, Bottom = 10, Multiplier = 1/3 } }, -- Mom's Eyeshadow

    [C_ID .. 201] = { Damage = 0.3, LuckChance = {Top = 1, Bottom = 10, Multiplier = 1/3 } }, -- Iron Bar
    [C_ID .. 206] = { TearDelay = -1, Damage = 1, Variables = { [1] = 105 } }, -- Guillotine
    [C_ID .. 208] = { Damage = 1 }, -- Champion Belt
    [C_ID .. 209] = { Bomb = 5}, -- Butt Bombs
    [C_ID .. 211] = { Variables = { RANGE = {1,2} } }, -- Spiderbaby
    [C_ID .. 213] = { ShotSpeed = -0.15,  }, -- Lost Contact
    [C_ID .. 214] = { Range = 5 }, -- Anemic
    [C_ID .. 215] = { AngelDevilChance = 100 }, -- Goat Head
    [C_ID .. 216] = { Damage = 1, BlackHeart = 3 }, -- Ceremonial Robes
    [C_ID .. 217] = { HealingRed = 1, LuckChance = {Top = 1, Bottom = 20, Multiplier = 2 } }, -- Mom's Wig
    [C_ID .. 218] = { RedHeart = 1 }, -- Placenta
    [C_ID .. 219] = { EmptyHeart = 1, Variables = { [1] = 10 } }, -- Old Bandage
    [C_ID .. 220] = { Bomb = 5}, -- Sad Bombs
    [C_ID .. 222] = { TearDelay = -2 }, -- Anti-Gravity
    [C_ID .. 223] = { Bomb = 5}, -- Pyromaniac
    [C_ID .. 224] = { TearDelay = -1, TearSizeMultiplier = 1.2, Range = -10,  }, -- Cricket's Body
    [C_ID .. 226] = { RedHeart = 1, SoulHeart = 1, BlackHeart = 1}, -- Black Lotus
    [C_ID .. 227] = { Coin = 3 }, -- Piggy Bank
    [C_ID .. 228] = { TearDelay = -1}, -- Mom's Perfume
    [C_ID .. 229] = { TearsMultiplier = 0.23  }, -- Monstro's Lung
    [C_ID .. 230] = { Speed = 0.2, Damage = 1.5, BlackHeart = 6 }, -- Abaddon
    [C_ID .. 231] = { LuckChance = {Top = 1, Bottom = 10, Multiplier = 0.5 } }, -- Ball of Tar
    [C_ID .. 232] = { Speed = 0.3 }, -- Stop Watch
    [C_ID .. 233] = { TearEffect = "Spectral", TearHeight = 7 }, -- Tiny Planet
    [C_ID .. 237] = { Damage = 1.5, Tears = -0.3, TearSizeMultiplier = 2, TearEffect = "Piercing" }, -- Death's Touch
    [C_ID .. 238] = { AngelChance = 25 }, -- Key Piece 1
    [C_ID .. 239] = { AngelChance = 25 }, -- Key Piece 2
    [C_ID .. 240] = { RandomStatUp = 4, RandomStatDown = 2 }, -- Experimental Treatment
    [C_ID .. 251] = { Spawns = { Card = 1 }  }, -- Starter Deck
    [C_ID .. 252] = { Spawns = { Pill = 1 } }, -- Little Baggy
    [C_ID .. 253] = { RedHeart = 1, Luck = 1 }, -- Magic Scab
    [C_ID .. 254] = { TearHeight = 0.5, LeftEye = { Damage = 1, Range = 5 } }, -- Blood Clot
    [C_ID .. 255] = { Tears = 0.5, ShotSpeed = 0.2 }, -- Screw
    [C_ID .. 256] = { Bomb = 5,  }, -- Hot Bombs
    [C_ID .. 257] = { LuckChance = {Top = 1, Bottom = 10, Multiplier = 0.7 } }, -- Fire Mind
    [C_ID .. 259] = { Damage = 1, LuckChance = {Top = 1, Bottom = 3, Multiplier = 0.1 }}, -- Dark Matter
    [C_ID .. 260] = { BlackHeart = 1, AngelDevilChance = 15 }, -- Black Candle
    [C_ID .. 261] = { DamageMultiplier = 2 }, -- Proptosis
    [C_ID .. 262] = { BlackHeart = 1 }, -- Missing Page 2
    [C_ID .. 264] = { Orbital = true, ContactDamagePerSecond = 22.5 },  -- Smart Fly
    [C_ID .. 267] = { DamagePerShot = 3.5 },  -- Robo Baby 2.0
    [C_ID .. 270] = { DamagePerSecond = 3.2 },  -- Leech
    [C_ID .. 272] = { Variables = { [1] = 60 } }, -- BBF
    [C_ID .. 273] = { Variables = { [1] = 60 } }, -- Bob's Brain
    [C_ID .. 274] = { ContactDamagePerSecond = 75 },  -- Best Bud
    [C_ID .. 275] = { Variables = { [1] = 31.5 } }, -- Lil Brimstone
    [C_ID .. 277] = { ContactDamagePerSecond = 4 },  -- Lil Haunt
    [C_ID .. 279] = { ContactDamagePerSecond = 30 },  -- Big Fan
    [C_ID .. 288] = { Spawns = { BlueSpider= { 1 , 4 } } }, -- Box of Spiders
    [C_ID .. 292] = { BlackHeart = 1}, -- Satanic Bible
    [C_ID .. 293] = { Variables = { [1] = 440 } }, -- Head of Krampus
	[C_ID .. 297] = { SingleUseInfo = true }, -- Pandora's Box
    [C_ID .. 298] = { TimedEffect = { Duration = 6, Speed = 0.28, Invincibility = true, CantShoot = true } }, -- Unicorn Stump
    [C_ID .. 299] = { Speed = -0.3 }, -- Taurus

    [C_ID .. 300] = { Speed = 0.25 }, -- Aries
    [C_ID .. 301] = { SoulHeart = 3 }, -- Cancer
    [C_ID .. 302] = { SizeUp = 1 }, -- Leo
    [C_ID .. 304] = { CoinBombKey = 6 }, -- Libra
    [C_ID .. 305] = { TearEffect = "Poison" }, -- Scorpio
    [C_ID .. 306] = { Speed = 0.2, TearEffect = "Piercing" }, -- Sagittarius
    [C_ID .. 307] = { RedHeart = 1, Speed = 0.1, TearDelay = -1, Damage = 0.5, Range = 1.5, CoinBombKey = 1 }, -- Capricorn
    [C_ID .. 309] = { TearDelay = -1, TearSizeMultiplier = 1.25 }, -- Pisces
    [C_ID .. 310] = { DamageMultiplier = 2, ShotSpeed = -0.5, TearsMultiplier = 0.5 }, -- Eve's Mascara
    [C_ID .. 312] = { RedHeart = 1, HealingRed = 1 }, -- Maggy's Bow
    [C_ID .. 314] = { RedHeart = 1, Speed = -0.4 }, -- Thunder Thighs
    [C_ID .. 316] = { Variables = { [1] = 4 } }, -- Cursed Eye
    [C_ID .. 318] = { ContactDamagePerSecond = 6 },  -- Gemini
    [C_ID .. 320] = { ContactDamagePerSecond = 37.5 },  -- ???'s Only Friend
    [C_ID .. 321] = { ContactDamagePerSecond = 10.7 },  -- Samson's Chains
    [C_ID .. 330] = { TearsMultiplier = 4, TearDelay = -2, DamageMultiplier = 0.2, TearSizeMultiplier = 0.5 }, -- Soy Milk
    [C_ID .. 331] = { Damage = 0.5, Range = 1.2, Tears = -0.3,TearHeight = 0.8, ShotSpeed = -0.3, TearEffect = "Homing" }, -- Godhead
    [C_ID .. 334] = { RedHeart = 3 }, -- The Body
    [C_ID .. 335] = { SoulHeart = 2 }, -- The Soul
    [C_ID .. 336] = { Range = 0.25, TearSizeMultiplier = 1.5, TearHeight = -0.5, ShotSpeed = -0.4, TearEffect = {"Spectral", "Piercing"} }, -- Dead Onion
    [C_ID .. 339] = { Range = 5.25, TearHeight = 0.5, ShotSpeed = 0.16, BlackHeart = 1 }, -- Safety Pin
    [C_ID .. 340] = { Speed = 0.3, SizeDown = 1, Spawns = { Pill = 1}  }, -- Caffeine Pill
    [C_ID .. 341] = { Tears = 0.7, ShotSpeed = 0.16,  }, -- Torn Photo
    [C_ID .. 342] = { RedHeart = 1, Tears = 0.7, ShotSpeed = -0.16,  }, -- Blue Cap
    [C_ID .. 343] = { Luck = 1, SoulHeart = 1, Spawns = { Key = 2}  }, -- Latch Key
    [C_ID .. 344] = { BlackHeart = 1, Spawns = { Bomb = 3} }, -- Match Book
    [C_ID .. 345] = { Damage = 1, Range = 5.25, TearHeight = 0.5 }, -- Synthoil
    [C_ID .. 346] = { RedHeart = 1 }, -- A Snack
	[C_ID .. 347] = { SingleUseInfo = true }, -- Diplopia
    [C_ID .. 349] = { Variables = { [1] = 56 } }, -- Wooden Nickel
    [C_ID .. 353] = { Bomb = 5 }, -- Bomber Boy
    [C_ID .. 354] = { RedHeart = 1, Spawns = { RandomTrinket = 1 } }, -- Crack Jacks
    [C_ID .. 355] = { Range = 1.25, Luck = 1, TearHeight = 0.5 }, -- Mom's Pearls
    [C_ID .. 358] = { TearEffect = "Spectral" }, -- The Wiz
    [C_ID .. 359] = { Damage = 1.5 }, -- 8 Inch Nails
    [C_ID .. 363] = { Orbital = true, ContactDamagePerSecond = 105 },  -- Sworn Protector
    [C_ID .. 364] = { ContactDamagePerSecond = 45 },  -- Friend Zone
    [C_ID .. 365] = { ContactDamagePerSecond = 105 },  -- Lost Fly
    [C_ID .. 366] = { Bomb = 5, Variables = { RANGE = {2,4} } }, -- Scatter Bombs
    [C_ID .. 367] = { Bomb = 5 }, -- Sticky Bombs
    [C_ID .. 369] = { Range = 2.25, TearHeight = 1.5, TearEffect = "Spectral" }, -- Continuum
    [C_ID .. 370] = { Tears = 0.7, Range = 5.25, TearHeight = 0.5, Spawns = {RandomHeart = 3}  }, -- Mr. Dolly
    [C_ID .. 374] = { LuckChance = {Top = 1, Bottom = 10, Multiplier = 0.9, Maximum = 0.5 } }, -- Holy Light
    [C_ID .. 376] = { Spawns = { RandomPickup = 3 } }, -- Restock
    [C_ID .. 379] = { TearSizeMultiplier = 2, TearEffect = "Spectral" }, -- Pupula Duplex
    [C_ID .. 380] = { Coin = 5 }, -- Pay To Play
    [C_ID .. 381] = { Tears = 0.7 }, -- Eden's Blessing
    [C_ID .. 390] = { DamagePerTear = 10 }, -- Seraphim
    [C_ID .. 394] = { Tears = 0.7, Range = 3.15, TearHeight = 0.3 }, -- Marked
    [C_ID .. 397] = { Tears = 0.5, TearHeight = 0.5, Range = 5.25, ShotSpeed = 0.16 }, -- Tractor Beam
    [C_ID .. 399] = { Damage = 1 }, -- Maw of the Void

    [C_ID .. 402] = { Spawns = { RandomPickup = { 1,6 } } }, -- Chaos
    [C_ID .. 404] = { BlockProjectiles = true }, -- Farting Baby
    [C_ID .. 405] = { ContactDamagePerSecond = 120 }, -- GB Bug
    [C_ID .. 409] = { BlackHeart = 2 }, -- Empty Vessel
    [C_ID .. 410] = { LuckChance = {Top = 1, Bottom = 30, Maximum = 0.1 } }, -- Evil Eye
    [C_ID .. 415] = { SoulHeart = 2, EffectList = { DamageMultiplier = 2, Range = 5.25, TearHeight = 0.5, ShotSpeed = -0.3 } }, -- Crown Of Light
    [C_ID .. 419] = { Variables = { TEXT = "{{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}" }},  -- Teleport 2.0
    [C_ID .. 426] = { ContactDamagePerSecond = 30, MimicMovement = 3 }, -- Obsessed Fan
    [C_ID .. 428] = { FullHealth = true, SoulHeart = 4 }, -- PJs
    [C_ID .. 430] = { MimicMovement = 1}, -- Papa Fly
    [C_ID .. 431] = { MimicMovement = 2}, -- Multidimensional Baby
    [C_ID .. 432] = { Bomb = 5 }, -- Glitter Bombs
    [C_ID .. 433] = { ContactDamagePerSecond = 5 }, -- My Shadow
    [C_ID .. 435] = { DamagePerTear = 3.5 }, -- Lil Loki
    [C_ID .. 438] = { Tears = 0.75, SoulHeart = 1, SizeDown = true }, -- Binky
    [C_ID .. 439] = { Spawns = { RandomTrinket = 1 }, HeldEffect = { Luck = 1} }, -- Mom's Box
    [C_ID .. 440] = { Speed = -0.2, Range = -17, TearHeight = 2 }, -- Kidney Stone
    [C_ID .. 442] = { EffectList = {Tears = 0.75, Range = 1.5, TearHeight = 1, ShotSpeed = 0.2}}, -- Dark Prince's Crown
    [C_ID .. 443] = { Tears = 0.3, LuckChance = {Top = 1, Bottom = 15 } }, -- Apple!
    [C_ID .. 445] = { Speed = 0.1, Damage = 0.3,  }, -- Dog Tooth
    [C_ID .. 449] = { SoulHeart = 1 }, -- Metal Plate
    [C_ID .. 451] = { Spawns = {Card = 1} }, -- Tarot Cloth
    [C_ID .. 453] = { Range = 1.5, TearHeight = 1 }, -- Compound Fracture
    [C_ID .. 455] = { Range = 1.5, TearHeight = 1 }, -- Dad's Lost Coin
    [C_ID .. 456] = { RedHeart = 1 }, -- Moldy Bread
    [C_ID .. 457] = { SoulHeart = 1 }, -- Cone Head
    [C_ID .. 458] = { Spawns = { RandomTrinket = 1 } }, -- Belly Button
	[C_ID .. 459] = { Variables = { [1] = 60 } }, -- Sinus Infection
    [C_ID .. 461] = { LuckChance = {Top = 1, Bottom = 7, Maximum = 0.5 } }, -- Parasitoid
    [C_ID .. 462] = { Range = 1.5, TearHeight = 1, TearEffect = "Piercing" }, -- Eye of Belial
    [C_ID .. 463] = { Damage = 0.3 }, -- Sulfuric Acid
    [C_ID .. 464] = { SoulHeart = 2 }, -- Glyph of Balance
    [C_ID .. 465] = { Tears = 0.3 }, -- Analog Stick
    [C_ID .. 468] = { ContactDamagePerSecond = 30, MimicMovement = 1, Variables = { [1] = 600 } }, -- Shade
    [C_ID .. 470] = { ContactDamagePerSecond = 30 }, -- Hushy
    [C_ID .. 473] = { ContactDamagePerSecond = 40.5, BlockProjectiles = true }, -- Big Chubby
    [C_ID .. 474] = { BlockProjectiles = true }, -- Tonsil
	[C_ID .. 475] = { SingleUseInfo = true, DamageToAllEnemies = "9,999,999" }, -- Plan C
	[C_ID .. 481] = { RandomStatUp = 1, RandomStatDown = 1 }, -- Dataminer
	[C_ID .. 483] = { SingleUseInfo = true, EffectList = { DamageToAllEnemies = 200 } }, -- Mama Mega!
    [C_ID .. 487] = { RoomEffect = { Range = 5 }, EffectList = { Damage = 0.2 } }, -- Potato Peeler
	[C_ID .. 490] = { SingleUseInfo = true }, -- Eden's Soul
    [C_ID .. 491] = { Variables = { [1] = 3 } }, -- Acid Baby
    [C_ID .. 492] = { Luck = 1 }, -- YO LISTEN!
    [C_ID .. 493] = { EffectList = { Damage = 0.2 } }, -- Adrenaline
    [C_ID .. 496] = { LuckChance = {Top = 1, Bottom = 30, Multiplier = 2 } }, -- Euthanasia
    [C_ID .. 499] = { AngelChance = 100 }, -- Eucharist
    [C_ID .. 500] = { Variables = { RANGE = {5,6} } }, -- Sack of Sacks

    [C_ID .. 503] = { LuckChance = {Top = 1, Bottom = 20,  Maximum = 0.2 } }, -- Little Horn
    [C_ID .. 509] = { DamagePerTear = 3.5, ContactDamagePerSecond = 30 }, -- Bloodshot Eye
    [C_ID .. 511] = { ContactDamagePerSecond = 30 }, -- Angry Fly
    [C_ID .. 513] = { Damage = 0.1, SoulHeart = 1 }, -- Bozo
	[C_ID .. 515] = { SingleUseInfo = true }, -- Mystery Gift
    [C_ID .. 517] = { Bomb = 7 }, -- Fast Bombs
    [C_ID .. 531] = { DamageMultiplier = 1.31, TearsMultiplier = 0.5, TearDelay = 10  }, -- Haemolacria
	[C_ID .. 536] = { SingleUseInfo = true }, -- Sacrificial Altar
    [C_ID .. 535] = { HealingRed = 1, SoulHeart = 1 }, -- Blanket
    [C_ID .. 538] = { Spawns = { RandomTrinket = 3 } }, -- Marbles
    [C_ID .. 541] = { BoneHeart = 1, Spawns = { RedHeart = 3 } }, -- Marrow
    [C_ID .. 542] = { Orbital = true }, -- Slipped Rib
	[C_ID .. 543] = { EffectList = { TearsMultiplier = 2} }, -- Hallowed Ground
    [C_ID .. 547] = { Tears = 0.7, BoneHeart = 1 }, -- Divorce Papers
    [C_ID .. 548] = { ContactDamagePerSecond = 7 }, -- Jaw Bone
	[C_ID .. 549] = { EffectList = { Tears = 0.5} }, -- Brittle Bones

---------- Trinkets ----------

    [T_ID .. 7] = { AngelChance = 50 }, -- Rosary Bead
    [T_ID .. 8] = { LuckChance = { Top = 1, Bottom = 20, Multiplier = 0.5 }, ItemDescription = "5.100.93" }, -- Cartridge
    [T_ID .. 10] = { Tears = 0.3 }, -- Wiggle Worm
	[T_ID .. 16] = { Variables = {[1] = 60 } }, -- Mom's Toenail
    [T_ID .. 21] = { Variables = { TEXT = "{{IND}}{{NameC327}}#{{IND}}{{NameC328}}#{{IND}}{{NameT48}}#{{IND}}{{NameT23}}" } }, -- Mysterious Paper
    [T_ID .. 26] = { Range = 10 }, -- Hook Worm
    [T_ID .. 27] = { ShotSpeed = 0.5 }, -- Whip Worm
    [T_ID .. 30] = { LuckChance = {Top = 1, Bottom = 10, Multiplier = 0.5 } }, -- Pinky Eye
    [T_ID .. 31] = { LuckChance = {Top = 1, Bottom = 10, Multiplier = 0.5 } }, -- Push Pin
    [T_ID .. 35] = { Damage = 2 }, -- Curved Horn
    [T_ID .. 37] = { Speed = 0.15 }, -- Goat Hoof
    [T_ID .. 39] = { TearsDelay = -2 }, -- Cancer
    [T_ID .. 40] = { LuckChance = {Top = 1, Bottom = 5, Multiplier = 0.5 } }, -- Red Patch
    [T_ID .. 42] = { Luck = 1 }, -- Lucky Toe
    [T_ID .. 46] = { LuckChance = {Top = 1, Bottom = 10, Multiplier = 0.5 } }, -- Isaac's Fork
    [T_ID .. 48] = { LuckChance = {Top = 1, Bottom = 20, Multiplier = 0.3, Maximum = 0.5 } }, -- A Missing Page
    [T_ID .. 54] = { DamagePerTear = 3.5 }, -- Isaac's Head
    [T_ID .. 57] = { DamagePerTear = 3.5 }, -- ???'s Soul
    [T_ID .. 58] = { LuckChance = {Top = 1, Bottom = 15, Multiplier = 1.4 } }, -- Samson's Lock
    [T_ID .. 59] = { LuckChance = {Top = 1, Bottom = 4 } }, -- Cain's Eye
    [T_ID .. 60] = { LuckChance = {Formula = "Additive", Top = 1, Bottom = 20, Multiplier = 0.125 } }, -- Eve's Bird Foot  (Change calculation is not documented on the wiki. This is a best guess)
    [T_ID .. 65] = { RangeMultiplier = 2, TearHeightMultiplier = 0.5 }, -- Tape Worm
    [T_ID .. 66] = { Range = 4, ShotSpeed = -0.4, TearHeight = 2 }, -- Lazy Worm
    [T_ID .. 67] = { Variables = { TEXT = "{{IND}}{{NameC105}}#{{IND}}{{NameC406}}#{{IND}}{{NameC386}}#{{IND}}{{NameC166}}" } }, -- Cracked Dice
	[T_ID .. 80] = { Variables = { [1] = 0.2 } }, -- Black Feather
    [T_ID .. 92] = { TearDelayMultiplier = 0.8 }, -- Cracked Crown
    [T_ID .. 95] = { LuckChance = {Top = 1, Bottom = 33 } }, -- Black Tooth
    [T_ID .. 96] = { Range = 4, TearHeight = 2, TearEffect = "Spectral", LuckChance = {Formula = "Additive", Top = 1, Bottom = 10, Multiplier = 0.1 } }, -- Ouroboros Worm (Initial Luck chance is not documented on the wiki. This is a best guess)
    [T_ID .. 97] = { Variables = { RANGE = {12,20} } }, --Tonsil
    [T_ID .. 98] = { Variables = { [1] = 60 } }, -- Nose Goblin
    [T_ID .. 100] = { EffectList = { Speed = 0.25, Tears = 0.2, Damage = 0.5, Range = 0.75, ShotSpeed = 0.1, Luck = 1 } }, -- Vibrant Bulb
    [T_ID .. 101] = { EffectList = { Speed = 0.5, Tears = 0.4, Damage = 1.5, Range = 1.5, ShotSpeed = 0.3, Luck = 2 } }, -- Dim Bulb
    [T_ID .. 104] = { Variables = { [1] = 2 } }, -- Wish Bone
    [T_ID .. 105] = { Variables = { [1] = 2 } }, -- Bag Lunch
	[T_ID .. 128] = { Variables = { [1] = 2 } }, -- Finger Bone

---------- Cards ----------

    [Card_ID .. 2] = { RoomEffect = { TearEffect = "Homing" } }, -- I - The Magician
    [Card_ID .. 4] = { RoomEffect = { Speed = 0.3, Damage = 1.5 }  }, -- III - The Empress
    [Card_ID .. 6] = { Spawns = { SoulHeart = 2 } }, -- V - The Hierophant
    [Card_ID .. 7] = { Spawns = { RedHeart = 2 } }, -- VI - The Lovers
    [Card_ID .. 8] = { TimedEffect = { Duration = 6, Speed = 0.28, Invincibility = true, CantShoot = true, PlayerContactDamage = 40 }  }, -- VII - The Chariot
    [Card_ID .. 12] = { RoomEffect = { RedHeart = 1, Speed = 0.3, Damage = 0.3, DamageMultiplier = 1.5, Range = 5.25, TearHeight = 0.5 } }, -- XI - Strength
    [Card_ID .. 13] = { RoomEffect = { Flight = true } }, -- XII - The Hanged Man
    [Card_ID .. 14] = { DamageToAllEnemies = 40 }, -- XIII - Death
    [Card_ID .. 16] = { RoomEffect = { Damage = 2 } }, -- XV - The Devil
    [Card_ID .. 20] = { FullHealth = true, DamageToAllEnemies = 100, FullMapping = "Exception" }, -- XIX - The Sun
    [Card_ID .. 22] = { FullMapping = "Exception" }, -- XXI - The World
    [Card_ID .. 35] = { SoulHeart = 1 }, -- Dagaz
	[Card_ID .. 36] = { FullMapping = true }, -- Ansuz
    [Card_ID .. 38] = { Spawns = { BlueSpider = 3, BlueFly = 3} }, -- Berkano
    [Card_ID .. 39] = { TimedEffect = { Duration = 30, Invincibility = true} }, -- Algiz
    [Card_ID .. 41] = { DamageToAllEnemies = 40 }, -- Black Rune
    [Card_ID .. 52] = { RoomEffect = { Damage = 7, Range = 30, SizeUp = true } }, -- Huge Growth
    [Card_ID .. 53] = { Spawns = { Card = 3 } }, -- Ancient Recall
    [Card_ID .. 54] = { RoomEffect = { Speed = 0.5, ShotSpeed = -1 } }, -- Era Walk

---------- Pills ----------

    [Pill_ID .. 3] = { SoulHeart = 2 }, -- Balls of Steel
    [Pill_ID .. 6] = { FullHealth = true }, -- Full Health
    [Pill_ID .. 7] = { RedHeart = -1 }, -- Health Down
    [Pill_ID .. 8] = { EmptyHeart = 1 }, -- Health Up
    [Pill_ID .. 9] = { NoEffect = true }, -- I Found Pills
    [Pill_ID .. 10] = { NoEffect = true, EffectList = { RedHeart = 1 } }, -- Puberty
    [Pill_ID .. 11] = { Flies = 1 }, -- Pretty Fly
    [Pill_ID .. 12] = { Range = -2 }, -- Range Down
    [Pill_ID .. 13] = { Range = 2.5 }, -- Range Up
    [Pill_ID .. 14] = { Speed = -0.12 }, -- Speed Down
    [Pill_ID .. 15] = { Speed = 0.15 }, -- Speed Up
    [Pill_ID .. 16] = { Tears = -0.28 }, -- Tears Down
    [Pill_ID .. 17] = { Tears = 0.35 }, -- Tears Up
    [Pill_ID .. 18] = { Luck = -1 }, -- Luck Down
    [Pill_ID .. 19] = { Luck = 1 }, -- Luck Up
    [Pill_ID .. 21] = { Spawns = {Battery = {1,2}} }, -- 48 Hour Energy!
    [Pill_ID .. 22] = { Spawns = {RedHeart = {1,4}} }, -- Hematemesis
    [Pill_ID .. 33] = { SizeUp = true }, -- One makes you larger
    [Pill_ID .. 34] = { SizeDown = true }, -- One makes you small
    [Pill_ID .. 37] = { ItemDescription = "5.100.93" }, -- Power Pill! (Reuse The Gamekid)
    [Pill_ID .. 39] = { Spawns = {BlueFly = 3} }, -- Friends Till The End!
    [Pill_ID .. 46] = { TimedEffect = { Duration = 6, Invincibility = true, CantShoot = true } }, -- Feels like I'm walking on sunshine!
}

-- Splits the input text at '#' and extracts stat name and value from each part
--[[
local todo ={
}
local function extractStats(text)
    local result = {}
    for part in string.gmatch(text, "[^#]+") do
        local stat, value = string.match(part, "{{(%w+)}}%s*([%+%-]?[%d%.]+)")
        if stat and value then
            table.insert(result, stat .. " = " .. value:gsub("+",""))
        end
    end
    return result
end

-- Example usage:
for k, v in ipairs(todo) do
    local statString = ""
    local stats = extractStats(v[3])
    for _, line in ipairs(stats) do
        statString = statString ..line.. ", "
    end
    
    print("[C_ID .. "..v[1].."] = { "..statString.." }, -- "..v[2])
    print("[C_ID .. "..v[1].."] = \""..v[3].."\", -- "..v[2])
end
]]--
