-- This file contains text elements that are used for the modular description system.
local languageCode = "el_gr"
EID.descriptions[languageCode].AdditionalInformations = {}

-- List of description IDs to ignore for fully automated descriptions
EID.descriptions[languageCode].IgnoreFullyAutomatedDescriptions = {}

---------- Modular Descriptions ----------
-- Table containing basic sentences and templates used to generate basic descriptions

-----------------------------------------------------------------
--- Translator TODO: Please verify correctness of translations and add potential pluralizations
-----------------------------------------------------------------
EID.descriptions[languageCode].ModularDescriptions = {
    -- Player Stats
    TearsMultiplier = "{value} Δάκρυα",
    Tears = "{value} Δάκρυα",
    TearHeight = "{value} Ύψος δακρύων",
    TearSizeMultiplier = "{value} Μέγεθος δακρύων",
    TearSize = "{value} Μέγεθος δακρύων",
    TearDelayMultiplier = "{value} Καθυστέρηση δακρύων",
    TearDelay = "{value} Καθυστέρηση δακρύων",
    FireRateMultiplier = "{value} Ρυθμός πυροδότησης",
    FireRate = "{value} Ρυθμός πυροδότησης",
    DamageMultiplier = "{value} Ζημιά",
    Damage = "{value} Ζημιά",
	DamageTemp = "{value} Ζημιά (προσωρινά)", -- For Temp Binge Eater buffs
    BombDamage = "{value} Ζημιά βόμβας",
    Speed = "{value} Ταχύτητα",
    RangeMultiplier = "{value} Έκταση δακρύων",
    Range = "{value} Έκταση δακρύων",
    Luck = "{value} Τύχη",
    ShotSpeedMultiplier = "{value} Ταχύτητα δακρύων",
    ShotSpeed = "{value} Ταχύτητα δακρύων",
    Life = "{value} Ζωή",
    SizeUp = "Αύξηση μεγέθους",
    SizeDown = "Μείωση μεγέθους",
    Flight = "Πτήση",
    Invincibility = "Αθανασία",
    RandomStatUp = "↑ Αυξάνει τυχαία {value} στατιστικό",
    RandomStatDown = "↓ Μειώνει τυχαία {value} στατιστικό",

    -- Health related
    RedHeart = "{value} Κόκκινη Καρδιά",
    SoulHeart = "{value} Ψυχική Καρδιά",
    BlackHeart = "{value} Μαύρη Καρδιά",
    BoneHeart = "{value} Κοκαλένια Καρδιά",
    EternalHeart = "{value} Αιώνια Καρδιά",
    GoldenHeart = "{value} Χρυσή Καρδιά",
    RottenHeart = "{value} Σάπια Καρδιά",
    BrokenHeart = "{value} Σπασμένη Καρδιά",
    EmptyHeart = "{value} Κενό δοχείο καρδιάς",
    FullHealth = "Πλήρης υγεία",
    HealingRed = "Θεραπεύει {value} καρδιά",
	CoinHeart = "{value} Νομισματική Καρδιά",
	EmptyCoinHeart = "{value} Άδεια Καρδιά σε Κέρμα",
	HealingCoin = "Θεραπεύει {value} νόμισμα",

    -- Room chances
    AngelDevilChance = "{value}% πιθανότητα για Διαβολικό/Αγγελικό δωμάτιο",
    DevilChance = "{value}% πιθανότητα για Διαβολικό δωμάτιο",
    AngelChance = "{value}% πιθανότητα για Αγγελικό δωμάτιο",
    PlanetariumChance = "{value}% πιθανότητα για Πλανητάριο",

    -- Pickups / Spawns
    Coin = "{value} Κέρμα",
    Bomb = "{value} Βόμβα",
    Key = "{value} Κλειδί",
    CoinBombKey = "{value} {{Coin}} κέρμα, {{Bomb}} βόμβα και {{Key}} κλειδί",
    -- Dynamic Spawns
    Spawns = {
        RandomPickup = "Δημιουργεί {value} τυχαίο αντικείμενο",
        RandomTrinket = "Δημιουργεί {value} τυχαίο μπιχλιμπίδι",
        RandomHeart = "Δημιουργεί {value} τυχαία καρδιά",
        RedHeart = "Δημιουργεί {value} Κόκκινη καρδιά",
        SoulHeart = "Δημιουργεί {value} Ψυχική καρδιά",
        BlackHeart = "Δημιουργεί {value} Μαύρη καρδιά",
        BoneHeart = "Δημιουργεί {value} Κοκαλένια καρδιά",
        Bomb = "Δημιουργεί {value} βόμβα",
        Key = "Δημιουργεί {value} κλειδί",
        Coin = "Δημιουργεί {value} κέρμα",
        RandomCoin = "Δημιουργεί {value} τυχαίο κέρμα",
        Card = "Δημιουργεί {value} κάρτα",
        Pill = "Δημιουργεί {value} χάπι",
        Rune = "Δημιουργεί {value} ρουνά",
        Battery = "Δημιουργεί {value} μπαταρία",
        BlueFly = "Δημιουργεί {value} μπλε μύγα",
        BlueSpider = "Δημιουργεί {value} μπλε αράχνη",
    },
    -- Permanent Tear Effects
    TearEffect = {
        Homing = "Κατευθυνόμενα δάκρυα",
        Spectral = "Φασματικά δάκρυα",
        Piercing = "Διεισδυτικά δάκρυα",
        Poison = "{{Poison}} Δηλητηριώδη δάκρυα",
    },
    -- Familiars
    FlyOrbital = "{value} τροχιακή μύγα",
    Orbital = "Τροχιακός σύντροφος",
    BlockProjectiles = "Αποκρούει εχθρικά βλήματα",
    DamagePerTear = "Προκαλεί {value} ζημιά ανά δάκρυ",
    DamagePerShot = "Προκαλεί {value} ζημιά ανά βολή",
    DamagePerSecond = "Προκαλεί {value} ζημιά ανά δευτερόλεπτο",
    ContactDamagePerSecond = "Δίνει {value} επαφική ζημιά ανά δευτερόλεπτο",
    MimicMovement = "Μιμείται την κίνηση του Isaac με καθυστέρηση {value} δευτερολέπτων",
    -- Player
    CantShoot = "Ο Isaac δεν μπορεί να πυροβολήσει",
    PlayerContactDamage = "Ο Isaac δίνει {value} επαφική ζημιά ανά δευτερόλεπτο",
    DamageToAllEnemies = "Προκαλεί {value} ζημιά σε όλους τους εχθρούς",
    -- Misc
    LeftEye = "Δίνει για το αριστερό μάτι:",
    RightEye = "Δίνει για το δεξί μάτι:",
    RoomEffect = "{{Timer}} Δίνει για το δωμάτιο:",
    TimedEffect = "{{Timer}} Δίνει για {value} δευτερόλεπτα:",
    OnUseEffect = "Κατά τη χρήση:",
    HeldEffect = "Όταν κρατιέται:",
    MaxLuck = "{{Luck}} Μέγ.({max}%) με {value} τύχη",
    SingleUseInfo = "{{Warning}} ΜΙΑ ΧΡΗΣΗ {{Warning}}",
    NoEffect = "Κανένα αποτέλεσμα",
    FullMapping = {
        BaseDesc = "{{Timer}} Πλήρης χαρτογράφηση ορόφου {exception}",
        Exception = "(εκτός από {{SuperSecretRoom}} Σούπερ Μυστικό Δωμάτιο)"
    }
}

