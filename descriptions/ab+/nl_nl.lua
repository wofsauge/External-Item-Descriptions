---------------------------------------
-----  Basic Dutch descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  ! = Warning  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "nl_nl"

-- init Dutch table
EID.descriptions[languageCode] = {}
EID.descriptions[languageCode].custom = {} -- table for custom entity descriptions
EID.descriptions[languageCode].languageName = "Dutch (WIP) (AB+)"
EID.descriptions[languageCode].alternativeLanguageCodes = {"dutch", "nl"}

-- Fonts to be used with this language pack
EID.descriptions[languageCode].fonts = {{name="default"}, {name="inverted"}, {name="borderless"}}


---------- Modular Descriptions ----------
-- Table containing basic sentences and templates used to generate basic descriptions

-----------------------------------------------------------------
--- Translator TODO: Please verify correctness of translations and add potential pluralizations
-----------------------------------------------------------------
EID.descriptions[languageCode].ModularDescriptions = {
    -- Player Stats
    TearsMultiplier = "{value} Tranen vermenigvuldiger",
    Tears = "{value} Tranen",
    TearHeight = "{value} Traan Hoogte",
    TearSizeMultiplier = "{value} Traan grootte",
    TearSize = "{value} Traan grootte",
    TearDelayMultiplier = "{value} Traan vertraging vermenigvuldiger",
    TearDelay = "{value} Traan vertraging",
    FireRateMultiplier = "{value} Vuursnelheid vermenigvuldig",
    FireRate = "{value} Vuursnelheid",
    DamageMultiplier = "{value} Schade vermenigvuldiger",
    Damage = "{value} Schade",
    BombDamage = "{value} Bom schade",
    Speed = "{value} Snelheid",
    RangeMultiplier = "{value} Bereik vermenigvuldiger",
    Range = "{value} Bereik",
    Luck = "{value} Geluk",
    ShotSpeedMultiplier = "{value} Traan Snelheid vermenigvuldiger",
    ShotSpeed = "{value} Traan Snelheid",
    Life = "{value} Leven",
    SizeUp = "Grootte omhoog",
    SizeDown = "Grootte omlaag",
    Flight = "Geeft vlucht",
    Invincibility = "Onkwetsbaarheid",
    RandomStatUp = "↑ Verhoogt {value} willekeurige stat",
    RandomStatDown = "↓ Verlaagt {value} willekeurige stat",

    -- Health related
    RedHeart = "{value} Gezondheid",
    SoulHeart = "{value} Ziel Hart",
    BlackHeart = "{value} Zwart Hart",
    BoneHeart = "{value} Bot Hart",
    EternalHeart = "{value} Eeuwig Hart",
    GoldenHeart = "{value} Gouden Hart",
    RottenHeart = "{value} Rot Hart",
    BrokenHeart = "{value} Gebroken Hart",
    EmptyHeart = "{value} Lege Hart container",
    FullHealth = "Volle gezondheid",
    HealingRed = "Geneest {value} hart",
    CoinHeart = "{value} Munt Hart",
    EmptyCoinHeart = "{value} Leeg Munt Hart",
    HealingCoin = "Geneest {value} munt",

    -- Room chances
    AngelDevilChance = "{value}% Duivel/Engel Kamer kans",
    DevilChance = "{value}% Duivel Kamer kans",
    AngelChance = "{value}% Engel Kamer kans",
    PlanetariumChance = "{value}% Planeetarium kans",

    -- Pickups / Spawns
    Coin = "{value} Munt",
    Bomb = "{value} Bom",
    Key = "{value} Sleutel",
    CoinBombKey = "{value} {{Coin}} munt, {{Bomb}} bom en {{Key}} sleutel",
    -- Dynamic Spawns
    Spawns = {
        RandomPickup = "Genereert {value} willekeurige pickup",
        RandomTrinket = "Genereert {value} willekeurige sieraad",
        RandomHeart = "Genereert {value} willekeurig hart",
        RedHeart = "Genereert {value} Rood Hart",
        SoulHeart = "Genereert {value} Ziel Hart",
        BlackHeart = "Genereert {value} Zwart Hart",
        BoneHeart = "Genereert {value} Bot Hart",
        Bomb = "Genereert {value} bom",
        Key = "Genereert {value} sleutel",
        Coin = "Genereert {value} munt",
        RandomCoin = "Genereert {value} willekeurige munt",
        Card = "Genereert {value} kaart",
        Pill = "Genereert {value} pil",
        Rune = "Genereert {value} rune",
        Battery = "Genereert {value} batterij",
        BlueFly = "Genereert {value} blauwe vlieg",
        BlueSpider = "Genereert {value} blauwe spin",
    },
    -- Permanent Tear Effects
    TearEffect = {
        Homing = "Gerichte tranen",
        Spectral = "Spookachtige tranen",
        Piercing = "Doordringende tranen",
        Poison = "{{Poison}} Vergiftigde tranen",
    },
    -- Familiars
    FlyOrbital = "{value} vlieg orbitaal",
    Orbital = "Orbitaal",
    BlockProjectiles = "Blokkeert vijandelijke projectielen",
    DamagePerTear = "Doet {value} schade per traan",
    DamagePerShot = "Doet {value} schade per schot",
    DamagePerSecond = "Doet {value} schade per seconde",
    ContactDamagePerSecond = "Doet {value} contact schade per seconde",
    MimicMovement = "Spiegelt Isaacs beweging met een {value} seconde vertraging",
    -- Player
    CantShoot = "Isaac kan niet schieten",
    PlayerContactDamage = "Isaac doet {value} contact schade per seconde",
    DamageToAllEnemies = "Doet {value} schade aan alle vijanden",
    -- Misc
    LeftEye = "Ontvang voor het linker oog:",
    RightEye = "Ontvang voor het rechter oog:",
    RoomEffect = "{{Timer}} Ontvang voor de kamer:",
    TimedEffect = "{{Timer}} Ontvang voor {value} seconden:",
    OnUseEffect = "Bij gebruik:",
    HeldEffect = "Terwijl vastgehouden:",
    MaxLuck = "{{Luck}} Max.({max}%) bij {value} Geluk",
    SingleUseInfo = "{{Warning}} EENMALIG GEBRUIK {{Warning}}",
    NoEffect = "Geen effect",
    FullMapping = {
        BaseDesc = "{{Timer}} Volledige kaart effect voor de vloer {exception}",
        Exception = "(behalve {{SuperSecretRoom}} Super Geheime Kamer)"
    }
}

---------- Collectibles ----------
local C_ID = "5.100."
EID.descriptions[languageCode].AdditionalInformations = {
[C_ID .. 5] = "Isaac's tranen krijgen een boomerang effect", -- My Reflection
[C_ID .. 8] = "Vuurt normale tranen af", -- Brother Bobby
[C_ID .. 9] = "Alle vliegvijanden zijn vriendelijk", -- Skatole
[C_ID .. 11] = "Isaac komt weer tot leven met volle gezondheid", -- 1up!
[C_ID .. 13] = "{{Poison}} Het aanraken van vijanden vergiftigd ze#{{BlackHeart}} Vergiftigde vijanden kunnen Zwarte Harten laten vallen", -- The Virus
[C_ID .. 21] = "Reveals icons on the map: Onthult plaatjes op de kaart#Geeft de indeling van de kaart niet weer", -- The Compass
[C_ID .. 33] = "Geeft vlucht voor de huidige kamer#{{MomsHeart}} Doodt mama's voet en mama's hart onmiddellijk#{{Warning}} Doodt Isaac wanneer gebruikt op Satan", -- The Bible
[C_ID .. 36] = "Plaatst één poep en slaat vijanden terug#Kan naast een kuil worden geplaatst en worden vernietigd met een bom om een brug te maken", -- The Poop
[C_ID .. 38] = "Vuurt 10 tranen af in een cirkel rond Isaac#De tranen hebben dezelfde traaneffecten als Isaac, plus 25 schade", -- Tammy's Head
[C_ID .. 39] = "Bevriest alle vijanden in de huidige kamer gedurende 4 seconden", -- Mom's Bra
[C_ID .. 40] = "Veroorzaakt een explosie waar Isaac is#Doet {VAR:1}  schade toe", -- Kamikaze!
[C_ID .. 41] = "{{Fear}} Maakt alle vijanden bang in de huidige kamer gedurende 5 seconden", -- Mom's Pad
[C_ID .. 42] = "Door de item the gebruiken en in een bepaalde richting te schieten, wordt het hoofd gegooid#{{Poison}} Het hoofd explodeert waar het landt en vergiftigt vijanden die in de ontploffing terecht komen", -- Bob's Rotten Head
[C_ID .. 44] = "Teleporteert Isaac naar een willekeurige kamer behalve de I AM ERROR-kamer", -- Teleport!
[C_ID .. 46] = "+8% kans op een beloning na een kamer#Betere kans om te winnen bij gokken", -- Lucky Foot
[C_ID .. 47] = "{{Collectible168}} Bij gebruikt, begint met het richten van een vizier#Een raket landt na 1.5 seconde op het vizier#Doet 20x schade", -- Doctor's Remote
[C_ID .. 49] = "Als je de item gebruikt en in een bepaalde richting schiet, wordt er een Brimstone Laser met hoge schade afgevuurd", -- Shoop da Whoop!
[C_ID .. 52] = "{{Bomb}} Isaac schiet bommen in plaats van tranen#Elke bom richt 5x schade + 30 aan", -- Dr. Fetus
[C_ID .. 53] = "Isaac trekt items aan die op de grond liggen", -- Magneto
[C_ID .. 54] = "Onthult de vloerindeling#Laat geen plaatjes zien", -- Treasure Map
[C_ID .. 56] = "Morst een plas van limonade#De limonade doet 24 contact schade per seconden", -- Lemon Mishap
[C_ID .. 57] = "Vlieg orbitaal op lange afstand", -- Distant Admiration
[C_ID .. 60] = "Laat Isaac opening van 1 tegel overbruggen", -- The Ladder
[C_ID .. 62] = "{{HalfHeart}} Het doden van 13 vijanden geneest een half hart", -- Charm of the Vampire
[C_ID .. 63] = "Actieve items kunnen twee keer worden opgeladen en twee keer achter elkaar worden gebruikt", -- The Battery
[C_ID .. 64] = "{{Shop}} Winkel Items kosten 50% minder#Als je twee Steam Uitverkoop items bezit, zijn alle betaalde artikelen gratis", -- Steam Sale
[C_ID .. 65] = "Plaatst 6 troll-bommen in het midden van de kamer", -- Anarchist Cookbook
[C_ID .. 66] = "{{Slow}} Vertraagt vijanden gedurende 8 seconden", -- The Hourglass
[C_ID .. 67] = "Schiet normale tranen", -- Sister Maggy
[C_ID .. 68] = "Isaac vuurt lasers af in plaats van tranen", -- Technology
[C_ID .. 69] = "{{Chargeable}} Oplaadbare tranen#↑ {{Damage}} Volledig opgeladen tranen richten 400% schade aan#↓ {{Tears}} Tranen omlaag", -- Chocolate Milk
[C_ID .. 73] = "LVL1: Orbitaal#LVL2: Schietend Orbitaal#LVL3: Vlees Jongen LVL1#LVL4: Vlees Jongen LVL2", -- Cube of Meat
[C_ID .. 75] = "{{Pill}} Verandert slechte pillen in goede pillen#{{BloodDonationMachine}} Bloeddonatiemachines en {{Collectible135}} IV zak geven meer munten", -- PHD
[C_ID .. 76] = "{{SecretRoom}} Opent alle ingangen van geheime kamers", -- X-Ray Vision
[C_ID .. 78] = "Hogere Horseman boss kans wanneer gebruikt", -- Book of Revelations
[C_ID .. 81] = "Kom weer tot leven met 1 Rood Hartje#{{Warning}} Haalt alle Hart containers weg behalve 1", -- Dead Cat
[C_ID .. 83] = "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}{{IND}}Isaac kan rotsen vernietigen door er tegenaan te lopen", -- The Nail
[C_ID .. 84] = "Opent een luik naar de volgende vloer#{{LadderRoom}} 10% kans om een kruipruimte luik te openen", -- We Need To Go Deeper!
[C_ID .. 86] = "Monstro valt op een vijand en brengt 120 schade aan#{{Warning}} Monstro valt op Isaac als de kamer geen vijanden heeft", -- Monstro's Tooth
[C_ID .. 88] = "Schiet vooruit in de richting die Isaac schiet", -- Little Chubby
[C_ID .. 91] = "Onthult de kamertype van aangrenzend kamers#{{SecretRoom}} Kan geheime en supergeheim kamers onthullen", -- Spelunker Hat
[C_ID .. 93] = "{VAR:TIMEDEFFECT}#{{IND}}{{HalfHeart}} Het doden van 2 vijanden vult half een hartje aan#{{IND}}{{Fear}} Maakt alle vijanden in de kamer bang", -- The Gamekid
[C_ID .. 94] = "{{Coin}} Laat elke 2 kamers een willekeurige munt vallen", -- Sack of Pennies
[C_ID .. 95] = "Schiet lasers", -- Robo-Baby
[C_ID .. 96] = "{{HalfHeart}} Laat elke 3 kamers half een hartje vallen", -- Little C.H.A.D.
[C_ID .. 99] = "{{Slow}} Verslomende tranen", -- Little Gish
[C_ID .. 100] = "Schiet gerichte tranen", -- Little Steven
[C_ID .. 104] = "Tranen worden in twee gesplit bij contact#Gesplitste tranen doen halve schade aan", -- The Parasite
[C_ID .. 105] = "Her rolt voetstukitems in de huidige kamer", -- The D6
[C_ID .. 107] = "{VAR:ROOMEFFECT}#{{IND}}Isaac's lichaam scheidt van zijn hoofd en valt vijanden aan met {VAR:1} contactschade per seconde", -- The Pinking Shears
[C_ID .. 108] = "Vermindert alle schade tot een half hartje", -- The Wafer
[C_ID .. 109] = "↑ {{Damage}} +0.04 Schade omhoog voor iedere {{Coin}}munt die Isaac heeft", -- Money = Power
[C_ID .. 111] = "{{Poison}} Schat een gifwolk#Het gif doet 6 keer de schade van Isaac", -- The Bean
[C_ID .. 112] = "Versnelt alle andere orbitalen", -- Guardian Angel
[C_ID .. 113] = "Schiet vijanden neer die dicht bij Isaac komen", -- Demon Baby
[C_ID .. 114] = "Isaac's tranen worden vervangen door een mes#Het mes doet 2x de schade van Isaac tijdens het vastgehouden en 6x schade op de verste mogelijke afstand", -- Mom's Knife
[C_ID .. 116] = "Laadt automatisch de eerste balk van actieve items#{{Battery}} Laadt het huidige actieve item volledig op", -- 9 Volt
[C_ID .. 117] = "Als Isaac geraakt wordt komt er een vogel ", -- Dead Bird
[C_ID .. 122] = "Wanneer op een half rood hart of minder:#{VAR:EFFECTLIST}", -- Whore of Babylon
[C_ID .. 123] = "Creëert een willekeurige monster die Isaac helpt", -- Monster Manual
[C_ID .. 124] = "Activeert een willekeurig actief item effect", -- Dead Sea Scrolls
[C_ID .. 125] = "Gerichte Bommen", -- Bobby-Bomb
[C_ID .. 126] = "↑ {{Damage}} +1.2 Schade omhoog voor de huidige kamer#{{Warning}} Doet 1 hart van schade aan Isaac#Verwijdert eerst Rode Hartjes", -- Razor Blade
[C_ID .. 127] = "Herolt en herstart de hele vloer", -- Forget Me Now
[C_ID .. 128] = "Lange afstand vlieg orbitaal", -- Forever Alone
[C_ID .. 130] = "Verleent vlucht terwijl het vastgehouden is#{{Speed}} Stelt Isaac's snelheid op tenminste 1.5#Gebruik van de item stuurt Isaac in de richting die Isaac beweegt met hoge snelheid", -- A Pony
[C_ID .. 131] = "{{Bomb}} Geeft een bom elke 2-3 kamers", -- Bomb Bag
[C_ID .. 132] = "{{Damage}} Tranen doen meer schade hoe verder ze gaan", -- A Lump of Coal
[C_ID .. 133] = "Maakt van 1 Rood Hart container 3 Ziel Hartjes", -- Guppy's Paw
[C_ID .. 134] = "{{Chest}} 33% kans om de kamer beloning the vervangen met een kist#33% kans om geen kamer beloning te geven", -- Guppy's Tail
[C_ID .. 135] = "Doet half een hartje schade en geeft 1-3 munten#{{Player14}} Geeft 0-1 munten als de Keeper", -- IV Bag
[C_ID .. 136] = "Plaatst een dummy Isaac die vijanden aan trekt en explodeert na 5 seconden", -- Best Friend
[C_ID .. 137] = "Isaac's bommen exploderen niet meer automatisch#Bij gebruik van de item exploderen alle bommen tegelijk", -- Remote Detonator
[C_ID .. 139] = "{{Trinket}} Isaac kan 2 sieraden vasthouden", -- Mom's Purse
[C_ID .. 140] = "{{Poison}} Isaac's bommen vergiftigen vijand die geraakt worden", -- Bob's Curse
[C_ID .. 142] = "{{SoulHeart}} Isaac krijgt 1 Ziel Hart wanneer hij nog maar een halve Rode Hart heeft#Kan maar één keer per kamer gebeuren#Uit en in de kamer gaan kan het effect nog een keer veroorzaken", -- Scapular
[C_ID .. 144] = "{{Coin}} Raapt munten op een geeft willekeurige items terug", -- Bum Friend
[C_ID .. 147] = "Isaac kan stenen en ingangen van geheime kamers breken door er tegen aan te lopen", -- Notched Axe
[C_ID .. 149] = "Isaac's tranen worden afgevuurd in een boog#{{Poison}} De tranen exploderen en vergiftigen vijanden waar ze landen", -- Ipecac
[C_ID .. 151] = "Het raken van een vijand met een traan heeft 1/6 kans om een vlieg te geven", -- The Mulligan
[C_ID .. 152] = "Vervangt de tranen van Isaac's rechter oog met een laser#Laser doet 3x Isaac's schade", -- Technology 2
[C_ID .. 155] = "Vliegt rond de kamer", -- The Peeper
[C_ID .. 156] = "{{Battery}} Het nemen van schade geeft 1 lading voor het actieve Item", -- Habit
[C_ID .. 157] = "↑ {{Damage}} Het krijgen van schaden geeft Schade omhoog#Kan voor 6 keer per vloer#Duurt voor de hele vloer", -- Bloody Lust
[C_ID .. 158] = "Spawnt een {{SoulHeart}} Soul Heart, {{Rune}} rune of {{Card}} kaart#{VAR:EFFECTLIST}", -- Crystal Ball
[C_ID .. 160] = "Creëert 5 stralen van licht vlak bij vijanden#Doet Isaac's schade + 20", -- Crack the Sky
[C_ID .. 161] = "{{Player4}} Kom tot leven als ??? (Blauwe Baby) wanner Isaac sterft", -- Ankh
[C_ID .. 163] = "Volgeling met spookachtige tranen", -- Ghost Baby
[C_ID .. 164] = "Gooit een blauwe vlam#De vlam doet contact schade, blokkeert vijandelijke tranen, en gaat weg na 2 seconden", -- The Candle
[C_ID .. 166] = "Herolt alle oppakbare items in de kamer", -- D20
[C_ID .. 167] = "Schiet twee tranen in een v-patroon", -- Harlequin Baby
[C_ID .. 168] = "In plaats van tranen, schiet Isaac een vizier#Een raket landt op het vizier na 1.5 seconden#Raketten doen 20 keer Isaac's schade", -- Epic Fetus
[C_ID .. 170] = "Stampt op willekeurige vijanden", -- Daddy Longlegs
[C_ID .. 171] = "{{Slow}} Versloomt vijanden voor 4 seconden", -- Spider Butt
[C_ID .. 174] = "Schiet willekeurige tranen", -- Rainbow Baby
[C_ID .. 175] = "Opent alle deuren in de kamer, ook {{SecretRoom}}{{SuperSecretRoom}}Geheime Kamers, {{ChallengeRoom}}{{BossRushRoom}}Uitdaging Kamers, en de Mega Satan Deur", -- Dad's Key
[C_ID .. 177] = "Een draagbaar gokautomaat#Gebruik 1 munt om kans te krijgen op een willekeurig oppakbare item", -- Portable Slot
[C_ID .. 178] = "Bij het nemen van schade komt er een plas van heilig water#Het heilige water doet 24 schade per seconde", -- Holy Water
[C_ID .. 180] = "Isaac laat een scheet wanneer hij wordt aangeraakt", -- The Black Bean
[C_ID .. 181] = "Geeft vlucht wanneer vastgehouden#{{Speed}} Zet Isaacs snelheid op tenminste 1.5#Het gebruiken van de Item schiet Isaac de richting op die hij bewoog en laat een straal van licht achter", -- White Pony
[C_ID .. 186] = "{{Warning}} Doet 1 hart schade tegen Isaac#Haalt eerst Rode Harten weg", -- Blood Rights
[C_ID .. 187] = "Bewegen swingt de haarbal vooruit#De bal wordt groter wanneer het vijanden dood#De bal doet meer schade hoe groter het is", -- Guppy's Hairball
[C_ID .. 188] = "Spiegelt Isaac's bewegingen#Schiet richting Isaac", -- Abel
[C_ID .. 191] = "Isaac's tranen krijgen een willekeurig effect elke 2-3 seconden", -- 3 Dollar Bill
[C_ID .. 198] = "Geeft 1 oppakbaar item van elke type", -- Box
[C_ID .. 199] = "Kisten geven meer oppakbare items", -- Mom's Key
[C_ID .. 202] = "Het aanraken van vijanden verandert ze in goud#Isaac doet contact schade gebaseerd op hoeveel munten hij heeft#{{Coin}} Het doden van en gouden vijand geeft munten#Poep de geplaatst is door Isaac heeft een kans om gouden poep te zijn", -- Midas' Touch

--------------
-- TODO: Continue translating after entry 202. Also validate current translations
--------------
}

-- the ItemReminder description will predict the abilities of items with a header like "Item Name Result"
EID.descriptions[languageCode].ItemReminder = {
	ResultHeader = " Resultat",
}
