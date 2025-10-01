-- Enums from Rep+ that are used inside the descriptions files. We need them for the Localization checker

local function TEARFLAG(x)
	return x
end

TearFlags = {
	TEAR_NORMAL = -1,
	TEAR_SPECTRAL = TEARFLAG(0),					-- Ouija board type tear (goes thru obstacles)
	TEAR_PIERCING = TEARFLAG(1),					-- Cupid's arrow type tear (goes thru enemy)
	TEAR_HOMING = TEARFLAG(2),						-- Spoon bender type tear (homes to enemy)
	TEAR_SLOW = TEARFLAG(3),						-- Spider bite type tear (slows on contact)
	TEAR_POISON = TEARFLAG(4),						-- Common cold type tear (poisons on contact)
	TEAR_FREEZE = TEARFLAG(5),						-- Mom's contact type tear (freezes on contact)
	TEAR_SPLIT = TEARFLAG(6),						-- Parasite type tear (splits on collision)
	TEAR_GROW = TEARFLAG(7),						-- Lump of coal type tear (grows by range)
	TEAR_BOOMERANG = TEARFLAG(8),					-- My reflection type tear (returns back)
	TEAR_PERSISTENT = TEARFLAG(9),					-- Polyphemus type tear (Damages the entity and if the damage is more then enemy hp it continues with less damage)
	TEAR_WIGGLE = TEARFLAG(10),						-- Wiggle worm type tear (wiggles)
	TEAR_MULLIGAN = TEARFLAG(11),					-- Mulligan type tear (creates fly on hit)
	TEAR_EXPLOSIVE = TEARFLAG(12),					-- IPECAC type tear (explodes on hit)
	TEAR_CHARM = TEARFLAG(13),						-- Mom's Eyeshadow tear
	TEAR_CONFUSION = TEARFLAG(14),					-- Iron Bar tear
	TEAR_HP_DROP = TEARFLAG(15),					-- These tears cause enemy to drop hearts if killed (33% chance)
	TEAR_ORBIT = TEARFLAG(16),						-- Used for Little Planet (orbit arounds the player)
	TEAR_WAIT = TEARFLAG(17),						-- Anti gravity type tear (floats in place for some time before finally moving) (unset after first update)
	TEAR_QUADSPLIT = TEARFLAG(18),					-- Splits into 4 smaller tears if it hits the ground
	TEAR_BOUNCE = TEARFLAG(19),						-- Bounce off of enemies, walls, rocks (Higher priority than PERSISTENT & PIERCING)
	TEAR_FEAR = TEARFLAG(20),						-- Mom's Perfume type tear of fear (fear on contact)
	TEAR_SHRINK = TEARFLAG(21),						-- Proptosis tears start large and shrink
	TEAR_BURN = TEARFLAG(22),						-- Fire Mind tears cause Burn effect on enemies
	TEAR_ATTRACTOR = TEARFLAG(23),					-- Attracts enemies and pickups
	TEAR_KNOCKBACK = TEARFLAG(24),					-- Tear impact pushes enemies back further
	TEAR_PULSE = TEARFLAG(25),						-- Makes the tear pulse
	TEAR_SPIRAL = TEARFLAG(26),						-- Makes the tear path spiral
	TEAR_FLAT = TEARFLAG(27),						-- Makes the tear oval in the direction of travel
	TEAR_SAD_BOMB = TEARFLAG(28),					-- Used by Bombs (Sad Bomb)
	TEAR_BUTT_BOMB = TEARFLAG(29),					-- Used by Bombs (Butt Bomb)
	TEAR_SQUARE = TEARFLAG(30),						-- Used for Hook Worm
	TEAR_GLOW = TEARFLAG(31),						-- Used for GodHead (they will have a glow around them)
	TEAR_GISH = TEARFLAG(32),						-- Used for Gish player tears (to color enemy black on slowing)
	TEAR_MYSTERIOUS_LIQUID_CREEP = TEARFLAG(33),	-- Mysterious Liquid tears spawn damaging green creep when hit
	TEAR_SHIELDED = TEARFLAG(34),					-- Lost Contact tears, block enemy projectiles
	TEAR_GLITTER_BOMB = TEARFLAG(35),				-- Used by Bombs (Glitter Bomb)
	TEAR_SCATTER_BOMB = TEARFLAG(36),				-- Used for Scatter bombs
	TEAR_STICKY = TEARFLAG(37),						-- Used for Sticky bombs and Explosivo tears
	TEAR_CONTINUUM = TEARFLAG(38),					-- Tears loop around the screen
	TEAR_LIGHT_FROM_HEAVEN = TEARFLAG(39),			-- Create damaging light beam on hit
	TEAR_COIN_DROP = TEARFLAG(40),					-- Used by Bumbo, spawns a coin when tear hits
	TEAR_BLACK_HP_DROP = TEARFLAG(41),				-- Enemy drops a black hp when dies
	TEAR_TRACTOR_BEAM = TEARFLAG(42),				-- Tear with this flag will follow parent player's beam
	TEAR_GODS_FLESH = TEARFLAG(43),					-- God's flesh flag to minimize enemies
	TEAR_GREED_COIN = TEARFLAG(44),					-- Greed coin tears that has a chance to generate a coin when hit
	TEAR_CROSS_BOMB = TEARFLAG(45),					-- Bomber Boy
	TEAR_BIG_SPIRAL = TEARFLAG(46),					-- Ouroboros Worm, big radius oscilating tears
	TEAR_PERMANENT_CONFUSION = TEARFLAG(47),		-- Glaucoma tears, permanently confuses enemies
	TEAR_BOOGER = TEARFLAG(48),						-- Booger tears, stick and do damage over time
	TEAR_EGG = TEARFLAG(49),						-- Egg tears, leave creep and spawns spiders or flies
	TEAR_ACID = TEARFLAG(50),						-- Sulfuric Acid tears, can break grid entities
	TEAR_BONE = TEARFLAG(51),						-- Bone tears, splits in 2
	TEAR_BELIAL = TEARFLAG(52),						-- Belial tears, piecing tears gets double damage + homing
	TEAR_MIDAS = TEARFLAG(53),						-- Midas touch tears
	TEAR_NEEDLE = TEARFLAG(54),						-- Needle tears
	TEAR_JACOBS = TEARFLAG(55),						-- Jacobs ladder tears
	TEAR_HORN = TEARFLAG(56),						-- Little Horn tears
	TEAR_LASER = TEARFLAG(57),						-- Technology Zero
	TEAR_POP = TEARFLAG(58),						-- Pop!
	TEAR_ABSORB = TEARFLAG(59),						-- Hungry Tears
	TEAR_LASERSHOT = TEARFLAG(60),					-- Trisagion, generates a laser on top of the tear
	TEAR_HYDROBOUNCE = TEARFLAG(61),				-- Flat Stone
	TEAR_BURSTSPLIT = TEARFLAG(62),					-- Haemolacria
	TEAR_CREEP_TRAIL = TEARFLAG(63),				-- Bob's Bladder
	TEAR_PUNCH = TEARFLAG(64),						-- Knockout Drops
	TEAR_ICE = TEARFLAG(65),						-- Uranus
	TEAR_MAGNETIZE = TEARFLAG(66),					-- Lodestone
	TEAR_BAIT = TEARFLAG(67),						-- Rotten Tomato
	TEAR_OCCULT = TEARFLAG(68),						-- Eye of the Occult
	TEAR_ORBIT_ADVANCED = TEARFLAG(69),				-- Orbiting tears with a more narrow and stable orbit (used by Saturnus and Immaculate Heart)
	TEAR_ROCK = TEARFLAG(70),						-- Rock tears, chance to break rocks, deal extra damage to rock type enemies
	TEAR_TURN_HORIZONTAL = TEARFLAG(71),			-- Brain Worm, tears turn and go horizontally when moving past an enemy
	TEAR_BLOOD_BOMB = TEARFLAG(72),					-- Blood Bombs, leave blood creep on the ground
	TEAR_ECOLI = TEARFLAG(73),						-- E. Coli tears, turn enemies into poop
	TEAR_COIN_DROP_DEATH = TEARFLAG(74),			-- Killed enemies have a chance to drop a random coin (Reverse Hanged Man)
	TEAR_BRIMSTONE_BOMB = TEARFLAG(75),				-- Brimstone Bombs, explosion creates a brimstone cross
	TEAR_RIFT = TEARFLAG(76),						-- Rift tears, creates a black hole on impact
	TEAR_SPORE = TEARFLAG(77),						-- Spore tears, stick to enemies and multiply on enemy death
	TEAR_GHOST_BOMB = TEARFLAG(78),					-- Ghost bombs
	TEAR_CARD_DROP_DEATH = TEARFLAG(79),			-- Killed enemies will drop a random tarot card
	TEAR_RUNE_DROP_DEATH = TEARFLAG(80),			-- Killed enemies will drop a random rune
	TEAR_TELEPORT = TEARFLAG(81),					-- Hit enemies will teleport to a different part of the room
	TEAR_DECELERATE = TEARFLAG(82),					-- Decelerate over time
	TEAR_ACCELERATE = TEARFLAG(83),					-- Accelerate over time
	
	TEAR_EFFECT_COUNT = 84,
	
	-- Reserved flags - cannot be randomly picked
	TEAR_BOUNCE_WALLSONLY = TEARFLAG(104),			-- Similar to TEAR_BOUNCE but only bounces off walls, not enemies
	TEAR_NO_GRID_DAMAGE = TEARFLAG(105),			-- Cannot deal damage to grid entities (used by Saturnus to prevent unfair damage in some rooms)
	TEAR_BACKSTAB = TEARFLAG(106),					-- Deals extra damage from behind and inflicts bleeding
	TEAR_FETUS_SWORD = TEARFLAG(107),				-- Fetuses whack their target with a sword and perform spin attacks
	TEAR_FETUS_BONE = TEARFLAG(108),				-- Fetuses whack their target with a bone club instead of ramming into them
	TEAR_FETUS_KNIFE = TEARFLAG(109),				-- Fetuses carry a knife
	TEAR_FETUS_TECHX = TEARFLAG(110),				-- Fetuses have a Tech X ring around them
	TEAR_FETUS_TECH = TEARFLAG(111),				-- Fetuses keep their distance and occasionally shoot tech lasers at their target
	TEAR_FETUS_BRIMSTONE = TEARFLAG(112),			-- Fetuses shoot a brimstone beam at the first enemy they hit
	TEAR_FETUS_BOMBER = TEARFLAG(113),				-- Fetuses drop a bomb on their first impact with an enemy
	TEAR_FETUS = TEARFLAG(114),						-- Base flag for C Section fetuses

	TEAR_REROLL_ROCK_WISP = TEARFLAG(115),			
	TEAR_MOM_STOMP_WISP = TEARFLAG(116),			
	TEAR_ENEMY_TO_WISP = TEARFLAG(117),				
	TEAR_REROLL_ENEMY = TEARFLAG(118),				-- D10 Wisps, chance to reroll enemy on hit
	TEAR_GIGA_BOMB = TEARFLAG(119),					-- Causes giant explosions that create holes in the ground (for Giga Bombs)
	TEAR_EXTRA_GORE = TEARFLAG(120),				-- Causes enemies to explode into more gibs on death (for Donkey Jawbone)
	TEAR_RAINBOW = TEARFLAG(121),					-- Causes lasers to visually cycle between rainbow colors
	TEAR_DETONATE = TEARFLAG(122),					-- Can be detonated by Remote Detonator
	TEAR_CHAIN = TEARFLAG(123),						-- Akeldama tears, stick to each other and form a chain that can be swung around
	TEAR_DARK_MATTER = TEARFLAG(124),				-- Used to identify Dark Matter tears
	TEAR_GOLDEN_BOMB = TEARFLAG(125),				-- Used to identify bombs dropped while having a golden bomb
	TEAR_FAST_BOMB = TEARFLAG(126),					-- Used to identify bombs dropped while having Fast Bombs
	TEAR_LUDOVICO = TEARFLAG(127),					-- Used as a weapon for Ludovico Technique
}

PillColor = {
	PILL_NULL = 0,
	PILL_BLUE_BLUE = 1,
	PILL_WHITE_BLUE = 2,
	PILL_ORANGE_ORANGE = 3,
	PILL_WHITE_WHITE = 4,
	PILL_REDDOTS_RED = 5,
	PILL_PINK_RED = 6,
	PILL_BLUE_CADETBLUE = 7,
	PILL_YELLOW_ORANGE = 8,
	PILL_ORANGEDOTS_WHITE = 9,
	PILL_WHITE_AZURE = 10,
	PILL_BLACK_YELLOW = 11,
	PILL_WHITE_BLACK = 12,
	PILL_WHITE_YELLOW = 13,
	--NUM_PILLS = 14
	
	NUM_STANDARD_PILLS = 14,
	PILL_GOLD = 14,
	NUM_PILLS = 15,
	PILL_GIANT_FLAG = 0x800,
	PILL_COLOR_MASK = 0x7ff,
}