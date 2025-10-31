-- This file contains text elements that are used for the modular description system.
local languageCode = "ro_ro"

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
    TearsMultiplier = "{value} viteză de atac",
    Tears = "{value} viteză de atac",
    TearHeight = "{value} Înălțime lacrimă",
    TearSizeMultiplier = "{value} Mărimea Lacrimilor",
    TearSize = "{value} Mărimea Lacrimilor",
    TearDelayMultiplier = "{value} multiplicator întârziere lacrimi",
    TearDelay = "{value} Întârziere lacrimi",
    FireRateMultiplier = "{value} viteză de atac",
    FireRate = "{value} viteză de atac",
    DamageMultiplier = "{value} Daune",
    Damage = "{value} Daune",
	DamageTemp = "{value} Daune (temporare)", -- For Temp Binge Eater buffs
    BombDamage = "{value} Daune ale bombelor",
    Speed = "{value} Viteză",
    RangeMultiplier = "{value} Distanță",
    Range = "{value} Distanță",
    Luck = "{value} Noroc",
    ShotSpeedMultiplier = "{value} Viteza atacului",
    ShotSpeed = "{value} Viteza atacului",
    Life = "{value} Viață",
    SizeUp = "Crește mărimea",
    SizeDown = "Scade mărimea",
    Flight = "Zbor",
    Invincibility = "Invincibilitate",
    RandomStatUp = "↑ Crește {value} statistic aleatoriu",
    RandomStatDown = "↓ Scade {value} statistic aleatoriu",

    -- Health related
    RedHeart = "{value} Viață",
    SoulHeart = "{value} Inimă Suflet",
    BlackHeart = "{value} Inimă Neagră",
    BoneHeart = "{value} Inimă Osoasă",
    EternalHeart = "{value} Inimă Eternală",
    GoldenHeart = "{value} Inimă Aurie",
    RottenHeart = "{value} Inimă Putrezită",
    BrokenHeart = "{value} Inimă Frântă",
    EmptyHeart = "{value} Container gol de inimă",
    FullHealth = "Viață plină",
    HealingRed = "Vindecă {value} inimă",
    CoinHeart = "{value} Inimă Bănuț",
    EmptyCoinHeart = "{value} Container gol Inimă-Bănuț",
    HealingCoin = "Vindecă {value} bănuț",

    -- Room chances
    AngelDevilChance = "{value}% șansă la camere Diavol/Înger",
    DevilChance = "{value}% șansă Cameră Diavol",
    AngelChance = "{value}% șansă Cameră Înger",
    PlanetariumChance = "{value}% șansă Planetariu",

    -- Pickups / Spawns
    Coin = "{value} Bănuț",
    Bomb = "{value} Bombe",
    Key = "{value} Cheie",
    CoinBombKey = "{value} {{Coin}} bănuț, {{Bomb}} bombă și {{Key}} cheie",
    -- Dynamic Spawns
    Spawns = {
        RandomPickup = "Oferă {value} lucru aleator",
        RandomTrinket = "Oferă {value} breloc aleator",
        RandomHeart = "Oferă {value} inimă aleatorie",
        RedHeart = "Oferă {value} Inimă Roșie",
        SoulHeart = "Oferă {value} Inimă Suflet",
        BlackHeart = "Oferă {value} Inimă Neagră",
        BoneHeart = "Oferă {value} Inimă Osoasă",
        Bomb = "Oferă {value} bombă",
        Key = "Oferă {value} cheie",
        Coin = "Oferă {value} bănuț",
        RandomCoin = "Oferă {value} bănuț aleator",
        Card = "Oferă {value} carte",
        Pill = "Oferă {value} pastilă",
        Rune = "Oferă {value} rună",
        Battery = "Oferă {value} baterie",
        BlueFly = "Oferă {value} muscă albastră",
        BlueSpider = "Oferă {value} păianjen albastru",
    },

    -- Permanent Tear Effects
    TearEffect = {
        Homing = "Lacrimi care urmăresc",
        Spectral = "Lacrimi Fantomatice",
        Piercing = "Lacrimi pătrunzătoare",
        Poison = "{{Poison}} Lacrimi otrăvitoare",
    },

    -- Familiars
    FlyOrbital = "{value} Muscă orbitală",
    Orbital = "Orbital",
    BlockProjectiles = "Blochează proiectilele inamicilor",
    DamagePerTear = "Dă {value} daune pe lacrimă",
    DamagePerShot = "Dă {value} daune pe împușcătură",
    DamagePerSecond = "Dă {value} daune pe secundă",
    ContactDamagePerSecond = "Dă {value} daune de contact pe secundă",
    MimicMovement = "Oglindește mișcările lui Isaac cu {value} secunde întârziere",

    -- Player
    CantShoot = "Isaac nu poate trage",
    PlayerContactDamage = "Isaac dă {value} daune de contact pe secundă",
    DamageToAllEnemies = "Dă {value} daune tuturor inamicilor",

    -- Misc
    LeftEye = "Primește pentru ochiul stâng:",
    RightEye = "Primește pentru ochiul drept:",
    RoomEffect = "{{Timer}} Primește pentru cameră:",
    TimedEffect = "{{Timer}} Primește pentru {value} secunde:",
    OnUseEffect = "La folosire:",
    HeldEffect = "Când este ținut:",
    MaxLuck = "{{Luck}} Max.({max}%) la {value} noroc",
    SingleUseInfo = "{{Warning}} UTILIZARE UNICĂ {{Warning}}",
    NoEffect = "Fără efect",
    FullMapping = {
        BaseDesc = "{{Timer}} Vezi toată harta etajului {exception}",
        Exception = "(cu excepția {{SuperSecretRoom}} Camerei Super Secrete)"
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
	[C_ID .. 2] = "Isaac trage cu 3 lacrimi odată", -- The Inner Eye
	-- Full old Desc: "↓ {{Tears}} x0.48 Viteză de atac#↓ {{Tears}} +3 Întârziere a lacrimilor #Isaac trage cu 3 lacrimi odată"
	-- English: "Isaac shoots 3 tears at once"

	[C_ID .. 5] = "Lacrimile primesc un efect bumerang", -- My Reflection
	-- Full old Desc: "↑ {{Range}} +1.5 Distanță#↑ +1 Mărimea Lacrimilor#↑ {{Shotspeed}} +0.6 Viteza atacului#Lacrimile primesc un efect bumerang"
	-- English: "Tears get a boomerang effect"

	[C_ID .. 8] = "Împușcă Lacrimi Normale", -- Brother Bobby
	-- Full old Desc: "Împușcă Lacrimi Normale#Are 3.5 atac pe lacrimă"
	-- English: "Shoots normal tears"

	[C_ID .. 9] = "Toate muștele inamice sunt prietenoase", -- Skatole
	-- English: "All fly enemies are friendly"

	[C_ID .. 11] = "Isaac reînvie cu viață plină la moarte", -- 1up!
	-- Full old Desc: "↑ +1 Viață#Isaac reînvie cu viață plină la moarte"
	-- English: "Isaac respawns with full health on death"

	[C_ID .. 13] = "{{BlackHeart}} Inamicii otrăviți pot oferi Inimi Negre", -- The Virus
	-- Full old Desc: "↓ {{Speed}} -0.1 Viteză#{{Poison}} Atingerea inamicilor îi otrăvește#{{BlackHeart}} Inamicii otrăviți pot oferi Inimi Negre"
	-- English: "{{Poison}} Touching enemies poisons them#{{BlackHeart}} Poisoned enemies can drop Black Hearts"

	[C_ID .. 21] = "Arată iconițele pe hartă#Nu arată aspectul hărții", -- The Compass
	-- English: "Reveals icons on the map#Does not reveal the layout of the map"

	[C_ID .. 33] = "{{Timer}} Zboară o cameră#{{MomsHeart}} Omoară Piciorul Mamei și Inima Mamei instant#{{Warning}} Îl Omoară pe Isaac când este folosită pe Satan", -- The Bible
	-- English: "{{Timer}} Flight for the room#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[C_ID .. 36] = "Depune un rahat și împinge inamicii#Poate fi pus langă o gaură și distrus cu o bombă pentru a face un pod", -- The Poop
	-- English: "Spawns one poop and knocks back enemies#Can be placed next to a pit and destroyed with a bomb to make a bridge"

	[C_ID .. 38] = "Trage 10 lacrimi într-un cerc împrejurul lui Isaac#Lacrimile copiază efectele lui Isaac, plus 25 daune", -- Tammy's Head
	-- English: "Shoots 10 tears in a circle around Isaac#The tears copy Isaac's tear effects, plus 25 damage"

	[C_ID .. 39] = "Pietrifică toți inamicii din cameră 4 secunde", -- Mom's Bra
	-- English: "{{Petrify}} Petrifies all enemies in the room for 4 seconds"

	[C_ID .. 40] = "Cauzează o explozie la locația lui Isaac", -- Kamikaze!
	-- Full old Desc: "Cauzează o explozie la locația lui Isaac#Dă 40 daune"
	-- English: "Causes an explosion at Isaac's location#Deals {VAR:1} damage"

	[C_ID .. 41] = "{{Fear}} Înfricoșează toți inamicii din cameră 5 secunde", -- Mom's Pad
	-- English: "{{Fear}} Fears all enemies in the room for 5 seconds"

	[C_ID .. 42] = "Folosind obiectul și trăgând într-o direcție aruncă capul#{{Poison}} Capul explodează la impact și otrăvește inamicii", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes on impact and poisons enemies"

	[C_ID .. 44] = "Îl teleportează pe Isaac într-o cameră aleatorie, în afară de camerele SUNT O EROARE (I AM ERROR) ", -- Teleport!
	-- English: "Teleports Isaac into a random room, except I AM ERROR rooms"

	[C_ID .. 46] = "+8% șansă de răsplată la completarea camerei #Șansă mai bună de câștig când pariezi", -- Lucky Foot
	-- Full old Desc: "↑ {{Luck}} +1 Noroc#+8% șansă de răsplată la completarea camerei #Șansă mai bună de câștig când pariezi"
	-- English: "+8% room clear reward chance#Better chance to win while gambling"

	[C_ID .. 47] = "{{Collectible168}} La folosire, începe să țintească o reticulă#O rachetă aterizează pe reticulă după 1.5 secunde#Dă 20x daunele lui Isaac", -- Doctor's Remote
	-- English: "{{Collectible168}} On use, start aiming a crosshair#A missile lands on the crosshair after 1.5 seconds#It deals 20x Isaac's damage"

	[C_ID .. 49] = "Următorul atac este înlocuit cu o rază", -- Shoop da Whoop!
	-- Full old Desc: "Următorul atac este înlocuit cu o rază#Dă 26x daunele lui Isaac în 0.9 secunde"
	-- English: "The next shot is replaced with a beam#It deals {VAR:1}x Isaac's damage over {VAR:2} seconds"

	[C_ID .. 52] = "{{Damage}} Acele bombe dau 5x daunele lui Isaac + 30", -- Dr. Fetus
	-- Full old Desc: "↓ {{Tears}} x0.4 Viteză de Atac#{{Bomb}} Isaac trage bombe în loc de lacrimi#{{Damage}} Acele bombe dau 5x daunele lui Isaac + 30"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 5x Isaac's damage + 30"

	[C_ID .. 53] = "Pickup-urile sunt atrase la Isaac", -- Magneto
	-- English: "Pickups are attracted to Isaac"

	[C_ID .. 54] = "Arată aspectul hărții#Nu arată iconițele camerelor", -- Treasure Map
	-- English: "Reveals the floor layout#Does not reveal room icons"

	[C_ID .. 56] = "Varsă o baltă de fluid#Fluidul dă 24 daune pe secundă", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 57] = "Muscă orbital de distanță medie", -- Distant Admiration
	-- Full old Desc: "Muscă orbital de distanță medie#Dă 75 daune de contact pe secundă"
	-- English: "Mid-range fly orbital"

	[C_ID .. 60] = "Îi permite lui Isaac să traverseze găuri de o placă", -- The Ladder
	-- English: "Allows Isaac to cross 1-tile gaps"

	[C_ID .. 62] = "{{HealingRed}} Omorârea a 13 inamici vindecă o jumătate de inimă", -- Charm of the Vampire
	-- English: "{{HealingRed}} Killing 13 enemies heals half a heart"

	[C_ID .. 63] = "{{Battery}} Articolele Active pot fi supraîncărcate la două încărcări pline", -- The Battery
	-- English: "{{Battery}} Active items can be overcharged to two full charges"

	[C_ID .. 64] = "{{Shop}} Articolele din magazin costă cu 50% mai puțin", -- Steam Sale
	-- English: "{{Shop}} Shop items cost 50% less"

	[C_ID .. 65] = "Apar 6 Bombe Troll lângă centrul camerei", -- Anarchist Cookbook
	-- English: "Spawns 6 Troll Bombs near the center of the room"

	[C_ID .. 66] = "{{Slow}} Încetinește inamicii pentru 8 secunde", -- The Hourglass
	-- English: "{{Slow}} Slows enemies down for 8 seconds"

	[C_ID .. 67] = "Trage lacrimi normale", -- Sister Maggy
	-- Full old Desc: "Trage lacrimi normale#Dă 3.5 daune pe lacrimă"
	-- English: "Shoots normal tears"

	[C_ID .. 68] = "Isaac trage lasere în loc de lacrimi", -- Technology
	-- English: "Isaac shoots lasers instead of tears"

	[C_ID .. 69] = "{{Chargeable}} Lacrimi încărcabile#{{Damage}} Daunele se măresc odată cu timpul de încărcare, până la 4x#{{Tears}} Timpul de încărcare maxim este de 2.5x întârzierea lacrimilor", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x#{{Tears}} Max charge time is 2.5x tear delay"

	[C_ID .. 71] = "Crește mărimea lacrimilor și scade distanța = crește puțin distanța", -- Mini Mush
	-- Full old Desc: "↑ {{Speed}} +0.3 Viteză#↑ +1.5 Mărimea lacrimilor#↑ Mărimea scade#↓ {{Range}} -4.25 Distanță#Crește mărimea lacrimilor și scade distanța = crește puțin distanța"
	-- English: "The tear height up and range down = slight range up"

	[C_ID .. 73] = "Lv1: Orbital#Lv2: Orbital care trage#Lv3: Băiatul Carne#Lv4: Super Băiatul Carne", -- Cube of Meat
	-- English: "Lv1: Orbital#Lv2: Shooting orbital#Lv3: Meat Boy#Lv4: Super Meat Boy"

	[C_ID .. 75] = "{{BloodDonationMachine}} Mașina de Donație de Sânge dă mai mulți {{Coin}} Bănuți", -- PHD
	-- Full old Desc: "{{HealingRed}} Vindecă 2 inimi#{{Pill}} Oferă 1 pastilă#{{Pill}} Schimbă pastilele rele în pastile bune#{{BloodDonationMachine}} Mașina de Donație de Sânge dă mai mulți {{Coin}} Bănuți"
	-- English: "{{Pill}} Changes bad pills into good pills#{{BloodDonationMachine}} Blood Donation Machines give more {{Coin}} coins"

	[C_ID .. 76] = "{{SecretRoom}} Deschide toate intrările camerelor secrete", -- X-Ray Vision
	-- English: "{{SecretRoom}} Opens all secret room entrances"

	[C_ID .. 78] = "Folosirea articolului are o șansă mare să înlocuiască boss-ul etajului cu un Om-Cal (Horseman)", -- Book of Revelations
	-- Full old Desc: "{{SoulHeart}} +1 Inimă Suflet#{{AngelDevilChance}} +17.5% șansă de cameră Diavol/Înger când este ținută#Folosirea articolului are o șansă mare să înlocuiască boss-ul etajului cu un Om-Cal (Horseman)"
	-- English: "Using the item has a high chance to replace the floor's boss with a horseman"

	[C_ID .. 81] = "Isaac reapare cu 1 container de inimă la moarte#{{Warning}} Setează containerele de inimi ale lui Isaac la 1 când este luat", -- Dead Cat
	-- Full old Desc: "↑ +9 Reînvieri#Isaac reapare cu 1 container de inimă la moarte#{{Warning}} Setează containerele de inimi ale lui Isaac la 1 când este luat"
	-- English: "Isaac respawns with 1 heart container on death#{{Warning}} Sets Isaac's heart containers to 1 when picked up"

	[C_ID .. 83] = "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#Îi permite lui Isaac să distrugă pietre când merge în ele", -- The Nail
	-- Full old Desc: "Când este folosit:#{{SoulHeart}} +1 Inimă Suflet#{{Timer}} Primește pentru cameră:#↑ {{Damage}} +0.7 Daune#↓ {{Speed}} -0.18 Viteză#Isaac dă 40 daune de contact pe secundă#Îi permite lui Isaac să distrugă pietre când merge în ele"
	-- English: "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#{{IND}}Allows Isaac to destroy rocks by walking into them"

	[C_ID .. 84] = "Deschide o trapă către următorul etaj#{{LadderRoom}} 10% șansă să deschidă o trapă strâmtă", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} 10% chance to open a crawlspace trapdoor"

	[C_ID .. 86] = "Monstro cade pe un inamic și dă 120 daune#{{Warning}} Monstro cade pe Isaac dacă camera nu are inamici", -- Monstro's Tooth
	-- English: "Monstro falls on an enemy and deals 120 damage#{{Warning}} Monstro falls on Isaac if the room has no enemies"

	[C_ID .. 88] = "Încarcă înainte în direcția în care Isaac trage", -- Little Chubby
	-- Full old Desc: "Încarcă înainte în direcția în care Isaac trage#Dă 52.5 daune de contact pe secundă"
	-- English: "Charges forward in the direction Isaac is shooting"

	[C_ID .. 91] = "Arată tipul camerei alăturate cu camera următoare#{{SecretRoom}} Poate arăta Camerele Secrete și Super Secrete", -- Spelunker Hat
	-- English: "Reveals the room type of adjacent rooms#{{SecretRoom}} Can reveal Secret and Super Secret Rooms"

	[C_ID .. 93] = "{VAR:TIMEDEFFECT}#{{Fear}} Înfricoșează toți inamicii din cameră", -- The Gamekid
	-- Full old Desc: "{{Timer}} Primește pentru 6.5 secunde:#Invincibilitate#Isaac nu poate trage dar dă 40 daune de contact pe secundă#{{HealingRed}} Omorârea a 2 inamici vindecă jumătate de inimă#{{Fear}} Înfricoșează toți inamicii din cameră"
	-- English: "{VAR:TIMEDEFFECT}#{{IND}}{{HealingRed}} Killing 2 enemies heals half a heart#{{IND}}{{Fear}} Fears all enemies in the room"

	[C_ID .. 94] = "{{Coin}} Oferă un bănuț aleator la fiecare 2 camere", -- Sack of Pennies
	-- English: "{{Coin}} Spawns a random coin every 2 rooms"

	[C_ID .. 95] = "Trage cu lasere", -- Robo-Baby
	-- Full old Desc: "Trage cu lasere#Dă 3.5 daune pe împușcătură"
	-- English: "Shoots lasers"

	[C_ID .. 96] = "{{HalfHeart}} Oferă o jumătate de Inimă Roșie la fiecare 3 camere", -- Little C.H.A.D.
	-- English: "{{HalfHeart}} Spawns a half Red Heart every 3 rooms"

	[C_ID .. 99] = "{{Slow}} Trage cu lacrimi încetinitoare", -- Little Gish
	-- Full old Desc: "{{Slow}} Trage cu lacrimi încetinitoare#Dă 3.5 daune pe lacrimă"
	-- English: "{{Slow}} Shoots slowing tears"

	[C_ID .. 100] = "Trage cu lacrimi balistice", -- Little Steven
	-- Full old Desc: "Trage cu lacrimi balistice#Dă 3.5 daune pe lacrimă"
	-- English: "Shoots homing tears"

	[C_ID .. 104] = "Lacrimile se înjumătățesc la contact#Jumătățile de inimă dau jumătate daune", -- The Parasite
	-- English: "Tears split in two on contact#Split tears deal half damage"

	[C_ID .. 105] = "Realege piedestalul articolelor din cameră", -- The D6
	-- English: "Rerolls pedestal items in the room"

	[C_ID .. 107] = "{VAR:ROOMEFFECT}", -- The Pinking Shears
	-- Full old Desc: "{{Timer}} Primește în cameră:#Flight#Corpul lui Isaac se separă de cap și atacă inamicii cu 82.5 daune de contact pe secundă"
	-- English: "{VAR:ROOMEFFECT}#{{IND}}Isaac's body separates from his head and attacks enemies with {VAR:1} contact damage per second"

	[C_ID .. 108] = "Reduce majoritatea daunelor luate la jumătate de inimă", -- The Wafer
	-- English: "Reduces most damage taken to half a heart"

	[C_ID .. 109] = "↑ {{Damage}} +0.04 Daune pentru fiecare {{Coin}} bănuț Isaac îl are", -- Money = Power
	-- English: "↑ {{Damage}} +0.04 Damage for every {{Coin}} coin Isaac has"

	[C_ID .. 111] = "{{Poison}} Dă 5 daune inamicilor apropiați și îi otrăvește#Otrava dă daunele lui Isaac de 6 ori", -- The Bean
	-- English: "{{Poison}} Deals 5 damage to enemies nearby and poisons them#The poison deals Isaac's damage 6 times"

	[C_ID .. 112] = "Accelereză ceilalți orbitali", -- Guardian Angel
	-- Full old Desc: "Orbital#Accelereză ceilalți orbitali#Blochează proiectilele#Dă 105 daune de contact pe secundă"
	-- English: "Speeds up all other orbitals"

	[C_ID .. 113] = "Trage în inamicii care se apropie de el", -- Demon Baby
	-- Full old Desc: "Trage în inamicii care se apropie de el#Dă 3 daune pe lacrimă"
	-- English: "Shoots enemies that get close to him"

	[C_ID .. 114] = "Lacrimile lui Isaac sunt înlocuite de un cuțit aruncabil#{{Damage}} Cuțitul dă 2x daunele lui Isaac când este ținut și 6x la cea mai mare distanță posibilă", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and 6x at the furthest possible distance"

	[C_ID .. 116] = "{{Battery}} Încarcă automat prima bară a Articolelor Active#{{Battery}} Încarcă Articolul Activ când este luat", -- 9 Volt
	-- English: "{{Battery}} Automatically charges the first bar of active items#{{Battery}} Fully recharges the active item on pickup"

	[C_ID .. 117] = "Când primești daune oferă o pasăre care atacă inamicii", -- Dead Bird
	-- Full old Desc: "Când primești daune oferă o pasăre care atacă inamicii#Pasărea dă 4.3 daune de contact pe secundă"
	-- English: "Taking damage spawns a bird that attacks enemies"

	[C_ID .. 122] = "Când ai o jumătate de Inimă Roșie sau mai puțin:#{VAR:EFFECTLIST}", -- Whore of Babylon
	-- Full old Desc: "Când ai o jumătate de Inimă Roșie sau mai puțin:#↑ {{Speed}} +0.3 Viteză#↑ {{Damage}} +1.5 Daune"
	-- English: "When on half a Red Heart or less:#{VAR:EFFECTLIST}"

	[C_ID .. 123] = "{{Timer}} oferă un familiar aleator în cameră", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the room"

	[C_ID .. 124] = "Declanșează un efect aleator de Articol Activ", -- Dead Sea Scrolls
	-- English: "Triggers a random active item effect#Chooses the effect from a fixed list of items"

	[C_ID .. 125] = "Bombe balistice", -- Bobby-Bomb
	-- Full old Desc: "{{Bomb}} +5 Bombe#Bombe balistice"
	-- English: "Homing bombs"

	[C_ID .. 126] = "↑ {{Damage}} +1.2 Daune în cameră#{{Warning}} Dă 1 inimă de daune lui Isaac#{{Heart}} elimină Inimile Roșii primele", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 127] = "Realege și restartează întregul etaj", -- Forget Me Now
	-- English: "Rerolls and restarts the entire floor"

	[C_ID .. 128] = "Muscă orbital cu rază lungă", -- Forever Alone
	-- Full old Desc: "Muscă orbital cu rază lungă#Dă 30 daune de contact pe secundă"
	-- English: "Long range fly orbital"

	[C_ID .. 130] = "Când este ținut:#{{Speed}} Setează Viteza ta la cel puțin 1.5#Zbori#După folosire, aleargă în direcția mișcărilor lui Isaac", -- A Pony
	-- English: "While held:#{{Speed}} Sets your Speed to at least 1.5#Flight#Upon use, dashes in the direction of Isaac's movement"

	[C_ID .. 131] = "{{Bomb}} Oferă 1 bombă în fiecare 3 camere", -- Bomb Bag
	-- English: "{{Bomb}} Spawns 1 bomb pickup every 3 rooms"

	[C_ID .. 132] = "{{Damage}} Inimile dau mai multe daune cu cât mai departe ajung", -- A Lump of Coal
	-- English: "{{Damage}} Tears deal more damage the further they travel"

	[C_ID .. 133] = "{{SoulHeart}} Convertește 1 container de inimă în 3 Inimi Suflet", -- Guppy's Paw
	-- English: "{{SoulHeart}} Converts 1 heart container into 3 Soul Hearts"

	[C_ID .. 134] = "{{Chest}} 33% șansă să schimbe răsplata camerei cu o cutie#33% șansă să nu apară nimic după ce este goală camera", -- Guppy's Tail
	-- English: "{{Chest}} 33% chance to replace the room clear reward with a chest#33% chance to spawn no room clear reward"

	[C_ID .. 135] = "{{Coin}} Îl rănește pe Isaac jumătate de inimă și apar 1-2 bănuți#{{Heart}} Elimină Inimile Roșii primele", -- IV Bag
	-- English: "{{Coin}} Hurts Isaac for half a heart and spawns 1-2 coins#{{Heart}} Removes Red Hearts first"

	[C_ID .. 136] = "Oferă o momeală Isaac care atrage inamicii și explodează după 5 secunde", -- Best Friend
	-- English: "Spawns a decoy Isaac that attracts enemies and explodes after 5 seconds"

	[C_ID .. 137] = "Bombele lui Isaac nu mai explodează automat#După folosire, detonează toate bombele lui Isaac odată", -- Remote Detonator
	-- Full old Desc: "{{Bomb}} +5 Bombe#Bombele lui Isaac nu mai explodează automat#După folosire, detonează toate bombele lui Isaac odată"
	-- English: "Isaac's bombs no longer explode automatically#Upon use, detonates all of Isaac's bombs at once"

	[C_ID .. 139] = "{{Trinket}} Isaac poate ține 2 breloace", -- Mom's Purse
	-- English: "{{Trinket}} Isaac can hold 2 trinkets"

	[C_ID .. 140] = "{{Poison}} Bombele lui Isaac otrăvesc inamicii prinși în explozie ", -- Bob's Curse
	-- Full old Desc: "{{Bomb}} +5 Bombe#{{Poison}} Bombele lui Isaac otrăvesc inamicii prinși în explozie "
	-- English: "{{Poison}} Isaac's bombs poison enemies caught in the blast"

	[C_ID .. 142] = "{{SoulHeart}} Isaac primește 1 Inimă Suflet când are jumătate de inimă#Se poate întâmpla doar o dată pe cameră#Ieșind și reintrând în cameră permite efectului să se declanșeze din nou", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again"

	[C_ID .. 144] = "{{Coin}} Ia bănuții de lângă el#Apar lucruri aleatorii la fiecare 3-4 bănuți", -- Bum Friend
	-- English: "{{Coin}} Picks up nearby coins#Spawns random pickups every 3-4 coins"

	[C_ID .. 147] = "{{Timer}} Pentru cameră, Isaac poate sparge pietre și pereți de Cameră Secretă mergând în ei", -- Notched Axe
	-- English: "{{Timer}} For the room, Isaac can break rocks and Secret Room walls by walking into them"

	[C_ID .. 149] = "Lacrimile lui Isaac sunt trase într-o arcă#{{Poison}} Lacrimile explodează și otrăvesc inamicii unde cad", -- Ipecac
	-- Full old Desc: "↑ {{Damage}} +40 Daune#↓ {{Tears}} x0.5 Viteză de Atac#↓ {{Tears}} +10 Întârziere a Lacrimilor#Lacrimile lui Isaac sunt trase într-o arcă#{{Poison}} Lacrimile explodează și otrăvesc inamicii unde cad"
	-- English: "Isaac's tears are shot in an arc#{{Poison}} The tears explode and poison enemies where they land"

	[C_ID .. 151] = "Lacrimile au o șansă de 1/6 să facă să apară o muscă albastră când nimeresc un inamic", -- The Mulligan
	-- English: "Tears have a 1/6 chance to spawn a blue fly when hitting an enemy"

	[C_ID .. 152] = "Înlocuiește lacrimile ochiului drept al lui Isaac cu un laser continuu#{{Damage}} Dă 3x daunele lui Isaac pe secundă", -- Technology 2
	-- Full old Desc: "↓ {{Tears}} x0.5 Viteză de Atac#↓ {{Damage}} x0.65 Daune#Înlocuiește lacrimile ochiului drept al lui Isaac cu un laser continuu#{{Damage}} Dă 3x daunele lui Isaac pe secundă"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} It deals 3x Isaac's damage per second"

	[C_ID .. 153] = "Isaac trage 4 lacrimi odată", -- Mutant Spider
	-- Full old Desc: "↓ {{Tears}} x0.48 Viteză de Atac#↓ {{Tears}} +3 Întârziere a lacrimilor#Isaac trage 4 lacrimi odată"
	-- English: "Isaac shoots 4 tears at once"

	[C_ID .. 155] = "Plutește prin cameră", -- The Peeper
	-- Full old Desc: "Plutește prin cameră#Dă 17 daune de contact pe secundă"
	-- English: "Floats around the room"

	[C_ID .. 156] = "{{Battery}} Luând daune adaugă 1 încărcare Articolului Activ", -- Habit
	-- English: "{{Battery}} Taking damage adds 1 charge to the active item"

	[C_ID .. 157] = "↑ {{Damage}} După luarea unei daune primești mai multe Daune#Se adaugă până la 6 ori pe etaj#Ține tot etajul", -- Bloody Lust
	-- English: "↑ {{Damage}} Taking damage grants a damage up#Applies up to 6 times per floor#Lasts for the whole floor"

	[C_ID .. 158] = "Oferă o {{SoulHeart}} Inimă Suflet, {{Rune}} rună sau {{Card}} carte#{VAR:EFFECTLIST}", -- Crystal Ball
	-- Full old Desc: "Oferă o {{SoulHeart}} Inimă Suflet, {{Rune}} rună sau {{Card}} carte#{{Timer}} Vezi toată harta etajului (în afară de {{SuperSecretRoom}} Camera Super Secretă)"
	-- English: "Spawns a {{SoulHeart}} Soul Heart, {{Rune}} rune or {{Card}} card#{VAR:EFFECTLIST}"

	[C_ID .. 160] = "Apar 5 raze de lumină lângă inamici#Fiecare rază dă 8x daunele lui Isaac + 160 în 0.8 secunde", -- Crack the Sky
	-- English: "Spawns 5 beams of light near enemies#Each beam deals 8x Isaac's damage + 160 over 0.8 seconds"

	[C_ID .. 161] = "{{Player4}} Reînvii ca ??? (Bebelușul Albastru) după moarte", -- Ankh
	-- English: "{{Player4}} Respawn as ??? (Blue Baby) on death"

	[C_ID .. 163] = "Trage Lacrimi Fantomatice", -- Ghost Baby
	-- Full old Desc: "Trage Lacrimi Fantomatice#Dă 3.5 daune pe lacrimă"
	-- English: "Shoots spectral tears"

	[C_ID .. 164] = "Aruncă o flacără albastră#Dă daune de contact, blochează lacrimile inamicilor, și dispare după 2 secunde", -- The Candle
	-- English: "Throws a blue flame#It deals contact damage, blocks enemy tears, and despawns after 2 seconds"

	[C_ID .. 166] = "Realege toate lucrurile (pickups) din cameră", -- D20
	-- English: "Rerolls all pickups in the room"

	[C_ID .. 167] = "Trage 2 lacrimi în formă de V", -- Harlequin Baby
	-- Full old Desc: "Trage 2 lacrimi în formă de V#Dă 4 daune pe lacrimă"
	-- English: "Shoots two tears in a V-shaped pattern"

	[C_ID .. 168] = "În loc să tragă cu lacrimi, țintește o reticulă#O rachetă cade pe reticulă după 1.5 secunde#{{Damage}} Rachetele dau 20x daunele lui Isaac", -- Epic Fetus
	-- English: "Instead of shooting tears, aim a crosshair#A rocket lands on the crosshair after 1.5 seconds#{{Damage}} Rockets deal 20x Isaac's damage"

	[C_ID .. 169] = "Lacrimilă intră prin inamicii omorâți dacă mai există daune", -- Polyphemus
	-- Full old Desc: "↑ {{Damage}} +4 Daune#↑ {{Damage}} x2 Daune#↓ {{Tears}} x0.48 Viteză de Atac#↓ {{Tears}} +3 Întârzierea Lacrimilor#Lacrimilă intră prin inamicii omorâți dacă mai există daune"
	-- English: "Tears pierce killed enemies if there is leftover damage"

	[C_ID .. 170] = "Calcă un inamic apropiat la fiecare 4 secunde", -- Daddy Longlegs
	-- Full old Desc: "Calcă un inamic apropiat la fiecare 4 secunde#Dă 40 daune pe secundă"
	-- English: "Stomps on a nearby enemy every 4 seconds"

	[C_ID .. 171] = "{{Slow}} Încetinește inamicii pentru 4 secunde", -- Spider Butt
	-- Full old Desc: "{{Slow}} Încetinește inamicii pentru 4 secunde#Dă 10 daune tuturor inamicilor"
	-- English: "{{Slow}} Slows down enemies for 4 seconds"

	[C_ID .. 174] = "Trage lacrimi aleatorii", -- Rainbow Baby
	-- Full old Desc: "Trage lacrimi aleatorii#Dă 3-5 daune pe lacrimă"
	-- English: "Shoots random tears"

	[C_ID .. 175] = "Deschide toate ușile din cameră, incluzând {{SecretRoom}}{{SuperSecretRoom}}Camerele Secrete, {{ChallengeRoom}}{{BossRushRoom}}Camerele Provocare, și ușa lui Mega Satan", -- Dad's Key
	-- English: "Opens all doors in the room, including {{SecretRoom}}{{SuperSecretRoom}}Secret Rooms, {{ChallengeRoom}}{{BossRushRoom}}Challenge Rooms, and the Mega Satan door"

	[C_ID .. 177] = "{{Coin}} Plătești 1 bănuț pentru o șansă să apară un lucru", -- Portable Slot
	-- English: "{{Coin}} Spend 1 coin for a chance to spawn a pickup"

	[C_ID .. 178] = "Luând o daună varsă o baltă de fluid#Fluidul dă 24 daune pe secundă", -- Holy Water
	-- English: "Taking damage spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 180] = "Isaac se bășește când este vătămat#{{Poison}} Bășina otrăvește inamicii", -- The Black Bean
	-- English: "Isaac farts when damaged#{{Poison}} The fart poisons enemies"

	[C_ID .. 181] = "{{Speed}} Setează Viteza ta la cel puțin 1.5#Zbori când îl ți#Folosirea articolului se aruncă în direcția în care Isaac merge, lăsând în spate raze de lumină", -- White Pony
	-- English: "{{Speed}} Sets your Speed to at least 1.5#Flight while held#Using the item dashes in the direction of Isaac's movement, leaving behind beams of light"

	[C_ID .. 186] = "{{Heart}} Scoate Inimile Roșii primele", -- Blood Rights
	-- Full old Desc: "Dă 40 daune fiecărui inamic#{{Warning}} Dă 1 inimă de daune lui Isaac#{{Heart}} Scoate Inimile Roșii primele"
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 187] = "Mișcându-te aruncă mingea #Mingea Crește când omoară un inamic#Dă mai multe daune cu cât crește", -- Guppy's Hairball
	-- English: "Moving swings the hairball around#The ball grows when it kills an enemy#It deals more damage the bigger it is"

	[C_ID .. 188] = "Oglindește mișcările lui Isaac#Trage înspre Isaac", -- Abel
	-- Full old Desc: "Oglindește mișcările lui Isaac#Trage înspre Isaac#Dă 3.5 daune pe lacrimă"
	-- English: "Mirrors Isaac's movement#Shoots towards Isaac"

	[C_ID .. 191] = "Lacrimile lui Isaac primesc un efect aleator la fiecare 2-3 secunde", -- 3 Dollar Bill
	-- English: "Isaac's tears get random effects every 2-3 seconds"

	[C_ID .. 198] = "Oferă 1 lucru din fiecare tip", -- Box
	-- English: "Spawns 1 pickup of each type"

	[C_ID .. 199] = "Cutiile conțin mai multe lucruri", -- Mom's Key
	-- Full old Desc: "{{Key}} +2 Chei#Cutiile conțin mai multe lucruri"
	-- English: "Chests contain more pickups"

	[C_ID .. 202] = "Atingând inamicii îi pietrifică și îi transformă în aur#Isaac dă daune de contact bazate pe numărul de bănuți#{{Coin}} Omorând un inamic auriu face să apară bănuți#Rahatul lui Isaac are o șansă mare să fie auriu", -- Midas' Touch
	-- English: "{{Petrify}} Touching enemies petrifies them and turns them gold#Isaac deals contact damage based on his coin count#{{Coin}} Killing a golden enemy spawns coins#Poop spawned by Isaac has a high chance to be golden poop"

	[C_ID .. 203] = "Pickups spawned are doubled if possible", -- Humbleing Bundle
	-- English: "Pickups spawned are doubled if possible"

	[C_ID .. 204] = "Luând orice daună are o șansă de 50% să facă să apară un lucru aleator", -- Fanny Pack
	-- English: "Taking damage has a 50% chance to spawn a random pickup"

	[C_ID .. 205] = "{{Battery}} Folosing un Articol Activ neîncărcat, îl încarcă cu costul a 2 inimi#Funcționează doar când articolul nu are nici o bară încărcată", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of 2 hearts#Only works when the item has no charges"

	[C_ID .. 207] = "Lv1: Orbital#{{Charm}} Lv2: Orbital care trage lacrimi fermecătoare#{{Charm}} Lv3: Fata Bandaj#{{Charm}} Lv4: Super Fata Bandaj", -- Ball of Bandages
	-- English: "Lv1: Orbital#{{Charm}} Lv2: Orbital that shoots charmed tears#{{Charm}} Lv3: Bandage Girl#{{Charm}} Lv4: Super Bandage Girl"

	[C_ID .. 208] = "Șansa de inamic campion crește de la 5% la 20%#Nu crește șansa de boși campioni", -- Champion Belt
	-- Full old Desc: "↑ {{Damage}} +1 Daune#Șansa de inamic campion crește de la 5% la 20%#Nu crește șansa de boși campioni"
	-- English: "Champion enemy chance goes from 5% to 20%#Doesn't increase chance of champion bosses"

	[C_ID .. 209] = "{{Confusion}} Exploziile zdruncină și daunează fiecare inamic din cameră", -- Butt Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombe#{{Confusion}} Exploziile zdruncină și daunează fiecare inamic din cameră"
	-- English: "{{Confusion}} Explosions concuss and damage every enemy in the room"

	[C_ID .. 210] = "După 1 secundă de inactivitate, Isaac devine invincibil", -- Gnawed Leaf
	-- English: "After 1 second of inactivity, Isaac becomes invincible"

	[C_ID .. 212] = "50% șansă să reînvii cu o jumătate de inimă la moarte", -- Guppy's Collar
	-- English: "50% chance to revive with half a heart on death"

	[C_ID .. 213] = "Lacrimile lui Isaac distrug lacrimile inamice", -- Lost Contact
	-- Full old Desc: "↓ {{Shotspeed}} -0.15 Viteza Lacrimilor#Lacrimile lui Isaac distrug lacrimile inamice"
	-- English: "Isaac's tears destroy enemy shots"

	[C_ID .. 214] = "{{Timer}} După primirea unei daune Isaac lasă o dâră de fluid sângeriu în cameră#Fluidul dă 6 daune pe secundă", -- Anemic
	-- Full old Desc: "↑ {{Range}} +5 Distanță#{{Timer}} După primirea unei daune Isaac lasă o dâră de fluid sângeriu în cameră#Fluidul dă 6 daune pe secundă"
	-- English: "{{Timer}} When taking damage Isaac leaves a trail of blood creep for the room#The creep deals 6 damage per second"

	[C_ID .. 218] = "{{HealingRed}} 50% șansă să vindeci jumătate de inimă în fiecare minut", -- Placenta
	-- Full old Desc: "↑ {{Heart}} +1 Viață#{{HealingRed}} 50% șansă să vindeci jumătate de inimă în fiecare minut"
	-- English: "{{HealingRed}} 50% chance to heal half a heart every minute"

	[C_ID .. 220] = "Bombele lui Isaac trag 10 lacrimi într-un cerc când explodează", -- Sad Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombe#Bombele lui Isaac trag 10 lacrimi într-un cerc când explodează"
	-- English: "Isaac's bombs shoot 10 tears in a circle when they explode"

	[C_ID .. 221] = "Lacrimile lui Isaac sar din inamici și din obstacole", -- Rubber Cement
	-- English: "Isaac's tears bounce off enemies and obstacles"

	[C_ID .. 222] = "Ținerea unui buton de tragere face ca lacrimile să plutească în aer#Eliberarea unui buton de tragere eliberează lacrimile în direcția în care au fost trase", -- Anti-Gravity
	-- Full old Desc: "↑ {{Tears}} -2 Întârzierea Lacrimilor#Ținerea unui buton de tragere face ca lacrimile să plutească în aer#Eliberarea unui buton de tragere eliberează lacrimile în direcția în care au fost trase"
	-- English: "Holding the fire buttons causes tears to hover in midair#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "Imunitate la explozii, valuri de pietre, și atacuri de picior#{{HealingRed}} Fiind atins de o explozie vindecă 1 inimă", -- Pyromaniac
	-- Full old Desc: "{{Bomb}} +5 Bombe#Imunitate la explozii, valuri de pietre, și atacuri de picior#{{HealingRed}} Fiind atins de o explozie vindecă 1 inimă"
	-- English: "Immunity to explosions, rock waves, and stomp attacks#{{HealingRed}} Getting hit by explosions heals 1 heart"

	[C_ID .. 224] = "Lacrimile se despart în 4 când lovesc#Sferturile de lacrimi dau jumătate de daune", -- Cricket's Body
	-- Full old Desc: "↑ {{Tears}} -1 Întârzierea Lacrimilor#↑ {{Tearsize}} x1.2 Mărimea Lacrimilor#↓ {{Range}} -10 Distanță#Lacrimile se despart în 4 când lovesc#Sferturile de lacrimi dau jumătate de daune"
	-- English: "Tears split up in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "{{SoulHeart}} Luând orice daună are o șansă să facă să apară o Inimă Suflet#{{HalfHeart}} Inamicii au o șansă să dea o Inimă Roșie la moarte", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a chance to spawn a Soul Heart#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 227] = "{{Coin}} La primirea oricărei daune apar 1-2 bănuți", -- Piggy Bank
	-- Full old Desc: "{{Coin}} +3 Bănuți#{{Coin}} La primirea oricărei daune apar 1-2 bănuți"
	-- English: "{{Coin}} Taking damage spawns 1-2 coins"

	[C_ID .. 228] = "{{Fear}} 15% șansă să tragi cu lacrimi înfricoșătoare", -- Mom's Perfume
	-- Full old Desc: "↑ {{Tears}} -1 Întârzierea Lacrimilor#{{Fear}} 15% șansă să tragi cu lacrimi înfricoșătoare"
	-- English: "{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 229] = "{{Chargeable}} Lacrimile sunt încărcate ți trase într-un atac de tip shotgun", -- Monstro's Lung
	-- Full old Desc: "↓ {{Tears}} x0.23 Viteză de Atac#{{Chargeable}} Lacrimile sunt încărcate ți trase într-un atac de tip shotgun"
	-- English: "{{Chargeable}} Tears are charged and released in a shotgun style attack"

	[C_ID .. 230] = "{{Fear}} 15% șansă să tragi cu lacrimi înfricoșătoare", -- Abaddon
	-- Full old Desc: "↑ {{Speed}} +0.2 Viteză#↑ {{Damage}} +1.5 Daune#↓ {{EmptyHeart}} Scoate toate containerele de inimă#{{BlackHeart}} +6 Inimi Negre#{{Fear}} 15% șansă să tragi cu lacrimi înfricoșătoare"
	-- English: "↓ {{EmptyHeart}} Removes all heart containers#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 231] = "{{Slow}} Isaac lasă o dâră de fluid încetinitor", -- Ball of Tar
	-- Full old Desc: "{{Slow}} 10% șansă să tragi cu lacrimi încetinitoare#{{Luck}} 100% șansă la 18 noroc#{{Slow}} Isaac lasă o dâră de fluid încetinitor"
	-- English: "{{Slow}} {VAR:LUCKCHANCE}% chance to shoot slowing tears#{{Slow}} Isaac leaves a trail of slowing creep"

	[C_ID .. 232] = "{{Slow}} Primirea oricărei daune încetinește toți inamicii din cameră permanent", -- Stop Watch
	-- Full old Desc: "↑ {{Speed}} +0.3 Viteză#{{Slow}} Primirea oricărei daune încetinește toți inamicii din cameră permanent"
	-- English: "{{Slow}} Taking damage slows all enemies in the room permanently"

	[C_ID .. 233] = "Lacrimile lui Isaac orbitează în jurul lui", -- Tiny Planet
	-- Full old Desc: "↑ +7 Mărimea lacrimilor#Inimi fantomatice#Lacrimile lui Isaac orbitează în jurul lui"
	-- English: "Isaac's tears orbit around him"

	[C_ID .. 234] = "Omorând un inamic face să apară un păianjen albastru", -- Infestation 2
	-- English: "Killing an enemy spawns a blue spider"

	[C_ID .. 236] = "Atingând un inamic îl transformă într-un rahat", -- E. Coli
	-- English: "Touching an enemy turns it into poop"

	[C_ID .. 238] = "{{EternalHeart}} +2% șansă pentru Inimi Eterne", -- Key Piece 1
	-- Full old Desc: "{{Warning}} Luând ambele părți ale cheii deschide o ușă mare aurie#{{AngelChance}} +25% șansă la cameră Înger#{{EternalHeart}} +2% șansă pentru Inimi Eterne"
	-- English: "{{Warning}} Getting both parts of the key opens a big golden door#{{EternalHeart}} +2% chance for Eternal Hearts"

	[C_ID .. 239] = "{{EternalHeart}} +2% șansă pentru Inimi Eterne", -- Key Piece 2
	-- Full old Desc: "{{Warning}} Luând ambele părți ale cheii deschide o ușă mare aurie#{{AngelChance}} +25% șansă la cameră Înger#{{EternalHeart}} +2% șansă pentru Inimi Eterne"
	-- English: "{{Warning}} Getting both parts of the key opens a big golden door#{{EternalHeart}} +2% chance for Eternal Hearts"

	[C_ID .. 241] = "Dublează toate recompensele la golirea camerelor#33% șansă de nici o recompensă la golirea camerei", -- Contract from Below
	-- English: "Doubles all room clear rewards#33% chance for no room clear reward"

	[C_ID .. 242] = "50% șansă să blochezi împușcăturile inamicilor", -- Infamy
	-- English: "50% chance to block enemy shots"

	[C_ID .. 243] = "Blochează împușcăturile inamicilor care vin din direcția în care Isaac trage", -- Trinity Shield
	-- English: "Blocks enemy shots coming from the direction Isaac is shooting"

	[C_ID .. 244] = "Ocazional trage lasere în adiție lacrimilor lui Isaac", -- Tech.5
	-- English: "Occasionally shoot lasers in addition to Isaac's tears"

	[C_ID .. 245] = "Isaac trage cu 2 lacrimi odată", -- 20/20
	-- English: "Isaac shoots 2 tears at once"

	[C_ID .. 246] = "{{SecretRoom}} Arată locațiile camerelor secrete pe hartă", -- Blue Map
	-- English: "{{SecretRoom}} Reveals secret room locations on the map"

	[C_ID .. 247] = "Familiarii dau daune duble", -- BFFS!
	-- English: "Familiars deal double damage"

	[C_ID .. 248] = "Păianjenii și muștele albastre dau daune duble", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage"

	[C_ID .. 249] = "Îi permite lui Isaac să aleagă dintre 2 articole după ce bate un boss", -- There's Options
	-- English: "Allows Isaac to choose between 2 items after beating a boss"

	[C_ID .. 250] = "{{Bomb}} Toate bombele de pe jos devin duble", -- Bogo Bombs
	-- English: "{{Bomb}} All bomb drops become double bombs"

	[C_ID .. 251] = "Isaac poate căra 2 cărți#Toate pastilele devin cărți", -- Starter Deck
	-- Full old Desc: "{{Card}} Oferă 1 carte când îl iei#Isaac poate căra 2 cărți#Toate pastilele devin cărți"
	-- English: "Isaac can carry 2 cards#Turns all pills into cards"

	[C_ID .. 252] = "Isaac poate căra 2 pastile#Toate cărțile devin pastile", -- Little Baggy
	-- Full old Desc: "{{Pill}} Oferă 1 pastilă când îl iei#Isaac poate căra 2 pastile#Toate cărțile devin pastile"
	-- English: "Isaac can carry 2 pills#Turns all cards into pills"

	[C_ID .. 256] = "{{Burning}} Bombele lui Isaac lasă o flacără unde explodează", -- Hot Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombe#{{Burning}} Bombele lui Isaac lasă o flacără unde explodează"
	-- English: "{{Burning}} Isaac's bombs leave a flame where they explode"

	[C_ID .. 257] = "{{Warning}} Explozia îl poate răni pe Isaac", -- Fire Mind
	-- Full old Desc: "{{Burning}} Lacrimile lui Isaac dau foc inamicilor#10% șansă ca lacrimile să explodeze pe inamici la impact#{{Luck}} 100% șansă la 13 noroc#{{Warning}} Explozia îl poate răni pe Isaac"
	-- English: "{{Burning}} Isaac's tears light enemies on fire#{VAR:LUCKCHANCE}% chance for tears to explode on enemy impact#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 258] = "Schimbă toate articolele și statisticile lui Isaac când îl iei, la fiecare nou etaj", -- Missing No.
	-- English: "Rerolls all of Isaac's items and stats on pickup and at every new floor"

	[C_ID .. 260] = "{{CurseBlind}} Imunitate la blesteme", -- Black Candle
	-- Full old Desc: "{{CurseBlind}} Imunitate la blesteme#{{BlackHeart}} +1 Inimă Neagră#{{AngelDevilChance}} +15% șansă la camere Înger/Demon"
	-- English: "{{CurseBlind}} Immune to curses"

	[C_ID .. 261] = "↓ Lacrimile dau mai puține daune cu cât de departe ajung", -- Proptosis
	-- Full old Desc: "↑ {{Damage}} x2 Daune#↓ Lacrimile dau mai puține daune cu cât de departe ajung"
	-- English: "↓ Tears deal less damage the further they travel"

	[C_ID .. 262] = "Luând daune până la 1 inimă dăunează toți inamicii din cameră", -- Missing Page 2
	-- Full old Desc: "{{BlackHeart}} +1 Inimă Neagră#Luând daune până la 1 inimă dăunează toți inamicii din cameră"
	-- English: "Taking damage down to 1 heart damages all enemies in the room"

	[C_ID .. 264] = "Atacă inamicii când Isaac primește daune", -- Smart Fly
	-- Full old Desc: "Orbital#Atacă inamicii când Isaac primește daune#Dă 22.5 daune de contact pe secundă"
	-- English: "Attacks enemies when Isaac takes damage"

	[C_ID .. 265] = "10% șansă să dai daune tuturor inamicilor din cameră când este lovit de o lacrimă inamică", -- Dry Baby
	-- English: "10% chance to damage all enemies in the room when it is hit by an enemy tear"

	[C_ID .. 266] = "{{Slow}} Lasă un fluid încetinitor#Apar 1-2 păianjeni după golirea unei camere", -- Juicy Sack
	-- English: "{{Slow}} Leaves slowing creep#Spawns 1-2 friendly spiders after clearing a room"

	[C_ID .. 267] = "Trage cu lasere#Se mișcă în direcția în care Isaac trage", -- Robo-Baby 2.0
	-- Full old Desc: "Trage cu lasere#Dă 3.5 daune pe atac#Se mișcă în direcția în care Isaac trage"
	-- English: "Shoots lasers#Moves in the direction Isaac is shooting"

	[C_ID .. 268] = "Apar muște albastre când Isaac trage", -- Rotten Baby
	-- English: "Spawns blue flies when Isaac shoots"

	[C_ID .. 269] = "Lasă un fluid care dă 6 daune pe secundă", -- Headless Baby
	-- English: "Leaves creep which deals 6 damage per second"

	[C_ID .. 270] = "Urmărește inamicii#{{HealingRed}} Îl vindecă pe Isaac cu jumătate de inimă roșie când omoară un inamic", -- Leech
	-- Full old Desc: "Urmărește inamicii#{{HealingRed}} Îl vindecă pe Isaac cu jumătate de inimă roșie când omoară un inamic#Dă 3.2 daune pe secundă"
	-- English: "Chases enemies#{{HealingRed}} Heals Isaac for half a heart when it kills an enemy"

	[C_ID .. 271] = "Oferă un lucru aleator la fiecare 5-6 camere", -- Mystery Sack
	-- English: "Spawns a random pickup every 5-6 rooms"

	[C_ID .. 272] = "Muscă prietenoasă explozivă#{{Warning}} Explozia îl poate răni pe Isaac", -- BBF
	-- Full old Desc: "Muscă prietenoasă explozivă#Explozia dă 60 daune#{{Warning}} Explozia îl poate răni pe Isaac"
	-- English: "Friendly exploding fly#The explosion deals {VAR:1} damage#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 273] = "Se aruncă în direcția în care Isaac trage#Explodează când nimerește un inamic#{{Warning}} Explozia îl poate răni pe Isaac", -- Bob's Brain
	-- Full old Desc: "Se aruncă în direcția în care Isaac trage#Explodează când nimerește un inamic#{{Poison}} Explozia dă 60 daune și otrăvește inamicii#{{Warning}} Explozia îl poate răni pe Isaac"
	-- English: "Dashes in the direction Isaac is shooting#Explodes when it hits an enemy#{{Poison}} The explosion deals {VAR:1} damage and poisons enemies#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 274] = "După luarea unei daune oferă un orbital cu distanță medie pentru cameră", -- Best Bud
	-- Full old Desc: "După luarea unei daune oferă un orbital cu distanță medie pentru cameră#Dă 75 daune de contact pe secundă"
	-- English: "Taking damage spawns one midrange orbital for the room"

	[C_ID .. 275] = "{{Chargeable}} Familiar care încarcă și aruncă cu {{Collectible118}} brimstone", -- Lil Brimstone
	-- Full old Desc: "{{Chargeable}} Familiar care încarcă și aruncă cu {{Collectible118}} brimstone#Provoacă 31.5 daune pe durata a 31.5 de secunde"
	-- English: "{{Chargeable}} Familiar that charges and shoots a {{Collectible118}} blood beam#It deals {VAR:1} damage over 0.63 seconds"

	[C_ID .. 276] = "Isaac devine invincibil#Oferă un familiar inimă ce il urmărește pe Issaac#{{Warning}} Dacă familiarul este lovit, Isaac va fi vătămat", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 277] = "{{Fear}} Urmărește și provoacă teamă inamicilor", -- Lil Haunt
	-- Full old Desc: "{{Fear}} Urmărește și provoacă teamă inamicilor#Provoacă 4 daue pe secundă"
	-- English: "{{Fear}} Chases and fears enemies"

	[C_ID .. 278] = "{{Heart}} Culege inimile roși din apropiere#{{SoulHeart}} Oferă Inimi Suflet sau păianjeni pentru fiecare 1.5 inimi colectate", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#{{SoulHeart}} Spawns a Soul Heart or spider for every 1.5 Red Hearts picked up"

	[C_ID .. 279] = "Orbital mare", -- Big Fan
	-- Full old Desc: "Orbital mare#Provoacă 30 de daune de contact pe secundă"
	-- English: "Large orbital"

	[C_ID .. 280] = "Oferă păianjeni albaștrii aleatoriu în camerele neterminate", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms"

	[C_ID .. 281] = "Familiar momeală#Inamicii sunt atrași de el inloc de Isaac", -- Punching Bag
	-- English: "Decoy familiar#Enemies target him instead of Isaac"

	[C_ID .. 282] = "Isaac poate sări peste găuri și obstacole", -- How to Jump
	-- English: "Allows Isaac to jump over gaps and obstacles"

	[C_ID .. 283] = "Înlocuiește pickupruile, piedestalele din cameră și itemele pasive a le lui Isaac", -- D100
	-- English: "Reroll all pickups and pedestal items in the room, and all of Isaac's passive items"

	[C_ID .. 284] = "Înlocuiește toate itemele pasive a le lui Isaac", -- D4
	-- English: "Reroll all of Isaac's passive items"

	[C_ID .. 285] = "Înlocuiește inamicii din cameră", -- D10
	-- English: "Reroll all enemies in the room"

	[C_ID .. 286] = "Declanșează efectul cărții sau runei pe care Isaac o deține fără a o folosi", -- Blank Card
	-- English: "Triggers the effect of the rune or card Isaac holds without using it"

	[C_ID .. 289] = "Aruncă cu un foc roșu#Cauzează pagube, blochează proiectilele și dispare după a cauzat pagube sau a blocat 5 proiectile", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 5 times"

	[C_ID .. 290] = "{{Heart}} Colecteză până la 4 inimi roșii când viața este plină#Aruncă toate inimile colectate când este folosit", -- The Jar
	-- English: "{{Heart}} Picking up Red Hearts while at full health stores up to 4 of them in the Jar#Using the item drops all stored hearts on the floor"

	[C_ID .. 291] = "Transformă toți inamicii non-boss în rahat#Omoară instant toți inamicii și bossi rahat", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses"

	[C_ID .. 293] = "{{Collectible118}} Trage cu o undă Brimstone în 4 direcții", -- Head of Krampus
	-- Full old Desc: "{{Collectible118}} Trage cu o undă Brimstone în 4 direcții#Fiecare undă cauzează 440 de daune pe perioada a 1.33 de secunde"
	-- English: "{{Collectible118}} Shoot a 4-way blood beam#They each deal {VAR:1} damage over 1.33 seconds"

	[C_ID .. 294] = "Aruncă proiectilele și inamicii", -- Butter Bean
	-- Full old Desc: "Aruncă proiectilele și inamicii#10% șansă sa se transforme în {{Collectible484}} Stai ce? când este înlocuit cu alt item și colectat din nou"
	-- English: "Knocks back nearby enemies and projectiles#10% chance to turn into the stronger {{NameC484}} when swapping it with a different active item and picking it up again"

	[C_ID .. 295] = "Provoacă 2x daunele lui Isaac tuturor inamicilor#{{Coin}} Costă 1 bănuț", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage to all enemies#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "{{Heart}} Converts 2 Soul/Black Hearts into 1 heart container", -- Converter
	-- English: "{{Heart}} Converts 2 Soul/Black Hearts into 1 heart container"

	[C_ID .. 299] = "↑ {{Speed}} Slowly gain speed while in hostile rooms#At 2 speed, Isaac becomes invincible and deals contact damage#Afterwards, lose the Taurus speed boost for the room", -- Taurus
	-- Full old Desc: "↓ {{Speed}} -0.3 Speed#↑ {{Speed}} Slowly gain speed while in hostile rooms#At 2 speed, Isaac becomes invincible and deals contact damage#Afterwards, lose the Taurus speed boost for the room"
	-- English: "↑ {{Speed}} Slowly gain speed while in hostile rooms#At 2 speed, Isaac becomes invincible and deals contact damage#Afterwards, lose the Taurus speed boost for the room"

	[C_ID .. 300] = "Touching enemies deals contact damage", -- Aries
	-- Full old Desc: "↑ {{Speed}} +0.25 Speed#Touching enemies deals contact damage"
	-- English: "Touching enemies deals contact damage"

	[C_ID .. 301] = "Taking damage reduces all future damage in the room to half a heart", -- Cancer
	-- Full old Desc: "{{SoulHeart}} +3 Soul Hearts#Taking damage reduces all future damage in the room to half a heart"
	-- English: "Taking damage reduces all future damage in the room to half a heart"

	[C_ID .. 302] = "Isaac can destroy rocks by walking into them", -- Leo
	-- Full old Desc: "Size up#Isaac can destroy rocks by walking into them"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 303] = "Taking damage can make Isaac temporarily invincible#{{Luck}} 100% chance at 10 luck#{{Pill}} Converts negative pills into positive ones", -- Virgo
	-- English: "Taking damage can make Isaac temporarily invincible#{{Luck}} 100% chance at 10 luck#{{Pill}} Converts negative pills into positive ones"

	[C_ID .. 304] = "Balances Isaac's stats#Future stat changes will be spread across all stats", -- Libra
	-- Full old Desc: "+6 {{Coin}} coins, {{Bomb}} bombs and {{Key}} keys#Balances Isaac's stats#Future stat changes will be spread across all stats"
	-- English: "Balances Isaac's stats#Future stat changes will be spread across all stats"

	[C_ID .. 308] = "Isaac leaves a trail of creep#The creep deals 6 damage per second", -- Aquarius
	-- English: "Isaac leaves a trail of creep#The creep deals 6 damage per second"

	[C_ID .. 309] = "Increases tear knockback", -- Pisces
	-- Full old Desc: "↑ {{Tears}} -1 Tear delay#↑ {{Tearsize}} x1.25 Tear size#Increases tear knockback"
	-- English: "Increases tear knockback"

	[C_ID .. 311] = "{{Player12}} When dead, respawn as Dark Judas with a x2 damage multiplier", -- Judas' Shadow
	-- English: "{{Player12}} When dead, respawn as Dark Judas with a x2 damage multiplier"

	[C_ID .. 312] = "All Red Hearts heal double their value", -- Maggy's Bow
	-- Full old Desc: "↑ {{Heart}} +1 Health#{{HealingRed}} Heals 1 heart#All Red Hearts heal double their value"
	-- English: "All Red Hearts heal double their value"

	[C_ID .. 313] = "Negates the first hit taken once per room", -- Holy Mantle
	-- English: "Negates the first hit taken once per room"

	[C_ID .. 314] = "Isaac can destroy rocks by walking into them", -- Thunder Thighs
	-- Full old Desc: "↑ {{Heart}} +1 Health#↓ {{Speed}} -0.4 Speed#Isaac can destroy rocks by walking into them"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 315] = "Isaac's tears attract enemies, pickups and trinkets", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets"

	[C_ID .. 316] = "{{Warning}} Taking damage while partially charged teleports Isaac to a random room", -- Cursed Eye
	-- Full old Desc: "Charged wave of 4 tears#{{Warning}} Taking damage while partially charged teleports Isaac to a random room"
	-- English: "Charged wave of {VAR:1} tears#{{Warning}} Taking damage while partially charged teleports Isaac to a random room"

	[C_ID .. 317] = "Isaac's tears leave creep#The creep deals 30 damage per second", -- Mysterious Liquid
	-- English: "Isaac's tears leave creep#The creep deals 30 damage per second"

	[C_ID .. 318] = "Close combat familiar", -- Gemini
	-- Full old Desc: "Close combat familiar#Deals 6 contact damage per second"
	-- English: "Close combat familiar"

	[C_ID .. 319] = "Bounces around the room#Low accuracy tears that deal Isaac's damage", -- Cain's Other Eye
	-- English: "Bounces around the room#Low accuracy tears that deal Isaac's damage"

	[C_ID .. 320] = "Controllable fly", -- ???'s Only Friend
	-- Full old Desc: "Controllable fly#Deals 37.5 contact damage per second"
	-- English: "Controllable fly"

	[C_ID .. 321] = "Draggable ball that can destroy rocks", -- Samson's Chains
	-- Full old Desc: "Draggable ball that can destroy rocks#Deals 10.7 contact damage per second"
	-- English: "Draggable ball that can destroy rocks"

	[C_ID .. 322] = "Mimics your baby familiars' tears#If you have none, shoots normal 3.5 damage tears", -- Mongo Baby
	-- English: "Mimics your baby familiars' tears#If you have none, shoots normal 3.5 damage tears"

	[C_ID .. 323] = "Shoots 8 tears in all directions#The tears copy Isaac's tear effects#Recharges by shooting tears", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects#Recharges by shooting tears"

	[C_ID .. 324] = "Teleports Isaac to the {{TreasureRoom}} Treasure, {{SecretRoom}} Secret, {{SuperSecretRoom}} Super Secret or {{ErrorRoom}} I AM ERROR Room", -- Undefined
	-- English: "Teleports Isaac to the {{TreasureRoom}} Treasure, {{SecretRoom}} Secret, {{SuperSecretRoom}} Super Secret or {{ErrorRoom}} I AM ERROR Room"

	[C_ID .. 325] = "{{Timer}} Isaac's head turns into a stationary familiar for the room#The head shoots 3.5 damage tears#The body is controlled separately and still shoots Isaac's tears", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The head shoots 3.5 damage tears#The body is controlled separately and still shoots Isaac's tears"

	[C_ID .. 326] = "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#{{Warning}} Holding it for too long deals damage to Isaac", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 327] = "Taking damage at half a Red Heart or none makes isaac temporarily invincible", -- The Polaroid
	-- English: "Taking damage at half a Red Heart or none makes Isaac temporarily invincible"

	[C_ID .. 328] = "Taking damage at half a Red Heart or none damages all enemies in the room", -- The Negative
	-- English: "Taking damage at half a Red Heart or none damages all enemies in the room"

	[C_ID .. 329] = "Replaces Isaac's tears with one giant controllable tear", -- The Ludovico Technique
	-- English: "Replaces Isaac's tears with one giant controllable tear"

	[C_ID .. 331] = "{{Damage}} Tears gain an aura that deals 4.5x Isaac's damage per second", -- Godhead
	-- Full old Desc: "↑ {{Damage}} +0.5 Damage#↑ {{Range}} +1.2 Range#↑ +0.8 Tear height#↓ {{Tears}} -0.3 Tears#↓ {{Shotspeed}} -0.3 Shot speed#Homing tears#{{Damage}} Tears gain an aura that deals 4.5x Isaac's damage per second"
	-- English: "{{Damage}} Tears gain an aura that deals 4.5x Isaac's damage per second"

	[C_ID .. 332] = "{{Player11}} When dead, revive as Lazarus (Risen)", -- Lazarus' Rags
	-- English: "{{Player11}} When dead, revive as Lazarus (Risen)"

	[C_ID .. 333] = "Full mapping effect", -- The Mind
	-- English: "Full mapping effect"

	[C_ID .. 335] = "Grants an aura that repels enemies and projectiles", -- The Soul
	-- Full old Desc: "{{SoulHeart}} +2 Soul Hearts#Grants an aura that repels enemies and projectiles"
	-- English: "Grants an aura that repels enemies and projectiles"

	[C_ID .. 337] = "{{Slow}} Slows down every 4th room#13% chance to speed up the room instead", -- Broken Watch
	-- English: "{{Slow}} Slows down every 4th room#13% chance to speed up the room instead"

	[C_ID .. 338] = "Throwable boomerang#Petrifies enemies and deals 2x Isaac's damage#Can grab and bring back items", -- The Boomerang
	-- English: "Throwable boomerang#{{Petrify}} Petrifies enemies and deals 2x Isaac's damage#Can grab and bring back items"

	[C_ID .. 347] = "Duplicates all item pedestals and pickups in the room", -- Diplopia
	-- English: "Duplicates all item pedestals and pickups in the room"

	[C_ID .. 348] = "{{Pill}} Triggers the effect of the pill Isaac holds without using it", -- Placebo
	-- English: "{{Pill}} Triggers the effect of the pill Isaac holds without using it"

	[C_ID .. 350] = "{{Poison}} Entering a room poisons all enemies#Enemies killed leave a puddle of creep#The creep deals 30 damage per second", -- Toxic Shock
	-- English: "{{Poison}} Entering a room poisons all enemies#Enemies killed leave a puddle of creep#The creep deals 30 damage per second"

	[C_ID .. 351] = "Petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Sends a rock wave in the direction Isaac is moving#The rock wave can open secret rooms and break rocks", -- Mega Bean
	-- English: "{{Petrify}} Petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Sends a rock wave in the direction Isaac is moving#The rock wave can open secret rooms and break rocks"

	[C_ID .. 352] = "{{Warning}} Firing the cannon reduces Isaac's health down to half a heart#Shoots a large piercing + spectral tear that does 10x Isaac's damage", -- Glass Cannon
	-- English: "{{Warning}} Firing the cannon reduces Isaac's health down to half a heart#Shoots a large piercing + spectral tear that does 10x Isaac's damage"

	[C_ID .. 353] = "Bombs explode in a cross-shaped pattern", -- Bomber Boy
	-- Full old Desc: "{{Bomb}} +5 Bombs#Bombs explode in a cross-shaped pattern"
	-- English: "Bombs explode in a cross-shaped pattern"

	[C_ID .. 356] = "{{Battery}} Using an active item triggers its effect twice", -- Car Battery
	-- English: "{{Battery}} Using an active item triggers its effect twice"

	[C_ID .. 357] = "{{Timer}} Duplicates all your familiars for the room#{{Collectible113}} Grants a Demon Baby for the room if Isaac has no familiars", -- Box of Friends
	-- English: "{{Timer}} Duplicates all your familiars for the room#{{Collectible113}} Grants a Demon Baby for the room if Isaac has no familiars"

	[C_ID .. 358] = "Isaac shoots 2 tears at once diagonally", -- The Wiz
	-- Full old Desc: "Spectral tears#Isaac shoots 2 tears at once diagonally"
	-- English: "Isaac shoots 2 tears at once diagonally"

	[C_ID .. 359] = "Increases knockback", -- 8 Inch Nails
	-- Full old Desc: "↑ {{Damage}} +1.5 Damage#Increases knockback"
	-- English: "Increases knockback"

	[C_ID .. 360] = "Shoots tears with the same tear rate, damage and effects as Isaac", -- Incubus
	-- English: "Shoots tears with the same tear rate, damage and effects as Isaac"

	[C_ID .. 361] = "Shoots tears with the same damage and effects as Isaac#Shoots at half the rate of other familiars", -- Fate's Reward
	-- English: "Shoots tears with the same damage and effects as Isaac#Shoots at half the rate of other familiars"

	[C_ID .. 362] = "35% chance to spawn a pickup every room", -- Lil Chest
	-- English: "35% chance to spawn a pickup every room"

	[C_ID .. 363] = "Blocks and attracts enemy shots#{{EternalHeart}} Blocking 10 shots in one room spawns an Eternal Heart", -- Sworn Protector
	-- Full old Desc: "Orbital#Deals 105 contact damage per second#Blocks and attracts enemy shots#{{EternalHeart}} Blocking 10 shots in one room spawns an Eternal Heart"
	-- English: "Blocks and attracts enemy shots#{{EternalHeart}} Blocking 10 shots in one room spawns an Eternal Heart"

	[C_ID .. 364] = "Midrange fly orbital", -- Friend Zone
	-- Full old Desc: "Midrange fly orbital#Deals 45 contact damage per second"
	-- English: "Midrange fly orbital"

	[C_ID .. 365] = "Moves along walls/obstacles", -- Lost Fly
	-- Full old Desc: "Moves along walls/obstacles#Deals 105 contact damage per second"
	-- English: "Moves along walls/obstacles"

	[C_ID .. 367] = "Isaac's bombs stick to enemies#Killing an enemy with a bomb spawns blue spiders", -- Sticky Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombs#Isaac's bombs stick to enemies#Killing an enemy with a bomb spawns blue spiders"
	-- English: "Isaac's bombs stick to enemies#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "↑ {{Tears}} Shooting in one direction gradually decreases tear delay up to 200% and decreases accuracy", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually decreases tear delay up to 200% and decreases accuracy"

	[C_ID .. 369] = "Tears can travel through one side of the screen and come out the other side", -- Continuum
	-- Full old Desc: "↑ {{Range}} +2.25 Range#↑ +1.5 Tear height#Spectral tears#Tears can travel through one side of the screen and come out the other side"
	-- English: "Tears can travel through one side of the screen and come out the other side"

	[C_ID .. 371] = "{{Warning}} Taking damage spawns 6 Troll Bombs#The Troll Bombs inherit Isaac's bomb effects", -- Curse of the Tower
	-- English: "{{Warning}} Taking damage spawns 6 Troll Bombs#The Troll Bombs inherit Isaac's bomb effects"

	[C_ID .. 372] = "Every 30 seconds while in an uncleared room, the familiar can:#{{Battery}} Spawn a Battery (max 2 per room)#{{Battery}} Add one charge to the active item (max 2 per room)#Petrify all enemies in the room", -- Charged Baby
	-- English: "Every 30 seconds while in an uncleared room, the familiar can:#{{Battery}} Spawn a Battery (max 2 per room)#{{Battery}} Add one charge to the active item (max 2 per room)#{{Petrify}} Petrify all enemies in the room"

	[C_ID .. 373] = "↑ {{Damage}} Consecutive tear hits on enemies grant +25% damage (max +100%)#Missing has a chance to reset the multiplier", -- Dead Eye
	-- English: "↑ {{Damage}} Consecutive tear hits on enemies grant +25% damage (max +100%)#Missing has a chance to reset the multiplier"

	[C_ID .. 374] = "{{Damage}} The beam deals 4x Isaac's damage", -- Holy Light
	-- Full old Desc: "10% chance to shoot holy tears, which spawn a beam of light on hit#{{Luck}} 50% chance at 9 luck#{{Damage}} The beam deals 4x Isaac's damage"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot holy tears, which spawn a beam of light on hit#{{Damage}} The beam deals 4x Isaac's damage"

	[C_ID .. 375] = "Grants immunity to explosions, rock wave attacks and Mom and Satan's stomp attacks#25% chance to reflect enemy shots", -- Host Hat
	-- English: "Grants immunity to explosions, rock wave attacks and Mom and Satan's stomp attacks#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Buying an item from a Shop restocks it instantly", -- Restock
	-- Full old Desc: "Spawns 3 random pickups#Buying an item from a Shop restocks it instantly"
	-- English: "Buying an item from a Shop restocks it instantly"

	[C_ID .. 377] = "Spider enemies no longer target or deal contact damage to Isaac", -- Bursting Sack
	-- English: "Spider enemies no longer target or deal contact damage to Isaac"

	[C_ID .. 378] = "Holding a fire button for 2.35 seconds spawns a lit Butt Bomb", -- No. 2
	-- English: "Holding a fire button for 2.35 seconds spawns a lit Butt Bomb"

	[C_ID .. 380] = "{{Coin}} Single-key doors must be opened with coins instead of keys", -- Pay To Play
	-- Full old Desc: "{{Coin}} +5 Coins#{{Coin}} Single-key doors must be opened with coins instead of keys"
	-- English: "{{Coin}} Single-key doors must be opened with coins instead of keys"

	[C_ID .. 381] = "Grants a random item at the start of the next run", -- Eden's Blessing
	-- Full old Desc: "↑ {{Tears}} +0.7 Tears#Grants a random item at the start of the next run"
	-- English: "Grants a random item at the start of the next run"

	[C_ID .. 382] = "Can be thrown at enemies to capture them#Using the item after capturing an enemy spawns it as a friendly companion", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns it as a friendly companion"

	[C_ID .. 383] = "Splits all of Isaac's tears currently on screen in a circle of 6 tears", -- Tear Detonator
	-- English: "Splits all of Isaac's tears currently on screen in a circle of 6 tears"

	[C_ID .. 384] = "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-90 contact damage per second depending on speed", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-90 contact damage per second depending on speed"

	[C_ID .. 385] = "{{Coin}} Picks up nearby coins#Levels up after getting 6, 12, and 24 coins#Lv2: Chance to spawn item after room clears#Lv3: Shoots tears that can spawn coins on hit#Lv4: Chases enemies, occasionally dropping bombs, can spawn item on coin pickup", -- Bumbo
	-- English: "{{Coin}} Picks up nearby coins#Levels up after getting 6, 12, and 24 coins#Lv2: Chance to spawn item after room clears#Lv3: Shoots tears that can spawn coins on hit#Lv4: Chases enemies, occasionally dropping bombs, can spawn item on coin pickup"

	[C_ID .. 386] = "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)"

	[C_ID .. 387] = "{{Slow}} Familiar surrounded by a huge aura of light that slows down enemies and projectiles in it", -- Censer
	-- English: "{{Slow}} Familiar surrounded by a huge aura of light that slows down enemies and projectiles in it"

	[C_ID .. 388] = "{{Key}} Picks up nearby keys#{{Chest}} Spawns random chests in return", -- Key Bum
	-- English: "{{Key}} Picks up nearby keys#{{Chest}} Spawns random chests in return"

	[C_ID .. 389] = "{{Rune}} Spawns a random rune every 5-6 rooms", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune every 5-6 rooms"

	[C_ID .. 390] = "Shoots Sacred Heart tears", -- Seraphim
	-- Full old Desc: "Shoots Sacred Heart tears#Deals 10 damage per tear"
	-- English: "Shoots Sacred Heart tears"

	[C_ID .. 391] = "{{Charm}} Taking damage charms all enemies in the room", -- Betrayal
	-- English: "{{Charm}} Taking damage charms all enemies in the room"

	[C_ID .. 392] = "Grants a random zodiac item effect every floor", -- Zodiac
	-- English: "Grants a random zodiac item effect every floor"

	[C_ID .. 393] = "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Poisoned enemies have a chance to drop a Black Heart on death", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Poisoned enemies have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "Isaac automatically shoots tears at a movable red target on the ground", -- Marked
	-- Full old Desc: "↑ {{Tears}} +0.7 Tears#↑ {{Range}} +3.15 Range#↑ +0.3 Tear height#Isaac automatically shoots tears at a movable red target on the ground"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground"

	[C_ID .. 395] = "{{Chargeable}} Isaac's tears are replaced by a chargeable laser ring#Ring size increases with charge amount", -- Tech X
	-- English: "{{Chargeable}} Isaac's tears are replaced by a chargeable laser ring#Ring size increases with charge amount"

	[C_ID .. 396] = "Creates up to two portals to travel between#Can be placed in different rooms", -- Ventricle Razor
	-- English: "Creates up to two portals to travel between#Can be placed in different rooms"

	[C_ID .. 397] = "Isaac's tears always travel along a beam of light in front of him", -- Tractor Beam
	-- Full old Desc: "↑ {{Tears}} +0.5 Tears#↑ {{Range}} +5.25 Range#↑ +0.5 Tear height#↑ {{Shotspeed}} +0.16 Shot speed#Isaac's tears always travel along a beam of light in front of him"
	-- English: "Isaac's tears always travel along a beam of light in front of him"

	[C_ID .. 398] = "Tears can shrink enemies#Shrunken enemies can be crushed and killed by walking over them", -- God's Flesh
	-- English: "{{Shrink}} Tears can shrink enemies#Shrunken enemies can be crushed and killed by walking over them"

	[C_ID .. 399] = "{{BlackHeart}} Enemies killed by the black ring have a 5% chance to drop a Black Heart", -- Maw of the Void
	-- Full old Desc: "↑ {{Damage}} +1 Damage#{{Chargeable}} Shooting tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the black ring have a 5% chance to drop a Black Heart"
	-- English: "{{Chargeable}} Shooting tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the black ring have a 5% chance to drop a Black Heart"

	[C_ID .. 400] = "Isaac holds a spear in front of him#{{Fear}} The spear deals twice his damage and can fear enemies on contact", -- Spear of Destiny
	-- English: "Isaac holds a spear in front of him#{{Fear}} The spear deals twice his damage and can fear enemies on contact"

	[C_ID .. 401] = "25% chance to shoot sticky bomb tears#Sticky bomb tears do not deal damage on hit and explode after a few seconds", -- Explosivo
	-- English: "25% chance to shoot sticky bomb tears#Sticky bomb tears do not deal damage on hit and explode after a few seconds"

	[C_ID .. 402] = "All items are chosen from random item pools", -- Chaos
	-- Full old Desc: "All items are chosen from random item pools#Spawns 1-6 random pickups"
	-- English: "All items are chosen from random item pools"

	[C_ID .. 403] = "Displays tear damage and health bars of all enemies#Inflicts random status effects to enemies on contact#Randomly spawns batteries", -- Spider Mod
	-- English: "Displays tear damage and health bars of all enemies#Inflicts random status effects to enemies on contact#Randomly spawns batteries"

	[C_ID .. 404] = "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies", -- Farting Baby
	-- Full old Desc: "Blocks projectiles#When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies"

	[C_ID .. 405] = "Bounces around the room", -- GB Bug
	-- Full old Desc: "Bounces around the room#Deals 120 damage per second and applies random status effects to enemies on contact"
	-- English: "Bounces around the room#Applies random status effects to enemies on contact"

	[C_ID .. 406] = "Multiplies Isaac's damage, tears, range and speed stats by between x0.5 and x2#The multipliers are rerolled each use", -- D8
	-- English: "Multiplies Isaac's damage, tears, range and speed stats by between x0.5 and x2#The multipliers are rerolled each use"

	[C_ID .. 407] = "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and gives Isaac a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} -4 Tear delay#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +7.5 Range, ↑ +1 Tear height", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and gives Isaac a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} -4 Tear delay#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +7.5 Range, ↑ +1 Tear height"

	[C_ID .. 408] = "Taking damage creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the ring have a 15% chance to drop a Black Heart", -- Athame
	-- English: "Taking damage creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the ring have a 15% chance to drop a Black Heart"

	[C_ID .. 409] = "{{EmptyHeart}} When Isaac has no Red Hearts:#Flight#Every 40 seconds while in a hostile room, gain a shield for 10 seconds", -- Empty Vessel
	-- Full old Desc: "{{BlackHeart}} +2 Black Hearts#{{EmptyHeart}} When Isaac has no Red Hearts:#Flight#Every 40 seconds while in a hostile room, gain a shield for 10 seconds"
	-- English: "{{EmptyHeart}} When Isaac has no Red Hearts:#Flight#Every 40 seconds while in a hostile room, gain a shield for 10 seconds"

	[C_ID .. 410] = "The eye moves in a straight line and shoots tears in the same direction as Isaac", -- Evil Eye
	-- Full old Desc: "3.33% chance to shoot an eye#{{Luck}} 10% chance at 20 luck#The eye moves in a straight line and shoots tears in the same direction as Isaac"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot an eye#The eye moves in a straight line and shoots tears in the same direction as Isaac"

	[C_ID .. 411] = "↑ {{Damage}} +0.5 Damage for each enemy killed in the room#Caps at +5 Damage after 10 kills", -- Lusty Blood
	-- English: "↑ {{Damage}} +0.5 Damage for each enemy killed in the room#Caps at +5 Damage after 10 kills"

	[C_ID .. 412] = "Taking damage 15 times spawns a permanent demon familiar#After two familiars, it takes 30 instead of 15#Caps at 4 familiars", -- Cambion Conception
	-- English: "Taking damage 15 times spawns a permanent demon familiar#After two familiars, it takes 30 instead of 15#Caps at 4 familiars"

	[C_ID .. 413] = "Picking up 15 hearts spawns a permanent angelic familiar#Caps at 5 familiars#{{SoulHeart}} If all familiars have been granted, spawns a Soul Heart instead", -- Immaculate Conception
	-- English: "Picking up 15 hearts spawns a permanent angelic familiar#Caps at 5 familiars#{{SoulHeart}} If all familiars have been granted, spawns a Soul Heart instead"

	[C_ID .. 414] = "{{TreasureRoom}} Allows Isaac to choose between 2 items in treasure rooms", -- More Options
	-- English: "{{TreasureRoom}} Allows Isaac to choose between 2 items in treasure rooms"

	[C_ID .. 415] = "If Isaac has no damaged heart containers:#{VAR:EFFECTLIST}#Taking any damage removes the effect for the room", -- Crown Of Light
	-- Full old Desc: "{{SoulHeart}} +2 Soul Hearts#If Isaac has no damaged heart containers:#↑ {{Damage}} x2 Damage multiplier#↑ {{Range}} +5.25 Range#↑ +0.5 Tear height#↓ {{Shotspeed}} -0.3 Shot speed#Taking any damage removes the effect for the room"
	-- English: "If Isaac has no damaged heart containers:#{VAR:EFFECTLIST}#Taking any damage removes the effect for the room"

	[C_ID .. 416] = "Allows Isaac to carry two runes/cards/pills", -- Deep Pockets
	-- English: "Allows Isaac to carry two runes/cards/pills"

	[C_ID .. 417] = "Bounces around the room surrounded by a damaging aura that deals 1.29x Isaac's damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 1.29x Isaac's damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 418] = "Each one of Isaac's tears gets a different effect", -- Fruit Cake
	-- English: "Each one of Isaac's tears gets a different effect"

	[C_ID .. 419] = "Teleports Isaac to a room that has not been cleared yet", -- Teleport 2.0
	-- Full old Desc: "Teleports Isaac to a room that has not been cleared yet#Hierarchy: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"
	-- English: "Teleports Isaac to a room that has not been cleared yet#Hierarchy: {VAR:TEXT}"

	[C_ID .. 420] = "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds"

	[C_ID .. 421] = "{{Charm}} Charms and deals 5 damage to all enemies in close range", -- Kidney Bean
	-- English: "{{Charm}} Charms and deals 5 damage to all enemies in close range"

	[C_ID .. 422] = "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in"

	[C_ID .. 423] = "Surrounds Isaac with a large halo that deals his damage on contact per second#Chance to reflect enemy projectiles", -- Circle of Protection
	-- English: "Surrounds Isaac with a large halo that deals his damage on contact per second#Chance to reflect enemy projectiles"

	[C_ID .. 424] = "Pickups have a 33% chance to be replaced with a sack#Spawns a sack", -- Sack Head
	-- English: "Pickups have a chance to be replaced with a {{GrabBag}}sack:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Spawns a sack"

	[C_ID .. 425] = "{{Slow}} Spawns a slowing cone of light in front of Isaac", -- Night Light
	-- English: "{{Slow}} Spawns a slowing cone of light in front of Isaac"

	[C_ID .. 427] = "Spawns a pushable TNT barrel#Using the item a second time in the same room remotely detonates the barrel", -- Mine Crafter
	-- English: "Spawns a pushable TNT barrel#Using the item a second time in the same room remotely detonates the barrel"

	[C_ID .. 429] = "{{Coin}} Hitting an enemy with a tear has a 5% chance to spawn a Penny", -- Head of the Keeper
	-- English: "{{Coin}} Hitting an enemy with a tear has a 5% chance to spawn a Penny"

	[C_ID .. 430] = "Shoots tears at nearby enemies that deal Isaac's damage", -- Papa Fly
	-- Full old Desc: "Mimics Isaac's movement on a 1 second delay#Shoots tears at nearby enemies that deal Isaac's damage"
	-- English: "{{Damage}} Shoots tears at nearby enemies that deal Isaac's damage"

	[C_ID .. 431] = "Tears that pass through it are doubled and gain a range + shot speed boost", -- Multidimensional Baby
	-- Full old Desc: "Mimics Isaac's movement on a 2 second delay#Tears that pass through it are doubled and gain a range + shot speed boost"
	-- English: "Tears that pass through it are doubled and gain a range + shot speed boost"

	[C_ID .. 432] = "{{Charm}} Isaac's bombs have a 25% chance to drop a random pickup and a 15% chance to charm enemies when they explode", -- Glitter Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombs#{{Charm}} Isaac's bombs have a 25% chance to drop a random pickup and a 15% chance to charm enemies when they explode"
	-- English: "{{Charm}} Isaac's bombs have a 25% chance to drop a random pickup and a 15% chance to charm enemies when they explode"

	[C_ID .. 433] = "{{Fear}} Taking damage fears all enemies in the room and spawns a friendly black charger", -- My Shadow
	-- Full old Desc: "{{Fear}} Taking damage fears all enemies in the room and spawns a friendly black charger#The charger deals 5 damage per second"
	-- English: "{{Fear}} Taking damage fears all enemies in the room and spawns a friendly black charger"

	[C_ID .. 434] = "Killing an enemy adds a blue fly to the jar, up to 20 flies#Using the item releases all the flies", -- Jar of Flies
	-- English: "Killing an enemy adds a blue fly to the jar, up to 20 flies#Using the item releases all the flies"

	[C_ID .. 435] = "Shoots 4 tears in a cross pattern", -- Lil Loki
	-- Full old Desc: "Shoots 4 tears in a cross pattern#Deals 3.5 damage per tear"
	-- English: "Shoots 4 tears in a cross pattern"

	[C_ID .. 436] = "{{Tears}} Taking damage grants a Tears up for the duration of the room", -- Milk!
	-- English: "{{Tears}} Taking damage grants a Tears up for the duration of the room"

	[C_ID .. 437] = "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room#If used after a Greed fight, rerolls the room into a normal Shop/Secret Room", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room#If used after a Greed fight, rerolls the room into a normal Shop/Secret Room"

	[C_ID .. 439] = "{{Trinket}} Doubles trinket effects", -- Mom's Box
	-- Full old Desc: "{{Trinket}} Spawns a random trinket#While held:#↑ {{Luck}} +1 Luck#{{Trinket}} Doubles trinket effects"
	-- English: "{{Trinket}} Doubles trinket effects"

	[C_ID .. 440] = "Isaac occasionally stops firing and charges an attack that releases a burst of tears and a kidney stone", -- Kidney Stone
	-- Full old Desc: "↑ +2 Tear height#↓ {{Speed}} -0.2 Speed#↓ {{Range}} -17 Range#Isaac occasionally stops firing and charges an attack that releases a burst of tears and a kidney stone"
	-- English: "Isaac occasionally stops firing and charges an attack that releases a burst of tears and a kidney stone"

	[C_ID .. 441] = "{{Timer}} Fires a huge Mega Satan blood beam for 15 seconds#The beam persists between rooms and floors", -- Mega Blast
	-- English: "{{Timer}} Fires a huge Mega Satan blood beam for 15 seconds#The beam persists between rooms and floors"

	[C_ID .. 442] = "While at 1 full Red Heart:#{VAR:EFFECTLIST}", -- Dark Prince's Crown
	-- Full old Desc: "While at 1 full Red Heart:#↑ {{Tears}} +0.75 Tears#↑ {{Range}} +1.5 Range#↑ +1 Tear height#↑ {{Shotspeed}} +0.2 Shot speed"
	-- English: "While at 1 full Red Heart:#{VAR:EFFECTLIST}"

	[C_ID .. 444] = "Isaac shoots a cluster of tears every 15 tears#Tears in the cluster deal double damage", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears#Tears in the cluster deal double damage"

	[C_ID .. 445] = "{{LadderRoom}} A dog barks in rooms with a crawlspace under a rock", -- Dog Tooth
	-- Full old Desc: "↑ {{Speed}} +0.1 Speed#↑ {{Damage}} +0.3 Damage#{{SecretRoom}}{{SuperSecretRoom}} A wolf howls in rooms adjacent to a Secret/Super Secret Room#{{LadderRoom}} A dog barks in rooms with a crawlspace under a rock"
	-- English: "{{SecretRoom}}{{SuperSecretRoom}} A wolf howls in rooms adjacent to a Secret/Super Secret Room#{{LadderRoom}} A dog barks in rooms with a crawlspace under a rock"

	[C_ID .. 446] = "{{Poison}} While firing, Isaac is surrounded by a green aura that poisons enemies", -- Dead Tooth
	-- English: "{{Poison}} While firing, Isaac is surrounded by a green aura that poisons enemies"

	[C_ID .. 447] = "Firing without pause for 7.5 seconds spawns a poop cloud#The cloud deals Isaac's damage 5 times a second#The cloud lasts 15 seconds and can be moved by shooting it", -- Linger Bean
	-- English: "Firing without pause for 7.5 seconds spawns a poop cloud#The cloud deals Isaac's damage 5 times a second#The cloud lasts 15 seconds and can be moved by shooting it"

	[C_ID .. 448] = "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{Collectible214}} 10% chance to get ↑ {{Range}} +5 Range and leave a trail of blood creep for the room", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{Collectible214}} 10% chance to get ↑ {{Range}} +5 Range and leave a trail of blood creep for the room"

	[C_ID .. 449] = "{{Confusion}} Enemy bullets have a 25% chance to be reflected as concussive tears", -- Metal Plate
	-- Full old Desc: "{{SoulHeart}} +1 Soul Heart#{{Confusion}} Enemy bullets have a 25% chance to be reflected as concussive tears"
	-- English: "{{Confusion}} Enemy bullets have a 25% chance to be reflected as concussive tears"

	[C_ID .. 450] = "Every 20 tears, Isaac shoots a coin tear that deals double damage#Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-4 coins#{{Warning}} Firing a coin tear costs 1 coin", -- Eye of Greed
	-- English: "Every 20 tears, Isaac shoots a coin tear that deals double damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-4 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "{{Card}} Card effects are doubled or enhanced", -- Tarot Cloth
	-- Full old Desc: "{{Card}} Spawns a card#{{Card}} Card effects are doubled or enhanced"
	-- English: "{{Card}} Card effects are doubled or enhanced"

	[C_ID .. 452] = "Taking damage shoots 10 tears in a circle around Isaac#The tears deal Isaac's damage + 25", -- Varicose Veins
	-- English: "Taking damage shoots 10 tears in a circle around Isaac#The tears deal Isaac's damage + 25"

	[C_ID .. 453] = "Tears shatter into 1-3 small bone shards upon hitting anything", -- Compound Fracture
	-- Full old Desc: "↑ {{Range}} +1.5 Range#↑ +1 Tear height#Tears shatter into 1-3 small bone shards upon hitting anything"
	-- English: "Tears shatter into 1-3 small bone shards upon hitting anything"

	[C_ID .. 454] = "Spawns a {{Rune}} rune, {{Card}} card or {{Pill}} pill on pickup#Allows Isaac to carry 2 runes/cards/pills", -- Polydactyly
	-- English: "Spawns a {{Rune}} rune, {{Card}} card or {{Pill}} pill on pickup#Allows Isaac to carry 2 runes/cards/pills"

	[C_ID .. 455] = "{{Luck}} Spawns a Lucky Penny", -- Dad's Lost Coin
	-- Full old Desc: "↑ {{Range}} +1.5 Range#↑ +1 Tear height#{{Luck}} Spawns a Lucky Penny"
	-- English: "{{Luck}} Spawns a Lucky Penny"

	[C_ID .. 457] = "20% chance to negate damage taken", -- Cone Head
	-- Full old Desc: "{{SoulHeart}} +1 Soul Heart#20% chance to negate damage taken"
	-- English: "20% chance to negate damage taken"

	[C_ID .. 458] = "{{Trinket}} Allows Isaac to carry 2 trinkets", -- Belly Button
	-- Full old Desc: "{{Trinket}} Allows Isaac to carry 2 trinkets#{{Trinket}} Spawns a random trinket"
	-- English: "{{Trinket}} Allows Isaac to carry 2 trinkets"

	[C_ID .. 459] = "20% chance to shoot a sticky booger#{{Luck}} Not affected by luck", -- Sinus Infection
	-- Full old Desc: "20% chance to shoot a sticky booger#{{Damage}} Boogers deal Isaac's damage once a second and stick for 60 seconds#{{Luck}} Not affected by luck"
	-- English: "20% chance to shoot a sticky booger#{{Damage}} Boogers deal Isaac's damage once a second and stick for {VAR:1} seconds#{{Luck}} Not affected by luck"

	[C_ID .. 460] = "{{Confusion}} 5% chance to shoot concussive tears#Makes the screen slightly darker", -- Glaucoma
	-- English: "{{Confusion}} 5% chance to shoot concussive tears#Makes the screen slightly darker"

	[C_ID .. 461] = "{{Slow}} Egg sacks spawn slowing creep and a blue spider or fly on hit", -- Parasitoid
	-- Full old Desc: "15% chance to shoot egg sacks#{{Luck}} 50% chance at 5 luck#{{Slow}} Egg sacks spawn slowing creep and a blue spider or fly on hit"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot egg sacks#{{Slow}} Egg sacks spawn slowing creep and a blue spider or fly on hit"

	[C_ID .. 462] = "Hitting an enemy makes the tear homing and doubles its damage", -- Eye of Belial
	-- Full old Desc: "↑ {{Range}} +1.5 Range#↑ +1 Tear height#Piercing tears#Hitting an enemy makes the tear homing and doubles its damage"
	-- English: "Hitting an enemy makes the tear homing and doubles its damage"

	[C_ID .. 463] = "Isaac's tears can destroy rocks and open doors", -- Sulfuric Acid
	-- Full old Desc: "↑ {{Damage}} +0.3 Damage#Isaac's tears can destroy rocks and open doors"
	-- English: "Isaac's tears can destroy rocks and open doors"

	[C_ID .. 464] = "Champion enemies drop whatever pickup Isaac needs the most", -- Glyph of Balance
	-- Full old Desc: "{{SoulHeart}} +2 Soul Hearts#Champion enemies drop whatever pickup Isaac needs the most"
	-- English: "Champion enemies drop whatever pickup Isaac needs the most"

	[C_ID .. 465] = "Allows Isaac to shoot tears in any direction", -- Analog Stick
	-- Full old Desc: "↑ {{Tears}} +0.3 Tears#Allows Isaac to shoot tears in any direction"
	-- English: "Allows Isaac to shoot tears in any direction"

	[C_ID .. 466] = "{{Poison}} The first enemy killed in a room explodes and poison all nearby enemies", -- Contagion
	-- English: "{{Poison}} The first enemy killed in a room explodes and poisons all nearby enemies#Enemies that die while poisoned also explode and poison nearby enemies"

	[C_ID .. 467] = "{{Damage}} Constantly deals 10% of Isaac's damage in the direction it points", -- Finger!
	-- English: "{{Damage}} Constantly deals 10% of Isaac's damage in the direction it points"

	[C_ID .. 469] = "Leaves a trail of creep#The creep deals 6 damage per second#Enemies that touch the cloud can be hit by a holy light beam", -- Depression
	-- English: "Leaves a trail of creep#The creep deals 6 damage per second#Enemies that touch the cloud can be hit by a holy light beam"

	[C_ID .. 470] = "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped", -- Hushy
	-- Full old Desc: "Bounces around the room#Deals 30 contact damage per second#Stops moving when Isaac shoots#Blocks projectiles when stopped"
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped"

	[C_ID .. 471] = "Each tear deals 3.5 damage", -- Lil Monstro
	-- Full old Desc: "{{Chargeable}} Charges a shotgun attack similar to {{Collectible229}} Monstro's Lung#Each tear deals 3.5 damage"
	-- English: "{{Chargeable}} Charges a shotgun attack similar to {{NameC229}}#Each tear deals 3.5 damage"

	[C_ID .. 472] = "Other familiars follow it#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting", -- King Baby
	-- English: "Other familiars follow it#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 473] = "Very slowly charges forwards", -- Big Chubby
	-- Full old Desc: "Very slowly charges forwards#Blocks shots#Deals 40.5 contact damage per second"
	-- English: "Very slowly charges forwards"

	[C_ID .. 475] = "{{Warning}} Kills Isaac 3 seconds later", -- Plan C
	-- Full old Desc: "Deals 9,999,999 damage to all enemies#{{Warning}} Kills Isaac 3 seconds later"
	-- English: "{{Warning}} Kills Isaac 3 seconds later"

	[C_ID .. 476] = "Duplicates a random pickup in the room", -- D1
	-- English: "Duplicates a random pickup in the room"

	[C_ID .. 477] = "Consumes all pedestal items in the room#Active items: Their effects activate, and will activate with every future use of Void#↑ Passive items grant two random stat ups", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate, and will activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 478] = "Pauses all enemies in the room until Isaac shoots#Touching a paused enemy still deals damage to Isaac#Enemies unpause after 30 seconds", -- Pause
	-- English: "Pauses all enemies in the room until Isaac shoots#Touching a paused enemy still deals damage to Isaac#Enemies unpause after 30 seconds"

	[C_ID .. 479] = "{{Trinket}} Consumes Isaac's held trinkets and grants their effects permanently#Increases the spawn rate of trinkets", -- Smelter
	-- English: "{{Trinket}} Consumes Isaac's held trinkets and grants their effects permanently#Increases the spawn rate of trinkets"

	[C_ID .. 480] = "Converts pickups into blue flies or spiders#Doubles all blue flies and spiders#Spawns 1 blue fly or spider if Isaac has none", -- Compost
	-- English: "Converts pickups into blue flies or spiders#Doubles all blue flies and spiders#Spawns 1 blue fly or spider if Isaac has none"

	[C_ID .. 481] = "{{Blank}} Corrupts all sprites and music in the room", -- Dataminer
	-- Full old Desc: "↑ Random stat up#↓ Random stat down#{{Timer}} Random tear effects for the room#{{Blank}} Corrupts all sprites and music in the room"
	-- English: "{{Timer}} Random tear effects for the room#{{Blank}} Corrupts all sprites and music in the room"

	[C_ID .. 482] = "Changes your character to a random character#Removes the most recent item collected", -- Clicker
	-- English: "Changes your character to a random character#Removes the most recent item collected"

	[C_ID .. 483] = "Affects the whole floor#Explodes all objects#{VAR:EFFECTLIST}#Opens secret rooms#Opens Boss Rush and Hush regardless of time", -- Mama Mega!
	-- Full old Desc: "Affects the whole floor#Explodes all objects#Deals 200 damage to all enemies#Opens secret rooms#Opens Boss Rush and Hush regardless of time"
	-- English: "Affects the whole floor#Explodes all objects#{VAR:EFFECTLIST}#Opens secret rooms#Opens Boss Rush and Hush regardless of time"

	[C_ID .. 484] = "Upon use, pushes enemies away and spawns a rock wave around Isaac#The rock wave can open rooms and break rocks", -- Wait What?
	-- English: "Upon use, pushes enemies away and spawns a rock wave around Isaac#The rock wave can open rooms and break rocks"

	[C_ID .. 485] = "50% chance to double all items, pickups and chests in room#50% chance to remove items / pickups in room and spawn 1 coin", -- Crooked Penny
	-- English: "50% chance to double all items, pickups and chests in room#50% chance to remove items / pickups in room and spawn 1 coin"

	[C_ID .. 486] = "Hurts Isaac without removing health#Triggers any on-hit item effects", -- Dull Razor
	-- English: "Hurts Isaac without removing health#Triggers any on-hit item effects"

	[C_ID .. 487] = "{{Collectible214}} Leave a trail of blood creep", -- Potato Peeler
	-- Full old Desc: "{{EmptyHeart}} Removes 1 heart container for:#↑ {{Damage}} +0.2 Damage#{{Collectible73}} A Cube of Meat#{{Timer}} Receive for the room:#↑ {{Range}} +5 Range#{{Collectible214}} Leave a trail of blood creep"
	-- English: "{{EmptyHeart}} Removes 1 heart container for:#{VAR:EFFECTLIST}#{{IND}}{{NameC73}}#{VAR:ROOMEFFECT}#{{IND}}{{Collectible214}} Leave a trail of blood creep"

	[C_ID .. 488] = "Grants a random item effect for the room", -- Metronome
	-- English: "Grants a random item effect for the room"

	[C_ID .. 489] = "Triggers a random dice effect each use", -- D Infinity
	-- English: "Triggers a random dice effect each use"

	[C_ID .. 490] = "Spawns 2 random items depending on the current room's item pool#Starts with no charges", -- Eden's Soul
	-- English: "Spawns 2 random items depending on the current room's item pool#Starts with no charges"

	[C_ID .. 491] = "{{Poison}} Using a pill poisons all enemies in the room", -- Acid Baby
	-- Full old Desc: "{{Pill}} Spawns a random pill every 3 rooms#{{Poison}} Using a pill poisons all enemies in the room"
	-- English: "{{Pill}} Spawns a random pill every {VAR:1} rooms#{{Poison}} Using a pill poisons all enemies in the room"

	[C_ID .. 492] = "Highlights the location of {{SecretRoom}} secret rooms, tinted rocks and {{LadderRoom}} crawlspaces", -- YO LISTEN!
	-- Full old Desc: "↑ {{Luck}} +1 Luck#Highlights the location of {{SecretRoom}} secret rooms, tinted rocks and {{LadderRoom}} crawlspaces"
	-- English: "Highlights the location of {{SecretRoom}} secret rooms, tinted rocks and {{LadderRoom}} crawlspaces"

	[C_ID .. 493] = "For every empty heart container:#{VAR:EFFECTLIST}", -- Adrenaline
	-- Full old Desc: "For every empty heart container:#↑ {{Damage}} +0.2 Damage"
	-- English: "For every empty heart container:#{VAR:EFFECTLIST}"

	[C_ID .. 494] = "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half of Isaac's damage", -- Jacob's Ladder
	-- English: "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half of Isaac's damage"

	[C_ID .. 495] = "Chance to shoot a red flame that blocks enemy shots and deals contact damage#The flame disappears after dealing damage or blocking shots 5 times", -- Ghost Pepper
	-- English: "Chance to shoot a red flame that blocks enemy shots and deals contact damage#The flame disappears after dealing damage or blocking shots 5 times"

	[C_ID .. 496] = "Needles kill normal enemies instantly, bursting them into 10 tears#{{Damage}} Needles deal 3x Isaac's damage against bosses", -- Euthanasia
	-- Full old Desc: "3.33% chance to shoot a needle#{{Luck}} 100% chance at 15 luck#Needles kill normal enemies instantly, bursting them into 10 tears#{{Damage}} Needles deal 3x Isaac's damage against bosses"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a needle#Needles kill normal enemies instantly, bursting them into 10 tears#{{Damage}} Needles deal 3x Isaac's damage against bosses"

	[C_ID .. 497] = "{{Confusion}} Entering a room confuses all enemies until Isaac starts shooting", -- Camo Undies
	-- English: "{{Confusion}} Entering a room confuses all enemies until Isaac starts shooting"

	[C_ID .. 498] = "{{AngelDevilChance}} Spawns both a Devil and Angel Room if either would have spawned#Entering one makes the other disappear", -- Duality
	-- English: "{{AngelDevilChance}} Spawns both a Devil and Angel Room if either would have spawned#Entering one makes the other disappear"

	[C_ID .. 501] = "{{Heart}} +1 Heart container for every 25 coins gained after getting Greed's Gullet", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins gained after getting Greed's Gullet"

	[C_ID .. 502] = "{{Slow}} Firing occasionally shoots a white creep tear that deals double damage and slows enemies#Taking damage shoots a white creep tear", -- Large Zit
	-- English: "{{Slow}} Firing occasionally shoots a white creep tear that deals double damage and slows enemies#Taking damage shoots a white creep tear"

	[C_ID .. 503] = "Isaac deals 3.5 contact damage", -- Little Horn
	-- Full old Desc: "5% chance to shoot tears that instantly kill enemies#{{Luck}} 20% chance at 15 luck#Isaac deals 3.5 contact damage"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot tears that instantly kill enemies#Isaac deals 3.5 contact damage"

	[C_ID .. 504] = "Spawns a fly turret that shoots at enemies#Each shot deals 2 damage", -- Brown Nugget
	-- English: "Spawns a fly turret that shoots at enemies#Each shot deals 2 damage"

	[C_ID .. 505] = "Entering a hostile room has a chance to spawn a charmed enemy", -- Poke Go
	-- English: "{{Friendly}} Entering a hostile room has a chance to spawn a friendly enemy"

	[C_ID .. 506] = "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds"

	[C_ID .. 507] = "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts#{{HalfSoulHeart}} Having no heart containers drops Soul Hearts instead", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts#{{HalfSoulHeart}} Having no heart containers drops Soul Hearts instead"

	[C_ID .. 508] = "{{BleedingOut}} Orbital that causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds#{{Damage}} Deals 3x Isaac's damage per second#Does not block shots", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds#{{Damage}} Deals 3x Isaac's damage per second#Does not block shots"

	[C_ID .. 509] = "Orbital that shoots a tear in a random direction every 2 seconds#Does not block shots", -- Bloodshot Eye
	-- Full old Desc: "Orbital that shoots a tear in a random direction every 2 seconds#Deals 3.5 damage per tear#Deals 30 contact damage per second#Does not block shots"
	-- English: "Orbital that shoots a tear in a random direction every 2 seconds#Does not block shots"

	[C_ID .. 510] = "{{Timer}} Spawns a friendly delirium version of a boss for the room", -- Delirious
	-- English: "{{Friendly}} Spawns a friendly delirium version of a boss for the room"

	[C_ID .. 511] = "Orbits a random enemy until that enemy dies", -- Angry Fly
	-- Full old Desc: "Orbits a random enemy until that enemy dies#Deals 30 contact damage per second to other enemies"
	-- English: "Orbits a random enemy until that enemy dies"

	[C_ID .. 512] = "Throwable black hole, which sucks in everything#Deals 6 damage per second#Destroys nearby rocks#Lasts 6 seconds", -- Black Hole
	-- English: "Throwable black hole, which sucks in everything#Deals 6 damage per second#Destroys nearby rocks#Lasts 6 seconds"

	[C_ID .. 513] = "{{Charm}} Randomly charms/fears enemies#Taking damage has a random chance to spawn a Rainbow Poop", -- Bozo
	-- Full old Desc: "↑ {{Damage}} +0.1 Damage#{{SoulHeart}} +1 Soul Heart#{{Charm}} Randomly charms/fears enemies#Taking damage has a random chance to spawn a Rainbow Poop"
	-- English: "{{Charm}} Randomly charms/fears enemies#Taking damage has a random chance to spawn a Rainbow Poop"

	[C_ID .. 514] = "Causes some enemies and projectiles to briefly pause at random intervals#25% chance to double room clear drops", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#25% chance to double room clear drops"

	[C_ID .. 515] = "Spawns a random item from the current room's item pool#Chance to spawn Lump of Coal or The Poop instead", -- Mystery Gift
	-- English: "Spawns a random item from the current room's item pool#Chance to spawn Lump of Coal or The Poop instead"

	[C_ID .. 516] = "Spawns a Sprinkler that shoots the same tears as Isaac in a circle around itself", -- Sprinkler
	-- English: "Spawns a Sprinkler that shoots the same tears as Isaac in a circle around itself"

	[C_ID .. 517] = "Removes the delay between bomb placements", -- Fast Bombs
	-- Full old Desc: "{{Bomb}} +7 Bombs#Removes the delay between bomb placements"
	-- English: "Removes the delay between bomb placements"

	[C_ID .. 518] = "Familiar which looks like a random co-op baby#Has random tear effects#Effects change every floor", -- Buddy in a Box
	-- English: "Familiar which looks like a random co-op baby#Has random tear effects#Effects change every floor"

	[C_ID .. 519] = "Transforms into a random familiar every 10 seconds", -- Lil Delirium
	-- English: "Transforms into a random familiar every 10 seconds"

	[C_ID .. 520] = "Killing 15 enemies adds 1 charge to the active item", -- Jumper Cables
	-- English: "Killing 15 enemies adds 1 charge to the active item"

	[C_ID .. 521] = "Makes one random item in the {{Shop}} Shop or {{DevilRoom}} Devil Room free#Holding the item guarantees one Shop item is on sale", -- Coupon
	-- English: "Makes one random item in the {{Shop}} Shop or {{DevilRoom}} Devil Room free#Holding the item guarantees one Shop item is on sale"

	[C_ID .. 522] = "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards"

	[C_ID .. 523] = "Stores all pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms", -- Moving Box
	-- English: "Stores all pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Isaac's tears are connected with beams of electricity#The beams deal Isaac's damage", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#The beams deal Isaac's damage"

	[C_ID .. 525] = "Taking damage spawns a projectile blocking orbital#Caps at 3 orbitals#They deal 35 contact damage per second#Orbitals are destroyed if they take too much damage", -- Leprosy
	-- English: "Taking damage spawns a projectile blocking orbital#Caps at 3 orbitals#They deal 35 contact damage per second#Orbitals are destroyed if they take too much damage"

	[C_ID .. 526] = "Spawns a small horseman familiar that spawns locusts#The horseman and its locust changes every 10 seconds", -- 7 Seals
	-- English: "Spawns a small horseman familiar that spawns locusts#The horseman and its locust changes every 10 seconds"

	[C_ID .. 527] = "Displays a movable cursor for a few seconds, then summons a ghost that will, depending on the cursor position:#Open doors or chests#Fetch an item#50% chance to steal from the Shop / Devil#Attack an enemy until it dies#Explode walls, rocks, shopkeepers, angel statues, machines, beggars", -- Mr. ME!
	-- English: "Displays a movable cursor for a few seconds, then summons a ghost that will, depending on the cursor position:#Open doors or chests#Fetch an item#50% chance to steal from the Shop / Devil#Attack an enemy until it dies#Explode walls, rocks, shopkeepers, angel statues, machines, beggars"

	[C_ID .. 528] = "Orbital prism#Friendly tears hitting it split into 4", -- Angelic Prism
	-- English: "Orbital prism#Friendly tears hitting it split into 4"

	[C_ID .. 529] = "Isaac's tears bounce off each other and disappear when they stop moving", -- Pop!
	-- English: "Isaac's tears bounce off each other and disappear when they stop moving"

	[C_ID .. 530] = "Killing enemies in the order dictated by the mark {{DeathMark}} above them grants a random pickup or stat increase", -- Death's List
	-- English: "Killing enemies in the order dictated by the mark {{DeathMark}} above them grants a random pickup or stat increase"

	[C_ID .. 531] = "Isaac's tears fly in an arc and burst into smaller tears on impact", -- Haemolacria
	-- Full old Desc: "↑ {{Damage}} x1.31 Damage multiplier#↓ {{Tears}} x0.5 Tears multiplier#↓ {{Tears}} +10 Tear delay#Isaac's tears fly in an arc and burst into smaller tears on impact"
	-- English: "Isaac's tears fly in an arc and burst into smaller tears on impact"

	[C_ID .. 532] = "Isaac's tears progressively slow down, stop, then explode into 8 smaller tears#Tears can merge and become bigger", -- Lachryphagy
	-- English: "Isaac's tears progressively slow down, stop, then explode into 8 smaller tears#Tears can merge and become bigger"

	[C_ID .. 533] = "Replaces Isaac's tears with piercing beams of light#The beams deal 33% damage but can hit enemies multiple times", -- Trisagion
	-- English: "Replaces Isaac's tears with piercing beams of light#The beams deal 33% damage but can hit enemies multiple times"

	[C_ID .. 534] = "Allows Isaac to hold 2 active items#The items can be swapped using the Drop button ({{ButtonRT}})", -- Schoolbag
	-- English: "Allows Isaac to hold 2 active items#The items can be swapped using the Drop button ({{ButtonRT}})"

	[C_ID .. 535] = "{{HolyMantle}} Entering a boss room grants a Holy Mantle shield (prevents damage once)", -- Blanket
	-- Full old Desc: "{{HealingRed}} Heals 1 heart#{{SoulHeart}} +1 Soul Heart#{{HolyMantle}} Entering a boss room grants a Holy Mantle shield (prevents damage once)"
	-- English: "{{HolyMantle}} Entering a boss room grants a Holy Mantle shield (prevents damage once)"

	[C_ID .. 536] = "Sacrifices up to 2 familiars and spawns a devil item for each sacrifice#{{Coin}} Turns blue spiders/flies into coins", -- Sacrificial Altar
	-- English: "Sacrifices up to 2 familiars and spawns a devil item for each sacrifice#{{Coin}} Turns blue spiders/flies into coins"

	[C_ID .. 537] = "{{Pill}} Spawns a random pill on pickup#Fires a line of creep#The type of creep changes with each pill use", -- Lil Spewer
	-- English: "{{Pill}} Spawns a random pill on pickup#Fires a line of creep#The type of creep changes with each pill use"

	[C_ID .. 538] = "{{Collectible479}} Taking damage has a 10% chance to consume Isaac's held trinket and grant its effects permanently", -- Marbles
	-- Full old Desc: "{{Trinket}} Spawns 3 random trinkets#{{Collectible479}} Taking damage has a 10% chance to consume Isaac's held trinket and grant its effects permanently"
	-- English: "{{Collectible479}} Taking damage has a 10% chance to consume Isaac's held trinket and grant its effects permanently"

	[C_ID .. 539] = "Taking damage spawns a charmed enemy#Spawns stronger friends the more rooms are cleared without taking damage", -- Mystery Egg
	-- English: "{{Friendly}} Taking damage spawns a friendly enemy#Spawns stronger friends the more rooms are cleared without taking damage"

	[C_ID .. 540] = "Isaac's tears bounce off the floor and cause splash damage on every bounce", -- Flat Stone
	-- English: "Isaac's tears bounce off the floor and cause splash damage on every bounce"

	[C_ID .. 542] = "Reflects enemy projectiles", -- Slipped Rib
	-- Full old Desc: "Orbital#Reflects enemy projectiles"
	-- English: "Reflects enemy projectiles"

	[C_ID .. 543] = "Taking damage spawns a white poop#While inside the poop's aura:#{VAR:EFFECTLIST}#Chance to block damage", -- Hallowed Ground
	-- Full old Desc: "Taking damage spawns a white poop#While inside the poop's aura:#↑ {{Tears}} x2 Tears multiplier#Chance to block damage"
	-- English: "Taking damage spawns a white poop#While inside the poop's aura:#{VAR:EFFECTLIST}#{{IND}}Chance to block damage"

	[C_ID .. 544] = "Levitates in front of Isaac#Deals 6x Isaac's damage per second", -- Pointy Rib
	-- English: "Levitates in front of Isaac#Deals 6x Isaac's damage per second"

	[C_ID .. 545] = "Spawns a bone orbital or charmed bony per enemy killed in the room (up to 8)", -- Book of the Dead
	-- English: "{{Friendly}} Spawns a bone orbital or friendly bony per enemy killed in the room (up to 8)"

	[C_ID .. 546] = "Grants an aura that petrifies enemies", -- Dad's Ring
	-- English: "{{Petrify}} Grants an aura that petrifies enemies"

	[C_ID .. 547] = "{{Trinket21}} Spawns the Mysterious Paper trinket", -- Divorce Papers
	-- Full old Desc: "↑ {{Tears}} +0.7 Tears#{{EmptyBoneHeart}} +1 Bone Heart#{{Trinket21}} Spawns the Mysterious Paper trinket"
	-- English: "{{Trinket21}} Spawns the Mysterious Paper trinket"

	[C_ID .. 548] = "Boomerang-like familiar#Can grab and bring back pickups", -- Jaw Bone
	-- Full old Desc: "Boomerang-like familiar#Deals 7 contact damage#Can grab and bring back pickups"
	-- English: "Boomerang-like familiar#Can grab and bring back pickups"

	[C_ID .. 549] = "Shoots 8 bone tears in all directions", -- Brittle Bones
	-- Full old Desc: "{{EmptyBoneHeart}} Replaces all of Isaac's Red Heart containers with 6 empty Bone Hearts#Upon losing a Bone Heart:#↑ {{Tears}} +0.5 Tears#Shoots 8 bone tears in all directions"
	-- English: "{{EmptyBoneHeart}} Replaces all of Isaac's Red Heart containers with 6 empty Bone Hearts#Upon losing a Bone Heart:#{VAR:EFFECTLIST}#{{IND}}Shoots 8 bone tears in all directions"

	[C_ID .. 550] = "Mom's Foot constantly tries to stomp Isaac#Using the item stops the stomping for the room (or one Boss Rush wave)#{{Warning}} (Try to beat Boss Rush with it!)", -- Broken Shovel
	-- English: "Mom's Foot constantly tries to stomp Isaac#Using the item stops the stomping for the room (or one Boss Rush wave)#{{Warning}} (Try to beat Boss Rush with it!)"

	[C_ID .. 551] = "Completes Mom's Shovel#{{Warning}} Use the shovel on the mound of dirt in the \"Dark Room\"", -- Broken Shovel
	-- English: "Completes Mom's Shovel#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 552] = "Deschide o trapă către următorul etaj#10% șansă pentru {{LadderRoom}} beci#{{Warning}} Folosește lopata pe pământ în \"Dark Room\"", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#10% chance for {{LadderRoom}} crawlspace trapdoor#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 1] = "{{Coin}} Taking damage spawns 1 coin", -- Swallowed Penny
	-- English: "{{Coin}} Taking damage spawns 1 coin"

	[T_ID .. 2] = "50% chance to get drops from poop", -- Petrified Poop
	-- English: "50% chance to get drops from poop"

	[T_ID .. 3] = "{{Battery}} -1 Charge needed for active items", -- AAA Battery
	-- English: "{{Battery}} -1 Charge needed for active items"

	[T_ID .. 4] = "{{Collectible44}} Using an active item teleports Isaac to a random room", -- Broken Remote
	-- English: "{{Collectible44}} Using an active item teleports Isaac to a random room"

	[T_ID .. 5] = "2x chance for champion enemies", -- Purple Heart
	-- English: "2x chance for champion enemies"

	[T_ID .. 6] = "{{Coin}} Attracts coins to Isaac", -- Broken Magnet
	-- English: "{{Coin}} Attracts coins to Isaac"

	[T_ID .. 7] = "{{Collectible33}} Higher chance to find The Bible in {{Shop}} Shops and {{Library}} Libraries", -- Rosary Bead
	-- Full old Desc: "{{AngelChance}} 50% higher Angel Room chance#{{Collectible33}} Higher chance to find The Bible in {{Shop}} Shops and {{Library}} Libraries"
	-- English: "{{Collectible33}} Higher chance to find The Bible in {{Shop}} Shops and {{Library}} Libraries"

	[T_ID .. 8] = "{VAR:ITEMDESCRIPTION}", -- Cartridge
	-- Full old Desc: "{{Timer}} 5% chance upon taking damage to receive for 6.5 seconds:#Invincibility#Isaac can't shoot but deals 40 contact damage per second#{{HealingRed}} Killing 2 enemies heals half a heart#{{Fear}} Fears all enemies in the room"
	-- English: "{{Timer}} {VAR:LUCKCHANCE}% chance upon taking damage:#{VAR:ITEMDESCRIPTION}"

	[T_ID .. 9] = "Isaac's tears pulsate#Affects tear hitbox", -- Pulse Worm
	-- English: "Isaac's tears pulsate#Affects tear hitbox"

	[T_ID .. 10] = "Isaac's tears move in waves", -- Wiggle Worm
	-- Full old Desc: "↑ {{Tears}} +0.3 Tears#Isaac's tears move in waves"
	-- English: "Isaac's tears move in waves"

	[T_ID .. 11] = "Isaac's tears move in spirals with high speed", -- Ring Worm
	-- English: "Isaac's tears move in spirals with high speed"

	[T_ID .. 12] = "50% wider tears#Increases knockback", -- Flat Worm
	-- English: "50% wider tears#Increases knockback"

	[T_ID .. 13] = "{{Shop}} Allows Isaac to take 1 Shop item for free", -- Store Credit
	-- English: "{{Shop}} Allows Isaac to take 1 Shop item for free"

	[T_ID .. 14] = "Immune to creep and floor spikes", -- Callus
	-- English: "Immune to creep and floor spikes"

	[T_ID .. 15] = "{{Coin}} Destroying rocks spawns coins", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks spawns coins"

	[T_ID .. 17] = "{{BlackHeart}} +5% chance for random Soul Hearts to spawn as Black Hearts", -- Black Lipstick
	-- English: "{{BlackHeart}} +10% chance for random Soul Hearts to spawn as Black Hearts"

	[T_ID .. 18] = "{{EternalHeart}} +3% chance for Eternal Hearts", -- Bible Tract
	-- English: "{{EternalHeart}} +3% chance for Eternal Hearts"

	[T_ID .. 19] = "{{GoldenChest}} Gold chests can be opened for free", -- Paper Clip
	-- English: "{{GoldenChest}} Gold chests can be opened for free"

	[T_ID .. 20] = "{{BlackHeart}} Spawns 1 Black Heart when Isaac's health is reduced to half a heart#{{Warning}} Disappears after spawning 3 Black Hearts", -- Monkey Paw
	-- English: "{{BlackHeart}} Spawns 1 Black Heart when Isaac's health is reduced to half a heart#{{Warning}} Disappears after spawning 3 Black Hearts"

	[T_ID .. 21] = "Randomly grants the effect of: #{VAR:TEXT}", -- Mysterious Paper
	-- Full old Desc: "Randomly grants the effect of: #{{Collectible327}} The Polaroid#{{Collectible328}} The Negative#{{Trinket48}} A Missing Page#{{Trinket23}} Missing Poster"
	-- English: "Randomly grants the effect of:#{VAR:TEXT}"

	[T_ID .. 22] = "{{Heart}} Decreases spawn rate of hearts to 20%#{{BlackHeart}} All Heart pickups turn into Black Hearts#{{Key}} Increases the drop chance of keys", -- Daemon's Tail
	-- English: "{{Heart}} Decreases spawn rate of hearts to 20%#{{BlackHeart}} All Heart pickups turn into Black Hearts#{{Key}} Increases the drop chance of keys"

	[T_ID .. 23] = "{{Player10}} Respawn as The Lost on death", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death"

	[T_ID .. 24] = "{{Coin}} 20% higher chance for coins to spawn from poop#Picking up coins makes Isaac fart", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#Picking up coins makes Isaac fart"

	[T_ID .. 25] = "Isaac farts or spawns poop every 30 seconds", -- Mysterious Candy
	-- English: "Isaac farts or spawns poop every 30 seconds"

	[T_ID .. 26] = "Isaac's tears move in angular patterns", -- Hook Worm
	-- Full old Desc: "↑ {{Range}} +10 Range#Isaac's tears move in angular patterns"
	-- English: "Isaac's tears move in angular patterns"

	[T_ID .. 28] = "{{Player4}} 22% chance to respawn as ??? (Blue Baby) on death", -- Broken Ankh
	-- English: "{{Player4}} 22% chance to respawn as ??? (Blue Baby) on death"

	[T_ID .. 29] = "Taking damage spawns 1 blue fly", -- Fish Head
	-- English: "Taking damage spawns 1 blue fly"

	[T_ID .. 32] = "25% chance for a random mushroom effect per room#Can reveal special rooms on the minimap", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room#Can reveal special rooms on the minimap"

	[T_ID .. 34] = "{{UnknownHeart}} 10% chance for the room clear reward to be a random heart#{{Heart}} Chance for a bonus heart from chests, tinted rocks and destroyed machines", -- Child's Heart
	-- English: "{{UnknownHeart}} 10% chance for the room clear reward to be a random heart#{{Heart}} 33% chance for a bonus heart from chests, tinted rocks, and destroyed machines"

	[T_ID .. 36] = "{{Key}} 10% chance for the room clear reward to be a key#{{Key}} Chance for a bonus key from chests, tinted rocks and destroyed machines", -- Rusted Key
	-- English: "{{Key}} 10% chance for the room clear reward to be a key#{{Key}} 33% chance for a bonus key from chests, tinted rocks, and destroyed machines"

	[T_ID .. 38] = "+10% chance for heart drops to be {{SoulHeart}} Soul Hearts, {{BlackHeart}} Black Hearts or {{EmptyBoneHeart}} Bone Hearts", -- Mom's Pearl
	-- English: "+10% chance for heart drops to be {{SoulHeart}} Soul Hearts, {{BlackHeart}} Black Hearts or {{EmptyBoneHeart}} Bone Hearts"

	[T_ID .. 40] = "{{Timer}} Taking damage has a 20% chance to grant ↑ {{Damage}} +1.8 damage for the room", -- Red Patch
	-- Full old Desc: "{{Timer}} Taking damage has a 20% chance to grant ↑ {{Damage}} +1.8 damage for the room#{{Luck}} 100% chance at 8 luck"
	-- English: "{{Timer}} Taking damage has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +1.8 damage for the room"

	[T_ID .. 41] = "{{Bomb}} 10% chance for the room clear reward to be a bomb#{{Bomb}} Chance for a bonus bomb from chests, tinted rocks and destroyed machines#{{Warning}} Removes {{Trinket53}} Tick", -- Match Stick
	-- English: "{{Bomb}} 10% chance for the room clear reward to be a bomb#{{Bomb}} 33% chance for a bonus bomb from chests, tinted rocks, and destroyed machines#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 42] = "+8% room clear reward chance#Extra pickups from chests, tinted rocks, and destroyed machines", -- Lucky Toe
	-- Full old Desc: "↑ {{Luck}} +1 Luck#+8% room clear reward chance#Extra pickups from chests, tinted rocks, and destroyed machines"
	-- English: "+8% room clear reward chance#33% chance for an extra pickup from chests, tinted rocks, and destroyed machines"

	[T_ID .. 43] = "When damaged down to half a heart or less, Isaac is teleported to a random room", -- Cursed Skull
	-- English: "When damaged down to half a heart or less, Isaac is teleported to a random room"

	[T_ID .. 44] = "{{Pill}} 10% chance for the room clear reward to be a pill#{{Pill}} Chance for a bonus pill from chests, tinted rocks and destroyed machines", -- Safety Cap
	-- English: "{{Pill}} 10% chance for the room clear reward to be a pill#{{Pill}} 33% chance for a bonus pill from chests, tinted rocks, and destroyed machines"

	[T_ID .. 45] = "{{Card}} 10% chance for the room clear reward to be a card#{{Card}} Chance for a bonus card from chests, tinted rocks and destroyed machines", -- Ace of Spades
	-- English: "{{Card}} 10% chance for the room clear reward to be a card#{{Card}} 33% chance for a bonus card from chests, tinted rocks, and destroyed machines"

	[T_ID .. 49] = "{{HalfHeart}} Picking up a coin has a 50% chance to spawn a half Red Heart", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 50% chance to spawn a half Red Heart"

	[T_ID .. 50] = "{{Bomb}} Picking up a coin has a 50% chance to spawn a bomb", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 50% chance to spawn a bomb"

	[T_ID .. 51] = "{{Key}} Picking up a coin has a 50% chance to spawn a key", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 50% chance to spawn a key"

	[T_ID .. 52] = "{{Coin}} Picking up a coin has a 50% chance to add another coin to the counter", -- Counterfeit Penny
	-- English: "{{Coin}} Picking up a coin has a 50% chance to add another coin to the counter"

	[T_ID .. 53] = "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick or gulping", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick or gulping"

	[T_ID .. 54] = "Familiar with piercing tears", -- Isaac's Head
	-- Full old Desc: "Familiar with piercing tears#Deals 3.5 damage per tear"
	-- English: "Familiar with piercing tears"

	[T_ID .. 55] = "{{EternalHeart}} Entering a new floor grants +1 Eternal Heart", -- Maggy's Faith
	-- English: "{{EternalHeart}} Entering a new floor grants +1 Eternal Heart"

	[T_ID .. 56] = "{{DevilRoom}} Reduces all devil deal prices to 1 heart container#Doesn't reduce 3 Soul Heart prices", -- Judas' Tongue
	-- English: "{{DevilRoom}} Reduces all devil deal prices to 1 heart container#Doesn't reduce 3 Soul Heart prices"

	[T_ID .. 57] = "Familiar that bounces around the room#Shoots in the same direction as Isaac", -- ???'s Soul
	-- Full old Desc: "Familiar that bounces around the room#Shoots in the same direction as Isaac#Deals 3.5 damage per tear"
	-- English: "Familiar that bounces around the room#Shoots in the same direction as Isaac"

	[T_ID .. 58] = "{{Timer}} Killing an enemy has a 1/15 chance to grant ↑ {{Damage}} +0.5 damage for the room", -- Samson's Lock
	-- Full old Desc: "{{Timer}} Killing an enemy has a 1/15 chance to grant ↑ {{Damage}} +0.5 damage for the room#{{Luck}} 100% chance at 10 luck"
	-- English: "{{Timer}} Killing an enemy has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +0.5 damage for the room"

	[T_ID .. 61] = "{{RedChest}} Turns all chests into Red Chests", -- The Left Hand
	-- English: "{{RedChest}} Turns all chests into Red Chests"

	[T_ID .. 62] = "Crawlspace rocks and tinted rocks blink every 10 seconds", -- Shiny Rock
	-- English: "Crawlspace rocks and tinted rocks blink every 10 seconds"

	[T_ID .. 63] = "{{Bomb}} Turns Troll Bombs into bomb pickups", -- Safety Scissors
	-- English: "{{Bomb}} Turns Troll Bombs into bomb pickups"

	[T_ID .. 64] = "Grants a random worm effect every 3 seconds", -- Rainbow Worm
	-- English: "Grants a random worm effect every 3 seconds"

	[T_ID .. 67] = "Taking damage has a 50% chance to trigger one of these effects:#{VAR:TEXT}", -- Cracked Dice
	-- Full old Desc: "Taking damage has a 50% chance to trigger one of these effects:#{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible386}} D12 #{{Collectible166}} D20"
	-- English: "Taking damage has a 50% chance to trigger one of these effects:#{VAR:TEXT}"

	[T_ID .. 68] = "Isaac attracts pickups and enemies", -- Super Magnet
	-- English: "Isaac attracts pickups and enemies"

	[T_ID .. 69] = "Randomly camouflages Isaac#{{Confusion}} Confuses enemies", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies"

	[T_ID .. 70] = "Occasionally spawns a blue spider in hostile rooms", -- Louse
	-- English: "Occasionally spawns a blue spider in hostile rooms"

	[T_ID .. 71] = "Isaac's bombs leave damaging creep", -- Bob's Bladder
	-- English: "Isaac's bombs leave damaging creep"

	[T_ID .. 72] = "{{Battery}} 6.66% chance for the room clear reward to be a battery#{{Battery}} +10% chance for random pickups to be a battery#{{Battery}} 5% chance to add 1 charge to held active item when clearing a room", -- Watch Battery
	-- English: "{{Battery}} 6.66% chance for the room clear reward to be a battery#{{Battery}} +10% chance for random pickups to be a battery#{{Battery}} 5% chance to add 1 charge to held active item when clearing a room"

	[T_ID .. 73] = "{{Bomb}} 10% chance for exploding bombs to drop a bomb pickup", -- Blasting Cap
	-- English: "{{Bomb}} 10% chance for exploding bombs to drop a bomb pickup"

	[T_ID .. 74] = "{{LadderRoom}} +0.5% chance to reveal a crawlspace when breaking a rock", -- Stud Finder
	-- English: "{{LadderRoom}} +0.5% chance to reveal a crawlspace when breaking a rock"

	[T_ID .. 75] = "Grants a random trinket effect every room", -- Error
	-- English: "Grants a random trinket effect every room"

	[T_ID .. 76] = "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly", -- Poker Chip
	-- English: "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly"

	[T_ID .. 77] = "Increases knockback", -- Blister
	-- English: "Increases knockback"

	[T_ID .. 78] = "Status effects applied to enemies last twice as long", -- Second Hand
	-- English: "Status effects applied to enemies last twice as long"

	[T_ID .. 79] = "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill has a 25% chance to spawn a copy of that rune, card or pill", -- Endless Nameless
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill has a 25% chance to spawn a copy of that rune, card or pill"

	[T_ID .. 81] = "Invincibility frames after taking damage last twice as long", -- Blind Rage
	-- English: "Invincibility frames after taking damage last twice as long"

	[T_ID .. 82] = "{{TreasureRoom}} Future Treasure Rooms have +15% chance to let Isaac choose between two items", -- Golden Horse Shoe
	-- English: "{{TreasureRoom}} Future Treasure Rooms have +15% chance to let Isaac choose between two items"

	[T_ID .. 83] = "{{Shop}} Lets Isaac open Shops for free", -- Store Key
	-- English: "{{Shop}} Lets Isaac open Shops for free"

	[T_ID .. 84] = "{{Coin}} 5% more coins and fewer hearts from room clear rewards#Greed and Super Greed no longer appear in {{Shop}} Shops or {{SecretRoom}} Secret Rooms", -- Rib of Greed
	-- English: "{{Coin}} 5% more coins and fewer hearts from room clear rewards#Greed and Super Greed no longer appear in {{Shop}} Shops or {{SecretRoom}} Secret Rooms"

	[T_ID .. 85] = "{{DonationMachine}} Using a Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)", -- Karma
	-- English: "{{DonationMachine}} Using a Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)"

	[T_ID .. 86] = "Destroying poop spawns 1 blue fly", -- Lil Larva
	-- English: "Destroying poop spawns 1 blue fly"

	[T_ID .. 87] = "{{HealingRed}} Using a key heals half a heart#{{Heart}} Turns half hearts into full hearts", -- Mom's Locket
	-- English: "{{HealingRed}} Using a key heals half a heart#{{Heart}} Turns half hearts into full hearts"

	[T_ID .. 88] = "Prevents active items from spawning", -- NO!
	-- English: "Prevents active items from spawning"

	[T_ID .. 89] = "Familiars stay closer to Isaac", -- Child Leash
	-- English: "Familiars stay closer to Isaac"

	[T_ID .. 90] = "Poop explodes for 100 damage when destroyed", -- Brown Cap
	-- English: "Poop explodes for 100 damage when destroyed"

	[T_ID .. 91] = "33% chance for Black Poops to spawn#{{BlackHeart}} Destroying Black Poop has a 5% chance to spawn a Black Heart", -- Meconium
	-- English: "33% chance for Black Poops to spawn#{{BlackHeart}} Destroying Black Poop has a 5% chance to spawn a Black Heart"

	[T_ID .. 92] = "↑ x1.33 Stat multiplier for the stats that are above 1 {{Speed}} speed, 3.5 {{Damage}} damage, 23.75 {{Range}} range, 1 {{Shotspeed}} shot speed", -- Cracked Crown
	-- Full old Desc: "↑ {{Tears}} x0.8 Tear delay#↑ x1.33 Stat multiplier for the stats that are above 1 {{Speed}} speed, 3.5 {{Damage}} damage, 23.75 {{Range}} range, 1 {{Shotspeed}} shot speed"
	-- English: "↑ x1.33 Stat multiplier for the stats that are above 1 {{Speed}} speed, 3.5 {{Damage}} damage, 23.75 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 93] = "15% chance per room for all fly enemies to become friendly", -- Used Diaper
	-- English: "15% chance per room for all fly enemies to become friendly"

	[T_ID .. 94] = "Doubles all blue fly / spider spawns", -- Fish Tail
	-- English: "Doubles all blue fly / spider spawns"

	[T_ID .. 96] = "Isaac's tears move quickly in a spiral pattern", -- Ouroboros Worm
	-- Full old Desc: "↑ {{Range}} +4 Range#↑ +2 Tear height#Spectral tears#Chance for homing tears#{{Luck}} 100% chance at 9 luck#Isaac's tears move quickly in a spiral pattern"
	-- English: "{VAR:LUCKCHANCE}% chance for homing tears#Isaac's tears move quickly in a spiral pattern"

	[T_ID .. 97] = "Caps at 2 Familiars", -- Tonsil
	-- Full old Desc: "Taking damage 12-20 times spawns a projectile blocking familiar#Caps at 2 Familiars"
	-- English: "Taking damage {VAR:RANGE} times spawns a projectile blocking familiar#Disappears after spawning 2 familiars"

	[T_ID .. 98] = "10% chance to shoot homing sticky tears#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for 60 seconds", -- Nose Goblin
	-- Full old Desc: "10% chance to shoot homing sticky tears#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for 60 seconds"
	-- English: "10% chance to shoot a sticky tear#50% chance for it to be homing#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for {VAR:1} seconds"

	[T_ID .. 99] = "10% chance to shoot bouncing tears", -- Super Ball
	-- English: "10% chance to shoot bouncing tears"

	[T_ID .. 100] = "Holding a fully charged active item grants:#{VAR:EFFECTLIST}", -- Vibrant Bulb
	-- Full old Desc: "Holding a fully charged active item grants:#↑ {{Speed}} +0.25 Speed#↑ {{Tears}} +0.2 Tears#↑ {{Damage}} +0.5 Damage#↑ {{Range}} +0.75 Range#↑ {{Shotspeed}} +0.1 Shot speed#↑ {{Luck}} +1 Luck"
	-- English: "Holding a fully charged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 101] = "Holding a completely uncharged active item grants:#{VAR:EFFECTLIST}", -- Dim Bulb
	-- Full old Desc: "Holding a completely uncharged active item grants:#↑ {{Speed}} +0.5 Speed#↑ {{Tears}} +0.4 Tears#↑ {{Damage}} +1.5 Damage#↑ {{Range}} +1.5 Range#↑ {{Shotspeed}} +0.3 Shot speed#↑ {{Luck}} +2 Luck"
	-- English: "Holding a completely uncharged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 102] = "{{SecretRoom}} +1 extra Secret Room per floor while held", -- Fragmented Card
	-- English: "{{SecretRoom}} +1 extra Secret Room per floor while held"

	[T_ID .. 103] = "Turns single pickups into double pickups when Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal", -- Equality!
	-- English: "Turns single pickups into double pickups when Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal"

	[T_ID .. 106] = "Increases the radius of friendly creep", -- Lost Cork
	-- English: "Increases the radius of friendly creep"

	[T_ID .. 107] = "Taking damage depletes Red Hearts before Soul/Black Hearts#This red heart damage does not reduce Devil/Angel Room chances", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#This red heart damage does not reduce Devil/Angel Room chances"

	[T_ID .. 108] = "Getting hit by 1-9 explosions destroys the trinket and drops a random {{UnknownHeart}} heart, {{Coin}} coin, {{Key}} key and {{Trinket}} trinket#Taking damage isn't required", -- Walnut
	-- English: "Getting hit by 1-9 explosions destroys the trinket and drops a random {{UnknownHeart}} heart, {{Coin}} coin, {{Key}} key and {{Trinket}} trinket#Taking damage isn't required"

	[T_ID .. 109] = "Familiars are stuck in one spot and cannot move", -- Duct Tape
	-- English: "Familiars are stuck in one spot and cannot move"

	[T_ID .. 110] = "{{Shop}} Shops appear in the Womb", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb"

	[T_ID .. 111] = "{{TreasureRoom}} Treasure Rooms appear in the Womb", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb"

	[T_ID .. 112] = "{{RestockMachine}} Restock boxes always spawn in {{TreasureRoom}} Treasure Rooms", -- Pay To Win
	-- English: "{{RestockMachine}} Restock boxes always spawn in {{TreasureRoom}} Treasure Rooms"

	[T_ID .. 113] = "Entering a hostile room spawns an exploding attack fly #The fly deals 2x Isaac's damage + explosion damage", -- Locust of War
	-- English: "Entering a hostile room spawns an exploding attack fly #The fly deals 2x Isaac's damage + explosion damage"

	[T_ID .. 114] = "{{Poison}} Entering a hostile room spawns a poison attack fly#The fly deals 2x Isaac's damage", -- Locust of Pestilence
	-- English: "{{Poison}} Entering a hostile room spawns a poison attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 115] = "{{Slow}} Entering a hostile room spawns a slowing attack fly#The fly deals 2x Isaac's damage", -- Locust of Famine
	-- English: "{{Slow}} Entering a hostile room spawns a slowing attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 116] = "Entering a hostile room spawns an attack fly#The fly deals 4x Isaac's damage", -- Locust of Death
	-- English: "Entering a hostile room spawns an attack fly#The fly deals 4x Isaac's damage"

	[T_ID .. 117] = "Entering a hostile room spawns 1-4 attack flies#Each fly deals 2x Isaac's damage", -- Locust of Conquest
	-- English: "Entering a hostile room spawns 1-4 attack flies#Each fly deals 2x Isaac's damage"

	[T_ID .. 118] = "{{Timer}} Killing an enemy has a 5% chance to grant flight for the room", -- Bat Wing
	-- English: "{{Timer}} Killing an enemy has a 5% chance to grant flight for the room"

	[T_ID .. 119] = "{{HealingRed}} Entering a new floor heals half a heart", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half a heart"

	[T_ID .. 120] = "{{Battery}} Entering an uncleared boss room fully recharges active items", -- Hairpin
	-- English: "{{Battery}} Entering an uncleared boss room fully recharges active items"

	[T_ID .. 121] = "{{Collectible313}} Negates the first damage taken on the floor", -- Wooden Cross
	-- English: "{{Collectible313}} Grants a Holy shield that prevents damage once per floor"

	[T_ID .. 122] = "Using an active item drops it on a pedestal on the ground#Taking damage has a 2% chance to drop one of Isaac's passive items", -- Butter!
	-- English: "Using an active item drops it on a pedestal on the ground#Taking damage has a 2% chance to drop one of Isaac's passive items"

	[T_ID .. 123] = "Angel bosses drop angel items instead of Key Pieces", -- Filigree Feather
	-- English: "Angel bosses drop angel items instead of Key Pieces"

	[T_ID .. 124] = "The last door used stays open", -- Door Stop
	-- English: "The last door used stays open"

	[T_ID .. 125] = "Connects all familiars with beams of electricity#The beams deal 6 damage", -- Extension Cord
	-- English: "Connects all familiars with beams of electricity#The beams deal 6 damage"

	[T_ID .. 126] = "Picking up a coin spawns a blue fly", -- Rotten Penny
	-- English: "Picking up a coin spawns a blue fly"

	[T_ID .. 127] = "Grants all familiars homing shots", -- Baby-Bender
	-- English: "Grants all familiars homing shots"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 1] = "Isaac este teleportat în prima cameră a etajului", -- 0 - The Fool
	-- English: "Teleports Isaac to the first room of the floor"

	[Card_ID .. 3] = "Piciorul mamei cade pe inamici#Piciorul cade pe Isaac dacă nu sunt inamici", -- II - The High Priestess
	-- English: "Mom's Foot stomps on an enemy#Mom's Foot stomps Isaac if there are no enemies"

	[Card_ID .. 5] = "{{BossRoom}} Isaac este teleportat în Camera Șefului", -- IV - The Emperor
	-- English: "{{BossRoom}} Teleports Isaac to the Boss Room"

	[Card_ID .. 9] = "Oferă aleatoriu {{UnknownHeart}} o inimă, {{Coin}} un bănuț, {{Bomb}} o bombă și {{Key}} o cheie", -- VIII - Justice
	-- English: "Spawns a random {{UnknownHeart}} heart, {{Coin}} coin, {{Bomb}} bomb and {{Key}} key"

	[Card_ID .. 10] = "{{Shop}} Isaac este teleportat la magazin", -- IX - The Hermit
	-- English: "{{Shop}} Teleports Isaac to the Shop"

	[Card_ID .. 11] = "Oferă o {{Slotmachine}} Păcănea sau {{FortuneTeller}} Mașina Viitorului", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 25% chance for it to be a Fortune Telling Machine"

	[Card_ID .. 15] = "{{DonationMachine}} Oferă un Donator de Sânge", -- XIV - Temperance
	-- English: "{{DonationMachine}} Spawns a Blood Donation Machine"

	[Card_ID .. 17] = "Oferă 6 Bombe Troll", -- XVI - The Tower
	-- English: "Spawns 6 Troll Bombs"

	[Card_ID .. 18] = "{{TreasureRoom}} Isaac este teleportat în Camera Comorilor", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room"

	[Card_ID .. 19] = "{{SecretRoom}} Isaac este teleporat în Camera Secretă", -- XVIII - The Moon
	-- English: "{{SecretRoom}} Teleports Isaac to the Secret Room"

	[Card_ID .. 21] = "Oferă un cerșetor sau un cerșetor diavol#2% șansă pentru un cerșetor special", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#2% chance for it to be a Key Master or Bomb Bum"

	[Card_ID .. 23] = "{{Bomb}} Doubles Isaac's number of bombs", -- 2 of Clubs
	-- English: "{{Bomb}} Doubles Isaac's number of bombs"

	[Card_ID .. 24] = "{{Coin}} Doubles Isaac's number of coins", -- 2 of Diamonds
	-- English: "{{Coin}} Doubles Isaac's number of coins"

	[Card_ID .. 25] = "{{Key}} Doubles Isaac's number of keys", -- 2 of Spades
	-- English: "{{Key}} Doubles Isaac's number of keys"

	[Card_ID .. 26] = "{{HealingRed}} Doubles Isaac's number of Red Hearts {{ColorSilver}}(not containers){{CR}}", -- 2 of Hearts
	-- English: "{{HealingRed}} Doubles Isaac's number of Red Hearts {{ColorSilver}}(not containers){{CR}}"

	[Card_ID .. 27] = "{{Bomb}} Turns all pickups into random bombs", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups into random bombs"

	[Card_ID .. 28] = "{{Coin}} Turns all pickups into random coins", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups into random coins"

	[Card_ID .. 29] = "{{Key}} Turns all pickups into random keys", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups into random keys"

	[Card_ID .. 30] = "{{UnknownHeart}} Turns all pickups into random hearts", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups into random hearts"

	[Card_ID .. 31] = "{{AngelDevilChance}} Teleports Isaac to the Devil or Angel Room", -- Joker
	-- English: "{{AngelDevilChance}} Teleports Isaac to the Devil or Angel Room"

	[Card_ID .. 32] = "Destroy all rocks in the room", -- Hagalaz
	-- English: "Destroy all rocks in the room"

	[Card_ID .. 33] = "Duplicates all pickups in room", -- Jera
	-- English: "Duplicates all pickups in room"

	[Card_ID .. 34] = "Spawns a trapdoor to the next floor#{{LadderRoom}} 8% chance for a crawlspace trapdoor", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} 8% chance for a crawlspace trapdoor"

	[Card_ID .. 35] = "{{CurseCursed}} Removes all curses for the floor", -- Dagaz
	-- Full old Desc: "{{SoulHeart}} +1 Soul Heart#{{CurseCursed}} Removes all curses for the floor"
	-- English: "{{CurseCursed}} Removes all curses for the floor"

	[Card_ID .. 37] = "Rerolls all pedestal items in the room", -- Perthro
	-- English: "Rerolls all pedestal items in the room"

	[Card_ID .. 40] = "Triggers a random rune effect#25% chance to duplicate itself when used", -- Blank Rune
	-- English: "Triggers a random rune effect#25% chance to duplicate itself when used"

	[Card_ID .. 41] = "Converts all pedestal items in the room into random stat ups#Converts all pickups in the room into blue flies", -- Black Rune
	-- Full old Desc: "Deals 40 damage to all enemies#Converts all pedestal items in the room into random stat ups#Converts all pickups in the room into blue flies"
	-- English: "Converts all pedestal items in the room into random stat ups#Converts all pickups in the room into blue flies"

	[Card_ID .. 42] = "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium)", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium)"

	[Card_ID .. 43] = "Makes all items and pickups in a {{Shop}} Shop or {{DevilRoom}} Devil Room free", -- Credit Card
	-- English: "Makes all items and pickups in a {{Shop}} Shop or {{DevilRoom}} Devil Room free"

	[Card_ID .. 44] = "Displays \"helpful\" tips on use", -- Rules Card
	-- English: "Displays "helpful" tips on use"

	[Card_ID .. 45] = "Fills the whole room with poop", -- A Card Against Humanity
	-- English: "Fills the whole room with poop"

	[Card_ID .. 46] = "Instantly kills Isaac and spawns 10 pickups or items on the floor#Spawned items will use the current room's item pool", -- Suicide King
	-- English: "Instantly kills Isaac and spawns 10 pickups or items on the floor#Spawned items will use the current room's item pool"

	[Card_ID .. 47] = "Open all doors in the room", -- Get Out Of Jail Free Card
	-- English: "Open all doors in the room"

	[Card_ID .. 48] = "Uses Isaac's active item for free", -- ? Card
	-- English: "Uses Isaac's active item for free"

	[Card_ID .. 49] = "Rerolls all item pedestals and pickups in the room", -- Dice Shard
	-- English: "Rerolls all item pedestals and pickups in the room"

	[Card_ID .. 50] = "Two of Mom's Hands come down and grab an enemy each", -- Emergency Contact
	-- English: "Two of Mom's Hands come down and grab an enemy each"

	[Card_ID .. 51] = "{{HolyMantle}} Holy Mantle shield for the room (prevents damage once)#25% chance to spawn another Holy Card", -- Holy Card
	-- English: "{{HolyMantle}} Holy Mantle shield for the room (prevents damage once)#25% chance to spawn another Holy Card"

	[Card_ID .. 52] = "{VAR:ROOMEFFECT}#Allows Isaac to destroy rocks by walking into them", -- Huge Growth
	-- Full old Desc: "{{Timer}} Receive for the room:#↑ {{Damage}} +7 Damage#↑ {{Range}} +30 Range#Size up#Allows Isaac to destroy rocks by walking into them"
	-- English: "{VAR:ROOMEFFECT}#Allows Isaac to destroy rocks by walking into them"

	[Card_ID .. 54] = "{VAR:ROOMEFFECT}#{{Slow}} Slow down enemies", -- Era Walk
	-- Full old Desc: "{{Timer}} Receive for the room:#↑ {{Speed}} +0.5 Speed#↓ {{Shotspeed}} -1 Shot speed#{{Slow}} Slow down enemies"
	-- English: "{VAR:ROOMEFFECT}#{{Slow}} Slow down enemies"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 1] = "{{Poison}} Isaac farts and poisons nearby enemies", -- Bad Gas
	-- English: "{{Poison}} Isaac farts and poisons nearby enemies"

	[Pill_ID .. 2] = "{{Warning}} Deals 1 heart of damage to Isaac#Becomes a Full Health pill at 1 heart or less", -- Bad Trip
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#Becomes a Full Health pill at 1 heart or less"

	[Pill_ID .. 4] = "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys"

	[Pill_ID .. 5] = "Isaac quickly spawns 5 lit bombs", -- Explosive Diarrhea
	-- English: "Isaac quickly spawns 5 lit bombs"

	[Pill_ID .. 7] = "Becomes a Health Up pill at 0 or 1 heart containers", -- Health Down
	-- Full old Desc: "↓ {{EmptyHeart}} -1 Health#Becomes a Health Up pill at 0 or 1 heart containers"
	-- English: "Becomes a Health Up pill at 0 or 1 heart containers"

	[Pill_ID .. 10] = "Eating 3 grants the Adult transformation:#{VAR:EFFECTLIST}", -- Puberty
	-- Full old Desc: "No effect#Eating 3 grants the Adult transformation:#↑ {{Heart}} +1 Health"
	-- English: "Eating 3 grants the Adult transformation:#{VAR:EFFECTLIST}"

	[Pill_ID .. 20] = "Teleports Isaac to a random room#{{ErrorRoom}} Small chance to teleport Isaac to the I AM ERROR room", -- Telepills
	-- English: "Teleports Isaac to a random room#{{ErrorRoom}} Small chance to teleport Isaac to the I AM ERROR room"

	[Pill_ID .. 21] = "{{Battery}} Fully recharges the active item", -- 48 Hour Energy!
	-- Full old Desc: "{{Battery}} Fully recharges the active item#{{Battery}} Spawns 1-2 batteries"
	-- English: "{{Battery}} Fully recharges the active item"

	[Pill_ID .. 22] = "{{Warning}} Drains all but one heart container", -- Hematemesis
	-- Full old Desc: "{{Warning}} Drains all but one heart container#{{Heart}} Spawns 1-4 Red Hearts"
	-- English: "{{Warning}} Drains all but one heart container"

	[Pill_ID .. 23] = "Prevents Isaac from moving and shooting for 2 seconds", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 2 seconds"

	[Pill_ID .. 24] = "{{SecretRoom}} Opens all secret room entrances on the floor", -- I can see forever!
	-- English: "{{SecretRoom}} Opens all secret room entrances on the floor"

	[Pill_ID .. 25] = "{{Charm}} Charms all enemies in the room", -- Pheromones
	-- English: "{{Charm}} Charms all enemies in the room"

	[Pill_ID .. 26] = "{{CurseLost}} Hides the map for the floor", -- Amnesia
	-- English: "{{CurseLost}} Hides the map for the floor"

	[Pill_ID .. 27] = "Spawns a large puddle on the ground which damages enemies", -- Lemon Party
	-- English: "Spawns a large puddle on the ground which damages enemies"

	[Pill_ID .. 28] = "{{Timer}} Isaac shoots diagonally for 30 seconds", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 30 seconds"

	[Pill_ID .. 29] = "{{Timer}} Reduces all damage taken to half a heart for the room", -- Percs!
	-- English: "{{Timer}} Reduces all damage taken to half a heart for the room"

	[Pill_ID .. 30] = "{{Timer}} Increases all damage taken to a full heart for the room", -- Addicted!
	-- English: "{{Timer}} Increases all damage taken to a full heart for the room"

	[Pill_ID .. 31] = "Isaac spawns poop behind him for 2 seconds", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 2 seconds"

	[Pill_ID .. 32] = "{{CurseMaze}} Curse of the Maze effect for the floor", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. 33] = "Doesn't affect his hitbox", -- One makes you larger
	-- Full old Desc: "Increases Isaac's size#Doesn't affect his hitbox"
	-- English: "Doesn't affect his hitbox"

	[Pill_ID .. 34] = "Also decreases his hitbox", -- One makes you small
	-- Full old Desc: "Decreases Isaac's size#Also decreases his hitbox"
	-- English: "Also decreases his hitbox"

	[Pill_ID .. 35] = "Spawns 1 blue spider for each poop in the room", -- Infested!
	-- English: "Spawns 1 blue spider for each poop in the room"

	[Pill_ID .. 36] = "Spawn 1 blue spider for each enemy in the room#Spawns 1-3 blue spiders if there are no enemies in the room", -- Infested?
	-- English: "Spawn 1 blue spider for each enemy in the room#Spawns 1-3 blue spiders if there are no enemies in the room"

	[Pill_ID .. 38] = "{{Timer}} Pixelates the screen 3 times over 30 second", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen 3 times over 30 second"

	[Pill_ID .. 40] = "Spawns a pool of slippery creep", -- X-Lax
	-- English: "Spawns a pool of slippery creep"

	[Pill_ID .. 41] = "{{Slow}} Spawns a pool of slowing creep", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of slowing creep"

	[Pill_ID .. 42] = "{{Slow}} Slows all enemies in the room", -- I'm Drowsy...
	-- English: "{{Slow}} Slows all enemies in the room"

	[Pill_ID .. 43] = "Speeds up all enemies in the room", -- I'm Excited!!
	-- English: "Speeds up all enemies in the room"

	[Pill_ID .. 44] = "{{Trinket}} Consumes Isaac's trinket and grants its effects permanently", -- Gulp!
	-- English: "{{Trinket}} Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. 45] = "{{Collectible149}} Shoots one Ipecac tear", -- Horf!
	-- English: "{{Collectible149}} Shoots one Ipecac tear"

	[Pill_ID .. 47] = "Spawns the last pill used before Vurp!", -- Vurp!
	-- English: "Spawns the last pill used before Vurp!"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)
