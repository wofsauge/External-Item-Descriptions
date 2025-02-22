---------------------------------------
-----  Basic English descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "en_us"

---------- Collectibles ----------

local collectibles = {
	-- Change: added "Creep persists until you exit the room"
	[56] = {"56", "Lemon Mishap", "Spills a pool of creep#The creep deals 24 damage per second#Creep persists until you exit the room"}, -- Lemon Mishap
	-- Change: added "Persists between rooms if player is at 1/2 hearts"
	[117] = {"117", "Dead Bird", "Taking damage spawns a bird that attacks enemies#The bird deals 4.3 contact damage per second#Persists between rooms if player is at 1/2 hearts"}, -- Dead Bird
	-- Change: Complete rewrite
	[351] = {"351", "Mega Bean", "Deals 100 damage and petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Can open secret rooms and break rocks"}, -- Mega Bean
	-- Change: Complete rewrite
	[436] = {"436", "Milk!", "Blocks enemy projectiles#{{Tears}} After 10 hits, it breaks and grants a Tears up for the remainder of the floor"}, -- Milk!
	-- Change: Complete rewrite
	[447] = {"447", "Linger Bean", "Firing without pause for 4 seconds spawns a poop cloud#The cloud increases its size over 10 seconds#The cloud deals less damage the bigger it gets#It can be moved by shooting it"}, -- Linger Bean
	-- Change: added " and fires radial bursts of tears"
	[470] = {"470", "Hushy", "Bounces around the room#Deals 30 contact damage per second#Stops moving when Isaac shoots#Blocks projectiles when stopped and fires radial bursts of tears"}, -- Hushy
	-- Change: added "Turns item pedestals into glitched items"
	[481] = {"481", "Dataminer", "↑ Random stat up#↓ Random stat down#{{Timer}} Random tear effects for the room#Turns item pedestals into glitched items#{{Blank}} Corrupts all sprites and music in the room"}, -- Dataminer
	-- Change: Complete rewrite
	[510] = {"510", "Delirious", "Spawns a friendly delirium version of a boss#Persists between rooms#{{Warning}} Only one boss can be active at a time#The item-charge is based on the quality of the previously spawned boss"}, -- Delirious
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = {"560", "It Hurts", "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac#Tears leave a pool of creep on impact"}, -- It Hurts
	-- Change: Heals 2 hearts instead of 1/2
	[594] = {"594", "Jupiter", "↑ {{EmptyHeart}} +2 Empty heart containers#↓ {{Speed}} -0.3 Speed#{{HealingRed}} Heals 2 heart#{{Speed}} Speed builds up to +0.5 while standing still#{{Poison}} Moving releases poison clouds#{{Poison}} Poison immunity"}, -- Jupiter
	-- Change: Complete rewrite
	[632] = {"632", "Evil Charm", "↑ {{Luck}} +2 Luck#Immune to {{Burning}} fire damage, {{Confusion}} confusion, {{Fear}} fear, {{Slow}} spider-webs and {{Poison}} poison effects#Grants 1 second immunity to creep"}, -- Evil Charm
	-- Change: Added Shop as a new destination
	[660] = {"660", "Card Reading", "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room#{{Blank}} {{ColorGreen}}Green: {{CR}}{{Shop}} Shop"}, -- Card Reading
	-- Change: Complete rewrite
	[681] = {"681", "Lil Portal", "Double-tapping a fire button launches the portal#Deals contact damage when launched#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming 2-3 pickups spawns a portal to a special room and the familiar disappears for the rest of the floor#The content of the room persists for the rest of the run"}, -- Lil Portal
	-- Change: Added info about the damage based on item quality
	[706] = {"706", "Abyss", "Consumes all item pedestals in the room and spawns a locust familiar for each one#Some items spawn a special locust when consumed#{{Damage}} Locusts deal Isaac's damage multiplied by the item quality consumed:#{{Quality0}} - 0.5x#{{Quality1}} - 0.75x#{{Quality2}} - 1.0x#{{Quality3}} - 1.5x#{{Quality4}} - 2.0x"}, -- Abyss
}
EID:updateDescriptionsViaTable(collectibles, EID.descriptions[languageCode].collectibles)

---------- Trinkets ----------

local trinkets = {
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = {"53", "Tick", "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick, {{Trinket135}} A Lighter, or gulping"}, -- Tick
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = {"97", "Tonsil", "Taking damage 6-12 times spawns a projectile blocking familiar#Caps at 2 familiars"}, -- Tonsil
	-- Change: added "Bombs deal 15% more damage"
	[133] = {"133", "Short Fuse", "Isaac's bombs explode faster#Bombs deal 15% more damage"}, -- Short Fuse
	-- Change: "2%" to "5%"
	[104] = {"104", "Wish Bone", "5% chance to get destroyed and spawn a pedestal item when hit"}, -- Wish Bone
	-- Change: "2%" to "5%"
	[105] = {"105", "Bag Lunch", "{{Collectible22}} 5% chance to get destroyed and spawn Lunch when hit"}, -- Bag Lunch
}
EID:updateDescriptionsViaTable(trinkets, EID.descriptions[languageCode].trinkets)

---------- Cards ----------

local cards = {
	-- Change: Complete rewrite
	[38] = {"38", "Berkano", "{{Collectible706}} Summons 3 Abyss locusts for the room"}, -- Berkano
}
EID:updateDescriptionsViaTable(cards, EID.descriptions[languageCode].cards)


---------- Conditions ----------
EID.descriptions[languageCode].ConditionalDescs["5.100.566"] = nil -- Dream Catcher (Greed) - In Rep+, the dream preview works in greed mode as well, so no changes needed


-- Table that contains commonly used descriptions for abyss synergies
local abyssPresets = {
	noEffect = "No special effect",
	normalTwo = "Two normal locusts",
	smallFour = "Four small locusts",
	blackFear = "Black locust that fears enemies",
	blueConfuse = "Blue locust that knock back and confuse enemies.",
	blueFreeze = "Blue locust that freezes enemies",
	cyanDestroyProjectiles = "Cyan locust that destroys enemy projectiles",
	cyanElectricity = "Cyan locust that creates arcs of electricity dealing 0.1 damage per tick",
	grayConfuse = "Gray locust that confuse enemies",
	grayPetrify = "Gray locust that petrifies enemies",
	grayMagnetize = "Gray locust that magnetizes enemies",
	graySlow = "Light gray locust that slows enemies",
	grayBones = "Light gray locust that creates 1-3 bone shards upon hitting enemies",
	greenPoison = "Green locust that poisons enemies",
	pinkMimic = "Pink locust that randomly mimic the effects of other special locusts",
	pinkCharm = "Pink locust that charms enemies",
	purpleHoming = "Purple homing locust",
	orangeBurn = "Orange burning locust that sets enemies on fire",
	redBleed = "Dark red locust that inflict bleed on enemies",
	redLarge = "Larger red locust",
	whiteBeam = "White, glowing locust that can spawn beams of light that deal deal 3x Isaac's damage",
	whiteGodhead = "White, glowing locust which has a Godhead aura which rapidly deals 2 damage per tick to enemies inside",
	yellowExplode = "Yellow locust that explodes",
	yellowPoisonExplode = "Yellow locust that poisons enemies and explode",
	yellowMimicExplode = "Yellow locust that explodes and randomly mimic the effects of other special locusts",
}

-- Special Locust effects when Item was eaten by Abyss
local abyssSynergies = {
	[4] = abyssPresets.noEffect, -- Cricket's Head
	[6] = "Fast locust that ticks damage slightly quicker", -- Number One
	[7] = abyssPresets.noEffect, -- Blood of the Martyr
	[10] = "Two cyan locusts that destroy enemy projectiles", -- Halo of Flies
	[12] = abyssPresets.redLarge, -- Magic Mushroom
	[19] = abyssPresets.yellowExplode, -- Boom!
	[37] = abyssPresets.yellowExplode, -- Mr. Boom
	[39] = abyssPresets.grayPetrify, -- Mom's Bra
	[40] = abyssPresets.yellowExplode, -- Kamikaze!
	[47] = abyssPresets.yellowExplode, -- Doctor's Remote
	[52] = abyssPresets.yellowExplode, -- Dr. Fetus
	[41] = abyssPresets.blackFear, -- Mom's Pad
	[53] = abyssPresets.grayMagnetize, -- Magneto
	[58] = abyssPresets.cyanDestroyProjectiles, -- Book of Shadows
	[62] = abyssPresets.redBleed, -- Charm of the Vampire
	[63] = abyssPresets.cyanElectricity, -- The Battery
	[65] = abyssPresets.yellowExplode, -- Anarchist Cookbook
	[66] = abyssPresets.graySlow, -- The Hourglass
	[68] = abyssPresets.cyanElectricity, -- Technology
	[69] = abyssPresets.redLarge, -- Chocolate Milk
	[71] = "Smaller red locust", -- Mini Mush
	[73] = abyssPresets.cyanDestroyProjectiles, -- Cube of Meat
	[77] = abyssPresets.cyanDestroyProjectiles, -- My Little Unicorn
	[89] = abyssPresets.graySlow, -- Spider Bite
	[95] = abyssPresets.cyanElectricity, -- Robo Baby
	[99] = abyssPresets.graySlow, -- Little Gish
	[100] = abyssPresets.purpleHoming, -- Little Steven
	[104] = "One normal red locust and two smaller red locusts", -- The Parasite
	[106] = abyssPresets.yellowExplode, -- Mr. Mega
	[108] = abyssPresets.cyanDestroyProjectiles, -- The Wafer
	[110] = abyssPresets.grayPetrify, -- Mom's Contacts
	[111] = abyssPresets.greenPoison, -- The Bean
	[112] = abyssPresets.cyanDestroyProjectiles, -- Guardian Angel
	[114] = "Larger red locust that attacks faster", -- Mom's Knife
	[116] = abyssPresets.cyanElectricity, -- 9 Volt
	[118] = "Larger black locust", -- Brimstone
	[124] = abyssPresets.pinkMimic, -- Dead Sea Scrolls
	[125] = abyssPresets.yellowExplode, -- Bobby-Bomb
	[136] = abyssPresets.yellowExplode, -- Best Friend
	[137] = abyssPresets.yellowExplode, -- Remote Detonator
	[140] = abyssPresets.yellowExplode, -- Bob's Curse
	[149] = abyssPresets.greenPoison, -- Ipecac
	[153] = abyssPresets.smallFour, -- Mutant Spider
	[160] = abyssPresets.whiteBeam, -- Crack the Sky
	[162] = abyssPresets.cyanDestroyProjectiles, -- Celtic Cross
	[164] = abyssPresets.orangeBurn, -- The Candle
	[168] = abyssPresets.yellowExplode, -- Epic Fetus
	[169] = abyssPresets.redLarge, -- Polyphemus
	[171] = abyssPresets.graySlow, -- Spider Butt
	[172] = abyssPresets.cyanDestroyProjectiles, -- Sacrificial Dagger
	[178] = "White, glowing locust that petrifies enemies and can spawn beams of light that deal deal 3x Isaac's damage", -- Holy Water
	[180] = abyssPresets.greenPoison, -- The Black Bean
	[181] = abyssPresets.whiteBeam, -- White Pony
	[182] = "White, slow, glowing and homing locust that can spawn beams of light that deal deal 3x Isaac's damage", -- Sacred Heart
	[187] = abyssPresets.cyanDestroyProjectiles, -- Guppy's Hairball
	[190] = abyssPresets.yellowExplode, -- Pyro
	[191] = abyssPresets.pinkMimic, -- 3 Dollar Bill
	[192] = abyssPresets.purpleHoming, -- Telepathy for Dummies
	[200] = abyssPresets.pinkCharm, -- Mom's Eyeshadow
	[201] = abyssPresets.grayConfuse, -- Iron Bar
	[202] = abyssPresets.grayPetrify, -- Midas' Touch
	[207] = abyssPresets.cyanDestroyProjectiles, -- Ball of Bandages
	[209] = abyssPresets.yellowPoisonExplode, -- Butt Bombs
	[210] = abyssPresets.cyanDestroyProjectiles, -- Gnawed Leaf
	[213] = abyssPresets.cyanDestroyProjectiles, -- Lost Contact
	[220] = abyssPresets.yellowExplode, -- Sad Bombs
	[224] = abyssPresets.smallFour, -- Cricket's Body
	[228] = abyssPresets.blackFear, -- Mom's Perfume
	[230] = abyssPresets.blackFear, -- Abaddon
	[231] = "Black locust that slows enemies", -- Ball of Tar
	[232] = abyssPresets.graySlow, -- Stop Watch
	[242] = abyssPresets.cyanDestroyProjectiles, -- Infamy
	[243] = abyssPresets.cyanDestroyProjectiles, -- Trinity Shield
	[244] = abyssPresets.cyanDestroyProjectiles, -- Tech.5
	[245] = abyssPresets.normalTwo, -- 20/20
	[248] = abyssPresets.redLarge, -- Hive Mind
	[250] = abyssPresets.yellowExplode, -- BOGO Bombs
	[256] = "Yellow burning locust that burn enemies and explode", -- Hot Bombs
	[258] = abyssPresets.pinkMimic, -- Missing No.
	[259] = abyssPresets.blackFear, -- Dark Matter
	[264] = abyssPresets.purpleHoming, -- Smart Fly
	[265] = abyssPresets.cyanDestroyProjectiles, -- Dry Baby
	[266] = abyssPresets.graySlow, -- Juicy Sack
	[267] = abyssPresets.cyanElectricity, -- Robo-Baby 2.0
	[272] = abyssPresets.yellowExplode, -- BBF
	[273] = abyssPresets.yellowPoisonExplode, -- Bob's Brain
	[276] = abyssPresets.blueConfuse, -- Isaac's Heart
	[277] = abyssPresets.blackFear, -- Lil Haunt
	[279] = "Large, very slow, cyan locust that destroys enemy projectiles", -- Big Fan
	[281] = abyssPresets.cyanDestroyProjectiles, -- Punching Bag
	[289] = abyssPresets.orangeBurn, -- Red Candle
	[294] = abyssPresets.blueConfuse, -- Butter Bean
	[298] = abyssPresets.cyanDestroyProjectiles, -- Unicorn Stump
	[300] = abyssPresets.blueConfuse, -- Aries
	[303] = abyssPresets.cyanDestroyProjectiles, -- Virgo
	[309] = abyssPresets.blueConfuse, -- Pisces
	[310] = "Large, slow, black locust", -- Eve's Mascara
	[313] = abyssPresets.cyanDestroyProjectiles, -- Holy Mantle
	[315] = abyssPresets.grayMagnetize, -- Strange Attractor
	[317] = abyssPresets.greenPoison, -- Mysterious Liquid
	[326] = abyssPresets.cyanDestroyProjectiles, -- Breath of Life
	[330] = "Tiny, extremely fast locust that ticks damage quicker", -- Soy Milk
	[331] = abyssPresets.whiteGodhead, -- Godhead
	[336] = "Slow red locust", -- Dead Onion
	[337] = abyssPresets.graySlow, -- Broken Watch
	[338] = abyssPresets.grayPetrify, -- Boomerang
	[347] = abyssPresets.normalTwo, -- Diplopia
	[350] = abyssPresets.greenPoison, -- Toxic Shock
	[351] = "Green locust that poison, knock back and confuse enemies", -- Mega Bean
	[353] = abyssPresets.yellowExplode, -- Bomber Boy
	[356] = abyssPresets.cyanElectricity, -- Car Battery
	[360] = abyssPresets.normalTwo, -- Incubus
	[363] = abyssPresets.cyanDestroyProjectiles, -- Sworn Protector
	[366] = "Two yellow locust that explode", -- Scatter Bombs
	[367] = "Yellow locust that slows enemies and explodes", -- Sticky Bombs
	[371] = abyssPresets.yellowExplode, -- Curse of the Tower
	[372] = abyssPresets.cyanElectricity, -- Charged Baby
	[374] = abyssPresets.whiteBeam, -- Holy Light
	[375] = abyssPresets.cyanDestroyProjectiles, -- Host Hat
	[378] = abyssPresets.yellowExplode, -- Number Two
	[379] = abyssPresets.redLarge, -- Pupula Duplex
	[387] = abyssPresets.graySlow, -- Censer
	[391] = abyssPresets.pinkCharm, -- Betrayal
	[393] = abyssPresets.greenPoison, -- Serpent's Kiss
	[395] = abyssPresets.cyanElectricity, -- Tech X
	[398] = "Blue locust that shrinks enemies", -- God's Flesh
	[401] = abyssPresets.yellowExplode, -- Explosivo
	[402] = abyssPresets.pinkMimic, -- Chaos
	[403] = abyssPresets.pinkMimic, -- Spider Mod
	[404] = "Cyan locust that poisons enemies and destroy enemy projectiles", -- Farting Baby
	[405] = abyssPresets.pinkMimic, -- GB Bug
	[415] = abyssPresets.whiteBeam, -- Crown of Light
	[417] = abyssPresets.whiteGodhead, -- Succubus
	[418] = abyssPresets.pinkMimic, -- Fruit Cake
	[421] = abyssPresets.pinkCharm, -- Kidney Bean
	[423] = abyssPresets.cyanDestroyProjectiles, -- Circle of Protection
	[425] = abyssPresets.graySlow, -- Night Light
	[427] = abyssPresets.yellowExplode, -- Mine Crafter
	[432] = abyssPresets.yellowMimicExplode, -- Glitter Bombs
	[441] = "Big black locust", -- Mega Blast
	[446] = abyssPresets.greenPoison, -- Dead Tooth
	[448] = abyssPresets.redBleed, -- Shard of Glass
	[449] = abyssPresets.cyanDestroyProjectiles, -- Metal Plate
	[453] = abyssPresets.grayBones, -- Compound Fracture
	[457] = abyssPresets.cyanDestroyProjectiles, -- Cone Head
	[459] = abyssPresets.greenPoison, -- Sinus Infection
	[460] = abyssPresets.grayConfuse, -- Glaucoma
	[466] = abyssPresets.greenPoison, -- Contagion
	[473] = "Larger, slower red locust", -- Big Chubby
	[478] = abyssPresets.grayPetrify, -- Pause
	[483] = "Larger yellow locust that explodes", -- Mama Mega
	[488] = abyssPresets.pinkMimic, -- Metronome
	[495] = abyssPresets.orangeBurn, -- Ghost Pepper
	[497] = abyssPresets.grayConfuse, -- Camo Undies
	[502] = abyssPresets.graySlow, -- Large Zit
	[506] = abyssPresets.redBleed, -- Backstabber
	[508] = abyssPresets.redBleed, -- Mom's Razor
	[510] = abyssPresets.pinkMimic, -- Delirious
	[512] = abyssPresets.grayMagnetize, -- Black Hole
	[514] = "Gray locust that petrifies and confuse enemies", -- Broken Modem
	[517] = abyssPresets.yellowExplode, -- Fast Bombs
	[519] = abyssPresets.pinkMimic, -- Lil Delirium
	[520] = abyssPresets.cyanElectricity, -- Jumper Cables
	[524] = abyssPresets.cyanElectricity, -- Technology Zero
	[525] = abyssPresets.cyanDestroyProjectiles, -- Leprosy
	[533] = abyssPresets.whiteBeam, -- Trisagion
	[541] = abyssPresets.grayBones, -- Marrow
	[542] = abyssPresets.grayBones, -- Slipped Rib
	[544] = abyssPresets.grayBones, -- Pointy Rib
	[545] = abyssPresets.grayBones, -- Book of the Dead
	[546] = abyssPresets.grayPetrify, -- Dad's Ring
	[548] = abyssPresets.grayBones, -- Jawbone
	[549] = abyssPresets.grayBones, -- Brittle Bones
	[553] = abyssPresets.greenPoison, -- Mucomycosis
	[554] = abyssPresets.blackFear, -- 2Spooky
	[561] = "Tiny, very fast locust that ticks damage quicker", -- Almond Milk
	[563] = abyssPresets.yellowMimicExplode, -- Nancy Bombs
	[568] = abyssPresets.cyanDestroyProjectiles, -- Divine Intervention
	[570] = abyssPresets.pinkMimic, -- Playdough Cookie
	[574] = abyssPresets.whiteGodhead, -- Monstrance
	[575] = abyssPresets.graySlow, -- The Intruder
	[577] = "Two cyan locusts that destroy enemy projectiles", -- Damocles
	[581] = abyssPresets.cyanDestroyProjectiles, -- Psy Fly
	[583] = abyssPresets.yellowExplode, -- Rocket in a Jar
	[591] = abyssPresets.pinkCharm, -- Venus
	[594] = abyssPresets.greenPoison, -- Jupiter
	[596] = abyssPresets.blueFreeze, -- Uranus
	[603] = abyssPresets.cyanElectricity, -- Battery Pack
	[606] = abyssPresets.grayMagnetize, -- Ocular Rift
	[608] = abyssPresets.blueFreeze, -- Freezer Baby
	[615] = abyssPresets.cyanDestroyProjectiles, -- Lil Dumpy
	[616] = abyssPresets.orangeBurn, -- Bird's Eye
	[617] = abyssPresets.grayMagnetize, -- Lodestone
	[618] = abyssPresets.pinkCharm, -- Rotten Tomato
	[622] = abyssPresets.pinkMimic, -- Genesis
	[625] = "Big red locust that attacks faster", -- Mega Mush
	[629] = abyssPresets.cyanDestroyProjectiles, -- Bot Fly
	[631] = "Two small red locusts", -- Meat Cleaver
	[637] = abyssPresets.blueConfuse, -- Knockout Drops
	[640] = abyssPresets.orangeBurn, -- Urn of Souls
	[645] = abyssPresets.cyanDestroyProjectiles, -- Tinytoma
	[646] = abyssPresets.yellowExplode, -- Brimstone Bombs
	[647] = abyssPresets.cyanElectricity, -- 4.5 Volt
	[652] = abyssPresets.blueFreeze, -- Cube Baby
	[663] = abyssPresets.cyanDestroyProjectiles, -- Tooth and Nail
	[683] = abyssPresets.grayBones, -- Bone Spurs
	[689] = abyssPresets.pinkMimic, -- Glitched Crown
	[690] = abyssPresets.blueConfuse, -- Belly Jelly
	[693] = "Three cyan locusts that destroy enemy projectiles", -- The Swarm
	[698] = abyssPresets.normalTwo, -- Twisted Pair
	[721] = abyssPresets.pinkMimic, -- TMTRAINER
	[727] = abyssPresets.yellowExplode, -- Ghost Bombs
	[706] = "Spawns 16 locusts of different colors and effects", -- Abyss
}

EID:updateDescriptionsViaTable(abyssSynergies, EID.descriptions[languageCode].abyssSynergies)


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
