-- This file contains text elements that are used for the modular description system.
local languageCode = "cs_cz"

-- Flag to disable modular description behavior for the whole language
-- Added to not mess to much with preexisting translations, before a translator looked
-- over the modular description strings. Remove variable to enable it again.
EID.descriptions[languageCode].DisableModularDescriptions = true

---------- Modular Descriptions ----------
-- Table containing basic sentences and templates used to generate basic descriptions

-----------------------------------------------------------------
--- Translator TODO: Please verify correctness of translations and add potential pluralizations
-----------------------------------------------------------------
EID.descriptions[languageCode].ModularDescriptions = {
    -- Player Stats
    TearsMultiplier = "{value} Násobič Slz",
    Tears = "{value} Slzy",
    TearHeight = "{value} Výška slz",
    TearSizeMultiplier = "{value} Násobič velikosti slz",
    TearSize = "{value} Velikost slz",
    TearDelayMultiplier = "{value} Násobič zpoždění slz",
    TearDelay = "{value} Zpoždění slz",
    FireRateMultiplier = "{value} Násobič rychlosti střel",
    FireRate = "{value} Rychlost střelby",
    DamageMultiplier = "{value} Násobič poškození",
    Damage = "{value} Poškození",
	DamageTemp = "{value} Poškození (dočasné)", -- For Temp Binge Eater buffs
    BombDamage = "{value} Poškození bomb",
    Speed = "{value} Rychlost",
    RangeMultiplier = "{value} Násobič dostřelu",
    Range = "{value} Rozsah",
    Luck = "{value} Štěstí",
    ShotSpeedMultiplier = "{value} Násobič rychlosti střel",
    ShotSpeed = "{value} Rychlost střel",
    Life = "{value} Život",
    SizeUp = "Zvětšení",
    SizeDown = "Zmenšení",
    Flight = "Létání",
    Invincibility = "Nesmrtelnost",
    RandomStatUp = "↑ Zvýší náhodně {value} statistik{plural_ay}",
    RandomStatDown = "↓ Sníží náhodně {value} statistik{plural_ay}",

    -- Health related
    RedHeart = "{value} Zdraví",
    SoulHeart = "{value} Duševní Srdc{plural_e}",
    BlackHeart = "{value} Černé Srdc{plural_e}",
    BoneHeart = "{value} Kostěné Srdc{plural_e}",
    EternalHeart = "{value} Srdce Věčnosti",
    GoldenHeart = "{value} Zlaté Srdc{plural_e}",
    RottenHeart = "{value} Shnilé Srdc{plural_e}",
    BrokenHeart = "{value} Rozbité Srdc{plural_e}",
    EmptyHeart = "{value} Prázdné místo pro srdc{plural_e}",
    FullHealth = "Plné zdraví",
    HealingRed = "Vyléčí {value} srdc{plural_e}",
	CoinHeart = "{value} mince srdc{plural_e}",
	EmptyCoinHeart = "{value} prázdné mince srdc{plural_e}",
	HealingCoin = "Vyléčí {value} minc{plural_e}",

    -- Room chances
    AngelDevilChance = "{value}% šance na Ďábelskou/Andělskou místnost",
    DevilChance = "{value}% šance na Ďábelskou místnost",
    AngelChance = "{value}% šance na Andělskou místnost",
    PlanetariumChance = "{value}% šance na Planetárium",

    -- Pickups / Spawns
    Coin = "{value} Minc{plural_e}",
    Bomb = "{value} Bomb{plural_ay}",
    Key = "{value} Klíč{plural_e}",
    CoinBombKey = "{value} {{Coin}} minc{plural_e}, {{Bomb}} bomb{plural_ay} a {{Key}} klíč{plural_e}",
    -- Dynamic Spawns
    Spawns = {
        RandomPickup = "Vytvoří {value} náhodný pickup",
        RandomTrinket = "Vytvoří {value} náhodný trinket",
        RandomHeart = "Vytvoří {value} náhodné srdce",
        RedHeart = "Vytvoří {value} Červené srdce",
        SoulHeart = "Vytvoří {value} Duševní srdce",
		BlackHeart = "Vytvoří {value} Černé srdce",
        BoneHeart = "Vytvoří {value} Kostěné srdce",
        Bomb = "Vytvoří {value} bombu",
        Key = "Vytvoří {value} klíč{plural_e}",
        Coin = "Vytvoří {value} minc{plural_e}",
        RandomCoin = "Vytvoří {value} náhodnou minc{plural_ay}",
        Card = "Vytvoří {value} kartu",
        Pill = "Vytvoří {value} pilulku",
        Rune = "Vytvoří {value} runu",
        Battery = "Vytvoří {value} baterii",
        BlueFly = "Vytvoří {value} modrou mouchu",
        BlueSpider = "Vytvoří {value} modrého pavouk{plural_ay}",
    },
    -- Permanent Tear Effects
    TearEffect = {
        Homing = "Naváděné slzy",
        Spectral = "Spektrální slzy",
        Piercing = "Průrazné slzy",
        Poison = "{{Poison}} Jedovaté slzy",
    },
    -- Familiars
    FlyOrbital = "{value} orbitální mouch{plural_ay}",
    Orbital = "Orbitální",
    BlockProjectiles = "Blokuje nepřátelské střely",
    DamagePerTear = "Způsobuje {value} poškození za slzu",
    DamagePerShot = "Způsobuje {value} poškození za střelu",
    DamagePerSecond = "Způsobuje {value} poškození za sekundu",
    ContactDamagePerSecond = "Uděluje {value} kontaktního poškození za sekundu",
    MimicMovement = "Napodobuje Isaacův pohyb s {value} sekundovým zpožděním",
    -- Player
    CantShoot = "Izák nemůže střílet",
    PlayerContactDamage = "Izák uděluje {value} kontaktního poškození za sekundu",
    DamageToAllEnemies = "Způsobí {value} poškození všem nepřátelům",
    -- Misc
    LeftEye = "Získáš pro levé oko:",
    RightEye = "Získáš pro pravé oko:",
    RoomEffect = "{{Timer}} Získáš pro místnost:",
    TimedEffect = "{{Timer}} Získáš na {value} sekund:",
    OnUseEffect = "Po použití:",
    HeldEffect = "Při držení:",
    MaxLuck = "{{Luck}} Max.({max}%) při {value} štěstí",
    --MaxLuck = "{max}% šance při {value} štěstí",
    SingleUseInfo = "{{Warning}} JEDNO POUŽITÍ {{Warning}}",
    NoEffect = "Žádný efekt",
    FullMapping = {
        BaseDesc = "{{Timer}} Úplné mapování patra {exception}",
        Exception = "(kromě {{SuperSecretRoom}} Super Tajné Místnosti)"
    }
}

-- Each entry corresponds to a specific item and will be appended to the modular item's description in combination 
-- with the generated description parts based on the item stats and effects defined in the "item_data.lua" file.

-- The following entries are automatically extracted from the original description files.
-- As a referenence, you can find comments with the expected english text below them.
-- The automatic fill is done by taking the "old" translated text from your translation file, and trying to match it to the
-- english text and its structure. If the match was not successful, it will also adds the full original translated description ("Full old Desc: ...")
-- To check for any mistakes, you can compare the english expected text and the original translation with the text inside the entry and adjust it if nessesary.

EID.descriptions[languageCode].AdditionalInformations = {}

---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 5] = "↑ +1 Výška Slz", -- My Reflection
	-- Full old Desc: "Dává slzám bumerangový efekt#↑ {{Range}} +1.5 Větší Dostřel#↑ {{Shotspeed}} +0.6 Větší Rychlost Střel#↑ +1 Výška Slz"
	-- English: "Tears get a boomerang effect"

	[C_ID .. 8] = "Spojenec s normalními slzami", -- Brother Bobby
	-- Full old Desc: "Spojenec s normalními slzami#Uděluje 3.5 poškození za slzu"
	-- English: "Shoots normal tears"

	[C_ID .. 9] = "Všechny nepřátelské mouchy jsou nyní přátelské", -- Skatole
	-- English: "All fly enemies are friendly"

	[C_ID .. 11] = "Znovuzrození s plným zdravím", -- 1up!
	-- Full old Desc: "↑ +1 život#Znovuzrození s plným zdravím"
	-- English: "Isaac respawns with full health on death"

	[C_ID .. 13] = "{{BlackHeart}} Z nepřátel mohou spadnout Černá Srdce, pokud jsou otráveni", -- The Virus
	-- Full old Desc: "{{Poison}} Jedovatý dotek#↓ {{Speed}} -0.1 Snížení Rychlosti#{{BlackHeart}} Z nepřátel mohou spadnout Černá Srdce, pokud jsou otráveni"
	-- English: "{{Poison}} Touching enemies poisons them#{{BlackHeart}} Poisoned enemies can drop Black Hearts"

	[C_ID .. 21] = "Zobrazí všechny ikony na mapě#Nezobrazuje rozložení mapy", -- The Compass
	-- English: "Reveals icons on the map#Does not reveal the layout of the map"

	[C_ID .. 33] = "Létání pro aktuální místnos#{{MomsHeart}} Okamžitě zabije Máminu Nohu a Mámino Srdce#!!! Zabije TEBE při použití na Satana", -- The Bible
	-- English: "{{Timer}} Flight for the room#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[C_ID .. 36] = "Vytvoří jedno hovínko a odstrčí nepřátele zpět#Lze umístit vedle jámy a zničit bombou, aby se vytvořil most", -- The Poop
	-- English: "Spawns one poop and knocks back enemies#Can be placed next to a pit and destroyed with a bomb to make a bridge"

	[C_ID .. 38] = "Vystřelí 10 slz v kruhu kolem Izáka", -- Tammy's Head
	-- English: "Shoots 10 tears in a circle around Isaac#The tears copy Isaac's tear effects, plus 25 damage"

	[C_ID .. 39] = "Zmrazí všechny nepřátele v aktuální místnosti na 4 sekundy", -- Mom's Bra
	-- English: "{{Petrify}} Petrifies all enemies in the room for 4 seconds"

	[C_ID .. 40] = "Způsobí explozi v místě hráče", -- Kamikaze!
	-- Full old Desc: "Způsobí explozi v místě hráče#Způsobí 40 poškození"
	-- English: "Causes an explosion at Isaac's location#Deals {VAR:1} damage"

	[C_ID .. 41] = "{{Fear}} Po dobu 5-ti sekund se nepřátelé budou bát v aktuální místnosti", -- Mom's Pad
	-- English: "{{Fear}} Fears all enemies in the room for 5 seconds"

	[C_ID .. 42] = "{{Poison}} Vrhací jedovatá bomba", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes on impact and poisons enemies"

	[C_ID .. 44] = "Teleportuje Izáka do náhodné místnosti kromě místností JSEM ERROR", -- Teleport!
	-- English: "Teleports Isaac into a random room, except I AM ERROR rooms"

	[C_ID .. 46] = "Lepší šance na výhru při hraní hazardních her#Zvyšuje šanci o 8% na odměnu z vyklizení místnosti", -- Lucky Foot
	-- Full old Desc: "↑ {{Luck}} +1 Zvýšení Štěstí#Lepší šance na výhru při hraní hazardních her#Zvyšuje šanci o 8% na odměnu z vyklizení místnosti"
	-- English: "+8% room clear reward chance#Better chance to win while gambling"

	[C_ID .. 47] = "{{Collectible168}} Při použití zaměřuješ pomocí kříže#Střela přistane na zaměřovacím kříži po 1,5 sekundě#způsobí 20násobek tvého poškození", -- Doctor's Remote
	-- English: "{{Collectible168}} On use, start aiming a crosshair#A missile lands on the crosshair after 1.5 seconds#It deals 20x Isaac's damage"

	[C_ID .. 49] = "Laser s vysokým poškozením", -- Shoop da Whoop!
	-- Full old Desc: "Laser s vysokým poškozením"
	-- English: "The next shot is replaced with a beam#It deals {VAR:1}x Isaac's damage over {VAR:2} seconds"

	[C_ID .. 52] = "↓ {{Tears}} Zpoždění Slz x 2.5", -- Dr. Fetus
	-- Full old Desc: "{{Bomb}} Bomby namísto slz#Každá bomba způsobí 5x tvoje poškození + 30#↓ {{Tears}} Zpoždění Slz x 2.5"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 5x Isaac's damage + 30"

	[C_ID .. 53] = "Magneticky přitahuje pickupy", -- Magneto
	-- English: "Pickups are attracted to Isaac"

	[C_ID .. 54] = "Odhalí rozložení patra#Nezobrazuje ikony místností", -- Treasure Map
	-- English: "Reveals the floor layout#Does not reveal room icons"

	[C_ID .. 56] = "Vytvoří kaluž limonády#Způsobí 24 kontakního poškození za sekundu", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 57] = "Orbitální muška střední vzdálenosti", -- Distant Admiration
	-- Full old Desc: "Orbitální muška střední vzdálenosti#Uděluje 75 kontaktního poškození za sekundu"
	-- English: "Mid-range fly orbital"

	[C_ID .. 60] = "Choď přes malé mezery", -- The Ladder
	-- English: "Allows Isaac to cross 1-tile gaps"

	[C_ID .. 62] = "{{HalfHeart}} Vyléčí půl srdce každých 13 zabitých nepřátel", -- Charm of the Vampire
	-- English: "{{HealingRed}} Killing 13 enemies heals half a heart"

	[C_ID .. 63] = "Aktivní předměty lze nyní nabít dvakrát", -- The Battery
	-- English: "{{Battery}} Active items can be overcharged to two full charges"

	[C_ID .. 64] = "{{Shop}} -50% na předměty v obchodě#Pokud tuto položku získáš dvakrát, bude vše zdarma", -- Steam Sale
	-- English: "{{Shop}} Shop items cost 50% less"

	[C_ID .. 65] = "Vytvoří 6 trollích bomb blízko středu místnosti", -- Anarchist Cookbook
	-- English: "Spawns 6 Troll Bombs near the center of the room"

	[C_ID .. 66] = "{{Slow}} Zpomaluje nepřátele na 8 sekund", -- The Hourglass
	-- English: "{{Slow}} Slows enemies down for 8 seconds"

	[C_ID .. 67] = "Spojenec s normalními slzami", -- Sister Maggy
	-- Full old Desc: "Spojenec s normalními slzami#Uděluje 3.5 poškození za slzu"
	-- English: "Shoots normal tears"

	[C_ID .. 68] = "Slzy jsou nyní lasery", -- Technology
	-- English: "Isaac shoots lasers instead of tears"

	[C_ID .. 69] = "{{Chargeable}} Nabíjecí slzy#↑ {{Damage}} Až 400% Poškození#↓ {{Tears}} Méně Slz", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x#{{Tears}} Max charge time is 2.5x tear delay"

	[C_ID .. 71] = "↑ Zmenšení", -- Mini Mush
	-- Full old Desc: "↑ {{Speed}} +0.3 Zvýšení Rychlosti#↓ {{Range}} -4.25 Menší Dostřel*#↑ +1.5 Výška Slz*#(*oba se sčítají do mírného Většího Dostřelu)#↑ Zmenšení"
	-- English: "The tear height up and range down = slight range up"

	[C_ID .. 73] = "LVL1: Orbitální maso#LVL2: Orbitální a střílející maso#LVL3: Masový Kluk LVL1#LVL4: Masový Kluk LVL2", -- Cube of Meat
	-- English: "Lv1: Orbital#Lv2: Shooting orbital#Lv3: Meat Boy#Lv4: Super Meat Boy"

	[C_ID .. 75] = "{{BloodDonationMachine}} Více peněz ze Strojů na Darování Krve a {{Collectible135}} Infuzní vak ", -- PHD
	-- Full old Desc: "{{Pill}} Lepší pilulky#Vytvoří 1 Pilulku#{{Heart}} Vyléčí 2 Červená Srdce#{{BloodDonationMachine}} Více peněz ze Strojů na Darování Krve a {{Collectible135}} Infuzní vak "
	-- English: "{{Pill}} Changes bad pills into good pills#{{BloodDonationMachine}} Blood Donation Machines give more {{Coin}} coins"

	[C_ID .. 76] = "{{SecretRoom}} Odhalí vchody do tajných místností", -- X-Ray Vision
	-- English: "{{SecretRoom}} Opens all secret room entrances"

	[C_ID .. 78] = "{{AngelDevilChance}} +17.5% Šance na Ďábelskou/Andělskou místnost", -- Book of Revelations
	-- Full old Desc: "{{SoulHeart}} +1 Duševní Srdce#Vyšší šance na jezdce při použití#{{AngelDevilChance}} +17.5% Šance na Ďábelskou/Andělskou místnost"
	-- English: "Using the item has a high chance to replace the floor's boss with a horseman"

	[C_ID .. 81] = "Znovuzrození pouze s 1 životem#↓ Nastaví tvoje životy na 1 Červené Srdce", -- Dead Cat
	-- Full old Desc: "↑ +9 životů#Znovuzrození pouze s 1 životem#↓ Nastaví tvoje životy na 1 Červené Srdce#Postavy, které nemohou mít Červené Srdce, se nastaví na 1 Duševní/Černé Srdce"
	-- English: "Isaac respawns with 1 heart container on death#{{Warning}} Sets Isaac's heart containers to 1 when picked up"

	[C_ID .. 83] = "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}", -- The Nail
	-- Full old Desc: "{{SoulHeart}} +1 Duševní Srdce#↑ {{Damage}} +0.7 Větší Poškození#↓ {{Speed}} -0.18 Snížení Rychlosti#Uděluješ 40 kontaktního poškození#Rozdrcuješ kameny"
	-- English: "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#{{IND}}Allows Isaac to destroy rocks by walking into them"

	[C_ID .. 84] = "Vytvoří padací dvířka pro přeskočení patra#{{LadderRoom}} 10% šance na padací dvířka vedoucí do průlezu", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} 10% chance to open a crawlspace trapdoor"

	[C_ID .. 86] = "Vyvolej Monstra na jedno dupnutí", -- Monstro's Tooth
	-- English: "Monstro falls on an enemy and deals 120 damage#{{Warning}} Monstro falls on Isaac if the room has no enemies"

	[C_ID .. 88] = "Spojenec, který se vystřelí dopředu", -- Little Chubby
	-- Full old Desc: "Spojenec, který se vystřelí dopředu#Způsobuje 52.5 kontaktního poškození za sekundu"
	-- English: "Charges forward in the direction Isaac is shooting"

	[C_ID .. 91] = "Odhalí typ místnosti sousedních místností#{{SecretRoom}} Může také odhalit Tajné Místnosti, Super Tajné Místnosti a Mini-Boss Místnosti", -- Spelunker Hat
	-- English: "Reveals the room type of adjacent rooms#{{SecretRoom}} Can reveal Secret and Super Secret Rooms"

	[C_ID .. 93] = "{VAR:TIMEDEFFECT}", -- The Gamekid
	-- Full old Desc: "Krátká nesmrtelnost#{{Fear}} Všichni nepřátelé se bojí#Způsobuješ 40 kontaktního poškození#{{HalfHeart}} Dva sežraní nepřátelé ti doplní půl srdce"
	-- English: "{VAR:TIMEDEFFECT}#{{IND}}{{HealingRed}} Killing 2 enemies heals half a heart#{{IND}}{{Fear}} Fears all enemies in the room"

	[C_ID .. 94] = "{{Coin}} Každé 2 místnosti vytvoří náhodnou minci", -- Sack of Pennies
	-- English: "{{Coin}} Spawns a random coin every 2 rooms"

	[C_ID .. 95] = "Laserové slzy", -- Robo-Baby
	-- Full old Desc: "Laserové slzy#Uděluje 3.5 poškození za slzu"
	-- English: "Shoots lasers"

	[C_ID .. 96] = "{{HalfHeart}} Vytvoří půl srdce každé 3 místnosti", -- Little C.H.A.D.
	-- English: "{{HalfHeart}} Spawns a half Red Heart every 3 rooms"

	[C_ID .. 99] = "{{Slow}} Zpomalující slzy", -- Little Gish
	-- Full old Desc: "{{Slow}} Zpomalující slzy#Uděluje 3.5 poškození za slzu"
	-- English: "{{Slow}} Shoots slowing tears"

	[C_ID .. 100] = "Naváděné slzy", -- Little Steven
	-- Full old Desc: "Naváděné slzy#Uděluje 3.5 poškození za slzu"
	-- English: "Shoots homing tears"

	[C_ID .. 104] = "Slzy se při kontaktu rozdělí na dvě části#Rozdělené slzy způsobí poloviční poškození", -- The Parasite
	-- English: "Tears split in two on contact#Split tears deal half damage"

	[C_ID .. 105] = "Zamíchá předměty v aktuální místnosti", -- The D6
	-- English: "Rerolls pedestal items in the room"

	[C_ID .. 107] = "{VAR:ROOMEFFECT}", -- The Pinking Shears
	-- Full old Desc: "Létání#Tvé tělo útočí na nepřátele s 82.5 kontaktního poškození za sekundu"
	-- English: "{VAR:ROOMEFFECT}#{{IND}}Isaac's body separates from his head and attacks enemies with {VAR:1} contact damage per second"

	[C_ID .. 108] = "Veškeré utrpěné poškození se sníží na polovinu srdce", -- The Wafer
	-- English: "Reduces most damage taken to half a heart"

	[C_ID .. 109] = "↑ {{Damage}} +0.04 Větší Poškození za každou {{Coin}} minci, kterou máš", -- Money = Power
	-- English: "↑ {{Damage}} +0.04 Damage for every {{Coin}} coin Isaac has"

	[C_ID .. 111] = "{{Poison}} Jedovatý prd#Jed způsobuje tvoje poškození 6krát", -- The Bean
	-- English: "{{Poison}} Deals 5 damage to enemies nearby and poisons them#The poison deals Isaac's damage 6 times"

	[C_ID .. 112] = "Zrychluje všechny orbitální spojence", -- Guardian Angel
	-- Full old Desc: "Orbitální andílek#Zrychluje všechny orbitální spojence#Blokuje střely#Uděluje 105 kontaktního poškození za sekundu"
	-- English: "Speeds up all other orbitals"

	[C_ID .. 113] = "Automaticky střílí", -- Demon Baby
	-- Full old Desc: "Automaticky střílí#Uděluje 3 poškození za slzu"
	-- English: "Shoots enemies that get close to him"

	[C_ID .. 114] = "Kontrolovatelný nůž#Nůž způsobí 2x poškození Izáka při držení a 6x poškození v co největší vzdálenosti", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and 6x at the furthest possible distance"

	[C_ID .. 116] = "-1 nabití pro aktivní předměty#{{Battery}} Plně nabije tvůj aktivní předmět", -- 9 Volt
	-- English: "{{Battery}} Automatically charges the first bar of active items#{{Battery}} Fully recharges the active item on pickup"

	[C_ID .. 117] = "Vytvoří mrtvého ptáka, když dostaneš zasáh", -- Dead Bird
	-- Full old Desc: "Vytvoří mrtvého ptáka, když dostaneš zasáh#Pták uděluje 4 kontaktního poškození za sekundu"
	-- English: "Taking damage spawns a bird that attacks enemies"

	[C_ID .. 122] = "!!! Když máš půl Červeného Srdce nebo méně:#{VAR:EFFECTLIST}", -- Whore of Babylon
	-- Full old Desc: "!!! Když máš půl Červeného Srdce nebo méně:#↑ {{Damage}} +1.5 Větší Poškození#↑ {{Speed}} +0.3 Zvýšení Rychlosti"
	-- English: "When on half a Red Heart or less:#{VAR:EFFECTLIST}"

	[C_ID .. 123] = "Náhodný spojenec pro aktuální místnost", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the room"

	[C_ID .. 124] = "Náhodný efekt aktivního předmětu", -- Dead Sea Scrolls
	-- English: "Triggers a random active item effect#Chooses the effect from a fixed list of items"

	[C_ID .. 125] = "{{Bomb}} +5 Bomb", -- Bobby-Bomb
	-- Full old Desc: "Naváděné bomby#{{Bomb}} +5 Bomb"
	-- English: "Homing bombs"

	[C_ID .. 126] = "↑ {{Damage}} +1.2 Větší Poškození pro aktuální místnost#↓ Způsobí ti 1 poškození#Upřednostňuje Červené Srdce", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 127] = "Zamíchá celé patro", -- Forget Me Now
	-- English: "Rerolls and restarts the entire floor"

	[C_ID .. 128] = "Orbitální muška", -- Forever Alone
	-- Full old Desc: "Orbitální muška#Daleko od tebe#Uděluje 30 kontaktního poškození za sekundu"
	-- English: "Long range fly orbital"

	[C_ID .. 130] = "Uděluje létání při držení předmětu#{{Speed}} Nastaví tvoji rychlost na 1.5 pokud máš méně než 1.5#Vzléteš ve směru použití", -- A Pony
	-- English: "While held:#{{Speed}} Sets your Speed to at least 1.5#Flight#Upon use, dashes in the direction of Isaac's movement"

	[C_ID .. 131] = "{{Bomb}} Každé 2-3 místnosti vytvoří bombu", -- Bomb Bag
	-- English: "{{Bomb}} Spawns 1 bomb pickup every 3 rooms"

	[C_ID .. 132] = "{{Damage}} Více Poškození na základě procestované vzdálenosti slzy", -- A Lump of Coal
	-- English: "{{Damage}} Tears deal more damage the further they travel"

	[C_ID .. 133] = "!!! Přeměň:#1 místo pro Srdce na 3 Duševní Srdce", -- Guppy's Paw
	-- English: "{{SoulHeart}} Converts 1 heart container into 3 Soul Hearts"

	[C_ID .. 134] = "{{Chest}} 33% šance, že odměna za pročištěnou místnost bude truhla#33% šance na žádnou odměnu za pročištěnou místnost", -- Guppy's Tail
	-- English: "{{Chest}} 33% chance to replace the room clear reward with a chest#33% chance to spawn no room clear reward"

	[C_ID .. 135] = "Přenosná krevní banka#Půl srdce = 1-3 penízků#{{Player14}} 0-1 mincí za Keepera", -- IV Bag
	-- English: "{{Coin}} Hurts Isaac for half a heart and spawns 1-2 coins#{{Heart}} Removes Red Hearts first"

	[C_ID .. 136] = "Explodující návnada#Přitahuje nepřátele", -- Best Friend
	-- English: "Spawns a decoy Isaac that attracts enemies and explodes after 5 seconds"

	[C_ID .. 137] = "{{Bomb}} +5 Bomb", -- Remote Detonator
	-- Full old Desc: "Odpalíš bomby na požádání#{{Bomb}} +5 Bomb"
	-- English: "Isaac's bombs no longer explode automatically#Upon use, detonates all of Isaac's bombs at once"

	[C_ID .. 139] = "{{Trinket}} Nyní můžeš mít 2 trinkety", -- Mom's Purse
	-- English: "{{Trinket}} Isaac can hold 2 trinkets"

	[C_ID .. 140] = "{{Bomb}} +5 Bomb", -- Bob's Curse
	-- Full old Desc: "{{Poison}} Jedovaté bomby#{{Bomb}} +5 Bomb"
	-- English: "{{Poison}} Isaac's bombs poison enemies caught in the blast"

	[C_ID .. 142] = "{{SoulHeart}} Při poškození až do zbývající poloviny srdce, dostaneš 1 Duševní Srdce (jednou za místnost)", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again"

	[C_ID .. 144] = "{{Coin}} Sbírá mince a převádí je na pickupy", -- Bum Friend
	-- English: "{{Coin}} Picks up nearby coins#Spawns random pickups every 3-4 coins"

	[C_ID .. 147] = "Na dotek rozbíjí kameny v aktuální místnosti", -- Notched Axe
	-- English: "{{Timer}} For the room, Isaac can break rocks and Secret Room walls by walking into them"

	[C_ID .. 151] = "1/6 šance na vytvoření mouchy při zasáhnutí nepřítele", -- The Mulligan
	-- English: "Tears have a 1/6 chance to spawn a blue fly when hitting an enemy"

	[C_ID .. 152] = "↓ {{Damage}} -35% Menší Poškození#↓ {{Tears}} Zpoždění Slz x 2", -- Technology 2
	-- Full old Desc: "Nahrazuje tvoje pravé oko nepřetržitým laserem#Laser způsobí 20 % tvého poškození#↓ {{Damage}} -35% Menší Poškození#↓ {{Tears}} Zpoždění Slz x 2"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} It deals 3x Isaac's damage per second"

	[C_ID .. 155] = "Poletuje po místnosti", -- The Peeper
	-- Full old Desc: "Poletuje po místnosti#Uděluje 17.1 kontaktního poškození za sekundu"
	-- English: "Floats around the room"

	[C_ID .. 156] = "{{Battery}} +1 nabití při utrpení zásahu", -- Habit
	-- English: "{{Battery}} Taking damage adds 1 charge to the active item"

	[C_ID .. 157] = "↑ {{Damage}} Větší Poškození pokaždé co dostaneš zásah#Aplikuje se až 6krát za patro#Trvá po celé patro", -- Bloody Lust
	-- English: "↑ {{Damage}} Taking damage grants a damage up#Applies up to 6 times per floor#Lasts for the whole floor"

	[C_ID .. 158] = "Odhaluje celou mapu#{VAR:EFFECTLIST}", -- Crystal Ball
	-- Full old Desc: "Odhaluje celou mapu#Vytvoří náhodnou Kartu nebo Duševní Srdce"
	-- English: "Spawns a {{SoulHeart}} Soul Heart, {{Rune}} rune or {{Card}} card#{VAR:EFFECTLIST}"

	[C_ID .. 160] = "V blízkosti nepřátel vytvoří 5 paprsků světla#Způsobuje tvoje poškození+20", -- Crack the Sky
	-- English: "Spawns 5 beams of light near enemies#Each beam deals 8x Isaac's damage + 160 over 0.8 seconds"

	[C_ID .. 161] = "{{Player4}} Znovuzrodiš se jako ??? (Blue Baby) po smrti", -- Ankh
	-- English: "{{Player4}} Respawn as ??? (Blue Baby) on death"

	[C_ID .. 163] = "Spojenec se spektrálními slzami", -- Ghost Baby
	-- Full old Desc: "Spojenec se spektrálními slzami#Uděluje 3.5 poškození za slzu"
	-- English: "Shoots spectral tears"

	[C_ID .. 164] = "Vystřelíš modrý plamen#Způsobuje kontaktní poškození#Blokuje nepřátelské slzy#Po 2 sekundách zmizí", -- The Candle
	-- English: "Throws a blue flame#It deals contact damage, blocks enemy tears, and despawns after 2 seconds"

	[C_ID .. 166] = "Zamíchá pickupy", -- D20
	-- English: "Rerolls all pickups in the room"

	[C_ID .. 167] = "Vystřelí dvě slzy ve tvaru písmene V", -- Harlequin Baby
	-- Full old Desc: "Vystřelí dvě slzy ve tvaru písmene V#Uděluje 4 poškození za střelu"
	-- English: "Shoots two tears in a V-shaped pattern"

	[C_ID .. 168] = "Kontrolovatelný nálet místo slz#Uděluje 20násobek tvého poškození", -- Epic Fetus
	-- English: "Instead of shooting tears, aim a crosshair#A rocket lands on the crosshair after 1.5 seconds#{{Damage}} Rockets deal 20x Isaac's damage"

	[C_ID .. 170] = "Dupe na nepřátele", -- Daddy Longlegs
	-- Full old Desc: "Dupe na nepřátele#Uděluje 40 poškození za sekundu"
	-- English: "Stomps on a nearby enemy every 4 seconds"

	[C_ID .. 171] = "Zpomalí nepřátele na 4 sekundy", -- Spider Butt
	-- Full old Desc: "Zpomalí nepřátele na 4 sekundy#10 poškození všem nepřátelům"
	-- English: "{{Slow}} Slows down enemies for 4 seconds"

	[C_ID .. 174] = "Střílí náhodné slzy", -- Rainbow Baby
	-- Full old Desc: "Střílí náhodné slzy#Uděluje 3-5 poškození za střelu"
	-- English: "Shoots random tears"

	[C_ID .. 175] = "Otevírá všechny dveře v místnosti, včetně {{SecretRoom}}{{SuperSecretRoom}}Tajných Místností, {{ChallengeRoom}}{{BossRushRoom}}Vyzyvatelských Místností, a Mega Satan dveří", -- Dad's Key
	-- English: "Opens all doors in the room, including {{SecretRoom}}{{SuperSecretRoom}}Secret Rooms, {{ChallengeRoom}}{{BossRushRoom}}Challenge Rooms, and the Mega Satan door"

	[C_ID .. 177] = "Přenosný Hrací Automat", -- Portable Slot
	-- English: "{{Coin}} Spend 1 coin for a chance to spawn a pickup"

	[C_ID .. 178] = "Při utrpení zásahu po sobě zanechá poškozující kaluž#Uděluje 24 poškození za sekundu", -- Holy Water
	-- English: "Taking damage spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 180] = "Při doteku prdíš a zanecháváš za sebou jedovaté prdy", -- The Black Bean
	-- English: "Isaac farts when damaged#{{Poison}} The fart poisons enemies"

	[C_ID .. 181] = "Uděluje létání při držení předmětu#{{Speed}} Nastaví tvoji rychlost na 1.5 pokud máš méně než 1.5#Svaté vzlétnutí ve směru použití", -- White Pony
	-- English: "{{Speed}} Sets your Speed to at least 1.5#Flight while held#Using the item dashes in the direction of Isaac's movement, leaving behind beams of light"

	[C_ID .. 186] = "Upřednostňuje Červené Srdce", -- Blood Rights
	-- Full old Desc: "↑ Udělí 40 poškození každému nepříteli#↓ Způsobí ti 1 poškození#Upřednostňuje Červené Srdce"
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 187] = "Rostoucí koule z chlupů#Houpe se kolem tebe#Roste, když zabije nepřítele#Větší koule způsobí větší poškození", -- Guppy's Hairball
	-- English: "Moving swings the hairball around#The ball grows when it kills an enemy#It deals more damage the bigger it is"

	[C_ID .. 188] = "Zrcadlí tvůj pohyb#Střílí směrem k hráči", -- Abel
	-- Full old Desc: "Zrcadlí tvůj pohyb#Střílí směrem k hráči#Uděluje 3.5 poškození za slzu"
	-- English: "Mirrors Isaac's movement#Shoots towards Isaac"

	[C_ID .. 191] = "Náhodný efekt slzy každé 2-3 sekundy", -- 3 Dollar Bill
	-- English: "Isaac's tears get random effects every 2-3 seconds"

	[C_ID .. 198] = "Vytvoří 1 pickup od každého druhu", -- Box
	-- English: "Spawns 1 pickup of each type"

	[C_ID .. 199] = "Více věcí z truhel", -- Mom's Key
	-- Full old Desc: "{{Key}} +2 Klíče#Více věcí z truhel"
	-- English: "Chests contain more pickups"

	[C_ID .. 202] = "Proměňuje nepřátele ve zlato při dotyku#Způsobuje kontaktní poškození na základě počtu tvých mincí#{{Coin}} Při zabíjení zlatých nepřátel padají mince", -- Midas' Touch
	-- English: "{{Petrify}} Touching enemies petrifies them and turns them gold#Isaac deals contact damage based on his coin count#{{Coin}} Killing a golden enemy spawns coins#Poop spawned by Isaac has a high chance to be golden poop"

	[C_ID .. 203] = "Zdvojnásobuje všechny pickupy", -- Humbleing Bundle
	-- English: "Pickups spawned are doubled if possible"

	[C_ID .. 204] = "50% šance na náhodný pickup při zásahu nepřítelem", -- Fanny Pack
	-- English: "Taking damage has a 50% chance to spawn a random pickup"

	[C_ID .. 205] = "{{Battery}} -2 Srdce = Plné nabití předmětu při stisknutí mezerníku#!!! Funguje pouze v případě, že položka nemá žádné nabití!", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of 2 hearts#Only works when the item has no charges"

	[C_ID .. 207] = "LVL1: Orbitální koule#LVL2: Orbitální a střílející koule#LVL3: Obvazová Holka LVL1#LVL4: Obvazová Holka LVL2", -- Ball of Bandages
	-- English: "Lv1: Orbital#{{Charm}} Lv2: Orbital that shoots charmed tears#{{Charm}} Lv3: Bandage Girl#{{Charm}} Lv4: Super Bandage Girl"

	[C_ID .. 208] = "!!! +15% šance na objevení šampionů", -- Champion Belt
	-- Full old Desc: "↑ {{Damage}} +1 Větší Poškození#!!! +15% šance na objevení šampionů"
	-- English: "Champion enemy chance goes from 5% to 20%#Doesn't increase chance of champion bosses"

	[C_ID .. 209] = "{{Confusion}} Výbuchy udělí poškození a zmatou každého nepřítele v místnosti", -- Butt Bombs
	-- Full old Desc: "↑ {{Bomb}} +5 Bomb#{{Confusion}} Výbuchy udělí poškození a zmatou každého nepřítele v místnosti"
	-- English: "{{Confusion}} Explosions concuss and damage every enemy in the room"

	[C_ID .. 210] = "Nesmrtelnost, když stojíš 1 sekundu na místě", -- Gnawed Leaf
	-- English: "After 1 second of inactivity, Isaac becomes invincible"

	[C_ID .. 212] = "↑ 50% šance na oživení", -- Guppy's Collar
	-- English: "50% chance to revive with half a heart on death"

	[C_ID .. 213] = "Slzy blokují nepřátelské střely", -- Lost Contact
	-- Full old Desc: "Štítované slzy#Slzy blokují nepřátelské střely#↓ {{Shotspeed}} -0.16 Menší Rychlost Střel"
	-- English: "Isaac's tears destroy enemy shots"

	[C_ID .. 214] = "Po utrpení zásahu zanechává na zemi poškozující kaluž", -- Anemic
	-- Full old Desc: "↑ {{Range}} +5 Větší Dostřel#Po utrpení zásahu zanechává na zemi poškozující kaluž"
	-- English: "{{Timer}} When taking damage Isaac leaves a trail of blood creep for the room#The creep deals 6 damage per second"

	[C_ID .. 218] = "Šance vyléčit půl srdce každou minutu", -- Placenta
	-- Full old Desc: "↑ {{Heart}} +1 Zvýšení Zdraví#Šance vyléčit půl srdce každou minutu"
	-- English: "{{HealingRed}} 50% chance to heal half a heart every minute"

	[C_ID .. 220] = "{{Bomb}} +5 Bomb", -- Sad Bombs
	-- Full old Desc: "Výbuchy bomby také vystřelí 10 slz v kruhu#{{Bomb}} +5 Bomb"
	-- English: "Isaac's bombs shoot 10 tears in a circle when they explode"

	[C_ID .. 221] = "Poskakující slzy", -- Rubber Cement
	-- English: "Isaac's tears bounce off enemies and obstacles"

	[C_ID .. 222] = "Po uvolnění budou všechny slzy vystřeleny směrem, kterým byly vystřeleny původně#↑ {{Tears}} -2 Zpoždění Slz", -- Anti-Gravity
	-- Full old Desc: "Podržením tlačítek pro střelbu se ve vzduchu budou vznášet slzy#Po uvolnění budou všechny slzy vystřeleny směrem, kterým byly vystřeleny původně#↑ {{Tears}} -2 Zpoždění Slz"
	-- English: "Holding the fire buttons causes tears to hover in midair#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "{{Bomb}} +5 Bomb", -- Pyromaniac
	-- Full old Desc: "Výbuchy tě léčí#{{Bomb}} +5 Bomb"
	-- English: "Immunity to explosions, rock waves, and stomp attacks#{{HealingRed}} Getting hit by explosions heals 1 heart"

	[C_ID .. 224] = "Rozdělené slzy způsobí poloviční poškození", -- Cricket's Body
	-- Full old Desc: "↑ {{Tears}} +1 Více Slz#↓ {{Range}} -10 Menší Dostřel#Slzy se při zásahu rozdělují na 4#Rozdělené slzy způsobí poloviční poškození"
	-- English: "Tears split up in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "{{SoulHeart}} Šance na vytvoření Duševního Srdce, když dostaneš poškození#{{HalfHeart}} Monstra mají šanci vytvořit půl Červeného Srdce po zabití", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a chance to spawn a Soul Heart#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 227] = "Při utrpení zásahu vytvoří 1-2 mince", -- Piggy Bank
	-- Full old Desc: "{{Coin}} +3 mince#Při utrpení zásahu vytvoří 1-2 mince#{{Player14}} 0-1 mincí za Keepera"
	-- English: "{{Coin}} Taking damage spawns 1-2 coins"

	[C_ID .. 228] = "↑ {{Tears}} +1 Více Slz", -- Mom's Perfume
	-- Full old Desc: "{{Fear}} 15% šance vystřelit zastrašující slzy#↑ {{Tears}} +1 Více Slz"
	-- English: "{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 229] = "↓ {{Tears}} 4.3x Zpoždění Slz", -- Monstro's Lung
	-- Full old Desc: "{{Chargeable}} Slzy lze nyní nabít a vystřelit ve stylu brokovnice#↓ {{Tears}} 4.3x Zpoždění Slz"
	-- English: "{{Chargeable}} Tears are charged and released in a shotgun style attack"

	[C_ID .. 230] = "{{BlackHeart}} +6 Černých Srdcí", -- Abaddon
	-- Full old Desc: "↑ {{Damage}} +1.5 Větší Poškození#↑ {{Speed}} +0.2 Zvýšení Rychlosti#{{Fear}} Zastrašující slzy#↓ {{EmptyHeart}} Odstraňuje všechny místa na srdce#{{BlackHeart}} +6 Černých Srdcí"
	-- English: "↓ {{EmptyHeart}} Removes all heart containers#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 231] = "Zanechává po sobě zpomalující kaluž", -- Ball of Tar
	-- Full old Desc: "{{Slow}} 10% šance vystřelit zpomalující slzy#{{Luck}} 100% při 18 Štěstí#Zanechává po sobě zpomalující kaluž"
	-- English: "{{Slow}} {VAR:LUCKCHANCE}% chance to shoot slowing tears#{{Slow}} Isaac leaves a trail of slowing creep"

	[C_ID .. 232] = "(aktivuje se při zásahu)", -- Stop Watch
	-- Full old Desc: "{{Slow}} Permanentní efekt zpomalení#(aktivuje se při zásahu)#↑ +0.3 Zvýšení Rychlosti"
	-- English: "{{Slow}} Taking damage slows all enemies in the room permanently"

	[C_ID .. 233] = "↑ +7 Výška Slz", -- Tiny Planet
	-- Full old Desc: "Slzy obíhají kolem tebe#↑ {{Range}} O Hodně Větší Dostřel!#↑ +7 Výška Slz#Spektrální slzy"
	-- English: "Isaac's tears orbit around him"

	[C_ID .. 234] = "Vytvoří pavouky, když zabiješ nepřítele", -- Infestation 2
	-- English: "Killing an enemy spawns a blue spider"

	[C_ID .. 236] = "Při dotyku proměníš nepřátele v hovno", -- E. Coli
	-- English: "Touching an enemy turns it into poop"

	[C_ID .. 241] = "Zdvojnásobuje všechny odměny za pročištěnou místnost#33% šance na žádnou odměnu za pročištěnou místnost#{{GreedMode}} Neovlivňuje režim Greed Mode", -- Contract from Below
	-- English: "Doubles all room clear rewards#33% chance for no room clear reward"

	[C_ID .. 242] = "50% šance na zablokování nepřátelských slz", -- Infamy
	-- English: "50% chance to block enemy shots"

	[C_ID .. 243] = "Štít blokující nepřátelské slzy", -- Trinity Shield
	-- English: "Blocks enemy shots coming from the direction Isaac is shooting"

	[C_ID .. 244] = "Střílíš náhodné laserové výstřely", -- Tech.5
	-- English: "Occasionally shoot lasers in addition to Isaac's tears"

	[C_ID .. 245] = "Zdvojnásobí všechny tvoje střely", -- 20/20
	-- English: "Isaac shoots 2 tears at once"

	[C_ID .. 246] = "{{SecretRoom}} Odhaluje tajné místnosti", -- Blue Map
	-- English: "{{SecretRoom}} Reveals secret room locations on the map"

	[C_ID .. 247] = "Tvoji spojenci mají dvojnásobné poškození", -- BFFS!
	-- English: "Familiars deal double damage"

	[C_ID .. 248] = "Modří pavouci/mouchy působí dvojnásobné poškození", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage"

	[C_ID .. 249] = "Namísto 1 se objeví 2 Boss předměty#!!! Vzít lze pouze jeden", -- There's Options
	-- English: "Allows Isaac to choose between 2 items after beating a boss"

	[C_ID .. 250] = "{{Bomb}} Všechny bomby se stanou dvojitými bombami", -- Bogo Bombs
	-- English: "{{Bomb}} All bomb drops become double bombs"

	[C_ID .. 251] = "Promění všechny Pilulky na Karty#Vytvoří 1 Kartu", -- Starter Deck
	-- Full old Desc: "{{Card}} Můžeš mít u sebe 2 Karty#Promění všechny Pilulky na Karty#Vytvoří 1 Kartu"
	-- English: "Isaac can carry 2 cards#Turns all pills into cards"

	[C_ID .. 252] = "Promění všechny Karty na Pilulky#Vytvoří 1 Pilulku", -- Little Baggy
	-- Full old Desc: "{{Pill}} Můžeš mít u sebe 2 Pilulky#Promění všechny Karty na Pilulky#Vytvoří 1 Pilulku"
	-- English: "Isaac can carry 2 pills#Turns all cards into pills"

	[C_ID .. 256] = "{{Bomb}} +5 Bomb", -- Hot Bombs
	-- Full old Desc: "{{Burning}} Hořící bomby#{{Bomb}} +5 Bomb"
	-- English: "{{Burning}} Isaac's bombs leave a flame where they explode"

	[C_ID .. 257] = "!!! Výbuch ti může ublížit!", -- Fire Mind
	-- Full old Desc: "{{Burning}} Slzy zapalují nepřátele#Šance, že slzy vybuchnou při zásahu nepřítele#{{Luck}} 100% šance výbuchu při 13 Štěstí#!!! Výbuch ti může ublížit!"
	-- English: "{{Burning}} Isaac's tears light enemies on fire#{VAR:LUCKCHANCE}% chance for tears to explode on enemy impact#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 258] = "Zamíchá všechny tvoje předměty a statistiky při vyzvednutí tohoto předmětu a pokaždé, když změníš patro", -- Missing No.
	-- English: "Rerolls all of Isaac's items and stats on pickup and at every new floor"

	[C_ID .. 260] = "{{CurseBlind}} Imunita vůči Prokletí", -- Black Candle
	-- Full old Desc: "{{CurseBlind}} Imunita vůči Prokletí#{{BlackHeart}} +1 Černé Srdce#{{AngelDevilChance}} +15% šance na Ďábelskou/Andělskou Místnost"
	-- English: "{{CurseBlind}} Immune to curses"

	[C_ID .. 261] = "↓ Udělené poškození se snižuje podle uražené vzdálenosti slzy", -- Proptosis
	-- Full old Desc: "↑ {{Damage}} +100% Větší Poškození#↓ Udělené poškození se snižuje podle uražené vzdálenosti slzy"
	-- English: "↓ Tears deal less damage the further they travel"

	[C_ID .. 262] = "Když zdraví klesne na 1 Srdce, udělí poškození všem nepřátelům v místnosti", -- Missing Page 2
	-- Full old Desc: "{{BlackHeart}} +1 Černé Srdce#Když zdraví klesne na 1 Srdce, udělí poškození všem nepřátelům v místnosti"
	-- English: "Taking damage down to 1 heart damages all enemies in the room"

	[C_ID .. 264] = "Když dostaneš zásah, zaútočí na nepřátele", -- Smart Fly
	-- Full old Desc: "Orbitální moucha#Když dostaneš zásah, zaútočí na nepřátele#Uděluje 22.5 poškození za sekundu"
	-- English: "Attacks enemies when Isaac takes damage"

	[C_ID .. 265] = "Když jej zasáhnou nepřátelské slzy, má 10% šanci poškodit všechny nepřátele v místnosti", -- Dry Baby
	-- English: "10% chance to damage all enemies in the room when it is hit by an enemy tear"

	[C_ID .. 266] = "Zanechává po sobě zpomalující kaluž#Po vyčištění místnosti vytvoří 1-2 přátelské pavouky", -- Juicy Sack
	-- English: "{{Slow}} Leaves slowing creep#Spawns 1-2 friendly spiders after clearing a room"

	[C_ID .. 267] = "Střílí lasery#Pohybuje se ve směru, kterým střílíš", -- Robo-Baby 2.0
	-- Full old Desc: "Střílí lasery#Uděluje 3.5 poškození za střelu#Pohybuje se ve směru, kterým střílíš"
	-- English: "Shoots lasers#Moves in the direction Isaac is shooting"

	[C_ID .. 268] = "Když hráč střílí, vytváří modré mouchy", -- Rotten Baby
	-- English: "Spawns blue flies when Isaac shoots"

	[C_ID .. 269] = "Zanechává po sobě kaluž udělující 6 poškození za sekundu", -- Headless Baby
	-- English: "Leaves creep which deals 6 damage per second"

	[C_ID .. 270] = "{{HalfHeart}} Vyléčí polovinu Srdce, když zabije nepřítele#Uděluje 3.2 poškození za sekundu", -- Leech
	-- Full old Desc: "{{HalfHeart}} Vyléčí polovinu Srdce, když zabije nepřítele#Uděluje 3.2 poškození za sekundu"
	-- English: "Chases enemies#{{HealingRed}} Heals Isaac for half a heart when it kills an enemy"

	[C_ID .. 271] = "Každých pár pokojů vytvoří náhodné pickupy", -- Mystery Sack
	-- English: "Spawns a random pickup every 5-6 rooms"

	[C_ID .. 272] = "Explodující moucha", -- BBF
	-- Full old Desc: "Explodující moucha#Exploze způsobí 60 poškození"
	-- English: "Friendly exploding fly#The explosion deals {VAR:1} damage#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 273] = "Společník jakožto vrhací bomba#Exploze způsobí 60 poškození", -- Bob's Brain
	-- Full old Desc: "Společník jakožto vrhací bomba#Exploze způsobí 60 poškození"
	-- English: "Dashes in the direction Isaac is shooting#Explodes when it hits an enemy#{{Poison}} The explosion deals {VAR:1} damage and poisons enemies#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 274] = "Když dostaneš zásah, získáte orbitální mušku střední vzdálenosti", -- Best Bud
	-- Full old Desc: "Když dostaneš zásah, získáte orbitální mušku střední vzdálenosti#Uděluje 75 poškození za sekundu"
	-- English: "Taking damage spawns one midrange orbital for the room"

	[C_ID .. 275] = "{{Collectible118}} Střílí brimstone laser", -- Lil Brimstone
	-- Full old Desc: "{{Collectible118}} Střílí brimstone laser#Jeho rána uděluje 31.5 poškození za sekundu"
	-- English: "{{Chargeable}} Familiar that charges and shoots a {{Collectible118}} blood beam#It deals {VAR:1} damage over 0.63 seconds"

	[C_ID .. 276] = "Získáš nezranitelné tělo#!!! Když je ale zasaženo Srdce, utrpíš poškození", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 277] = "Přátelský společenský duch", -- Lil Haunt
	-- Full old Desc: "Přátelský společenský duch#Uděluje 4 poškození za sekundu a způsobuje strach"
	-- English: "{{Fear}} Chases and fears enemies"

	[C_ID .. 278] = "{{Heart}} Převádí 1.5 Červených Srdcí na Duševní/Černé srdce nebo pavouka", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#{{SoulHeart}} Spawns a Soul Heart or spider for every 1.5 Red Hearts picked up"

	[C_ID .. 279] = "Velká tlustá orbitální moucha", -- Big Fan
	-- Full old Desc: "Velká tlustá orbitální moucha#Uděluje 30 poškození za sekundu"
	-- English: "Large orbital"

	[C_ID .. 280] = "Náhodně vytváří modré pavouky pokud je v nepřátelské místnosti", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms"

	[C_ID .. 281] = "Společník sloužící jakožto návnada#Místo na tebe se nepřátelé zaměří na něj", -- Punching Bag
	-- English: "Decoy familiar#Enemies target him instead of Isaac"

	[C_ID .. 282] = "Umožňuje ti skákat", -- How to Jump
	-- English: "Allows Isaac to jump over gaps and obstacles"

	[C_ID .. 283] = "Zamíchá všechny pickupy, předměty a tvoje pasivní předměty", -- D100
	-- English: "Reroll all pickups and pedestal items in the room, and all of Isaac's passive items"

	[C_ID .. 284] = "Zamíchá všechny tvoje pasivní předměty", -- D4
	-- English: "Reroll all of Isaac's passive items"

	[C_ID .. 285] = "Zamíchá všechny nepřátele v místnosti", -- D10
	-- English: "Reroll all enemies in the room"

	[C_ID .. 286] = "Napodobuje efekty tvojí držené karty", -- Blank Card
	-- English: "Triggers the effect of the rune or card Isaac holds without using it"

	[C_ID .. 289] = "Vyhodíte červený plamen#Plamen přetrvává, dokud pětkrát nezpůsobí 23 poškození nebo pětkrát nezablokuje střelu", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 5 times"

	[C_ID .. 290] = "{{Heart}} Uloží až 4 Červené Srdce pro pozdější použití", -- The Jar
	-- English: "{{Heart}} Picking up Red Hearts while at full health stores up to 4 of them in the Jar#Using the item drops all stored hearts on the floor"

	[C_ID .. 291] = "!!! Instantně zabíjí hovnové nepřátele a bosse!#Proměňuje nepřátele v hovna", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses"

	[C_ID .. 293] = "Vystřelí krvavé lasery ve všech 4 směrech", -- Head of Krampus
	-- Full old Desc: "Vystřelí krvavé lasery ve všech 4 směrech"
	-- English: "{{Collectible118}} Shoot a 4-way blood beam#They each deal {VAR:1} damage over 1.33 seconds"

	[C_ID .. 294] = "Odrazí blízké nepřátele a jejich střely", -- Butter Bean
	-- Full old Desc: "Odrazí blízké nepřátele a jejich střely#10% šance na proměnění se v silnější {{Collectible484}}Počkat Co? při výměně za jiný aktivní předmět a opětovném sebrání"
	-- English: "Knocks back nearby enemies and projectiles#10% chance to turn into the stronger {{NameC484}} when swapping it with a different active item and picking it up again"

	[C_ID .. 295] = "Udělí 2x poškození hráče celé místnosti#{{Coin}} Cena: 1 mince", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage to all enemies#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "!!! Přemění:#2 Duševní/Černé Srdce na 1 místo/a pro Červené Srdce", -- Converter
	-- English: "{{Heart}} Converts 2 Soul/Black Hearts into 1 heart container"

	[C_ID .. 299] = "Nesmrtelnost pokud jsi dostatečně rychlý#↓ {{Speed}} -0.3 Snížení Rychlosti", -- Taurus
	-- Full old Desc: "{{Speed}} Budeš zrychlovat v nepřátelských místnostech!#Nesmrtelnost pokud jsi dostatečně rychlý#↓ {{Speed}} -0.3 Snížení Rychlosti"
	-- English: "↑ {{Speed}} Slowly gain speed while in hostile rooms#At 2 speed, Isaac becomes invincible and deals contact damage#Afterwards, lose the Taurus speed boost for the room"

	[C_ID .. 300] = "Tvůj dotyk uděluje nepřátelům poškození", -- Aries
	-- Full old Desc: "↑ {{Speed}} +0.25 Zvýšení Rychlosti#Tvůj dotyk uděluje nepřátelům poškození"
	-- English: "Touching enemies deals contact damage"

	[C_ID .. 301] = "Utrpíš pouze polovinu poškození v místnosti, ve které jsi už byl zasažen", -- Cancer
	-- Full old Desc: "{{SoulHeart}} +3 Duševní Srdce#Utrpíš pouze polovinu poškození v místnosti, ve které jsi už byl zasažen"
	-- English: "Taking damage reduces all future damage in the room to half a heart"

	[C_ID .. 302] = "Zvětšení", -- Leo
	-- Full old Desc: "Ničíš kameny, když přes ně chodíš#Zvětšení"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 303] = "Šance získat nesmrtelnost při zásahu#{{Pill}} Převádí negativní pilulky na pozitivní#{{Luck}} 100% šance při 10 Štěstí", -- Virgo
	-- English: "Taking damage can make Isaac temporarily invincible#{{Luck}} 100% chance at 10 luck#{{Pill}} Converts negative pills into positive ones"

	[C_ID .. 304] = "Vyrovnává tvoje statistiky!#!!! Každá další nově změněná statistika ovlivní i ostatní statistiky", -- Libra
	-- Full old Desc: "+6 mincí / Klíčů / Bomb#Vyrovnává tvoje statistiky!#!!! Každá další nově změněná statistika ovlivní i ostatní statistiky"
	-- English: "Balances Isaac's stats#Future stat changes will be spread across all stats"

	[C_ID .. 308] = "Zanecháváš po sobě stopu kaluže#Kaluž uděluje 6 poškození za sekundu", -- Aquarius
	-- English: "Isaac leaves a trail of creep#The creep deals 6 damage per second"

	[C_ID .. 311] = "{{Player12}} Když zemřeš, znovuzrodíš se jako Temný Jidáš#↑ {{Damage}} Ten má 2x Násobič Poškození", -- Judas' Shadow
	-- English: "{{Player12}} When dead, respawn as Dark Judas with a x2 damage multiplier"

	[C_ID .. 312] = "Všechna Červená Srdce nyní léčí dvojnásobek své hodnoty", -- Maggy's Bow
	-- Full old Desc: "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Vyléčí 1 Červené Srdce#Všechna Červená Srdce nyní léčí dvojnásobek své hodnoty"
	-- English: "All Red Hearts heal double their value"

	[C_ID .. 313] = "Ignoruje první zásah v každé místnosti", -- Holy Mantle
	-- English: "Negates the first hit taken once per room"

	[C_ID .. 314] = "Ničí kameny, když přes ně chodíš", -- Thunder Thighs
	-- Full old Desc: "↑ {{Heart}} +1 Zvýšení Zdraví#↓ {{Speed}} -0.4 Snížení Rychlosti#Ničí kameny, když přes ně chodíš"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 315] = "Magnetické slzy#Ovlivňuje nepřátele, pickupy a trinkety", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets"

	[C_ID .. 316] = "!!! Pokud tě něco zasáhne při nabíjení, teleportuje tě do náhodné místnosti", -- Cursed Eye
	-- Full old Desc: "Nabitá salva slz#!!! Pokud tě něco zasáhne při nabíjení, teleportuje tě do náhodné místnosti#{{Collectible260}} Neteleportne tě, pokud máš Černou Svíčku"
	-- English: "Charged wave of {VAR:1} tears#{{Warning}} Taking damage while partially charged teleports Isaac to a random room"

	[C_ID .. 317] = "Slzy po sobě zanechávají kaluž#Kaluž uděluje 30 poškození za sekundu", -- Mysterious Liquid
	-- English: "Isaac's tears leave creep#The creep deals 30 damage per second"

	[C_ID .. 318] = "Spojenec pro blízký souboj", -- Gemini
	-- Full old Desc: "Spojenec pro blízký souboj#Uděluje 6 kontaktního poškození za sekundu "
	-- English: "Close combat familiar"

	[C_ID .. 319] = "Odráží se po místnosti#Střílí směrem k Izákovi#{{Damage}} Jeho poškození se rovná tvému poškození", -- Cain's Other Eye
	-- English: "Bounces around the room#Low accuracy tears that deal Isaac's damage"

	[C_ID .. 320] = "Ovladatelná moucha", -- ???'s Only Friend
	-- Full old Desc: "Ovladatelná moucha#Uděluje 5 kontaktního poškození za sekundu"
	-- English: "Controllable fly"

	[C_ID .. 321] = "Přetahovatelná koule, která dokáže ničit kameny", -- Samson's Chains
	-- Full old Desc: "Přetahovatelná koule, která dokáže ničit kameny#Uděluje 10.7 kontaktního poškození za sekundu"
	-- English: "Draggable ball that can destroy rocks"

	[C_ID .. 322] = "Kopíruje efekt jednoho z tvých spojenců#Působí dvojnásobné poškození", -- Mongo Baby
	-- English: "Mimics your baby familiars' tears#If you have none, shoots normal 3.5 damage tears"

	[C_ID .. 323] = "Při použití vystřelíš 8 slz ve všech směrech#Nabíjí se při střílení", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects#Recharges by shooting tears"

	[C_ID .. 324] = "Teleportuje tě do {{TreasureRoom}}Pokladnice, {{SecretRoom}}Tajné, {{SuperSecretRoom}}Super Tajné nebo JSEM ERROR Místnosti", -- Undefined
	-- English: "Teleports Isaac to the {{TreasureRoom}} Treasure, {{SecretRoom}} Secret, {{SuperSecretRoom}} Super Secret or {{ErrorRoom}} I AM ERROR Room"

	[C_ID .. 325] = "Uřízne ti hlavu#Hlava se změní na nehybného spojence#Ovládej své tělo odděleně", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The head shoots 3.5 damage tears#The body is controlled separately and still shoots Isaac's tears"

	[C_ID .. 326] = "Pro nesmrtelnost podržte mezerník, dokud nebude nabíjecí lišta prázdná#!!! Nedrž to příliš dlouho!", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 327] = "Nesmrtelnost při zásahu pokud máš půl Červeného Srdce nebo méně", -- The Polaroid
	-- English: "Taking damage at half a Red Heart or none makes Isaac temporarily invincible"

	[C_ID .. 328] = "Způsobí poškození všem nepřátelům v místnosti při zásahu pokud máš půl Červeného Srdce nebo méně", -- The Negative
	-- English: "Taking damage at half a Red Heart or none damages all enemies in the room"

	[C_ID .. 329] = "Kontrolovatelná Slza", -- The Ludovico Technique
	-- English: "Replaces Isaac's tears with one giant controllable tear"

	[C_ID .. 331] = "Slzy získávají poškozující auru", -- Godhead
	-- Full old Desc: "Naváděné slzy#↑ {{Damage}} +0.5 Větší Poškození#↑ {{Range}} +1.2 Větší Dostřel#↓ {{Tears}} -0.3 Méně Slz#↓ {{Shotspeed}} -0.3 Menší Rychlost Střel#↑ +0.8 Výška Slz#Slzy získávají poškozující auru"
	-- English: "{{Damage}} Tears gain an aura that deals 4.5x Isaac's damage per second"

	[C_ID .. 332] = "{{Player11}} Když zemřeš, znovuzrodíš se jako Lazarus (Povstaný)", -- Lazarus' Rags
	-- English: "{{Player11}} When dead, revive as Lazarus (Risen)"

	[C_ID .. 333] = "Úplné mapování", -- The Mind
	-- English: "Full mapping effect"

	[C_ID .. 335] = "Poskytuje auru, která odpuzuje nepřátele a střely", -- The Soul
	-- Full old Desc: "{{SoulHeart}} +2 Duševní Srdce#Poskytuje auru, která odpuzuje nepřátele a střely"
	-- English: "Grants an aura that repels enemies and projectiles"

	[C_ID .. 337] = "Zpomaluje nebo zrychluje každou 4. místnost", -- Broken Watch
	-- English: "{{Slow}} Slows down every 4th room#13% chance to speed up the room instead"

	[C_ID .. 338] = "Vrhací bumerang#Omráčí nepřátele a uděluje 2x tvého poškození při zásahu#Může sbírat předměty", -- The Boomerang
	-- English: "Throwable boomerang#{{Petrify}} Petrifies enemies and deals 2x Isaac's damage#Can grab and bring back items"

	[C_ID .. 347] = "Duplikuje všechny předměty/pickupy v aktuální místnosti", -- Diplopia
	-- English: "Duplicates all item pedestals and pickups in the room"

	[C_ID .. 348] = "{{Pill}} Napodobuje efekt tvojí držené pilulky", -- Placebo
	-- English: "{{Pill}} Triggers the effect of the pill Isaac holds without using it"

	[C_ID .. 350] = "{{Poison}} Na začátku každé místnosti otráví každého nepřítele#Zabití nepřátelé po sobě zanechají poškozující kaluž", -- Toxic Shock
	-- English: "{{Poison}} Entering a room poisons all enemies#Enemies killed leave a puddle of creep#The creep deals 30 damage per second"

	[C_ID .. 351] = "Zmrazíš všechny nepřátele v aktuální místnosti#Uděluje 5 poškození a otráví všechny nepřátele v okolí#Vyšle kamennou vlnu po místnosti#!!! Lze použít k otevření tajných místností", -- Mega Bean
	-- English: "{{Petrify}} Petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Sends a rock wave in the direction Isaac is moving#The rock wave can open secret rooms and break rocks"

	[C_ID .. 352] = "↓ Sníží tvoje zdraví na polovinu srdce#Vystřelí jednu velkou průraznou spektrální slzu ((Poškození+1) x 10)", -- Glass Cannon
	-- English: "{{Warning}} Firing the cannon reduces Isaac's health down to half a heart#Shoots a large piercing + spectral tear that does 10x Isaac's damage"

	[C_ID .. 353] = "Bomby nyní vybuchují ve tvaru kříže", -- Bomber Boy
	-- Full old Desc: "{{Bomb}} +5 Bomb#Bomby nyní vybuchují ve tvaru kříže"
	-- English: "Bombs explode in a cross-shaped pattern"

	[C_ID .. 356] = "Způsobí, že se tvůj aktivní předmět při použití aktivuje dvakrát", -- Car Battery
	-- English: "{{Battery}} Using an active item triggers its effect twice"

	[C_ID .. 357] = "Duplikuje tvoje spojence pro aktuální místnost#Pokud žádné spojence nemáš, objeví se {{Collectible113}}Démoní Děcko pro aktuální místnost", -- Box of Friends
	-- English: "{{Timer}} Duplicates all your familiars for the room#{{Collectible113}} Grants a Demon Baby for the room if Isaac has no familiars"

	[C_ID .. 358] = "Spektrální slzy", -- The Wiz
	-- Full old Desc: "Střílíš 2 slzy najednou diagonálně, podobně jako pilulka 'Jsi Čaroděj Harry!'#Spektrální slzy"
	-- English: "Isaac shoots 2 tears at once diagonally"

	[C_ID .. 359] = "Slzy více odrážejí nepřátele", -- 8 Inch Nails
	-- Full old Desc: "↑ {{Damage}} +1.5 Větší Poškození#Slzy více odrážejí nepřátele"
	-- English: "Increases knockback"

	[C_ID .. 360] = "Střílí stejné slzy jako Izák, z hlediska poškození, statistik a efektů", -- Incubus
	-- English: "Shoots tears with the same tear rate, damage and effects as Isaac"

	[C_ID .. 361] = "Vystřeluje slzy a kopíruje tvoje poškození", -- Fate's Reward
	-- English: "Shoots tears with the same damage and effects as Isaac#Shoots at half the rate of other familiars"

	[C_ID .. 362] = "Každých pár místností vytvoří náhodný pickup", -- Lil Chest
	-- English: "35% chance to spawn a pickup every room"

	[C_ID .. 363] = "Blokuje a přitahuje střely#Zablokováním 10 slz v jedné místnosti vytvoří Srdce Věčnosti", -- Sworn Protector
	-- Full old Desc: "Orbitální spojenec#Uděluje 105 kontaktního poškození za sekundu#Blokuje a přitahuje střely#Zablokováním 10 slz v jedné místnosti vytvoří Srdce Věčnosti"
	-- English: "Blocks and attracts enemy shots#{{EternalHeart}} Blocking 10 shots in one room spawns an Eternal Heart"

	[C_ID .. 364] = "Orbitální moucha", -- Friend Zone
	-- Full old Desc: "Orbitální moucha#Uděluje 45 kontaktního poškození za sekundu"
	-- English: "Midrange fly orbital"

	[C_ID .. 365] = "Pohybuje se po stěnách/překážkách v místnosti", -- Lost Fly
	-- Full old Desc: "Pohybuje se po stěnách/překážkách v místnosti#Uděluje 105 kontaktního poškození za sekundu"
	-- English: "Moves along walls/obstacles"

	[C_ID .. 367] = "Když bomba zabije nepřítele, vytvoří modré pavouky#Tvoje bomby se přilepí na nepřátele", -- Sticky Bombs
	-- Full old Desc: "{{Bomb}} +5 Bomb#Když bomba zabije nepřítele, vytvoří modré pavouky#Tvoje bomby se přilepí na nepřátele"
	-- English: "Isaac's bombs stick to enemies#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "Střelba jedním směrem postupně snižuje Zpoždění Slz až o 200 %", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually decreases tear delay up to 200% and decreases accuracy"

	[C_ID .. 371] = "Pokaždé, když dostaneš zásah, vyšleš 6 trollích bomb#Tyto bomby jsou ovlivněny bombovými předměty", -- Curse of the Tower
	-- English: "{{Warning}} Taking damage spawns 6 Troll Bombs#The Troll Bombs inherit Isaac's bomb effects"

	[C_ID .. 372] = "Náhodná šance na vytvoření baterie nebo zmrazení všech nepřátel v místnosti#Šance přidat jedno nabití k tvému aktivnímu předmětu", -- Charged Baby
	-- English: "Every 30 seconds while in an uncleared room, the familiar can:#{{Battery}} Spawn a Battery (max 2 per room)#{{Battery}} Add one charge to the active item (max 2 per room)#{{Petrify}} Petrify all enemies in the room"

	[C_ID .. 373] = "↑ {{Damage}} +25% Větší Poškození za každou slzu, která úspěšně zasáhne nepřítele (max +100%)#Šance ztratit násobitel, když mineš", -- Dead Eye
	-- English: "↑ {{Damage}} Consecutive tear hits on enemies grant +25% damage (max +100%)#Missing has a chance to reset the multiplier"

	[C_ID .. 374] = "{{Luck}} 50% šance při 9 Štěstí", -- Holy Light
	-- Full old Desc: "10% šance na vystřelení Posvátné slzy, která při zásahu vyšle paprsek světla#Paprsek způsobí 4x tvého poškození#{{Luck}} 50% šance při 9 Štěstí"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot holy tears, which spawn a beam of light on hit#{{Damage}} The beam deals 4x Isaac's damage"

	[C_ID .. 375] = "Poskytuje imunitu proti výbuchům a imunitu proti dupání Mámy a Satanovy nohy#20% šance k zablokování slz", -- Host Hat
	-- English: "Grants immunity to explosions, rock wave attacks and Mom and Satan's stomp attacks#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Obchody okamžitě doplňují zásoby při nakupování", -- Restock
	-- Full old Desc: "Vytvoří 3 náhodné pickupy#Obchody okamžitě doplňují zásoby při nakupování"
	-- English: "Buying an item from a Shop restocks it instantly"

	[C_ID .. 377] = "Pavoučí nepřátelé již necílí na Izáka ani mu nezpůsobují kontaktní poškození", -- Bursting Sack
	-- English: "Spider enemies no longer target or deal contact damage to Isaac"

	[C_ID .. 378] = "Střílení slz po dobu 3 sekund vytvoří Prdelní Bombu", -- No. 2
	-- English: "Holding a fire button for 2.35 seconds spawns a lit Butt Bomb"

	[C_ID .. 380] = "Nyní otevíráš zamčené dveře a truhly pomocí mincí namísto klíčů", -- Pay To Play
	-- Full old Desc: "{{Coin}} +5 minc#Nyní otevíráš zamčené dveře a truhly pomocí mincí namísto klíčů"
	-- English: "{{Coin}} Single-key doors must be opened with coins instead of keys"

	[C_ID .. 381] = "Dá ti náhodný předmět na začátku tvojí další hry", -- Eden's Blessing
	-- Full old Desc: "↑ {{Tears}} +0.7 Více Slz#Dá ti náhodný předmět na začátku tvojí další hry"
	-- English: "Grants a random item at the start of the next run"

	[C_ID .. 382] = "Můžeš ji vrhnout na nepřátele k jejich zachycení#Při dalším použití se znovu objeví stejný nepřítel ale jakožto přátelský společník", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns it as a friendly companion"

	[C_ID .. 383] = "Odpálíš všechny slzy aktuálně na obrazovce, což způsobí, že se každá rozdělí na 6 dalších slz, které se budou šířit do kruhu", -- Tear Detonator
	-- English: "Splits all of Isaac's tears currently on screen in a circle of 6 tears"

	[C_ID .. 384] = "{{Chargeable}} Vystřelí se a bude létat po místnosti#Uděluje 5-90 kontaktního poškození za sekundu, závisí to na jeho rychlosti", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-90 contact damage per second depending on speed"

	[C_ID .. 385] = "Sbírá mince poblíž#Upgraduje se po získání 6, 12 a 24 mincí#LVL2: Šance na vytvoření předmětu po vyčištění místnosti#LVL3: Vystřeluje slzy, které mohou při zásahu upustit mince#LVL4: Pronásleduje nepřátele, příležitostně shazuje bomby a může při sběru mincí vytvořit předmět", -- Bumbo
	-- English: "{{Coin}} Picks up nearby coins#Levels up after getting 6, 12, and 24 coins#Lv2: Chance to spawn item after room clears#Lv3: Shoots tears that can spawn coins on hit#Lv4: Chases enemies, occasionally dropping bombs, can spawn item on coin pickup"

	[C_ID .. 386] = "Zamíchá jakýkoli objekt na jiný náhodný typ objektu (např. hovno, vázy, TNT, červené hovno, kamenné bloky atd.)", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)"

	[C_ID .. 387] = "Vytváří velkou světelnou auru, která zpomaluje nepřátele a projektily uvnitř", -- Censer
	-- English: "{{Slow}} Familiar surrounded by a huge aura of light that slows down enemies and projectiles in it"

	[C_ID .. 388] = "Převádí klíče na náhodné truhly", -- Key Bum
	-- English: "{{Key}} Picks up nearby keys#{{Chest}} Spawns random chests in return"

	[C_ID .. 389] = "{{Rune}} Vytvoří náhodnou runu každých 5-6 místností", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune every 5-6 rooms"

	[C_ID .. 390] = "Střílí slzy Nejsvětějšího Srdce", -- Seraphim
	-- Full old Desc: "Střílí slzy Nejsvětějšího Srdce#Uděluje 10 poškození za střelu"
	-- English: "Shoots Sacred Heart tears"

	[C_ID .. 391] = "{{Charm}} Pokaždé, když Izák utrpí poškození, okouzlí každého nepřítele v místnosti", -- Betrayal
	-- English: "{{Charm}} Taking damage charms all enemies in the room"

	[C_ID .. 392] = "Dává ti náhodný efekt předmětu zvěrokruhu v každém patře", -- Zodiac
	-- English: "Grants a random zodiac item effect every floor"

	[C_ID .. 393] = "{{Poison}} 15% šance vystřelit jedovaté slzy#{{Poison}} Otráví nepřátele při kontaktu#{{BlackHeart}} Nepřátelé, kteří byli otráveni, mají šanci vytvořit po smrti Černé Srdce", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Poisoned enemies have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "↑ +0.3 Výška Slz", -- Marked
	-- Full old Desc: "Slzy automaticky míří na červený terč na zemi, který ovládá hráč#↑ {{Tears}} +0.7 Více Slz#↑ {{Range}} +3.15 Větší Dostřel#↑ +0.3 Výška Slz"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground"

	[C_ID .. 395] = "{{Chargeable}} Získáš schopnost nabíjet a vystřelovat střely jakožto laserový prstenec, který se pohybuje po místnosti#Větší velikost prstence bude s delším nabíjením", -- Tech X
	-- English: "{{Chargeable}} Isaac's tears are replaced by a chargeable laser ring#Ring size increases with charge amount"

	[C_ID .. 396] = "Vytvoří až dva portály pro cestování mezi nimi#Lze umístit do různých místností", -- Ventricle Razor
	-- English: "Creates up to two portals to travel between#Can be placed in different rooms"

	[C_ID .. 397] = "↑ +0.5 Výška Slz", -- Tractor Beam
	-- Full old Desc: "Izákovy slzy nyní putují přímo vpřed podle paprsku světla, ale budou se také pohybovat do stran v závislosti na pohybu tvého hráče#↑ {{Tears}} +0.5 Více Slz#↑ {{Range}} +5.25 Větší Dostřel#↑ {{Shotspeed}} +0.16 Větší Rychlost Střel#↑ +0.5 Výška Slz"
	-- English: "Isaac's tears always travel along a beam of light in front of him"

	[C_ID .. 398] = "Slzy mohou nepřátele zmenšit#Scvrklé nepřátele lze rozdrtit a zabít tím, že po nich přejdeš", -- God's Flesh
	-- English: "{{Shrink}} Tears can shrink enemies#Shrunken enemies can be crushed and killed by walking over them"

	[C_ID .. 400] = "Vytvoří před tebou kopí#Uděluje dvakrát tvoje poškození#Šance zastrašit nepřátele při kontaktu", -- Spear of Destiny
	-- English: "Isaac holds a spear in front of him#{{Fear}} The spear deals twice his damage and can fear enemies on contact"

	[C_ID .. 401] = "25% šance na vystřelení přilepující se bombové slzy#Přilepující se bombové slzy nezpůsobí poškození při zásahu", -- Explosivo
	-- English: "25% chance to shoot sticky bomb tears#Sticky bomb tears do not deal damage on hit and explode after a few seconds"

	[C_ID .. 402] = "Předměty budou nyní vybírány z náhodných skupin předmětů", -- Chaos
	-- Full old Desc: "Předměty budou nyní vybírány z náhodných skupin předmětů#Vytvoří 1-6 náhodných pickupů"
	-- English: "All items are chosen from random item pools"

	[C_ID .. 403] = "Umožňí ti vidět poškození způsobené slzami a ukazatele zdraví všech nepřátel#Vyvolává náhodný stavový efekt při kontaktu#Náhodně vytváří baterie", -- Spider Mod
	-- English: "Displays tear damage and health bars of all enemies#Inflicts random status effects to enemies on contact#Randomly spawns batteries"

	[C_ID .. 404] = "Pokud je zasaženo, prdne si, což nepřátele okouzlí, otráví nebo odrazí zpět", -- Farting Baby
	-- Full old Desc: "Blokuje projektily#Pokud je zasaženo, prdne si, což nepřátele okouzlí, otráví nebo odrazí zpět"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies"

	[C_ID .. 405] = "Poskakuje po místnosti", -- GB Bug
	-- Full old Desc: "Poskakuje po místnosti#Uděluje 120 kontaktního poškození za sekundu a aplikuje náhodný stavový efekt"
	-- English: "Bounces around the room#Applies random status effects to enemies on contact"

	[C_ID .. 406] = "Zamíchá tvoje statistiky#Ovlivní pouze poškození, slzy, dosah a rychlost", -- D8
	-- English: "Multiplies Isaac's damage, tears, range and speed stats by between x0.5 and x2#The multipliers are rerolled each use"

	[C_ID .. 407] = "↑ Zvyšuje jednu z tvých statistik v závislosti na barvě aury kolem tebe#Když utrpíš poškození, získáš novou auru#{{ColorRed}}Červená{{CR}} = {{Damage}} +4 Větší Poškození#{{ColorBlue}}Modrá{{CR}} = {{Tears}} -4 Zpoždění Slz#{{ColorYellow}}Žlutá{{CR}} = {{Speed}} +0.5 Zvýšení Rychlosti#{{ColorOrange}}Oranžová{{CR}} = {{Range}} +7.5 Větší Dostřel, +1 Výška Slz", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and gives Isaac a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} -4 Tear delay#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +7.5 Range, ↑ +1 Tear height"

	[C_ID .. 408] = "Když utrpíš poškození, objeví se kolem Izáka prstenec černého laseru#{{BlackHeart}} Nepřátelé zabití laserem mají šanci vytvořit Černé Srdce", -- Athame
	-- English: "Taking damage creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the ring have a 15% chance to drop a Black Heart"

	[C_ID .. 409] = "Když Izák nemá Červené Srdce:#Získáš létání#Každých 40 sekund v nepřátelské místnosti získáš na 10 sekund štít", -- Empty Vessel
	-- Full old Desc: "{{BlackHeart}} +2 Černé Srdce#Když Izák nemá Červené Srdce:#Získáš létání#Každých 40 sekund v nepřátelské místnosti získáš na 10 sekund štít"
	-- English: "{{EmptyHeart}} When Isaac has no Red Hearts:#Flight#Every 40 seconds while in a hostile room, gain a shield for 10 seconds"

	[C_ID .. 411] = "↑ {{Damage}} +0.5 Větší Poškození za každého zabitého nepřítele v aktuální místnosti#Maximálně +5 Větší Poškození po 10 zabitích", -- Lusty Blood
	-- English: "↑ {{Damage}} +0.5 Damage for each enemy killed in the room#Caps at +5 Damage after 10 kills"

	[C_ID .. 412] = "Po 15 utrpeného poškození získá Izák stálého společenského démona#Max. až 4 společníci", -- Cambion Conception
	-- English: "Taking damage 15 times spawns a permanent demon familiar#After two familiars, it takes 30 instead of 15#Caps at 4 familiars"

	[C_ID .. 413] = "Po sebrání 15 srdcí získá Izák trvalého andělského společníka#Max. až 5 společníků", -- Immaculate Conception
	-- English: "Picking up 15 hearts spawns a permanent angelic familiar#Caps at 5 familiars#{{SoulHeart}} If all familiars have been granted, spawns a Soul Heart instead"

	[C_ID .. 414] = "{{TreasureRoom}} Dva předměty se nyní objeví ve všech Pokladnicích#Můžeš si vybrat pouze jeden", -- More Options
	-- English: "{{TreasureRoom}} Allows Isaac to choose between 2 items in treasure rooms"

	[C_ID .. 415] = "Pokud nemáš žádné poškozené místa s Červenými Srdci:#{VAR:EFFECTLIST}#Deaktivuje se pro aktuální místnost, pokud utrpíš poškození", -- Crown Of Light
	-- Full old Desc: "{{SoulHeart}} +2 Duševní Srdce#Pokud nemáš žádné poškozené místa s Červenými Srdci:#↑ {{Damage}} +100% Větší Poškození#↑ {{Range}} +5.25 Větší Dostřel#↑ +0.5 Výška Slz#↓ {{Shotspeed}} -0.3 Menší Rychlost Střel#Deaktivuje se pro aktuální místnost, pokud utrpíš poškození"
	-- English: "If Isaac has no damaged heart containers:#{VAR:EFFECTLIST}#Taking any damage removes the effect for the room"

	[C_ID .. 416] = "Umožňí ti nosit dvě karty/pilulky/runy", -- Deep Pockets
	-- English: "Allows Isaac to carry two runes/cards/pills"

	[C_ID .. 417] = "Poskakuje po místnosti s poškozující aurou, která každou sekundu působí 129 % tvého poškození#↑ {{Damage}} +50 % poškození, když stojíš v auře", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 1.29x Isaac's damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 418] = "S každou slzou, kterou vystřelíš, ti poskytne jiný efekt pro další slzu", -- Fruit Cake
	-- English: "Each one of Isaac's tears gets a different effect"

	[C_ID .. 419] = "Teleportuje tě do náhodné místnosti, která ještě nebyla prozkoumána", -- Teleport 2.0
	-- Full old Desc: "Teleportuje tě do náhodné místnosti, která ještě nebyla prozkoumána#Hierarchie: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"
	-- English: "Teleports Isaac to a room that has not been cleared yet#Hierarchy: {VAR:TEXT}"

	[C_ID .. 420] = "Chůze v kruhu vytvoří na podlaze symbol pentagramu, který působí 10 poškození za tik", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds"

	[C_ID .. 421] = "{{Charm}}Aplikuje efekt okouzlení na všechny nepřátele v blízkém dosahu a způsobí jim 5 poškození", -- Kidney Bean
	-- English: "{{Charm}} Charms and deals 5 damage to all enemies in close range"

	[C_ID .. 422] = "Přetočíš čas a vrátíš se zpět do předchozí místnosti, ve které jsi byl předtím a do stejného stavu oné místnosti#Po třech použitích se stanou obyčejnými přesýpacími hodinami", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in"

	[C_ID .. 423] = "Velký kruh kolem tebe, způsobující poškození při kontaktu každou sekundu#Šance na odražení nepřátelských projektilů", -- Circle of Protection
	-- English: "Surrounds Isaac with a large halo that deals his damage on contact per second#Chance to reflect enemy projectiles"

	[C_ID .. 424] = "Pickupy mají 33% šanci, že budou nahrazeny pytlíkem#Vytvoří pytlík", -- Sack Head
	-- English: "Pickups have a chance to be replaced with a {{GrabBag}}sack:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Spawns a sack"

	[C_ID .. 425] = "Vytváří před tebou kužel světla, který zpomaluje nepřátele a projektily uvnitř něj#Odstraňuje Prokletí Temnoty pro aktuální patro", -- Night Light
	-- English: "{{Slow}} Spawns a slowing cone of light in front of Isaac"

	[C_ID .. 427] = "Vytvoří tlačitelný TNT barel#Pokud jej použiješ podruhé ve stejné místnosti, zatímco tam je poslední TNT barel, tak ten starší na dálku exploduje", -- Mine Crafter
	-- English: "Spawns a pushable TNT barrel#Using the item a second time in the same room remotely detonates the barrel"

	[C_ID .. 429] = "{{Coin}} Nepřátelé mají 5% šanci vytvořit minci při zasažení tvojí slzou", -- Head of the Keeper
	-- English: "{{Coin}} Hitting an enemy with a tear has a 5% chance to spawn a Penny"

	[C_ID .. 430] = "Střílí slzy na nepřátele poblíž, jeho slzy působí poškození rovnající se tvému poškození", -- Papa Fly
	-- Full old Desc: "Sleduje tvůj přesný pohyb s 1 sekundovým zpožděním#Střílí slzy na nepřátele poblíž, jeho slzy působí poškození rovnající se tvému poškození"
	-- English: "{{Damage}} Shoots tears at nearby enemies that deal Isaac's damage"

	[C_ID .. 431] = "Slzy, které jím projdou, se rozdělí a získají zvýšení rychlosti", -- Multidimensional Baby
	-- Full old Desc: "Sleduje tvůj přesný pohyb s 2 sekundovým zpožděním#Slzy, které jím projdou, se rozdělí a získají zvýšení rychlosti"
	-- English: "Tears that pass through it are doubled and gain a range + shot speed boost"

	[C_ID .. 432] = "Bomby mají 25% šanci vytvořit náhodný pickup a 15% šanci okouzlit nepřátele, když explodují", -- Glitter Bombs
	-- Full old Desc: "{{Bomb}} +5 Bomb#Bomby mají 25% šanci vytvořit náhodný pickup a 15% šanci okouzlit nepřátele, když explodují"
	-- English: "{{Charm}} Isaac's bombs have a 25% chance to drop a random pickup and a 15% chance to charm enemies when they explode"

	[C_ID .. 433] = "Pokaždé, když utrpíš poškození, aplikuje efekt zastrašení na všechny nepřátele a vytvoří přátelského černého červa", -- My Shadow
	-- Full old Desc: "Pokaždé, když utrpíš poškození, aplikuje efekt zastrašení na všechny nepřátele a vytvoří přátelského černého červa#Červ uděluje 5 poškození za sekundu"
	-- English: "{{Fear}} Taking damage fears all enemies in the room and spawns a friendly black charger"

	[C_ID .. 434] = "Pokaždé, když zabiješ nepřítele, bude do nádoby přidána modrá muška#Max. 20 much#Použití předmětu uvolní všechny mouchy", -- Jar of Flies
	-- English: "Killing an enemy adds a blue fly to the jar, up to 20 flies#Using the item releases all the flies"

	[C_ID .. 435] = "Vystřelí 4 slzy do kříže", -- Lil Loki
	-- Full old Desc: "Vystřelí 4 slzy do kříže#Uděluje 3.5 poškození za slzu"
	-- English: "Shoots 4 tears in a cross pattern"

	[C_ID .. 436] = "{{Tears}} Po utrpení poškození získáš Více Slz pro zbytek místnosti", -- Milk!
	-- English: "{{Tears}} Taking damage grants a Tears up for the duration of the room"

	[C_ID .. 437] = "Obnovuje všechny nepřátele v místnosti#Umožňuje ti nahromadit odměny za pročištěné místnosti#!!! Pokud se použije v boji proti Greedovi, může místnost přehodit na Obchod", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room#If used after a Greed fight, rerolls the room into a normal Shop/Secret Room"

	[C_ID .. 440] = "↑ +2 Výška Slz", -- Kidney Stone
	-- Full old Desc: "Náhodně při střelbě přestaneš střílet a uvolníš salvu slz a ledvinový kámen#↓ -0.2 Snížení Rychlosti#↓ -17 Menší Dostřel#↑ +2 Výška Slz"
	-- English: "Isaac occasionally stops firing and charges an attack that releases a burst of tears and a kidney stone"

	[C_ID .. 441] = "Vystřelí obrovský Mega Satanský laser na 15 sekund#Laser přetrvává mezi místnostmi a patry", -- Mega Blast
	-- English: "{{Timer}} Fires a huge Mega Satan blood beam for 15 seconds#The beam persists between rooms and floors"

	[C_ID .. 442] = "!!! Zatímco máš přesně 1 plné Červené Srdce:#{VAR:EFFECTLIST}", -- Dark Prince's Crown
	-- Full old Desc: "!!! Zatímco máš přesně 1 plné Červené Srdce:#↑ +1.5 {{Range}} Větší Dostřel#↑ {{Tears}} +0.75 Více Slz#↑ +0.2 {{Shotspeed}} Větší Rychlost Střel#↑ +1 Výška Slz#Nefunguje s postavami bez Červených Srdcí"
	-- English: "While at 1 full Red Heart:#{VAR:EFFECTLIST}"

	[C_ID .. 444] = "Každých 15 vystřelených slz vystřelíte shluk slz#Každá slza ve shluku způsobí dvojnásobné poškození", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears#Tears in the cluster deal double damage"

	[C_ID .. 445] = "{{LadderRoom}} Při vstupu do místnosti s padacími dvířky vedoucí do průlezu pod kamenem se ozve štěkání", -- Dog Tooth
	-- Full old Desc: "↑ {{Damage}} +0.3 Větší Poškození#↑ {{Speed}} +0.1 Zvýšení Rychlosti#{{SecretRoom}} Vlk zavyje pokud stoupíš do místnosti, která je vedle Tajné/Super Tajné Místnosti#{{LadderRoom}} Při vstupu do místnosti s padacími dvířky vedoucí do průlezu pod kamenem se ozve štěkání"
	-- English: "{{SecretRoom}}{{SuperSecretRoom}} A wolf howls in rooms adjacent to a Secret/Super Secret Room#{{LadderRoom}} A dog barks in rooms with a crawlspace under a rock"

	[C_ID .. 446] = "Při střelbě získáš zelenou auru, která otráví všechny nepřátele v ní#Jed působí tvoje poškození", -- Dead Tooth
	-- English: "{{Poison}} While firing, Isaac is surrounded by a green aura that poisons enemies"

	[C_ID .. 447] = "Při střelbě bez pauzy se každých 7.5 sekund vytvoří smradlavý oblak#Oblak způsobí 3.5 poškození pětkrát za sekundu#Oblak setrvává 15 sekund#Střelbou s ním lze pohybovat", -- Linger Bean
	-- English: "Firing without pause for 7.5 seconds spawns a poop cloud#The cloud deals Isaac's damage 5 times a second#The cloud lasts 15 seconds and can be moved by shooting it"

	[C_ID .. 448] = "Při poškození:#{{Heart}} 25% šance na vytvoření Červeného Srdce#{{Collectible214}} 10% šance na získání ↑ +5 Větší Dostřel a zanecháš stopu krvavé kaluže pro aktuální místnost", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{Collectible214}} 10% chance to get ↑ {{Range}} +5 Range and leave a trail of blood creep for the room"

	[C_ID .. 449] = "{{Confusion}} Nepřátelské střely mají 25% šanci, že se odrazí jako matoucí slzy", -- Metal Plate
	-- Full old Desc: "{{SoulHeart}} +1 Duševní Srdce#{{Confusion}} Nepřátelské střely mají 25% šanci, že se odrazí jako matoucí slzy"
	-- English: "{{Confusion}} Enemy bullets have a 25% chance to be reflected as concussive tears"

	[C_ID .. 450] = "Každých 20 slz vystřelíš mincovou slzu, která promění nepřátele ve zlato#To stojí 1 minci#Zasažení nepřátelé po smrti vytvoří minci", -- Eye of Greed
	-- English: "Every 20 tears, Isaac shoots a coin tear that deals double damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-4 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "{{Card}} Zdvojnásobí účinek jakékoli použité karty", -- Tarot Cloth
	-- Full old Desc: "{{Card}} Vytvoří náhodnou kartu nebo runu při sebrání#{{Card}} Zdvojnásobí účinek jakékoli použité karty"
	-- English: "{{Card}} Card effects are doubled or enhanced"

	[C_ID .. 452] = "Při utrpení poškození vystřelíš 10 slz v kruhu kolem sebe#Slzy způsobí 125% tvého poškození", -- Varicose Veins
	-- English: "Taking damage shoots 10 tears in a circle around Isaac#The tears deal Isaac's damage + 25"

	[C_ID .. 453] = "↑ +1.5 Větší Dostřel", -- Compound Fracture
	-- Full old Desc: "Kostní slzy#Slzy se při zasažení čehokoli roztříští na 1-3 menší kostní úlomky#↑ +1.5 Větší Dostřel#↑ +1 Výška Slz"
	-- English: "Tears shatter into 1-3 small bone shards upon hitting anything"

	[C_ID .. 454] = "Můžeš nosit dvě karty, runy nebo pilulky#Při sebrání vytvoří kartu, pilulku nebo runu", -- Polydactyly
	-- English: "Spawns a {{Rune}} rune, {{Card}} card or {{Pill}} pill on pickup#Allows Isaac to carry 2 runes/cards/pills"

	[C_ID .. 455] = "Vytvoří šťastnou minci", -- Dad's Lost Coin
	-- Full old Desc: "↑ {{Range}} +1.5 Větší Dostřel#↑ +1 Výška Slz#Vytvoří šťastnou minci"
	-- English: "{{Luck}} Spawns a Lucky Penny"

	[C_ID .. 457] = "20% šance na ignorování poškození", -- Cone Head
	-- Full old Desc: "{{SoulHeart}} +1 Duševní Srdce#20% šance na ignorování poškození"
	-- English: "20% chance to negate damage taken"

	[C_ID .. 458] = "{{Trinket}} Vytvoří náhodný trinket při sebrání", -- Belly Button
	-- Full old Desc: "{{Trinket}} Vytvoří náhodný trinket při sebrání#{{Trinket}} Udělí 1 místo pro trinket navíc"
	-- English: "{{Trinket}} Allows Isaac to carry 2 trinkets"

	[C_ID .. 459] = "20% šance vystřelit přilepující se jedovaté slzy#Drží se na nepříteli 60 sekund", -- Sinus Infection
	-- Full old Desc: "20% šance vystřelit přilepující se jedovaté slzy#Uděluje tvoje poškození každou sekundu#Drží se na nepříteli 60 sekund"
	-- English: "20% chance to shoot a sticky booger#{{Damage}} Boogers deal Isaac's damage once a second and stick for {VAR:1} seconds#{{Luck}} Not affected by luck"

	[C_ID .. 460] = "{{Confusion}} 5% šance na vystřelení matoucí slzy#Trochu zatemní obrazovku", -- Glaucoma
	-- English: "{{Confusion}} 5% chance to shoot concussive tears#Makes the screen slightly darker"

	[C_ID .. 461] = "Po zásahu vytvoří modrého pavouka nebo mouchu", -- Parasitoid
	-- Full old Desc: "15% šance na vystřelení kokonu s vejci#{{Slow}} Při zásahu se objeví zpomalující kaluž#Po zásahu vytvoří modrého pavouka nebo mouchu"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot egg sacks#{{Slow}} Egg sacks spawn slowing creep and a blue spider or fly on hit"

	[C_ID .. 462] = "Po zasažení prvního nepřítele dále slza působí dvojnásobné poškození a získá naváděcí efekt", -- Eye of Belial
	-- Full old Desc: "↑ {{Range}} +1.5 Větší Dostřel#↑ +1 Výška Slz#Poskytuje průrazné slzy#Po zasažení prvního nepřítele dále slza působí dvojnásobné poškození a získá naváděcí efekt"
	-- English: "Hitting an enemy makes the tear homing and doubles its damage"

	[C_ID .. 463] = "Slzy mají šanci zničit kameny a otevřít dveře", -- Sulfuric Acid
	-- Full old Desc: "↑ {{Damage}} +0.3 Větší Poškození#Slzy mají šanci zničit kameny a otevřít dveře"
	-- English: "Isaac's tears can destroy rocks and open doors"

	[C_ID .. 464] = "Šampioni častěji vytvářejí pickupy po jejich smrti", -- Glyph of Balance
	-- Full old Desc: "{{SoulHeart}} +2 Duševní Srdce#Šampioni častěji vytvářejí pickupy po jejich smrti"
	-- English: "Champion enemies drop whatever pickup Isaac needs the most"

	[C_ID .. 465] = "Umožňuje ti střílet slzy diagonálně střelbou ve dvou směrech", -- Analog Stick
	-- Full old Desc: "↑ {{Tears}} +0.3 Více Slz#Umožňuje ti střílet slzy diagonálně střelbou ve dvou směrech"
	-- English: "Allows Isaac to shoot tears in any direction"

	[C_ID .. 466] = "{{Poison}} První zabitý nepřítel v místnosti exploduje a otráví všechny okolní nepřátele", -- Contagion
	-- English: "{{Poison}} The first enemy killed in a room explodes and poisons all nearby enemies#Enemies that die while poisoned also explode and poison nearby enemies"

	[C_ID .. 467] = "{{Damage}} Uděluje konstantních 10 % tvého poškození nepřátelům ve směru, na který prst ukazuje", -- Finger!
	-- English: "{{Damage}} Constantly deals 10% of Isaac's damage in the direction it points"

	[C_ID .. 469] = "Zanechává po sobě stopu kaluže#Kaluž uděluje 6 poškození za sekundu#Nepřátelé, kteří se dotknou mraku, mohou vytvořit Posvátný Světelný paprsek", -- Depression
	-- English: "Leaves a trail of creep#The creep deals 6 damage per second#Enemies that touch the cloud can be hit by a holy light beam"

	[C_ID .. 470] = "Poskakuje po místnosti#Při střelbě se přestane pohybovat#Když se zastaví, může blokovat projektily", -- Hushy
	-- Full old Desc: "Poskakuje po místnosti#Způsobuje kontaktní poškození#Při střelbě se přestane pohybovat#Když se zastaví, může blokovat projektily"
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped"

	[C_ID .. 471] = "Uděluje 3.5 poškození za slzu", -- Lil Monstro
	-- Full old Desc: "{{Chargeable}} Nabíjí své slzy a střílí ve stylu brokovnice {{Collectible229}}Monstrových Plic#Uděluje 3.5 poškození za slzu"
	-- English: "{{Chargeable}} Charges a shotgun attack similar to {{NameC229}}#Each tear deals 3.5 damage"

	[C_ID .. 472] = "Ostatní spojenci ho následují#Přestane se pohybovat, když střílíš#Když přestaneš střílet, teleportují se zpět k tobě", -- King Baby
	-- English: "Other familiars follow it#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 473] = "Spojenec, který se velmi pomalu vystřelí dopředu", -- Big Chubby
	-- Full old Desc: "Spojenec, který se velmi pomalu vystřelí dopředu#Uděluje 40.5 kontaktního poškození za sekundu"
	-- English: "Very slowly charges forwards"

	[C_ID .. 476] = "Duplikuje 1 náhodný pickup v aktuální místnosti", -- D1
	-- English: "Duplicates a random pickup in the room"

	[C_ID .. 477] = "!!! Při použití zkonzumuje všechny předměty v místnosti#Aktivní předmět: Jeho efekt bude přidán k efektu Prázdnoty (Složení efektů)#↑ Pasivní předmět: Malé vylepšení náhodné statistiky", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate, and will activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 478] = "Zmrazí všechny nepřátele v místnosti, dokud nezačneš znovu střílet#Kontakt se zmrzlým nepřítelem ti ublíží#Nepřátelé se po 30 sekundách rozmrazí", -- Pause
	-- English: "Pauses all enemies in the room until Isaac shoots#Touching a paused enemy still deals damage to Isaac#Enemies unpause after 30 seconds"

	[C_ID .. 479] = "{{Trinket}} Spotřebuje tvůj trinket a předá ti jeho efekt natrvalo#Objevuje se více trinketů", -- Smelter
	-- English: "{{Trinket}} Consumes Isaac's held trinkets and grants their effects permanently#Increases the spawn rate of trinkets"

	[C_ID .. 480] = "Převádí pickupy na modré mouchy nebo pavouky#Zdvojnásobuje tvoje současné modré mouchy/pavouky#Vytvoří 1 modrou mušku nebo pavouka, pokud žádného nemáš", -- Compost
	-- English: "Converts pickups into blue flies or spiders#Doubles all blue flies and spiders#Spawns 1 blue fly or spider if Isaac has none"

	[C_ID .. 482] = "Promění tě v jinou postavu#Odstraní poslední předmět, který jsi sebral", -- Clicker
	-- English: "Changes your character to a random character#Removes the most recent item collected"

	[C_ID .. 483] = "Ovlivňuje celé patro#Všechny objekty explodují#{VAR:EFFECTLIST}#Otevírá dveře do Boss Rush, Hush a všech Tajných Místností", -- Mama Mega!
	-- Full old Desc: "Ovlivňuje celé patro#Všechny objekty explodují#Uděluje 200 poškození všem nepřátelům#Otevírá dveře do Boss Rush, Hush a všech Tajných Místností"
	-- English: "Affects the whole floor#Explodes all objects#{VAR:EFFECTLIST}#Opens secret rooms#Opens Boss Rush and Hush regardless of time"

	[C_ID .. 484] = "Po použití odstrčí nepřátele a vytvoří vlnu kamení#Dokáže otevřít místnosti a rozbít kameny", -- Wait What?
	-- English: "Upon use, pushes enemies away and spawns a rock wave around Isaac#The rock wave can open rooms and break rocks"

	[C_ID .. 485] = "50% šance na zdvojnásobení všech předmětů, pickupy a truhel v místnosti#50% šance na odstranění předmětů/pickupů/truhly v místnosti a vytvoření 1 mince", -- Crooked Penny
	-- English: "50% chance to double all items, pickups and chests in room#50% chance to remove items / pickups in room and spawn 1 coin"

	[C_ID .. 486] = "Zraní tě, aniž by ti udělila poškození#Může spustit určité efekty", -- Dull Razor
	-- English: "Hurts Isaac without removing health#Triggers any on-hit item effects"

	[C_ID .. 488] = "Udělí ti efekt náhodného předmětu pro aktuální místnost", -- Metronome
	-- English: "Grants a random item effect for the room"

	[C_ID .. 489] = "Náhodný efekt hracích kostek při každém použití", -- D Infinity
	-- English: "Triggers a random dice effect each use"

	[C_ID .. 490] = "Vytvoří 2 náhodné předměty v závislosti na aktuální skupině předmětů v místnosti", -- Eden's Soul
	-- English: "Spawns 2 random items depending on the current room's item pool#Starts with no charges"

	[C_ID .. 491] = "{{Poison}} Použití pilulky otráví všechny nepřátele v místnosti", -- Acid Baby
	-- Full old Desc: "{{Pill}} Každé 3 místnosti vytvoří náhodnou pilulku#{{Poison}} Použití pilulky otráví všechny nepřátele v místnosti"
	-- English: "{{Pill}} Spawns a random pill every {VAR:1} rooms#{{Poison}} Using a pill poisons all enemies in the room"

	[C_ID .. 492] = "Zvýrazňuje umístění {{SecretRoom}} Tajných Místností, zbarvených kamenů a padacích dvířek vedoucí do průlezu", -- YO LISTEN!
	-- Full old Desc: "↑ {{Luck}} +1 Zvýšení Štěstí#Zvýrazňuje umístění {{SecretRoom}} Tajných Místností, zbarvených kamenů a padacích dvířek vedoucí do průlezu"
	-- English: "Highlights the location of {{SecretRoom}} secret rooms, tinted rocks and {{LadderRoom}} crawlspaces"

	[C_ID .. 493] = "Za každé prázdné místo na Srdce:#{VAR:EFFECTLIST}", -- Adrenaline
	-- Full old Desc: "Za každé prázdné místo na Srdce:#↑ +0.2 Větší Poškození"
	-- English: "For every empty heart container:#{VAR:EFFECTLIST}"

	[C_ID .. 494] = "Slzy při zásahu způsobí 1-2 jiskry elektřiny#Jiskry způsobí polovinu tvého poškození", -- Jacob's Ladder
	-- English: "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half of Isaac's damage"

	[C_ID .. 495] = "Šance vystřelit červený plamen, který blokuje nepřátelské výstřely a působí kontaktní poškození#Plamen zůstane, dokud pětkrát nezpůsobí poškození nebo nezablokuje střelu", -- Ghost Pepper
	-- English: "Chance to shoot a red flame that blocks enemy shots and deals contact damage#The flame disappears after dealing damage or blocking shots 5 times"

	[C_ID .. 496] = "Jehly okamžitě zabijí normální nepřátele a roztříští je do 10 slz#Jehly způsobí 3x poškození Bossům", -- Euthanasia
	-- Full old Desc: "3,33% šance na vystřelení jehly#{{Luck}} 100% šance při 15 Štěstí#Jehly okamžitě zabijí normální nepřátele a roztříští je do 10 slz#Jehly způsobí 3x poškození Bossům"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a needle#Needles kill normal enemies instantly, bursting them into 10 tears#{{Damage}} Needles deal 3x Isaac's damage against bosses"

	[C_ID .. 497] = "Zmate všechny nepřátele a maskuje tě při vstupu do místnosti, dokud nezačneš střílet", -- Camo Undies
	-- English: "{{Confusion}} Entering a room confuses all enemies until Isaac starts shooting"

	[C_ID .. 498] = "{{AngelDevilChance}} Vytvoří obě dveře do Ďábelské a Andělské Místnosti#Při vstupu do prvních dveří zmizí ty druhé", -- Duality
	-- English: "{{AngelDevilChance}} Spawns both a Devil and Angel Room if either would have spawned#Entering one makes the other disappear"

	[C_ID .. 501] = "Za každých 25 mincí ti přidá 1 místo pro Srdce#{{Player14}} Keeper získá další místo pro Mincové Srdce", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins gained after getting Greed's Gullet"

	[C_ID .. 502] = "Při střelbě občas vystřelíš bílou slzu s bílou kaluží, která způsobí dvojnásobné poškození#Při utrpení poškození vystřelíš bílou slzu", -- Large Zit
	-- English: "{{Slow}} Firing occasionally shoots a white creep tear that deals double damage and slows enemies#Taking damage shoots a white creep tear"

	[C_ID .. 504] = "Vytvoří mouchu, která stojí na místě a střílí na nepřátele#Každý výstřel způsobí 2 poškození", -- Brown Nugget
	-- English: "Spawns a fly turret that shoots at enemies#Each shot deals 2 damage"

	[C_ID .. 505] = "Možnost vytvoření očarovaného nepřítele při vstupu do nepřátelské místnosti", -- Poke Go
	-- English: "{{Friendly}} Entering a hostile room has a chance to spawn a friendly enemy"

	[C_ID .. 506] = "Pokud slzy zasáhnou nepřítele do zad, způsobí jim dvojnásobné poškození a také krvácení, které každých 5 sekund způsobí 10% poškození z maximálního zdraví nepřítele.", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds"

	[C_ID .. 507] = "{{Damage}} Způsobí tvoje poškození + 10 % maximálního zdraví nepřítele#Ovlivňuje všechny nepřátele v místnosti#{{HalfHeart}} Šance vytvoření půlky srdcí, když způsobí poškození#{{HalfSoulHeart}} Pokud nemáš Červené Srdce, může místo toho vytvořit poloviny Duševních Srdcí", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts#{{HalfSoulHeart}} Having no heart containers drops Soul Hearts instead"

	[C_ID .. 508] = "Orbitální žiletka, která způsobuje krvácení, které způsobí 10% poškození maximálního zdraví nepřítele každých 5 sekund#Uděluje 300% poškození při kontaktu za sekundu#Neblokuje střely", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds#{{Damage}} Deals 3x Isaac's damage per second#Does not block shots"

	[C_ID .. 509] = "Orbitální oko, které vystřelí slzu každé 2 sekundy v náhodném směru", -- Bloodshot Eye
	-- Full old Desc: "Orbitální oko, které vystřelí slzu každé 2 sekundy v náhodném směru#Uděluje 3.5 poškození za slzu#Uděluje 30 kontaktního poškození za sekundu"
	-- English: "Orbital that shoots a tear in a random direction every 2 seconds#Does not block shots"

	[C_ID .. 510] = "Vytvoří přátelskou Delíriovskou verzi bosse pro aktuální místnost", -- Delirious
	-- English: "{{Friendly}} Spawns a friendly delirium version of a boss for the room"

	[C_ID .. 511] = "Obíhá kolem náhodného nepřítele, dokud tento nepřítel nezemře", -- Angry Fly
	-- Full old Desc: "Obíhá kolem náhodného nepřítele, dokud tento nepřítel nezemře#Uděluje 30 kontaktního poškození za sekundu ostatním nepřátelům"
	-- English: "Orbits a random enemy until that enemy dies"

	[C_ID .. 512] = "Vrhatelná černá díra, která všechno nasává#Uděluje 0.4 poškození každý tik#Zničí okolní kameny#Vydrží 6 sekund#Tebe sice také přitahuje, ale tah je mnohem slabší", -- Black Hole
	-- English: "Throwable black hole, which sucks in everything#Deals 6 damage per second#Destroys nearby rocks#Lasts 6 seconds"

	[C_ID .. 513] = "Náhodná šance na okouzlení/zastrašení nepřítele#Náhodná šance na vytvoření duhového hovínka při utrpení poškození", -- Bozo
	-- Full old Desc: "↑ +0.1 Větší Poškození#+1 Duševní Srdce#Náhodná šance na okouzlení/zastrašení nepřítele#Náhodná šance na vytvoření duhového hovínka při utrpení poškození"
	-- English: "{{Charm}} Randomly charms/fears enemies#Taking damage has a random chance to spawn a Rainbow Poop"

	[C_ID .. 514] = "Způsobuje, že se náhodní nepřátelé 'lagují' v náhodných intervalech, což způsobí jejich krátké zamrznutí#Efekt platí i pro nepřátelské střely a pickupy#25% šance na zdvojnásobení odměn z místnosti", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#25% chance to double room clear drops"

	[C_ID .. 515] = "Vytvoří náhodný předmět ze skupiny předmětů aktuální místnosti#Šance místo toho vytvořit Hroudu Uhlí nebo Hovno", -- Mystery Gift
	-- English: "Spawns a random item from the current room's item pool#Chance to spawn Lump of Coal or The Poop instead"

	[C_ID .. 516] = "Vytvoří rozstřikovač, který se otáčí v kruhu a rozstřikuje tvoje slzy na všechny strany", -- Sprinkler
	-- English: "Spawns a Sprinkler that shoots the same tears as Isaac in a circle around itself"

	[C_ID .. 517] = "Umožňuje ti rychle umisťovat bomby", -- Fast Bombs
	-- Full old Desc: "{{Bomb}} +7 Bomb#Umožňuje ti rychle umisťovat bomby"
	-- English: "Removes the delay between bomb placements"

	[C_ID .. 518] = "Spojenec, který vypadá jako náhodné dítě z coopu#Má náhodný efekt slz#Každé patro se náhodně mění", -- Buddy in a Box
	-- English: "Familiar which looks like a random co-op baby#Has random tear effects#Effects change every floor"

	[C_ID .. 519] = "Spojenec, který se každých 10 sekund promění v dalšího náhodného spojence", -- Lil Delirium
	-- English: "Transforms into a random familiar every 10 seconds"

	[C_ID .. 520] = "+1 nabití na tvůj aktivní předmět za každých 15 zabitých nepřátel", -- Jumper Cables
	-- English: "Killing 15 enemies adds 1 charge to the active item"

	[C_ID .. 521] = "Při použití udělá jeden náhodný předmět v {{Shop}}Obchodě nebo {{DevilRoom}}Ďábelské Místnosti zcela zdarma#{{Shop}} Během držení zaručuje, že jeden předmět v obchodu bude ve slevě", -- Coupon
	-- English: "Makes one random item in the {{Shop}} Shop or {{DevilRoom}} Devil Room free#Holding the item guarantees one Shop item is on sale"

	[C_ID .. 522] = "Nepřátelské střely blízko tebe jsou drženy na místě po dobu 3 sekund#Poté jsou od tebe odhozeny#Po 3 sekundách se předmět znovu nabije", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards"

	[C_ID .. 523] = "Při použití uloží všechny pickupy z aktuální místnosti#Opětovným použitím je vrátíš zpět na podlahu#To ti umožní přesouvat věci mezi místnostmi", -- Moving Box
	-- English: "Stores all pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Slzy budou spojeny elektřinou#Poškození elektřinou se rovná tvému poškození", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#The beams deal Isaac's damage"

	[C_ID .. 525] = "Utrpené poškození vytvoří orbitální kouli blokující střely#Maximálně 3 koule současně#Koule jsou zničeny, pokud utrpí příliš velké poškození", -- Leprosy
	-- English: "Taking damage spawns a projectile blocking orbital#Caps at 3 orbitals#They deal 35 contact damage per second#Orbitals are destroyed if they take too much damage"

	[C_ID .. 526] = "Vytvoří malého jezdce Apokalypsy, který vytváří jeho speciální kobylky#Jezdec se mění každých 10 sekund", -- 7 Seals
	-- English: "Spawns a small horseman familiar that spawns locusts#The horseman and its locust changes every 10 seconds"

	[C_ID .. 527] = "!!! Spojenec, který za tebe může dělat úkoly:#Otevírání dveří a truhel, přinášení předmětů, kradení z obchodu/od ďábla, bojuje s nepřáteli, exploduje a aktivuje nášlapné desky", -- Mr. ME!
	-- English: "Displays a movable cursor for a few seconds, then summons a ghost that will, depending on the cursor position:#Open doors or chests#Fetch an item#50% chance to steal from the Shop / Devil#Attack an enemy until it dies#Explode walls, rocks, shopkeepers, angel statues, machines, beggars"

	[C_ID .. 528] = "Orbitální hranol#Slzy, které na něj dopadají, se rozdělí na 4", -- Angelic Prism
	-- English: "Orbital prism#Friendly tears hitting it split into 4"

	[C_ID .. 529] = "Slzy se budou chovat jako kulečníkové koule", -- Pop!
	-- English: "Isaac's tears bounce off each other and disappear when they stop moving"

	[C_ID .. 530] = "Uděluje ti odměnu, pokud zabiješ nepřátele v pořadí, ve kterém jsou označeni", -- Death's List
	-- English: "Killing enemies in the order dictated by the mark {{DeathMark}} above them grants a random pickup or stat increase"

	[C_ID .. 531] = "↑ 31% Větší Poškození", -- Haemolacria
	-- Full old Desc: "Slzy létají obloukem#Slzy při dopadu propukají v další menší slzy#↓ Méně Slz#↑ 31% Větší Poškození"
	-- English: "Isaac's tears fly in an arc and burst into smaller tears on impact"

	[C_ID .. 532] = "Slzy při cestování zpomalují#Po zastavení explodují v 8 menších slz#Slzy mohou být vstřeleny do jiných slz, čímž se zvětší", -- Lachryphagy
	-- English: "Isaac's tears progressively slow down, stop, then explode into 8 smaller tears#Tears can merge and become bigger"

	[C_ID .. 533] = "Střílíš průrazné záblesky světla#{{Damage}} Udělují 33% poškození, ale mohou zasáhnout nepřátele několikrát", -- Trisagion
	-- English: "Replaces Isaac's tears with piercing beams of light#The beams deal 33% damage but can hit enemies multiple times"

	[C_ID .. 534] = "Umožňuje ti držet 2 aktivní předměty#Přepínej mezi nimi stisknutím tlačítka Drop (tlačítko 'drž' za \"The Forgotten\")", -- Schoolbag
	-- English: "Allows Isaac to hold 2 active items#The items can be swapped using the Drop button ({{ButtonRT}})"

	[C_ID .. 535] = "{{Collectible313}} Uděluje štít při vstupu do místnosti s Bossem", -- Blanket
	-- Full old Desc: "{{SoulHeart}} +1 Duševní Srdce#{{HealingRed}} Léčí 1 Červené Srdce#{{Collectible313}} Uděluje štít při vstupu do místnosti s Bossem"
	-- English: "{{HolyMantle}} Entering a boss room grants a Holy Mantle shield (prevents damage once)"

	[C_ID .. 536] = "Obětuje 1-2 spojence, aby vytvořil Ďábelský předmět#Promění tvé modré pavouky/mouchy na mince", -- Sacrificial Altar
	-- English: "Sacrifices up to 2 familiars and spawns a devil item for each sacrifice#{{Coin}} Turns blue spiders/flies into coins"

	[C_ID .. 537] = "{{Pill}} Vytvoří náhodnou pilulku#Spojenec, který střílí řadu kaluží#Typ kaluže se změní pokaždé, když použiješ pilulku", -- Lil Spewer
	-- English: "{{Pill}} Spawns a random pill on pickup#Fires a line of creep#The type of creep changes with each pill use"

	[C_ID .. 538] = "{{Collectible479}} Utrpení poškození může spotřebovat tvůj trinket a přidá ti jeho efekt natrvalo", -- Marbles
	-- Full old Desc: "{{Trinket}} Vytvoří 3 náhodné trinkety#{{Collectible479}} Utrpení poškození může spotřebovat tvůj trinket a přidá ti jeho efekt natrvalo"
	-- English: "{{Collectible479}} Taking damage has a 10% chance to consume Isaac's held trinket and grant its effects permanently"

	[C_ID .. 539] = "Když dostaneš zásah, vytvoří okouzleného nepřítele#Vytvoří silnější přátele, čím více místností je vyčištěno bez poškození", -- Mystery Egg
	-- English: "{{Friendly}} Taking damage spawns a friendly enemy#Spawns stronger friends the more rooms are cleared without taking damage"

	[C_ID .. 540] = "Slzy se odrážejí od podlahy#Slzy způsobují poškození při každém odrazu", -- Flat Stone
	-- English: "Isaac's tears bounce off the floor and cause splash damage on every bounce"

	[C_ID .. 542] = "Odráží střely", -- Slipped Rib
	-- Full old Desc: "Orbitální kost#Odráží střely"
	-- English: "Reflects enemy projectiles"

	[C_ID .. 543] = "Vytvoří bílé hovínko, když utrpíš poškození#Pokud stojíš v auře:#{VAR:EFFECTLIST}#Šance blokovat poškození", -- Hallowed Ground
	-- Full old Desc: "Vytvoří bílé hovínko, když utrpíš poškození#Pokud stojíš v auře:#↑ {{Tears}} -50% Zpoždění Slz#Šance blokovat poškození"
	-- English: "Taking damage spawns a white poop#While inside the poop's aura:#{VAR:EFFECTLIST}#{{IND}}Chance to block damage"

	[C_ID .. 544] = "Ostré žebro, které levituje před Izákem#Uděluje tvoje poškození šestkrát za sekundu", -- Pointy Rib
	-- English: "Levitates in front of Isaac#Deals 6x Isaac's damage per second"

	[C_ID .. 545] = "Za každého zabitého nepřítele v aktuální místnosti vytvoří orbitální kost nebo okouzleného kostlivce", -- Book of the Dead
	-- English: "{{Friendly}} Spawns a bone orbital or friendly bony per enemy killed in the room (up to 8)"

	[C_ID .. 546] = "Poskytuje auru, která zmrazí nepřátele na místě", -- Dad's Ring
	-- English: "{{Petrify}} Grants an aura that petrifies enemies"

	[C_ID .. 547] = "{{Trinket21}} Vytvoří trinket Tajemný Papír", -- Divorce Papers
	-- Full old Desc: "{{EmptyBoneHeart}} +1 Kostěné Srdce#↑ {{Tears}} +0.7 Více Slz#{{Trinket21}} Vytvoří trinket Tajemný Papír"
	-- English: "{{Trinket21}} Spawns the Mysterious Paper trinket"

	[C_ID .. 548] = "Spojenec jakožto bumerang#Umí přinést pickupy", -- Jaw Bone
	-- Full old Desc: "Spojenec jakožto bumerang#Uděluje 7 kontaktního poškození#Umí přinést pickupy"
	-- English: "Boomerang-like familiar#Can grab and bring back pickups"

	[C_ID .. 549] = "↑ {{Tears}} +0.5 Více Slz natrvalo", -- Brittle Bones
	-- Full old Desc: "{{EmptyBoneHeart}} Nahradí všechna tvoje místa s Červenými Srdci za 6 Kostěných Srdcí#Při ztrátě Kostěného Srdce:#Vystřelí 8 kostních slz ve všech směrech#↑ {{Tears}} +0.5 Více Slz natrvalo"
	-- English: "{{EmptyBoneHeart}} Replaces all of Isaac's Red Heart containers with 6 empty Bone Hearts#Upon losing a Bone Heart:#{VAR:EFFECTLIST}#{{IND}}Shoots 8 bone tears in all directions"

	[C_ID .. 550] = "Mámina Noha na tebe bude neustále šlapat#Použití zastaví Máminu Nohu pro aktuální pokoj#!!! (Zkus s tímto předmětem porazit Boss Rush!)", -- Broken Shovel
	-- English: "Mom's Foot constantly tries to stomp Isaac#Using the item stops the stomping for the room (or one Boss Rush wave)#{{Warning}} (Try to beat Boss Rush with it!)"

	[C_ID .. 551] = "Druhá část rozbité lopaty#!!! Použij lopatu na kopec hlíny v \"Dark Room\"", -- Broken Shovel
	-- English: "Completes Mom's Shovel#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 552] = "{{LadderRoom}} Vytvoří padací dvířka do dalšího patra#!!! Použij lopatu na kopec hlíny v \"Dark Room\"#!!! Odemyká něco hustého", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#10% chance for {{LadderRoom}} crawlspace trapdoor#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 1] = "{{Coin}} Vytvoří 1 minci, když dostaneš zásah", -- Swallowed Penny
	-- English: "{{Coin}} Taking damage spawns 1 coin"

	[T_ID .. 2] = "50% šance na odměnu z ničení hoven", -- Petrified Poop
	-- English: "50% chance to get drops from poop"

	[T_ID .. 3] = "-1 potřebné nabití pro aktivní předměty", -- AAA Battery
	-- English: "{{Battery}} -1 Charge needed for active items"

	[T_ID .. 4] = "Náhodně tě teleportuje při použití aktivního předmětu", -- Broken Remote
	-- English: "{{Collectible44}} Using an active item teleports Isaac to a random room"

	[T_ID .. 5] = "2x šance na nepřátelské šampiony", -- Purple Heart
	-- English: "2x chance for champion enemies"

	[T_ID .. 6] = "Magnet na mince", -- Broken Magnet
	-- English: "{{Coin}} Attracts coins to Isaac"

	[T_ID .. 7] = "{{Collectible33}} Větší šance k nalezení Bible v {{Shop}}Obchodech a {{Library}} Knihovnách", -- Rosary Bead
	-- Full old Desc: "{{AngelChance}} 50% větší šance na Andělskou Místnost#{{Collectible33}} Větší šance k nalezení Bible v {{Shop}}Obchodech a {{Library}} Knihovnách"
	-- English: "{{Collectible33}} Higher chance to find The Bible in {{Shop}} Shops and {{Library}} Libraries"

	[T_ID .. 8] = "{VAR:ITEMDESCRIPTION}", -- Cartridge
	-- Full old Desc: "{{Collectible93}} 5% šance na efekt Gamekidu při zásahu"
	-- English: "{{Timer}} {VAR:LUCKCHANCE}% chance upon taking damage:#{VAR:ITEMDESCRIPTION}"

	[T_ID .. 9] = "Pulzující slzy#Ovlivňuje hitbox slz", -- Pulse Worm
	-- English: "Isaac's tears pulsate#Affects tear hitbox"

	[T_ID .. 10] = "↑ {{Tears}} +0.3 Více Slz", -- Wiggle Worm
	-- Full old Desc: "Slzy se pohybují vlnivě#↑ {{Tears}} +0.3 Více Slz"
	-- English: "Isaac's tears move in waves"

	[T_ID .. 11] = "Slzy se vysokou rychlostí pohybují ve spirálách", -- Ring Worm
	-- English: "Isaac's tears move in spirals with high speed"

	[T_ID .. 12] = "50% širší slzy#Slzy více odrážejí nepřátele", -- Flat Worm
	-- English: "50% wider tears#Increases knockback"

	[T_ID .. 13] = "{{Shop}} Jeden předmět z obchodu je zdarma", -- Store Credit
	-- English: "{{Shop}} Allows Isaac to take 1 Shop item for free"

	[T_ID .. 14] = "Zabraňuje poškození z kaluží a bodáků", -- Callus
	-- English: "Immune to creep and floor spikes"

	[T_ID .. 15] = "{{Coin}} Ničením kamenů vytváří mince", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks spawns coins"

	[T_ID .. 17] = "{{BlackHeart}} +1% šance na Černá Srdce", -- Black Lipstick
	-- English: "{{BlackHeart}} +10% chance for random Soul Hearts to spawn as Black Hearts"

	[T_ID .. 18] = "{{EternalHeart}} +3% šance na Srdce Věčnosti", -- Bible Tract
	-- English: "{{EternalHeart}} +3% chance for Eternal Hearts"

	[T_ID .. 19] = "Odemyká truhly bez použití klíčů", -- Paper Clip
	-- English: "{{GoldenChest}} Gold chests can be opened for free"

	[T_ID .. 20] = "{{BlackHeart}} Když jsi na polovině srdce, vytvoří 1 Černé Srdce#!!! 3 použití", -- Monkey Paw
	-- English: "{{BlackHeart}} Spawns 1 Black Heart when Isaac's health is reduced to half a heart#{{Warning}} Disappears after spawning 3 Black Hearts"

	[T_ID .. 21] = "Náhodně imituje: #{VAR:TEXT}", -- Mysterious Paper
	-- Full old Desc: "Náhodně imituje: #{{Collectible327}}Polaroid#{{Collectible328}} Negativ#{{Trinket48}} Chybějící Kapitolu nebo#{{Trinket23}} Pohřešující Plakát"
	-- English: "Randomly grants the effect of:#{VAR:TEXT}"

	[T_ID .. 22] = "{{Heart}} Snižuje šanci na vytvoření srdcí na 20%#{{Key}} Větší šance na klíče#{{BlackHeart}} Spadlé Srdce se mění na Černé Srdce", -- Daemon's Tail
	-- English: "{{Heart}} Decreases spawn rate of hearts to 20%#{{BlackHeart}} All Heart pickups turn into Black Hearts#{{Key}} Increases the drop chance of keys"

	[T_ID .. 23] = "{{Player10}} Znovuzrodíš se jako \"The Lost\", když zemřeš v {{SacrificeRoom}}Obětovní Místnosti#Pokud je odemčený, znovuzrodíš se za něj i mimo Obětovní Místnosti", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death"

	[T_ID .. 24] = "{{Coin}} O 20% větší šance na minci z ničení hoven#Když sebereš minci, uprdneš si#Prd pouze odráží nepřátele", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#Picking up coins makes Isaac fart"

	[T_ID .. 25] = "Uprdneš si nebo vytvoříš hovno každých 30 sekund", -- Mysterious Candy
	-- English: "Isaac farts or spawns poop every 30 seconds"

	[T_ID .. 26] = "↑ {{Range}} +10 Větší Dostřel", -- Hook Worm
	-- Full old Desc: "Slzy se pohybují v hranatých vzorech#↑ {{Range}} +10 Větší Dostřel"
	-- English: "Isaac's tears move in angular patterns"

	[T_ID .. 28] = "{{Player4}} 22% šance na znovuzrození jako \"Blue Baby\"", -- Broken Ankh
	-- English: "{{Player4}} 22% chance to respawn as ??? (Blue Baby) on death"

	[T_ID .. 29] = "Při zásahu vytvoří 1 modrou mouchu", -- Fish Head
	-- English: "Taking damage spawns 1 blue fly"

	[T_ID .. 32] = "25% šance na náhodný efekt houby za místnost#Může odhalit speciální místnosti na minimapě", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room#Can reveal special rooms on the minimap"

	[T_ID .. 34] = "{{Heart}} 10% šance na náhodné srdce jakožto odměnu za vyčištění místnosti#Šance na bonusové srdce z truhel, zbarvených kamenů a rozbitých strojů", -- Child's Heart
	-- English: "{{UnknownHeart}} 10% chance for the room clear reward to be a random heart#{{Heart}} 33% chance for a bonus heart from chests, tinted rocks, and destroyed machines"

	[T_ID .. 36] = "{{Key}} 10% šance na klíč jakožto odměnu za vyčištění místnosti#{{Key}} Šance na bonusový klíč z truhel, zbarvených kamenů a rozbitých strojů", -- Rusted Key
	-- English: "{{Key}} 10% chance for the room clear reward to be a key#{{Key}} 33% chance for a bonus key from chests, tinted rocks, and destroyed machines"

	[T_ID .. 38] = "+10% šance na: #{{SoulHeart}} Duševní#{{BlackHeart}} Černé nebo#{{EmptyBoneHeart}} Kostěné Srdce", -- Mom's Pearl
	-- English: "+10% chance for heart drops to be {{SoulHeart}} Soul Hearts, {{BlackHeart}} Black Hearts or {{EmptyBoneHeart}} Bone Hearts"

	[T_ID .. 40] = "{{Damage}} 20% šance na získání +1.8 Větší Poškození, když dostaneš zásah", -- Red Patch
	-- Full old Desc: "{{Damage}} 20% šance na získání +1.8 Větší Poškození, když dostaneš zásah#{{Luck}} 100% šance při 8 Štěstí#Efekt trvá pro aktuální místnost"
	-- English: "{{Timer}} Taking damage has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +1.8 damage for the room"

	[T_ID .. 41] = "{{Bomb}} 10% šance na bombu jakožto odměnu za vyčištění místnosti#{{Bomb}} Šance na bonusovou bombu z truhel, zbarvených kamenů a rozbitých strojů#!!! Odstraňuje {{Trinket53}} Klíště", -- Match Stick
	-- English: "{{Bomb}} 10% chance for the room clear reward to be a bomb#{{Bomb}} 33% chance for a bonus bomb from chests, tinted rocks, and destroyed machines#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 42] = "+8% šance na odměnu z vyčištěné místnosti#Extra pickupy z truhel, zbarvených kamenů a rozbitých strojů", -- Lucky Toe
	-- Full old Desc: "↑ {{Luck}} +1 Zvýšení Štěstí#+8% šance na odměnu z vyčištěné místnosti#Extra pickupy z truhel, zbarvených kamenů a rozbitých strojů"
	-- English: "+8% room clear reward chance#33% chance for an extra pickup from chests, tinted rocks, and destroyed machines"

	[T_ID .. 43] = "Když utrpíš poškození až k polovině Červeného Srdce nebo méně, teleportuje tě do náhodné místnosti", -- Cursed Skull
	-- English: "When damaged down to half a heart or less, Isaac is teleported to a random room"

	[T_ID .. 44] = "{{Pill}} 10% šance na pilulku jakožto odměnu za vyčištění místnosti#{{Pill}} Šance na bonusovou pilulku z truhel, zbarvených kamenů a rozbitých strojů", -- Safety Cap
	-- English: "{{Pill}} 10% chance for the room clear reward to be a pill#{{Pill}} 33% chance for a bonus pill from chests, tinted rocks, and destroyed machines"

	[T_ID .. 45] = "{{Card}} 10% šance na kartu jakožto odměnu za vyčištění místnosti#{{Card}} Šance na bonusovou kartu z truhel, zbarvených kamenů a rozbitých strojů", -- Ace of Spades
	-- English: "{{Card}} 10% chance for the room clear reward to be a card#{{Card}} 33% chance for a bonus card from chests, tinted rocks, and destroyed machines"

	[T_ID .. 49] = "{{HalfHeart}} 50% šance na vytvoření půlky srdce, když vezmeš minci", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 50% chance to spawn a half Red Heart"

	[T_ID .. 50] = "{Bomb}} 50% šance na vytvoření bomby, když vezmeš minci", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 50% chance to spawn a bomb"

	[T_ID .. 51] = "{{Key}} 50% šance na vytvoření klíče, když vezmeš minci", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 50% chance to spawn a key"

	[T_ID .. 52] = "{{Coin}} 50% šance na získání +1 mince, když vezmeš minci", -- Counterfeit Penny
	-- English: "{{Coin}} Picking up a coin has a 50% chance to add another coin to the counter"

	[T_ID .. 53] = "{{BossRoom}} -15% bossova života#Vyléčí 1 Červené Srdce při vstupu do {{BossRoom}}Boss Místnosti#!!! Pokud klíště vezmeš, nemůžeš jej pak sundat#Ale lze jej odstranit pouze se {{Trinket41}} zápalkou nebo spolknutím pomocí pilulky", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick or gulping"

	[T_ID .. 54] = "Spojenec s průraznými slzami", -- Isaac's Head
	-- Full old Desc: "Spojenec s průraznými slzami#Uděluje 3.5 poškození za slzu"
	-- English: "Familiar with piercing tears"

	[T_ID .. 55] = "{{EternalHeart}} Získáš 1 Srdce Věčnosti na začátku každého patra", -- Maggy's Faith
	-- English: "{{EternalHeart}} Entering a new floor grants +1 Eternal Heart"

	[T_ID .. 56] = "{{DevilRoom}} Snižuje ceny Dohod s Ďáblem ze 2 srdcí na 1 srdce", -- Judas' Tongue
	-- English: "{{DevilRoom}} Reduces all devil deal prices to 1 heart container#Doesn't reduce 3 Soul Heart prices"

	[T_ID .. 57] = "Společník, který skáče po místnosti#Střílí stejným směrem jako hráč", -- ???'s Soul
	-- Full old Desc: "Společník, který skáče po místnosti#Střílí stejným směrem jako hráč#Uděluje 3.5 poškození za slzu"
	-- English: "Familiar that bounces around the room#Shoots in the same direction as Isaac"

	[T_ID .. 58] = "{{Damage}} 1/15 šance na +0.5 Větší Poškození při zabití nepřítele", -- Samson's Lock
	-- Full old Desc: "{{Damage}} 1/15 šance na +0.5 Větší Poškození při zabití nepřítele#{{Luck}} 100% šance při 10 Štěstí#Efekt trvá pro aktuální místnost"
	-- English: "{{Timer}} Killing an enemy has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +0.5 damage for the room"

	[T_ID .. 61] = "Přemění všechny truhly na červené truhly", -- The Left Hand
	-- English: "{{RedChest}} Turns all chests into Red Chests"

	[T_ID .. 62] = "Kameny skrývající průlez a zbarvené kameny budou blikat každých 10 sekund", -- Shiny Rock
	-- English: "Crawlspace rocks and tinted rocks blink every 10 seconds"

	[T_ID .. 63] = "Přemění všechny trollí bomby na obyčejné bomby", -- Safety Scissors
	-- English: "{{Bomb}} Turns Troll Bombs into bomb pickups"

	[T_ID .. 64] = "Náhodný červí efekt každé 3 sekundy", -- Rainbow Worm
	-- English: "Grants a random worm effect every 3 seconds"

	[T_ID .. 67] = "50% na použití:#{VAR:TEXT}", -- Cracked Dice
	-- Full old Desc: "50% na použití:#{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible386}} D12 nebo #{{Collectible166}} D20 při utrpení zásahu"
	-- English: "Taking damage has a 50% chance to trigger one of these effects:#{VAR:TEXT}"

	[T_ID .. 68] = "Magnet na pickupy a nepřátele", -- Super Magnet
	-- English: "Isaac attracts pickups and enemies"

	[T_ID .. 69] = "Náhodně maskuje hráče#Mate nepřátele", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies"

	[T_ID .. 70] = "Šance na vytvoření 1 modrého pavouka, když jsi v nepřátelské místnosti", -- Louse
	-- English: "Occasionally spawns a blue spider in hostile rooms"

	[T_ID .. 71] = "Bomby po sobě zanechávají kaluž", -- Bob's Bladder
	-- English: "Isaac's bombs leave damaging creep"

	[T_ID .. 72] = "6.66% šance na baterku jakožto odměnu za vyčištění místnosti#+10% šance, aby se z pickupů stala baterka#5% šance k přidání 1 nabití k aktivnímu předmětu po vyčištění místnosti", -- Watch Battery
	-- English: "{{Battery}} 6.66% chance for the room clear reward to be a battery#{{Battery}} +10% chance for random pickups to be a battery#{{Battery}} 5% chance to add 1 charge to held active item when clearing a room"

	[T_ID .. 73] = "10% šance na vytvoření bomby jakožto pickup po explodování bomby", -- Blasting Cap
	-- English: "{{Bomb}} 10% chance for exploding bombs to drop a bomb pickup"

	[T_ID .. 74] = "0.5% šance na odhalení {{LadderRoom}} průlezu po zničení kamene", -- Stud Finder
	-- English: "{{LadderRoom}} +0.5% chance to reveal a crawlspace when breaking a rock"

	[T_ID .. 75] = "Efekt náhodného trinketu každou místnost", -- Error
	-- English: "Grants a random trinket effect every room"

	[T_ID .. 76] = "Truhly mají 50/50 šanci k vytvoření extra pickupů NEBO zlé mouchy", -- Poker Chip
	-- English: "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly"

	[T_ID .. 77] = "Slzy více odrážejí nepřátele", -- Blister
	-- English: "Increases knockback"

	[T_ID .. 78] = "2x delší statusové efekty na nepřátelích", -- Second Hand
	-- English: "Status effects applied to enemies last twice as long"

	[T_ID .. 79] = "25% šance, že když použiješ pilulku/kartu, tak se vytvoří kopie této karty/pilulky", -- Endless Nameless
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill has a 25% chance to spawn a copy of that rune, card or pill"

	[T_ID .. 81] = "Nesmrtelnost trvá po zásahu 2x déle", -- Blind Rage
	-- English: "Invincibility frames after taking damage last twice as long"

	[T_ID .. 82] = "{{TreasureRoom}} +15% šance, aby Pokladnice obsahovala dva předměty v budoucích patrech#Můžeš si vybrat pouze jeden", -- Golden Horse Shoe
	-- English: "{{TreasureRoom}} Future Treasure Rooms have +15% chance to let Isaac choose between two items"

	[T_ID .. 83] = "{{Shop}} Otevře obchody zadarmo", -- Store Key
	-- English: "{{Shop}} Lets Isaac open Shops for free"

	[T_ID .. 84] = "Greed a Super Greed se nemohou objevit v {{Shop}} Obchodech nebo {{SecretRoom}} Tajných Místnostech#O 5% více mincí a méně srdcí jakožto odměny z vyčištěných místností", -- Rib of Greed
	-- English: "{{Coin}} 5% more coins and fewer hearts from room clear rewards#Greed and Super Greed no longer appear in {{Shop}} Shops or {{SecretRoom}} Secret Rooms"

	[T_ID .. 85] = "{{DonationMachine}} Používaní Darovacích Strojů ti může:#{{Heart}} vyléčit 1 srdce#{{Coin}} dát ti 1 minci#{{Luck}} dát +1 Zvýšení Štěstí#{{Beggar}} nebo vytvořit žebráka", -- Karma
	-- English: "{{DonationMachine}} Using a Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)"

	[T_ID .. 86] = "Zničení hovna vytvoří 1 modrou mouchu", -- Lil Larva
	-- English: "Destroying poop spawns 1 blue fly"

	[T_ID .. 87] = "Vyléčí půlku srdce když používáš klíče#Přeměňuje půlky srdcí na celé srdce", -- Mom's Locket
	-- English: "{{HealingRed}} Using a key heals half a heart#{{Heart}} Turns half hearts into full hearts"

	[T_ID .. 88] = "Zabraňuje objevení aktivních předmětů", -- NO!
	-- English: "Prevents active items from spawning"

	[T_ID .. 89] = "Spojenci zůstávají blíže k tobě", -- Child Leash
	-- English: "Familiars stay closer to Isaac"

	[T_ID .. 90] = "Hovna explodují a udělí 100 poškození při zničení", -- Brown Cap
	-- English: "Poop explodes for 100 damage when destroyed"

	[T_ID .. 91] = "33% na vytvoření Černých Hoven#5% šance na vytvoření Černého Srdce, když zničíte Černé Hovno", -- Meconium
	-- English: "33% chance for Black Poops to spawn#{{BlackHeart}} Destroying Black Poop has a 5% chance to spawn a Black Heart"

	[T_ID .. 92] = "↑ +0.2 Více Slz", -- Cracked Crown
	-- Full old Desc: "↑ Zvýšení statistik z tvých předmětů je o 33% více efektivnější#↑ +0.2 Více Slz#↑ -1 Zpoždění Slz"
	-- English: "↑ x1.33 Stat multiplier for the stats that are above 1 {{Speed}} speed, 3.5 {{Damage}} damage, 23.75 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 93] = "15% šance za místnost, aby se všechny nepřátelské mouchy staly přátelské", -- Used Diaper
	-- English: "15% chance per room for all fly enemies to become friendly"

	[T_ID .. 94] = "Zdvojnásobí všechny vytvořené Modré Mouchy / Pavouky", -- Fish Tail
	-- English: "Doubles all blue fly / spider spawns"

	[T_ID .. 97] = "Až +2 spojenci", -- Tonsil
	-- Full old Desc: "Dostaneš společníka blokujícího střely po tom co utrpíš 12-20x poškození#Až +2 spojenci"
	-- English: "Taking damage {VAR:RANGE} times spawns a projectile blocking familiar#Disappears after spawning 2 familiars"

	[T_ID .. 98] = "10% šance vystřelit naváděné přilepující se jedovaté slzy#Uděluje tvoje poškození každou sekundu#Drží se na nepříteli 60 sekund", -- Nose Goblin
	-- Full old Desc: "10% šance vystřelit naváděné přilepující se jedovaté slzy#Uděluje tvoje poškození každou sekundu#Drží se na nepříteli 60 sekund"
	-- English: "10% chance to shoot a sticky tear#50% chance for it to be homing#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for {VAR:1} seconds"

	[T_ID .. 99] = "10% šance na vystřelení skákající slzy", -- Super Ball
	-- English: "10% chance to shoot bouncing tears"

	[T_ID .. 100] = "!!! Při držení plně nabitého aktivního předmětu:#{VAR:EFFECTLIST}", -- Vibrant Bulb
	-- Full old Desc: "!!! Při držení plně nabitého aktivního předmětu:#↑ {{Damage}} +0.5 Větší Poškození#↑ {{Speed}} +0.25 Zvýšení Rychlosti#↑ {{Range}} +0.75 Větší Dostřel#↑ {{Tears}} +0.2 Více Slz#↑ {{Shotspeed}} +0.1 Větší Rychlost Střel#↑ {{Luck}} +1 Zvýšení Štěstí"
	-- English: "Holding a fully charged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 101] = "!!! Při držení úplně vybitého aktivního předmětu:#{VAR:EFFECTLIST}", -- Dim Bulb
	-- Full old Desc: "!!! Při držení úplně vybitého aktivního předmětu:#↑ {{Damage}} +1.5 Větší Poškození#↑ {{Speed}} +0.5 Zvýšení Rychlosti#↑ {{Range}} +1.5 Větší Dostřel#↑ {{Tears}} +0.4 Více Slz#↑ {{Shotspeed}} +0.3 Větší Rychlost Střel	#↑ {{Luck}} +2 Zvýšení Štěstí"
	-- English: "Holding a completely uncharged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 102] = "{{SecretRoom}} +1 extra Tajná Místnost za patro pokud trinket držíš", -- Fragmented Card
	-- English: "{{SecretRoom}} +1 extra Secret Room per floor while held"

	[T_ID .. 103] = "!!! Když počet mincí, klíčů a bomb je roven:#Promění pickupy na jejich dvojité verze", -- Equality!
	-- English: "Turns single pickups into double pickups when Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal"

	[T_ID .. 106] = "Zvětší dosah jakékoli kaluže, kterou vytvoříš", -- Lost Cork
	-- English: "Increases the radius of friendly creep"

	[T_ID .. 107] = "Utrpené poškození bude ignorovat Duševní/Černá Srdce, což způsobí, že tvoje Červená Srdce budou vyčerpána jako první", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#This red heart damage does not reduce Devil/Angel Room chances"

	[T_ID .. 108] = "Po zásahu 1-9 výbuchy vytvoří klíč, minci, srdce a náhodný trinket#Není vyžadováno dostávat poškození#Trinket bude poté zničen", -- Walnut
	-- English: "Getting hit by 1-9 explosions destroys the trinket and drops a random {{UnknownHeart}} heart, {{Coin}} coin, {{Key}} key and {{Trinket}} trinket#Taking damage isn't required"

	[T_ID .. 109] = "Způsobí, že se každý spojenec přestane pohybovat", -- Duct Tape
	-- English: "Familiars are stuck in one spot and cannot move"

	[T_ID .. 110] = "{{Shop}} Obchody se nyní objevují ve Womb", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb"

	[T_ID .. 111] = "{{TreasureRoom}} Pokladnice se nyní objevují ve Womb", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb"

	[T_ID .. 112] = "{{RestockMachine}} Doplňovací boxy se vždy objeví v {{TreasureRoom}} Pokladnicích", -- Pay To Win
	-- English: "{{RestockMachine}} Restock boxes always spawn in {{TreasureRoom}} Treasure Rooms"

	[T_ID .. 113] = "Vytvoří explodující útočící kobylku, když vejdeš do nepřátelské místnosti#Kobylka uděluje dvojnásobek tvého poškození + poškození exploze", -- Locust of War
	-- English: "Entering a hostile room spawns an exploding attack fly #The fly deals 2x Isaac's damage + explosion damage"

	[T_ID .. 114] = "Vytvoří jedovatou útočící kobylku, když vejdeš do nepřátelské místnosti#Kobylka uděluje dvojnásobek tvého poškození", -- Locust of Pestilence
	-- English: "{{Poison}} Entering a hostile room spawns a poison attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 115] = "Vytvoří zpomalující útočící kobylku, když vejdeš do nepřátelské místnosti#Kobylka uděluje dvojnásobek tvého poškození", -- Locust of Famine
	-- English: "{{Slow}} Entering a hostile room spawns a slowing attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 116] = "Vytvoří útočící kobylku, když vejdeš do nepřátelské místnosti#Kobylka uděluje čtyřnásobek tvého poškození", -- Locust of Death
	-- English: "Entering a hostile room spawns an attack fly#The fly deals 4x Isaac's damage"

	[T_ID .. 117] = "Vytvoří 1-4 útočící kobylky, když vejdeš do nepřátelské místnosti#Kobylka uděluje dvojnásobek tvého poškození", -- Locust of Conquest
	-- English: "Entering a hostile room spawns 1-4 attack flies#Each fly deals 2x Isaac's damage"

	[T_ID .. 118] = "5% šance k získání létání po zabití nepřítele#Přetrvává pro aktuální místnost", -- Bat Wing
	-- English: "{{Timer}} Killing an enemy has a 5% chance to grant flight for the room"

	[T_ID .. 119] = "Vyléčí půl srdce při cestě do dalšího patra", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half a heart"

	[T_ID .. 120] = "Plně dobije tvůj aktivní předmět na začátku souboje s bossem", -- Hairpin
	-- English: "{{Battery}} Entering an uncleared boss room fully recharges active items"

	[T_ID .. 121] = "{{Collectible313}} Chrání tě před prvním poškozením, které utrpíš za každé patro", -- Wooden Cross
	-- English: "{{Collectible313}} Grants a Holy shield that prevents damage once per floor"

	[T_ID .. 122] = "Použitím aktivního předmětu jej upustíš, poté ho můžeš opět sebrat#Při utrpení poškození máš 2% šanci, že upustíš jeden z tvých pasivních předmětů", -- Butter!
	-- English: "Using an active item drops it on a pedestal on the ground#Taking damage has a 2% chance to drop one of Isaac's passive items"

	[T_ID .. 123] = "Způsobí, že tě Andělští bossové po jejich zabití namísto Částí Klíčů odmění normálními Andělskými předměty", -- Filigree Feather
	-- English: "Angel bosses drop angel items instead of Key Pieces"

	[T_ID .. 124] = "Poslední dveře, které jsi použil, zůstanou otevřené", -- Door Stop
	-- English: "The last door used stays open"

	[T_ID .. 125] = "Propojuje tvé spojence paprsky elektřiny#Způsobí 6 poškození na paprsek", -- Extension Cord
	-- English: "Connects all familiars with beams of electricity#The beams deal 6 damage"

	[T_ID .. 126] = "Vytvoří modrou mouchu, když sebereš minci", -- Rotten Penny
	-- English: "Picking up a coin spawns a blue fly"

	[T_ID .. 127] = "Uděluje tvým spojencům naváděné střely", -- Baby-Bender
	-- English: "Grants all familiars homing shots"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 1] = "Teleportuje tě zpět na start", -- 0 - The Fool
	-- English: "Teleports Isaac to the first room of the floor"

	[Card_ID .. 3] = "Mámina Noha dupne na nepřítele!", -- II - The High Priestess
	-- English: "Mom's Foot stomps on an enemy#Mom's Foot stomps Isaac if there are no enemies"

	[Card_ID .. 5] = "{{BossRoom}} Teleportuje tě do Boss Místnosti", -- IV - The Emperor
	-- English: "{{BossRoom}} Teleports Isaac to the Boss Room"

	[Card_ID .. 9] = "Vytvoří 1 bombu, 1 klíč, 1 minci a 1 srdce", -- VIII - Justice
	-- English: "Spawns a random {{UnknownHeart}} heart, {{Coin}} coin, {{Bomb}} bomb and {{Key}} key"

	[Card_ID .. 10] = "{{Shop}} Teleportuje tě do obchodu", -- IX - The Hermit
	-- English: "{{Shop}} Teleports Isaac to the Shop"

	[Card_ID .. 11] = "Vytvoří {{Slotmachine}} Hrací Automat nebo {{FortuneTeller}} Věštecký Stroj", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 25% chance for it to be a Fortune Telling Machine"

	[Card_ID .. 15] = "{{DonationMachine}} Vytvoří Stroj na Darování Krve#{{GreedMode}} Vytvoří Ďábelského Žebráka v Greed Modu", -- XIV - Temperance
	-- English: "{{DonationMachine}} Spawns a Blood Donation Machine"

	[Card_ID .. 17] = "Vytvoří 6 trollích bomb", -- XVI - The Tower
	-- English: "Spawns 6 Troll Bombs"

	[Card_ID .. 18] = "{{TreasureRoom}} Teleportuje tě do Pokladnice", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room"

	[Card_ID .. 19] = "{{SecretRoom}} Teleportuje tě do Tajné Místnosti", -- XVIII - The Moon
	-- English: "{{SecretRoom}} Teleports Isaac to the Secret Room"

	[Card_ID .. 21] = "Vytvoří Žebráka nebo Ďábelského Žebráka", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#2% chance for it to be a Key Master or Bomb Bum"

	[Card_ID .. 23] = "{{Bomb}} Duplikuje tvoje bomby", -- 2 of Clubs
	-- English: "{{Bomb}} Doubles Isaac's number of bombs"

	[Card_ID .. 24] = "{{Coin}} Duplikuje tvoje peníze", -- 2 of Diamonds
	-- English: "{{Coin}} Doubles Isaac's number of coins"

	[Card_ID .. 25] = "{{Key}} Duplikuje tvoje klíče", -- 2 of Spades
	-- English: "{{Key}} Doubles Isaac's number of keys"

	[Card_ID .. 26] = "{{Heart}} Duplikuje tvoje červené srdce#Má pouze efekt léčení", -- 2 of Hearts
	-- English: "{{HealingRed}} Doubles Isaac's number of Red Hearts {{ColorSilver}}(not containers){{CR}}"

	[Card_ID .. 27] = "{{Bomb}} Přemění všechny pickupy na bomby", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups into random bombs"

	[Card_ID .. 28] = "{{Coin}} Přemění všechny pickupy na mince", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups into random coins"

	[Card_ID .. 29] = "{{Key}} Přemění všechny pickupy na klíče", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups into random keys"

	[Card_ID .. 30] = "{{Heart}} Přemění všechny pickupy na srdce", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups into random hearts"

	[Card_ID .. 31] = "{{AngelDevilChance}} Teleportuje tě do Ďábelské nebo Andělské Místnosti", -- Joker
	-- English: "{{AngelDevilChance}} Teleports Isaac to the Devil or Angel Room"

	[Card_ID .. 32] = "Zničí všechny kameny v místnosti", -- Hagalaz
	-- English: "Destroy all rocks in the room"

	[Card_ID .. 33] = "Duplikuje všechny pickupy v místnosti", -- Jera
	-- English: "Duplicates all pickups in room"

	[Card_ID .. 34] = "Vytvoří padací dvířka#8% šance na {{LadderRoom}} průlez se žebříkem", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} 8% chance for a crawlspace trapdoor"

	[Card_ID .. 35] = "{{CurseCursed}} Odstraňuje prokletí", -- Dagaz
	-- Full old Desc: "{{SoulHeart}} +1 Duševní Srdce#{{CurseCursed}} Odstraňuje prokletí"
	-- English: "{{CurseCursed}} Removes all curses for the floor"

	[Card_ID .. 37] = "Zamíchá všechny předměty na podstavcích", -- Perthro
	-- English: "Rerolls all pedestal items in the room"

	[Card_ID .. 40] = "Efekt náhodné runy#25% šance na vytvoření další Slepé Runy", -- Blank Rune
	-- English: "Triggers a random rune effect#25% chance to duplicate itself when used"

	[Card_ID .. 41] = "Náhodné zvýšení statistiky za každý předmět na podstavci v místnosti#Zničí všechny podstavce v místnosti", -- Black Rune
	-- Full old Desc: "Způsobí 40 poškození všem nepřátelům#Náhodné zvýšení statistiky za každý předmět na podstavci v místnosti#Zničí všechny podstavce v místnosti"
	-- English: "Converts all pedestal items in the room into random stat ups#Converts all pickups in the room into blue flies"

	[Card_ID .. 42] = "Vrhací instantně zabíjející karta", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium)"

	[Card_ID .. 43] = "Odebere cenu ze všech položek v aktuálním {{Shop}} Obchodě nebo {{DevilRoom}} Ďábelské Dohodě, takže bude vše zdarma", -- Credit Card
	-- English: "Makes all items and pickups in a {{Shop}} Shop or {{DevilRoom}} Devil Room free"

	[Card_ID .. 44] = "Ukáže \"pomocné\" tipy", -- Rules Card
	-- English: "Displays "helpful" tips on use"

	[Card_ID .. 45] = "Naplní celou místnost hovnama", -- A Card Against Humanity
	-- English: "Fills the whole room with poop"

	[Card_ID .. 46] = "Okamžitě tě zabije a vytvoří 10 různých předmětů", -- Suicide King
	-- English: "Instantly kills Isaac and spawns 10 pickups or items on the floor#Spawned items will use the current room's item pool"

	[Card_ID .. 47] = "Otevře všechny dveře v aktuální místnosti", -- Get Out Of Jail Free Card
	-- English: "Open all doors in the room"

	[Card_ID .. 48] = "Zdarma použije tvůj aktivní předmět", -- ? Card
	-- English: "Uses Isaac's active item for free"

	[Card_ID .. 49] = "Zamíchá předměty a pickupy v aktuální místnosti", -- Dice Shard
	-- English: "Rerolls all item pedestals and pickups in the room"

	[Card_ID .. 50] = "Dvě Máminy Ruce sestoupí a popadnou nepřítele", -- Emergency Contact
	-- English: "Two of Mom's Hands come down and grab an enemy each"

	[Card_ID .. 51] = "{{Collectible313}} Dostaneš efekt Svatého Pláště na jednu místnost#(Jednou zabrání poškození)#25% šance na vytvoření další Svaté Karty", -- Holy Card
	-- English: "{{HolyMantle}} Holy Mantle shield for the room (prevents damage once)#25% chance to spawn another Holy Card"

	[Card_ID .. 52] = "{VAR:ROOMEFFECT}#Efekt trvá pro aktuální místnost", -- Huge Growth
	-- Full old Desc: "↑ {{Damage}} +7 Větší Poškození#↑ {{Range}} +30 Větší Dostřel#Ničíš kameny, když přes ně chodíš#Zvětšení#Efekt trvá pro aktuální místnost"
	-- English: "{VAR:ROOMEFFECT}#Allows Isaac to destroy rocks by walking into them"

	[Card_ID .. 54] = "{VAR:ROOMEFFECT}#Efekt trvá pro aktuální místnost", -- Era Walk
	-- Full old Desc: "{{Slow}} Zpomalí nepřátele#↑ {{Speed}} +0.5 Zvýšení Rychlosti#↓ {{Shotspeed}} -1 Menší Rychlost Střel#Efekt trvá pro aktuální místnost"
	-- English: "{VAR:ROOMEFFECT}#{{Slow}} Slow down enemies"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 1] = "Vytvoří Mrak plynu", -- Bad Gas
	-- English: "{{Poison}} Isaac farts and poisons nearby enemies"

	[Pill_ID .. 2] = "Způsobí ti 1 poškození", -- Bad Trip
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#Becomes a Full Health pill at 1 heart or less"

	[Pill_ID .. 4] = "Vymění počet bomb za počet klíčů", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys"

	[Pill_ID .. 5] = "Vytvoří 5 trollích bomb na tvoji pozici", -- Explosive Diarrhea
	-- English: "Isaac quickly spawns 5 lit bombs"

	[Pill_ID .. 10] = "{VAR:EFFECTLIST}", -- Puberty
	-- Full old Desc: "Snězení 3 pilulek ti poskytne transformaci na Dospělého (+1 Červené Srdce)"
	-- English: "Eating 3 grants the Adult transformation:#{VAR:EFFECTLIST}"

	[Pill_ID .. 20] = "Teleportuje tě do náhodné místnosti#{{ErrorRoom}} Malá šance na teleport do JSEM ERROR místnosti", -- Telepills
	-- English: "Teleports Isaac to a random room#{{ErrorRoom}} Small chance to teleport Isaac to the I AM ERROR room"

	[Pill_ID .. 21] = "Plně nabije tvůj aktivní předmět", -- 48 Hour Energy!
	-- Full old Desc: "Plně nabije tvůj aktivní předmět#Vytvoří 1-2 baterie"
	-- English: "{{Battery}} Fully recharges the active item"

	[Pill_ID .. 22] = "Vyčerpá všechny tvoje červené srdce až na 1 celé", -- Hematemesis
	-- Full old Desc: "Vyčerpá všechny tvoje červené srdce až na 1 celé#Vytvoří 1-4 Červené Srdce"
	-- English: "{{Warning}} Drains all but one heart container"

	[Pill_ID .. 23] = "Nemůžeš se pohnout na 2 sekundy", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 2 seconds"

	[Pill_ID .. 24] = "{{SecretRoom}} Otevírá vchody do tajných místností v aktuálním patře", -- I can see forever!
	-- English: "{{SecretRoom}} Opens all secret room entrances on the floor"

	[Pill_ID .. 25] = "{{Charm}} Okouzlí všechny nepřátele v místnosti", -- Pheromones
	-- English: "{{Charm}} Charms all enemies in the room"

	[Pill_ID .. 26] = "{{CurseLost}} Skryje mapu aktuálního patra", -- Amnesia
	-- English: "{{CurseLost}} Hides the map for the floor"

	[Pill_ID .. 27] = "Na zemi vytvoří velkou limonádovou louži, která poškozuje nepřátele", -- Lemon Party
	-- English: "Spawns a large puddle on the ground which damages enemies"

	[Pill_ID .. 28] = "Střílíš diagonálně po dobu 30 sekund", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 30 seconds"

	[Pill_ID .. 29] = "Utrpíš pouze poloviční poškození pro aktuální místnost", -- Percs!
	-- English: "{{Timer}} Reduces all damage taken to half a heart for the room"

	[Pill_ID .. 30] = "Utrpíš plné poškození pro aktuální místnost", -- Addicted!
	-- English: "{{Timer}} Increases all damage taken to a full heart for the room"

	[Pill_ID .. 31] = "Při chůzi vytváříš hovna po dobu 2 sekund", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 2 seconds"

	[Pill_ID .. 32] = "{{CurseMaze}} Efekt Prokletí Bludiště pro aktuální patro", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. 33] = "Nemá vliv na tvůj hitbox", -- One makes you larger
	-- Full old Desc: "Zvětšení#Nemá vliv na tvůj hitbox"
	-- English: "Doesn't affect his hitbox"

	[Pill_ID .. 34] = "Tvůj hitbox je menší", -- One makes you small
	-- Full old Desc: "Zmenšení#Tvůj hitbox je menší"
	-- English: "Also decreases his hitbox"

	[Pill_ID .. 35] = "Vytvoří 1 modrého pavouka za každé hovno v místnosti", -- Infested!
	-- English: "Spawns 1 blue spider for each poop in the room"

	[Pill_ID .. 36] = "Vytvoří 1 modrého pavouka za každého nepřítele v místnosti#Vytvoří 1-3 modré pavouky, když se v místnosti žádný nepřítel nenachází", -- Infested?
	-- English: "Spawn 1 blue spider for each enemy in the room#Spawns 1-3 blue spiders if there are no enemies in the room"

	[Pill_ID .. 38] = "Rozpixeluje obrazovku po dobu 30 sekund", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen 3 times over 30 second"

	[Pill_ID .. 40] = "Vytvoří za tebou klouzavou hovnovou kaluž", -- X-Lax
	-- English: "Spawns a pool of slippery creep"

	[Pill_ID .. 41] = "{{Slow}} Vytvoří zpomalující kaluž", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of slowing creep"

	[Pill_ID .. 42] = "{{Slow}} Zpomalí všechny nepřátele v místnosti", -- I'm Drowsy...
	-- English: "{{Slow}} Slows all enemies in the room"

	[Pill_ID .. 43] = "Zrychlí všechny nepřátele v místnosti", -- I'm Excited!!
	-- English: "Speeds up all enemies in the room"

	[Pill_ID .. 44] = "{{Trinket}} Spotřebuje aktuálně držený trinket a získáš jeho účinek natrvalo", -- Gulp!
	-- English: "{{Trinket}} Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. 45] = "{{Collectible149}} Vystřelí jednu Ipekak slzu", -- Horf!
	-- English: "{{Collectible149}} Shoots one Ipecac tear"

	[Pill_ID .. 47] = "Vybrkneš posledně použitou pilulku", -- Vurp!
	-- English: "Spawns the last pill used before Vurp!"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)
