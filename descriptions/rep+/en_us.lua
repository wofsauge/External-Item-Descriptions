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

-- Special Locust effects when Item was eaten by Abyss
-- may need further grammar & description polish
local abyssSynergies = {
	[4] = "No special effect", -- Cricket's Head
	[6] = "Fast locust that ticks damage slightly quicker", -- Number One
	[7] = "No special effect", -- Blood of the Martyr
	[10] = "Two cyan locusts that destroys enemy projectiles", -- Halo of Flies
	[12] = "Larger red locust", -- Magic Mushroom
	[19] = "Yellow locust that explodes", -- Boom!
	[37] = "Yellow locust that explodes", -- Mr. Boom
	[39] = "Gray locust that petrifies enemies", -- Mom's Bra
	[40] = "Yellow locust that explodes", -- Kamikaze!
	[47] = "Yellow locust that explodes", -- Doctor's Remote
	[52] = "Yellow locust that explodes", -- Dr. Fetus
	[41] = "Black locust that fears enemies", -- Mom's Pad
	[53] = "Gray locust that magnetizes enemies", -- Magneto
	[58] = "Cyan locust that destroys enemy projectiles", -- Book of Shadows
	[62] = "Dark red locust that inflict bleed on enemies", -- Charm of the Vampire
	[63] = "Cyan locust that creates arcs of electricity dealing 0.1 damage per tick", -- The Battery
	[65] = "Yellow locust that explodes", -- Anarchist Cookbook
	[66] = "Light gray locust that slows enemies", -- The Hourglass
	[68] = "Cyan locust that creates arcs of electricity dealing 0.1 damage per tick", -- Technology
	[69] = "Larger Red locust", -- Chocolate Milk
	[71] = "Smaller red locust", -- Mini Mush
	[73] = "Cyan locust that destroys enemy projectiles", -- Cube of Meat
	[77] = "Cyan locust that destroys enemy projectiles", -- My Little Unicorn
	[89] = "Light gray locust that slows enemies", -- Spider Bite
	[95] = "Cyan locust that creates arcs of electricity dealing 0.1 damage per tick", -- Robo Baby
	[99] = "Light gray locust that slows enemies", -- Little Gish
	[100] = "Purple homing locust", -- Little Steven
	[104] = "One normal red locust and two smaller red locusts", -- The Parasite
	[106] = "Yellow locust that explodes", -- Mr. Mega
	[108] = "Cyan locust that destroys enemy projectiles", -- The Wafer
	[110] = "Gray locust that petrifies enemies", -- Mom's Contacts
	[111] = "Green locust that poisons enemies", -- The Bean
	[112] = "Cyan locust that destroys enemy projectiles", -- Guardian Angel
	[114] = "Larger Red locust that attacks faster", -- Mom's Knife
	[116] = "Cyan locust that creates arcs of electricity dealing 0.1 damage per tick", -- 9 Volt
	[118] = "Larger Black locust", -- Brimstone
	[124] = "Pink locust that randomly mimic the effects of other special locusts", -- Dead Sea Scrolls
	[125] = "Yellow locust that explodes", -- Bobby-Bomb
	[136] = "Yellow locust that explodes", -- Best Friend
	[137] = "Yellow locust that explodes", -- Remote Detonator
	[140] = "Yellow locust that explodes", -- Bob's Curse
	[149] = "Large, slow, green locust that poisons enemies", -- Ipecac
	[153] = "Four smaller locusts", -- Mutant Spider
	[160] = "White, glowing locust that can spawn beams of light that deal deal 3x Isaac's damage", -- Crack the Sky
	[162] = "Cyan locust that destroys enemy projectiles", -- Celtic Cross
	[164] = "Orange burning locust that sets enemies on fire", -- The Candle
	[168] = "Yellow locust that explodes", -- Epic Fetus
	[169] = "Big red locust", -- Polyphemus
	[171] = "Light gray locust that slows enemies", -- Spider Butt
	[172] = "Cyan locust that destroys enemy projectiles", -- Sacrificial Dagger
	[178] = "White, glowing locust that petrifies enemies and can spawn beams of light that deal deal 3x Isaac's damage", -- Holy Water
	[180] = "Green locust that poisons enemies", -- The Black Bean
	[181] = "White, glowing locust that can spawn beams of light that deal deal 3x Isaac's damage", -- White Pony
	[182] = "White, slow, glowing and homing locust that can spawn beams of light that deal deal 3x Isaac's damage", -- Sacred Heart
	[187] = "Cyan locust that destroys enemy projectiles", -- Guppy's Hairball
	[190] = "Yellow locust that explodes", -- Pyro
	[191] = "Pink locust that randomly mimic the effects of other special locusts", -- 3 Dollar Bill
	[192] = "Purple homing locust", -- Telepathy for Dummies
	[200] = "Pink locustthat charms enemies", -- Mom's Eyeshadow
	[201] = "Gray locust that confuse enemies", -- Iron Bar
	[202] = "Gray locust that petrifies enemies", -- Midas' Touch
	[207] = "Cyan locust that destroys enemy projectiles", -- Ball of Bandages
	[209] = "Yellow locust that poisons enemies and explode", -- Butt Bombs
	[210] = "Cyan locust that destroys enemy projectiles", -- Gnawed Leaf
	[213] = "Cyan locust that destroys enemy projectiles", -- Lost Contact
	[220] = "Yellow locust that explodes", -- Sad Bombs
	[224] = "Four little red locusts", -- Cricket's Body
	[228] = "Black locust that fears enemies", -- Mom's Perfume
	[230] = "Black locust that fears enemies", -- Abaddon
	[231] = "Black locust that slows enemies", -- Ball of Tar
	[232] = "Light gray locust that slows enemies", -- Stop Watch
	[242] = "Cyan locust that destroys enemy projectiles", -- Infamy
	[243] = "Cyan locust that destroys enemy projectiles", -- Trinity Shield
	[244] = "Cyan locust that destroys enemy projectiles", -- Tech.5
	[245] = "Two normal locusts", -- 20/20
	[248] = "Big red locust", -- Hive Mind
	[250] = "Yellow locust that explodes", -- BOGO Bombs
	[256] = "Yellow burning locust that burn enemies and explode", -- Hot Bombs
	[258] = "Pink locust that randomly mimic the effects of other special locusts", -- Missing No.
	[259] = "Black locust that fears enemies", -- Dark Matter
	[264] = "Purple homing locust", -- Smart Fly
	[265] = "Cyan locust that destroys enemy projectiles", -- Dry Baby
	[266] = "Light gray locust that slows enemies", -- Juicy Sack
	[267] = "Cyan locust that creates arcs of electricity dealing 0.1 damage per tick", -- Robo-Baby 2.0
	[272] = "Yellow locust that explodes", -- BBF
	[273] = "Yellow locust that poisons enemies and explodes", -- Bob's Brain
	[276] = "Blue locust that knock back and confuse enemies.", -- Isaac's Heart
	[277] = "Black locust that fears enemies", -- Lil Haunt
	[279] = "Large, very slow, cyan locust that destroys enemy projectiles", -- Big Fan
	[281] = "Cyan locust that destroys enemy projectiles", -- Punching Bag
	[289] = "Orange burning locust that sets enemies on fire", -- Red Candle
	[294] = "Blue locust that knock back and confuse enemies.", -- Butter Bean
	[298] = "Cyan locust that destroys enemy projectiles", -- Unicorn Stump
	[300] = "Blue locust that knock back and confuse enemies.", -- Aries
	[303] = "Cyan locust that destroys enemy projectiles", -- Virgo
	[309] = "Blue locust that knock back and confuse enemies.", -- Pisces
	[310] = "Large, slow, black locust", -- Eve's Mascara
	[313] = "Cyan locust that destroys enemy projectiles", -- Holy Mantle
	[315] = "Gray locust that magnetizes enemies", -- Strange Attractor
	[317] = "Green locust that poisons enemies", -- Mysterious Liquid
	[326] = "Cyan locust that destroys enemy projectiles", -- Breath of Life
	[330] = "Tiny, extremely fast locust that ticks damage quicker", -- Soy Milk
	[331] = "White, glowing locust which has a Godhead aura which rapidly deals 2 damage per tick to enemies inside", -- Godhead
	[336] = "Slow red locust", -- Dead Onion
	[337] = "Light gray locust that slows enemies", -- Broken Watch
	[338] = "Gray locust that petrifies enemies", -- Boomerang
	[347] = "Two locusts", -- Diplopia
	[350] = "Green locust that poisons enemies", -- Toxic Shock
	[351] = "Green locust that poison, knock back and confuse enemies", -- Mega Bean
	[353] = "Yellow locust that explodes", -- Bomber Boy
	[356] = "Cyan locust that creates arcs of electricity dealing 0.1 damage per tick", -- Car Battery
	[360] = "Two locusts", -- Incubus
	[363] = "Cyan locust that destroys enemy projectiles", -- Sworn Protector
	[366] = "Two yellow locust that explode", -- Scatter Bombs
	[367] = "Yellow locust that slows enemies and explodes", -- Sticky Bombs
	[371] = "Yellow locust that explodes", -- Curse of the Tower
	[372] = "Cyan locust that creates arcs of electricity dealing 0.1 damage per tick", -- Charged Baby
	[374] = "White, glowing locust that can spawn beams of light that deal deal 3x Isaac's damage", -- Holy Light
	[375] = "Cyan locust that destroys enemy projectiles", -- Host Hat
	[378] = "Yellow locust that explodes", -- Number Two
	[379] = "Larger Red locust", -- Pupula Duplex
	[387] = "Light gray locust that slows enemies", -- Censer
	[391] = "Pink locustthat charms enemies", -- Betrayal
	[393] = "Green locust that poisons enemies", -- Serpent's Kiss
	[395] = "Cyan locust that creates arcs of electricity dealing 0.1 damage per tick", -- Tech X
	[398] = "Blue locust that shrinks enemies", -- God's Flesh
	[401] = "Yellow locust that explodes", -- Explosivo
	[402] = "Pink locust that randomly mimic the effects of other special locusts", -- Chaos
	[403] = "Pink locust that randomly mimic the effects of other special locusts", -- Spider Mod
	[404] = "Cyan locust that poisons enemies and destroy enemy projectiles", -- Farting Baby
	[405] = "Pink locust that randomly mimic the effects of other special locusts", -- GB Bug
	[415] = "White, glowing locust that can spawn beams of light that deal deal 3x Isaac's damage", -- Crown of Light
	[417] = "White, glowing locust which has a Godhead aura which rapidly deals 2 damage per tick to enemies inside", -- Succubus
	[418] = "Pink locust that randomly mimic the effects of other special locusts", -- Fruit Cake
	[421] = "Pink locustthat charms enemies", -- Kidney Bean
	[423] = "Cyan locust that destroys enemy projectiles", -- Circle of Protection
	[425] = "Light gray locust that slows enemies", -- Night Light
	[427] = "Yellow locust that explodes", -- Mine Crafter
	[432] = "Yellow locust that explodes and randomly mimic the effects of other special locusts", -- Glitter Bombs
	[441] = "Big black locust", -- Mega Blast
	[446] = "Green locust that poisons enemies", -- Dead Tooth
	[448] = "Dark red locust that inflict bleed on enemies", -- Shard of Glass
	[449] = "Cyan locust that destroys enemy projectiles", -- Metal Plate
	[453] = "Light gray locust that creates 1-3 bone shards upon hitting enemies", -- Compound Fracture
	[457] = "Cyan locust that destroys enemy projectiles", -- Cone Head
	[459] = "Green locust that poisons enemies", -- Sinus Infection
	[460] = "Gray locust that confuse enemies", -- Glaucoma
	[466] = "Green locust that poisons enemies", -- Contagion
	[473] = "Larger, slower red locust", -- Big Chubby
	[478] = "Gray locust that petrifies enemies", -- Pause
	[483] = "Larger yellow locust that explodes", -- Mama Mega
	[488] = "Pink locust that randomly mimic the effects of other special locusts", -- Metronome
	[495] = "Orange burning locust that sets enemies on fire", -- Ghost Pepper
	[497] = "Gray locust that confuse enemies", -- Camo Undies
	[502] = "Light gray locust that slows enemies", -- Large Zit
	[506] = "Dark red locust that inflict bleed on enemies", -- Backstabber
	[508] = "Dark red locust that inflict bleed on enemies", -- Mom's Razor
	[510] = "Pink locust that randomly mimic the effects of other special locusts", -- Delirious
	[512] = "Gray locust that magnetizes enemies", -- Black Hole
	[514] = "Gray locust that petrifies and confuse enemies", -- Broken Modem
	[517] = "Yellow locust that explodes", -- Fast Bombs
	[519] = "Pink locust that randomly mimic the effects of other special locusts", -- Lil Delirium
	[520] = "Cyan locust that creates arcs of electricity dealing 0.1 damage per tick", -- Jumper Cables
	[524] = "Cyan locust that creates arcs of electricity dealing 0.1 damage per tick", -- Technology Zero
	[525] = "Cyan locust that destroys enemy projectiles", -- Leprosy
	[533] = "White, glowing locust that can spawn beams of light that deal deal 3x Isaac's damage", -- Trisagion
	[541] = "Light gray locust that creates 1-3 bone shards upon hitting enemies", -- Marrow
	[542] = "Light gray locust that creates 1-3 bone shards upon hitting enemies", -- Slipped Rib
	[544] = "Light gray locust that creates 1-3 bone shards upon hitting enemies", -- Pointy Rib
	[545] = "Light gray locust that creates 1-3 bone shards upon hitting enemies", -- Book of the Dead
	[546] = "Gray locust that petrifies enemies", -- Dad's Ring
	[548] = "Light gray locust that creates 1-3 bone shards upon hitting enemies", -- Jawbone
	[549] = "Light gray locust that creates 1-3 bone shards upon hitting enemies", -- Brittle Bones
	[553] = "Green locust that poisons enemies", -- Mucomycosis
	[554] = "Black locust that fears enemies", -- 2Spooky
	[561] = "Tiny, very fast locust that ticks damage quicker", -- Almond Milk
	[563] = "Yellow locust that explodes and randomly mimic the effects of other special locusts", -- Nancy Bombs
	[568] = "Cyan locust that destroys enemy projectiles", -- Divine Intervention
	[570] = "Pink locust that randomly mimic the effects of other special locusts", -- Playdough Cookie
	[574] = "White, glowing locust which has a Godhead aura which rapidly deals 2 damage per tick to enemies inside", -- Monstrance
	[575] = "Light gray locust that slows enemies", -- The Intruder
	[577] = "Two cyan locusts that destroy enemy projectiles", -- Damocles
	[581] = "Cyan locust that destroys enemy projectiles", -- Psy Fly
	[583] = "Yellow locust that explodes", -- Rocket in a Jar
	[591] = "Pink locustthat charms enemies", -- Venus
	[594] = "Green locust that poisons enemies", -- Jupiter
	[596] = "Blue locust that freezes enemies", -- Uranus
	[603] = "Cyan locust that creates arcs of electricity dealing 0.1 damage per tick", -- Battery Pack
	[606] = "Gray locust that magnetizes enemies", -- Ocular Rift
	[608] = "Blue locust that freezes enemies", -- Freezer Baby
	[615] = "Cyan locust that destroys enemy projectiles", -- Lil Dumpy
	[616] = "Orange burning locust that sets enemies on fire", -- Bird's Eye
	[617] = "Gray locust that magnetizes enemies", -- Lodestone
	[618] = "Pink locustthat charms enemies", -- Rotten Tomato
	[622] = "Pink locust that randomly mimic the effects of other special locusts", -- Genesis
	[625] = "Big red locust that attacks faster", -- Mega Mush
	[629] = "Cyan locust that destroys enemy projectiles", -- Bot Fly
	[631] = "Two small red locusts", -- Meat Cleaver
	[637] = "Blue locust that knock back and confuse enemies", -- Knockout Drops
	[640] = "Orange burning locust that sets enemies on fire", -- Urn of Souls
	[645] = "Cyan locust that destroys enemy projectiles", -- Tinytoma
	[646] = "Yellow locust that explodes", -- Brimstone Bombs
	[647] = "Cyan locust that creates arcs of electricity dealing 0.1 damage per tick", -- 4.5 Volt
	[652] = "Blue locust that freezes enemies", -- Cube Baby
	[663] = "Cyan locust that destroys enemy projectiles", -- Tooth and Nail
	[683] = "Light gray locust that creates 1-3 bone shards upon hitting enemies", -- Bone Spurs
	[689] = "Pink locust that randomly mimic the effects of other special locusts", -- Glitched Crown
	[690] = "Blue locust that knock back and confuse enemies", -- Belly Jelly
	[693] = "Three cyan locusts that destroy enemy projectiles", -- The Swarm
	[698] = "Two normal locusts", -- Twisted Pair
	[721] = "Pink locust that randomly mimic the effects of other special locusts", -- TMTRAINER
	[727] = "Yellow locust that explodes", -- Ghost Bombs
	[706] = "Spawns 16 locusts of different colors and effects", -- Abyss
}

EID:updateDescriptionsViaTable(abyssSynergies, EID.descriptions[languageCode].abyssSynergies)


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
