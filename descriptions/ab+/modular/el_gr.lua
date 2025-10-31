-- This file contains text elements that are used for the modular description system.
-- Each entry corresponds to a specific item and will be appended to the modular item's description in combination 
-- with the generated description parts based on the item stats and effects defined in the "item_data.lua" file.

-- The following entries are automatically extracted from the original description files.
-- As a referenence, you can find comments with the expected english text below them.
-- The automatic fill is done by taking the "old" translated text from your translation file, and trying to match it to the
-- english text and its structure. If the match was not successful, it will also adds the full original translated description ("Full old Desc: ...")
-- To check for any mistakes, you can compare the english expected text and the original translation with the text inside the entry and adjust it if nessesary.

---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 5] = "↑ +1 Ύψος δακρύων", -- My Reflection
	-- Full old Desc: "Τα δάκρυα του Ισαάκ λειτουργούν ως μπούμερανγκ#↑ {{Range}} +1.5 Έκταση δακρύων#↑ {{Shotspeed}} +0.6 Ταχύτητα δακρύων#↑ +1 Ύψος δακρύων"
	-- English: "Tears get a boomerang effect"

	[C_ID .. 8] = "Ρίχνει κανονικά δάκρυα", -- Brother Bobby
	-- Full old Desc: "Ρίχνει κανονικά δάκρυα#Κάνει 3.5 ζημιά με κάθε δάκρυ"
	-- English: "Shoots normal tears"

	[C_ID .. 9] = "Όλες οι εχθρικές μύγες είναι φιλικές", -- Skatole
	-- English: "All fly enemies are friendly"

	[C_ID .. 11] = "Επανέρχεσε με γεμάτες καρδιές", -- 1up!
	-- Full old Desc: "↑ +1 ζωή#Επανέρχεσε με γεμάτες καρδιές"
	-- English: "Isaac respawns with full health on death"

	[C_ID .. 13] = "{{BlackHeart}} Δηλητιριασμένοι εχθροί μπορούν να αφήσουν Μαύρες Καρδιές", -- The Virus
	-- Full old Desc: "{{Poison}} Αγγίζοντας εχθρούς τους δηλητηριάζεις#↓ {{Speed}} -0.1 Λιγότερη ταχύτητα#{{BlackHeart}} Δηλητιριασμένοι εχθροί μπορούν να αφήσουν Μαύρες Καρδιές"
	-- English: "{{Poison}} Touching enemies poisons them#{{BlackHeart}} Poisoned enemies can drop Black Hearts"

	[C_ID .. 21] = "Εμφανίζει εικονίδια στον χάρτη#Δεν εμφανίζει το σχήμα του χώρου", -- The Compass
	-- English: "Reveals icons on the map#Does not reveal the layout of the map"

	[C_ID .. 33] = "Επιτρέπει πτήση για το δωμάτιο#{{MomsHeart}} Σκοτώνει το πόδι και την καρδιά της Μαμάς#{{Warning}} Σκοτώνει τον Ισαάκ όταν χρησιμοποιηθεί στον Σατανά", -- The Bible
	-- English: "{{Timer}} Flight for the room#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[C_ID .. 36] = "Εμφανίζει ένα σκατό και απωθεί εχθρούς#Μπορεί να χρησιμοποιηθεί δίπλα σε λάκκο και να καταστραφεί με μία βόμβα για να δημιουργήσει γέφυρα", -- The Poop
	-- English: "Spawns one poop and knocks back enemies#Can be placed next to a pit and destroyed with a bomb to make a bridge"

	[C_ID .. 38] = "Ρίχνει 10 δάκρυα σε έναν κύκλο γύρο από τον Ισαάκ#Τα δάκρυα αντιγράφουν τα εφέ των δακρύον του Ισαάκ και κάνουν 25 επιπλέον ζημία", -- Tammy's Head
	-- English: "Shoots 10 tears in a circle around Isaac#The tears copy Isaac's tear effects, plus 25 damage"

	[C_ID .. 39] = "Παγώνει όλους τους εχθρούς στο δωμάτιο για 4 δευτερόλεπτα", -- Mom's Bra
	-- English: "{{Petrify}} Petrifies all enemies in the room for 4 seconds"

	[C_ID .. 40] = "Προκαλεί έκρηξη στην τοποθεσία του Ισαάκ", -- Kamikaze!
	-- Full old Desc: "Προκαλεί έκρηξη στην τοποθεσία του Ισαάκ#Κάνει 40 ζημιά"
	-- English: "Causes an explosion at Isaac's location#Deals {VAR:1} damage"

	[C_ID .. 41] = "{{Fear}} Φοβίζει all όλους τους εχθρούς στο δωμάτιο για 5 δευτερόλεπτα", -- Mom's Pad
	-- English: "{{Fear}} Fears all enemies in the room for 5 seconds"

	[C_ID .. 42] = "Χρησιμοποιώντας το αντικείμενο και πυροβολώντας σε μία κατεύθυνση ρίχνεις το κεφάλι#{{Poison}} Το κεφάλι εκρήγνυται εκεί που προσγειώνεται και δηλητιριάζει εχθρούς που βρέθηκαν στην έκρηξη", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes on impact and poisons enemies"

	[C_ID .. 44] = "Τηλεμεταφέρει τον Ισαάκ σε ένα τυχαίο δωμάτιο εκτός από το δωμάτιο 'ΕΙΜΑΙ ΣΦΑΛΜΑ'", -- Teleport!
	-- English: "Teleports Isaac into a random room, except I AM ERROR rooms"

	[C_ID .. 46] = "+8% πιθανότητα για ανταμοιβή στην ολοκλήρωση δωματίων#Καλύτερες πιθανότητες να κερδίσεις όταν παίζεις τζόγο", -- Lucky Foot
	-- Full old Desc: "↑ {{Luck}} +1 Περισσότερη τύχη#+8% πιθανότητα για ανταμοιβή στην ολοκλήρωση δωματίων#Καλύτερες πιθανότητες να κερδίσεις όταν παίζεις τζόγο"
	-- English: "+8% room clear reward chance#Better chance to win while gambling"

	[C_ID .. 47] = "{{Collectible168}} Όταν χρησιμοποιηθεί, άρχισε να στοχεύεις ένα σταυρόνημα#Μία ρουκέτα προσγειώνεται στο σταυρόνημα μετά από 1.5 δευτερόλεπτα#Κάνει 20x ζημιά", -- Doctor's Remote
	-- English: "{{Collectible168}} On use, start aiming a crosshair#A missile lands on the crosshair after 1.5 seconds#It deals 20x Isaac's damage"

	[C_ID .. 49] = "Χρησιμοποιώντας το αντικείμενο και και πυροβολώντας σε μία κατεύθυνση ρίχνεις ένα λέιζερ Θειάφισμα μεγάλης ζημίας", -- Shoop da Whoop!
	-- Full old Desc: "Χρησιμοποιώντας το αντικείμενο και και πυροβολώντας σε μία κατεύθυνση ρίχνεις ένα λέιζερ Θειάφισμα μεγάλης ζημίας"
	-- English: "The next shot is replaced with a beam#It deals {VAR:1}x Isaac's damage over {VAR:2} seconds"

	[C_ID .. 52] = "↓ {{Tears}} Καθυστέρηση δακρύων x 2.5", -- Dr. Fetus
	-- Full old Desc: "{{Bomb}} Ο Ισαάκ ρίχνει βόμβες αντί για δάκρυα#Κάθε βόμβα κάνει 5x ζημιά + 30#↓ {{Tears}} Καθυστέρηση δακρύων x 2.5"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 5x Isaac's damage + 30"

	[C_ID .. 53] = "Αντικείμενα προσελκύονται στον Ισαάκ", -- Magneto
	-- English: "Pickups are attracted to Isaac"

	[C_ID .. 54] = "Εμφανίζει το σχήμα του χώρου#Δεν εμφανίζει εικονίδια αντικείμενο", -- Treasure Map
	-- English: "Reveals the floor layout#Does not reveal room icons"

	[C_ID .. 56] = "Χύνει μία πισίνα ερπυσμού#Ο ερπυσμός κάνει 24 ζημία ανά δευτερόλεπτο", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 57] = "Μεσαίας-απόστασης τροχιακή μύγα", -- Distant Admiration
	-- Full old Desc: "Μεσαίας-απόστασης τροχιακή μύγα#Κάνει 75 ζημιά ανά δευτερόλεπτο"
	-- English: "Mid-range fly orbital"

	[C_ID .. 60] = "Επιτρέπει στον Ισαάκ να διασχίσει χάσματα", -- The Ladder
	-- English: "Allows Isaac to cross 1-tile gaps"

	[C_ID .. 62] = "{{HalfHeart}} Σκοτώνοντας 13 εχθρούς θεραπεύεις μισή καρδιά", -- Charm of the Vampire
	-- English: "{{HealingRed}} Killing 13 enemies heals half a heart"

	[C_ID .. 63] = "Ενεργά αντικείμενα μπορούν να φορτιστούν διπλά και να χρησιμοποιηθούν δύο φορές συνεχόμενα", -- The Battery
	-- English: "{{Battery}} Active items can be overcharged to two full charges"

	[C_ID .. 64] = "{{Shop}} Αντικείμενα σε πώληση κοστίζουν 50% λιγότερο#Κατέχοντας δύο Προσφορές Steam όλα τα αντικείμενα σε πώληση γίνονται δωρεάν", -- Steam Sale
	-- English: "{{Shop}} Shop items cost 50% less"

	[C_ID .. 65] = "Εμφανίζει 6 βόμβες τρολ κοντά στο κέντρο του δωματίου", -- Anarchist Cookbook
	-- English: "Spawns 6 Troll Bombs near the center of the room"

	[C_ID .. 66] = "{{Slow}} Επιβραδύνει εχθρούς για 8 δευτερόλεπτα", -- The Hourglass
	-- English: "{{Slow}} Slows enemies down for 8 seconds"

	[C_ID .. 67] = "Ρίχνει κανονικά δάκρυα", -- Sister Maggy
	-- Full old Desc: "Ρίχνει κανονικά δάκρυα#Κάνει 3.5 ζημιά με κάθε δάκρυο"
	-- English: "Shoots normal tears"

	[C_ID .. 68] = "Ο Ισαάκ ρίχνει λέιζερ αντί για δάκρυα", -- Technology
	-- English: "Isaac shoots lasers instead of tears"

	[C_ID .. 69] = "{{Chargeable}} Δάκρυα που φορτίζονται#↑ {{Damage}} Απολύτως φορτισμένα δάκρυα κάνουν 400% ζημία#↓ {{Tears}} Λιγότερα δάκρυα", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x#{{Tears}} Max charge time is 2.5x tear delay"

	[C_ID .. 71] = "↑ Συρρίκνωση", -- Mini Mush
	-- Full old Desc: "↑ {{Speed}} +0.3 Περισσότερη ταχύτητα#↓ {{Range}} -4.25 Έκταση δακρύων*#↑ +1.5 Ύψος δακρύων*#(*και τα δύο αθροίζουν σε μικρή αύξηση της έκτασης)#↑ Συρρίκνωση"
	-- English: "The tear height up and range down = slight range up"

	[C_ID .. 73] = "LVL1: Τροχιακός#LVL2: Τροχιακός που πυροβολεί#LVL3: Αγόρι Κρέατος LVL1#LVL4: Αγόρι Κρέατος LVL2", -- Cube of Meat
	-- English: "Lv1: Orbital#Lv2: Shooting orbital#Lv3: Meat Boy#Lv4: Super Meat Boy"

	[C_ID .. 75] = "{{Blood Donation Machine}} Μηχανές δωρεάς αίματος και {{Collectible135}} Η Σακούλα IV δίνουν περισσότερα κέρματα", -- PHD
	-- Full old Desc: "{{Pill}} Μετατρέπει κακά χάπια σε καλά χάπια# Εμφανίζει ένα χάπι όταν αποκτηθεί #{{Heart}} Θεραπεύει 2 Κόκκινες Καρδιές#{{Blood Donation Machine}} Μηχανές δωρεάς αίματος και {{Collectible135}} Η Σακούλα IV δίνουν περισσότερα κέρματα"
	-- English: "{{Pill}} Changes bad pills into good pills#{{BloodDonationMachine}} Blood Donation Machines give more {{Coin}} coins"

	[C_ID .. 76] = "{{SecretRoom}} Εμφανίζει όλες τις εισόδους μυστικών δωματίων", -- X-Ray Vision
	-- English: "{{SecretRoom}} Opens all secret room entrances"

	[C_ID .. 78] = "{{AngelDevilChance}} +17.5% Πιθανότητα για Διαβολικό/Αγγελικό Δωμάτιο όταν κρατιέται", -- Book of Revelations
	-- Full old Desc: "{{SoulHeart}} +1 Ψυχική Καρδιά#Μεγαλύτερη πιθανότητα για ιππέα ως αντίπαλο εάν χρησιμοποιηθεί#{{AngelDevilChance}} +17.5% Πιθανότητα για Διαβολικό/Αγγελικό Δωμάτιο όταν κρατιέται"
	-- English: "Using the item has a high chance to replace the floor's boss with a horseman"

	[C_ID .. 81] = "Ξαναεμφανίσου με 1 ζωή#↓ Αφαιρεί όλες τις Κόκκινες Καρδιές εκτός από μία", -- Dead Cat
	-- Full old Desc: "↑ +9 ζωές#Ξαναεμφανίσου με 1 ζωή#↓ Αφαιρεί όλες τις Κόκκινες Καρδιές εκτός από μία#{{Warning}} Χαρακτήρες που δεν μπορούν να έχουν Κόκκινες Καρδιές ορίζονται σε 1 Ψυχική/Μαύρη καρδιά"
	-- English: "Isaac respawns with 1 heart container on death#{{Warning}} Sets Isaac's heart containers to 1 when picked up"

	[C_ID .. 83] = "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}", -- The Nail
	-- Full old Desc: "{{SoulHeart}} +1 Ψυχική Καρδιά#↑ {{Damage}} +0.7 Περισσότερη ζημιά#↓ {{Speed}} -0.18 Λιγότερη ταχύτητα#Ο Ισαάκ προκαλεί 40 ζημία όταν αγγίζει κάποιον ανά δευτερόλεπτο#Επιτρέπει στον Ισαάκ να καταστρέψει πέτρες περπατώντας πάνω τους"
	-- English: "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#{{IND}}Allows Isaac to destroy rocks by walking into them"

	[C_ID .. 84] = "Ανοίγει καταπακτή στον επόμενο χώρο#{{LadderRoom}} 10% πιθανότητα να ανοίξει καταπακτή μικρόχωρου", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} 10% chance to open a crawlspace trapdoor"

	[C_ID .. 86] = "Ο Μονστρο πέφτει σε έναν εχθρό και κάνει 120 ζημιά#{{Warning}} Ο Μονστρο πέφτει στον Ισαάκ εάν δεν υπάρχουν εχθροί", -- Monstro's Tooth
	-- English: "Monstro falls on an enemy and deals 120 damage#{{Warning}} Monstro falls on Isaac if the room has no enemies"

	[C_ID .. 88] = "Ταξιδεύει μπροστά στην κατεύθυνση που πυροβολεί ο Ισαάκ", -- Little Chubby
	-- Full old Desc: "Ταξιδεύει μπροστά στην κατεύθυνση που πυροβολεί ο Ισαάκ#Προκαλεί 52.5 ζημία ανά δευτερόλεπτο"
	-- English: "Charges forward in the direction Isaac is shooting"

	[C_ID .. 91] = "Εμφανίζει το είδος δωματίου των γύρω δωματίων#{{SecretRoom}} Εμφανίζει μυστικά και υπερμυστικά δωμάτια", -- Spelunker Hat
	-- English: "Reveals the room type of adjacent rooms#{{SecretRoom}} Can reveal Secret and Super Secret Rooms"

	[C_ID .. 93] = "{VAR:TIMEDEFFECT}#{{Timer}} Διαρκεί για 6.5 δευτερόλεπτα", -- The Gamekid
	-- Full old Desc: "Προσφέρει αθανασία#{{Fear}} Τρομάζει όλους τους εχθρούς στο δωμάτιο#Ο Ισαάκ κάνει 40 ζημιά σε εχθρούς που αγγίζει ανά δευτερόλεπτο#{{HalfHeart}} Σκοτώνοντας 2 εχθρούς θεραπεύει μισή καρδιά#{{Timer}} Διαρκεί για 6.5 δευτερόλεπτα"
	-- English: "{VAR:TIMEDEFFECT}#{{IND}}{{HealingRed}} Killing 2 enemies heals half a heart#{{IND}}{{Fear}} Fears all enemies in the room"

	[C_ID .. 94] = "{{Coin}} Ρίχνει ένα τυχαίο νόμισμα κάθε 2 δωμάτια", -- Sack of Pennies
	-- English: "{{Coin}} Spawns a random coin every 2 rooms"

	[C_ID .. 95] = "Πυροβολεί λέιζερ", -- Robo-Baby
	-- Full old Desc: "Πυροβολεί λέιζερ#Κάνει 3.5 ζημία με κάθε λέιζερ"
	-- English: "Shoots lasers"

	[C_ID .. 96] = "{{HalfHeart}} Ρίχνει μισή καρδιά κάθει 3 δωμάτια", -- Little C.H.A.D.
	-- English: "{{HalfHeart}} Spawns a half Red Heart every 3 rooms"

	[C_ID .. 99] = "{{Slow}} Επιβραδυντικά δάκρυα", -- Little Gish
	-- Full old Desc: "{{Slow}} Επιβραδυντικά δάκρυα#Κάνει 3.5 ζημιά με κάθε βολή"
	-- English: "{{Slow}} Shoots slowing tears"

	[C_ID .. 100] = "Πυροβολεί αυτοκατευθυνόμενα δάκρυα", -- Little Steven
	-- Full old Desc: "Πυροβολεί αυτοκατευθυνόμενα δάκρυα#Κάνει 3.5 ζημιά με κάθει βολή"
	-- English: "Shoots homing tears"

	[C_ID .. 104] = "Τα δάκρυα σπάνε σε δύο όταν χτυπάνε κάτι#Αυτά τα δάκρυα κάνουν μισή ζημιά", -- The Parasite
	-- English: "Tears split in two on contact#Split tears deal half damage"

	[C_ID .. 105] = "Άλλαξε τα συλλεκτικά αντικείμενα στο δωμάτιο", -- The D6
	-- English: "Rerolls pedestal items in the room"

	[C_ID .. 107] = "{VAR:ROOMEFFECT}", -- The Pinking Shears
	-- Full old Desc: "Πτήση#Το σώμα του Ισαάκ χωρίζεται από το κεφάλι του και επιτίθεται στους εχθρούς με 82.5 ζημία όταν τους αγγίζει ανά δευτερόλεπτο"
	-- English: "{VAR:ROOMEFFECT}#{{IND}}Isaac's body separates from his head and attacks enemies with {VAR:1} contact damage per second"

	[C_ID .. 108] = "Μειώνει όλη τη ζημιά που δέχεσαι σε μισή καρδιά", -- The Wafer
	-- English: "Reduces most damage taken to half a heart"

	[C_ID .. 109] = "↑ {{Damage}} +0.04 Περισσότερη ζημιά για κάθε {{Coin}}κέρμα που έχει ο Ισαάκ", -- Money = Power
	-- English: "↑ {{Damage}} +0.04 Damage for every {{Coin}} coin Isaac has"

	[C_ID .. 111] = "{{Poison}} Κλάνει ένα δηλητηριώδες σύννεφο#Το δηλητήριο κάνει 6 φορές την ζημιά του Ισαάκ", -- The Bean
	-- English: "{{Poison}} Deals 5 damage to enemies nearby and poisons them#The poison deals Isaac's damage 6 times"

	[C_ID .. 112] = "Επιταχύνει όλους τους υπόλοιπους τροχιές", -- Guardian Angel
	-- Full old Desc: "Τροχιάς#Επιταχύνει όλους τους υπόλοιπους τροχιές#Αποκρούει εχθρικά βλήματα#Κάνει 105 ζημιά ανά δευτερόλεπτο"
	-- English: "Speeds up all other orbitals"

	[C_ID .. 113] = "Πυροβολεί σε εχθρούς που βρίσκονται κοντά του", -- Demon Baby
	-- Full old Desc: "Πυροβολεί σε εχθρούς που βρίσκονται κοντά του#Κάνει 3 ζημία ανά βολή"
	-- English: "Shoots enemies that get close to him"

	[C_ID .. 114] = "Τα δάκρυα τους Ισαάκ αντικαθίστανται από ένα μαχαίρι που ρίχνεται#Το μαχαίρι κάνει 2x την ζημιά του Ισαάκ ενώ κρατιέται και 6x ζημιά στην μεγαλύτερη δυνατή απόσταση", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and 6x at the furthest possible distance"

	[C_ID .. 116] = "Αυτόματα φορτίζει την πρώτη μπαρίτσα των ενεργών αντικειμένων#{{Battery}} Πλήρως φορτίζει το τωρινό ενεργό αντικείμενο", -- 9 Volt
	-- English: "{{Battery}} Automatically charges the first bar of active items#{{Battery}} Fully recharges the active item on pickup"

	[C_ID .. 117] = "Όταν επιτήθεσαι εμφανίζεται ένα πουλί", -- Dead Bird
	-- Full old Desc: "Όταν επιτήθεσαι εμφανίζεται ένα πουλί#Το πουλί κάνει 4 ζημία ανά δευτερόλεπτο"
	-- English: "Taking damage spawns a bird that attacks enemies"

	[C_ID .. 122] = "Όταν έχεις μόνο μισή κόκκινη καρδιά η λιγότερο:#{VAR:EFFECTLIST}", -- Whore of Babylon
	-- Full old Desc: "Όταν έχεις μόνο μισή κόκκινη καρδιά η λιγότερο:#↑ {{Damage}} +1.5 Περισσότερη ζημιά#↑ {{Speed}} +0.3 Περισσότερη ταχύτητα"
	-- English: "When on half a Red Heart or less:#{VAR:EFFECTLIST}"

	[C_ID .. 123] = "Εμφανίζει έναν τυχαίο βοηθό για το δωμάτιο", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the room"

	[C_ID .. 124] = "Χρησιμοποίησε ένα τυχαίο ενεργό αντικείμενο", -- Dead Sea Scrolls
	-- English: "Triggers a random active item effect#Chooses the effect from a fixed list of items"

	[C_ID .. 125] = "{{Bomb}} +5 Βόμβες", -- Bobby-Bomb
	-- Full old Desc: "Αυτοκατευθυνόμενες βόμβες#{{Bomb}} +5 Βόμβες"
	-- English: "Homing bombs"

	[C_ID .. 126] = "↑ {{Damage}} +1.2 Περισσότερη ζημιά για το δωμάτιο#{{Warning}} Αφαιρέι 1 καρδιά από τον Ισαάκ#Αφαίρει πρώτα Κόκκινες Καρδιές", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 127] = "Ξαναδημιουργεί και ξανααρχίζει ολόκληρο τον χώρο", -- Forget Me Now
	-- English: "Rerolls and restarts the entire floor"

	[C_ID .. 128] = "Μεγάλης-απόστασης τροχιακής μύγας", -- Forever Alone
	-- Full old Desc: "Μεγάλης-απόστασης τροχιακής μύγας#Κάνει 30 ζημιά ανά δευτερόλεπτο όταν αγγίζει εχθρούς"
	-- English: "Long range fly orbital"

	[C_ID .. 130] = "Προσφέρει πτήση ενώ κρατιέται#{{Speed}} Ορίζει την Ταχύτητα 1.5 το ελάχιστο#Χρησιμοποιώντας το αντικείμενο ο Ισαάκ τρέχει στην κατεύθυνση που κινείται", -- A Pony
	-- English: "While held:#{{Speed}} Sets your Speed to at least 1.5#Flight#Upon use, dashes in the direction of Isaac's movement"

	[C_ID .. 131] = "{{Bomb}} Αφήνει 1 ανενεργή βόμβα κάθε 2-3 δωμάτια", -- Bomb Bag
	-- English: "{{Bomb}} Spawns 1 bomb pickup every 3 rooms"

	[C_ID .. 132] = "{{Damage}} Τα δάκρυα κάνουν μεγαλύτερη ζημιά όσο πιο μακριά φτάνουν", -- A Lump of Coal
	-- English: "{{Damage}} Tears deal more damage the further they travel"

	[C_ID .. 133] = "Μετατρέπει 1 Κόκκινη καρδιά σε 3 Ψυχικές καρδιές", -- Guppy's Paw
	-- English: "{{SoulHeart}} Converts 1 heart container into 3 Soul Hearts"

	[C_ID .. 134] = "{{Chest}} 33% πιθανότητα να αντικαταστήσει την ανταμοιβή ολοκλήρωσης του δωματίου με σεντούκι#33% πιθανότητα να μην υπάρχει ανταμοιβή ολοκλήρωσης", -- Guppy's Tail
	-- English: "{{Chest}} 33% chance to replace the room clear reward with a chest#33% chance to spawn no room clear reward"

	[C_ID .. 135] = "Πληγώνει τον Ισαάκ για μισή καρδιά και εμφανίζει 1-3 κέρματα#{{Player14}} Εμφανίζει 0-1 κέρματα ως τον Keeper", -- IV Bag
	-- English: "{{Coin}} Hurts Isaac for half a heart and spawns 1-2 coins#{{Heart}} Removes Red Hearts first"

	[C_ID .. 136] = "Εμφανίζει έναν ψεύτικο Ισαάκ που προσελκύει εχθρούς και εκρήγνυται μετά από 5 δευτερόλεπτα", -- Best Friend
	-- English: "Spawns a decoy Isaac that attracts enemies and explodes after 5 seconds"

	[C_ID .. 137] = "Οι βόμβες του Ισαάκ δεν εκρήγνυνται πλέον αυτόματα#Χρησιμοποιώντας το αντικείμενο εκρήγνυνται άμεσα όλες οι βόμβες του Ισαάκ", -- Remote Detonator
	-- Full old Desc: "{{Bomb}} +5 βόμβες#Οι βόμβες του Ισαάκ δεν εκρήγνυνται πλέον αυτόματα#Χρησιμοποιώντας το αντικείμενο εκρήγνυνται άμεσα όλες οι βόμβες του Ισαάκ"
	-- English: "Isaac's bombs no longer explode automatically#Upon use, detonates all of Isaac's bombs at once"

	[C_ID .. 139] = "{{Trinket}} Ο Ισαάκ μπορεί να κρατάει 2 μπιχλιμπίδια", -- Mom's Purse
	-- English: "{{Trinket}} Isaac can hold 2 trinkets"

	[C_ID .. 140] = "{{Bomb}} +5 βόμβες", -- Bob's Curse
	-- Full old Desc: "{{Poison}} Οι βόμβες του Ισαάκ δηλητιριάζουν εχθρούς που βρέθηκαν στην έκρηξη#{{Bomb}} +5 βόμβες"
	-- English: "{{Poison}} Isaac's bombs poison enemies caught in the blast"

	[C_ID .. 142] = "{{SoulHeart}} Ο Ισαάκ αποκτά 1 Ψυχική Καρδιά όταν πληγωθεί και έχει συνολικά μισή καρδιά#Γίνεται μόνο μία φορά ανά δωμάτιο#Βγαίνοντας και ξαναμπαίνοντας στο δωμάτιο το εφέ ξαναενεργοποιείται", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again"

	[C_ID .. 144] = "{{Coin}} Παίρνει κέρματα και δίνει πίσω τυχαία αντικείμενα", -- Bum Friend
	-- English: "{{Coin}} Picks up nearby coins#Spawns random pickups every 3-4 coins"

	[C_ID .. 147] = "Επιτρέπει στον Ισαάκ να σπάσει πέτρες και εισόδους μυστικών δωματίων περπατώντας σε αυτές", -- Notched Axe
	-- English: "{{Timer}} For the room, Isaac can break rocks and Secret Room walls by walking into them"

	[C_ID .. 149] = "↓ {{Tears}} Λιγότερα δάκρυα", -- Ipecac
	-- Full old Desc: "Τα δάκρυα του Ισαάκ ρίχνονται σε τόξο#{{Poison}} Τα δάκρυα εκρήγνυνται και δηλητηριάζουν εχθρούς εκεί που προσγειώνεται#↑ {{Damage}} +40 Περισσότερη ζημιά#↓ {{Tears}} Λιγότερα δάκρυα"
	-- English: "Isaac's tears are shot in an arc#{{Poison}} The tears explode and poison enemies where they land"

	[C_ID .. 151] = "Χτυπώντας έναν εχθρό με δάκρυα υπάρχει 1/6 πιθανότητα να εμφανίσει μία μπλε μύγα", -- The Mulligan
	-- English: "Tears have a 1/6 chance to spawn a blue fly when hitting an enemy"

	[C_ID .. 152] = "↓ {{Damage}} -35% Ζημιά#↓ {{Tears}} Καθυστέρηση δακρύων x 2", -- Technology 2
	-- Full old Desc: "Τα δάκρυα του δεξιού ματιού του Ισαάκ αντικαθίστανται με ένα συνεχή λέιζερ#Το λέιζερ κάνει 20% της ζημιάς του Ισαάκ#↓ {{Damage}} -35% Ζημιά#↓ {{Tears}} Καθυστέρηση δακρύων x 2"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} It deals 3x Isaac's damage per second"

	[C_ID .. 155] = "Αιωρείται γύρω στο δωμάτιο", -- The Peeper
	-- Full old Desc: "Αιωρείται γύρω στο δωμάτιο#Κάνει 17.1 ζημιά ανά δευτερόλεπτο"
	-- English: "Floats around the room"

	[C_ID .. 156] = "{{Battery}} Όταν πληγώνεται ο Ισαάκ προστίθεται 1 μπάρα στο ενεργό αντικείμενό του", -- Habit
	-- English: "{{Battery}} Taking damage adds 1 charge to the active item"

	[C_ID .. 157] = "↑ {{Damage}} Όταν ο Ισαάκ πληγώνεται κερδίζει περισσότερη ζημιά#Λειτουργεί και ως 6 φορές για τον χώρο#Διαρκεί για ολόκληρο τον χώρο", -- Bloody Lust
	-- English: "↑ {{Damage}} Taking damage grants a damage up#Applies up to 6 times per floor#Lasts for the whole floor"

	[C_ID .. 158] = "Εμφανίζει τον χάρτη#{VAR:EFFECTLIST}", -- Crystal Ball
	-- Full old Desc: "Εμφανίζει τον χάρτη#Αφήνει μια κάρτα ή μια Ψυχική Καρδιά"
	-- English: "Spawns a {{SoulHeart}} Soul Heart, {{Rune}} rune or {{Card}} card#{VAR:EFFECTLIST}"

	[C_ID .. 160] = "Εμφάνισε 5 δέσμες φωτός κοντά σε εχθρούς#Κάνει την ζημιά του Ισαάκ + 20", -- Crack the Sky
	-- English: "Spawns 5 beams of light near enemies#Each beam deals 8x Isaac's damage + 160 over 0.8 seconds"

	[C_ID .. 161] = "{{Player4}} Ξαναεμφανίσου ως τον ??? (Μπλέ Μωρό) όταν πεθάνεις", -- Ankh
	-- English: "{{Player4}} Respawn as ??? (Blue Baby) on death"

	[C_ID .. 163] = "Βοηθός με φασματώδη δάκρυα", -- Ghost Baby
	-- Full old Desc: "Βοηθός με φασματώδη δάκρυα#Κάνει 3.5 ζημιά με κάθε βολή"
	-- English: "Shoots spectral tears"

	[C_ID .. 164] = "Ρίχνει μία μπλε φωτιά#Η φωτιά πληγώνει όσους την αγγίζουν, αποτρέπει εχθρικές βολές, και εξαφανίζεται μετά από 2 δευτερόλεπτα", -- The Candle
	-- English: "Throws a blue flame#It deals contact damage, blocks enemy tears, and despawns after 2 seconds"

	[C_ID .. 166] = "Αλλάζει όλα τα αντικείμενα στο δωμάτιο", -- D20
	-- English: "Rerolls all pickups in the room"

	[C_ID .. 167] = "Πυροβολεί 2 δάκρυα σε σχήμα V", -- Harlequin Baby
	-- Full old Desc: "Πυροβολεί 2 δάκρυα σε σχήμα V#Κάνει 4 ζημιά με κάθε βολή"
	-- English: "Shoots two tears in a V-shaped pattern"

	[C_ID .. 168] = "Αντί για δάκρυα, στοχεύεις ένα σταυρόνημα#Μία ρουκέτα προσγειώνεται στο σταυρόνημα μετά από 1.5 δευτερόλεπτα#Οι ρουκέτες κάνουν 20 φορές την ζημιά του Ισαάκ", -- Epic Fetus
	-- English: "Instead of shooting tears, aim a crosshair#A rocket lands on the crosshair after 1.5 seconds#{{Damage}} Rockets deal 20x Isaac's damage"

	[C_ID .. 170] = "Τυχαία πατάει σε εχθρούς", -- Daddy Longlegs
	-- Full old Desc: "Τυχαία πατάει σε εχθρούς#Κάνει 40 ζημιά ανά δευτερόλεπτο"
	-- English: "Stomps on a nearby enemy every 4 seconds"

	[C_ID .. 171] = "Επιβραδύνει όλους τους εχθρούς για 4 δευτερόλεπτα", -- Spider Butt
	-- Full old Desc: "Επιβραδύνει όλους τους εχθρούς για 4 δευτερόλεπτα#Κάνει 10 ζημιά σε όλους τους εχθρούς"
	-- English: "{{Slow}} Slows down enemies for 4 seconds"

	[C_ID .. 174] = "Πυροβολεί τυχαία δάκρυα", -- Rainbow Baby
	-- Full old Desc: "Πυροβολεί τυχαία δάκρυα#Κάνει 3-5 ζημιά ανά βολή"
	-- English: "Shoots random tears"

	[C_ID .. 175] = "Ανοίγει όλες τις πόρτες στο δωμάτιο, περιλαμβάνοντας {{SecretRoom}}{{SuperSecretRoom}}Μυστικά Δωμάτια, {{ChallengeRoom}}{{BossRushRoom}}Δωμάτια Πρόκλησης, και την πόρτα του Μέγα Σατανά", -- Dad's Key
	-- English: "Opens all doors in the room, including {{SecretRoom}}{{SuperSecretRoom}}Secret Rooms, {{ChallengeRoom}}{{BossRushRoom}}Challenge Rooms, and the Mega Satan door"

	[C_ID .. 177] = "Φορητή μηχανή υποδοχής#Ξόδεψε 1 κέρμα για μία πιθανότητα για αντικείμενο", -- Portable Slot
	-- English: "{{Coin}} Spend 1 coin for a chance to spawn a pickup"

	[C_ID .. 178] = "Όταν πληγώνεσαι διαρρέει μια πισίνα ερπυσμού#Ο ερπυσμός κάνει 24 ζημιά ανά δευτερόλεπτο", -- Holy Water
	-- English: "Taking damage spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 180] = "Ο Ισαάκ κλάνει όταν αγγιχθεί", -- The Black Bean
	-- English: "Isaac farts when damaged#{{Poison}} The fart poisons enemies"

	[C_ID .. 181] = "Προσφέρει πτήση όταν κρατιέται#{{Speed}} Ορίζει την ταχύτητά σου σε τουλάχιστον 1.5#Χρησιμοποιώντας το αντικείμενο ο Ισαάκ τρέχει στην κατεύθυνση που κινειται, αφήνοντας πίσω δέσμες φωτός", -- White Pony
	-- English: "{{Speed}} Sets your Speed to at least 1.5#Flight while held#Using the item dashes in the direction of Isaac's movement, leaving behind beams of light"

	[C_ID .. 186] = "Αφαιρεί Κόκκινες Καρδιές πρώτα", -- Blood Rights
	-- Full old Desc: "Προκαλεί 40 ζημιά σε κάθε εχθρό#{{Warning}} Πληγώνει τον Ισαάκ για 1 καρδιά#Αφαιρεί Κόκκινες Καρδιές πρώτα"
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 187] = "Μετακινώντας η μπούκλα επίσης μετακινείται#Η μπούκλα μεγαλώνει όταν σκοτώνει εχθρούς#Η μπούκλα κάνει περισσότερη ζημιά όσο μεγαλύτερη είναι", -- Guppy's Hairball
	-- English: "Moving swings the hairball around#The ball grows when it kills an enemy#It deals more damage the bigger it is"

	[C_ID .. 188] = "Αντικατοπτρίζει τις κινήσεις του Ισαάκ#Πυροβολεί στον Ισαάκ", -- Abel
	-- Full old Desc: "Αντικατοπτρίζει τις κινήσεις του Ισαάκ#Πυροβολεί στον Ισαάκ#Κάνει 3.5 ζημιά ανά δευτερόλεπτο"
	-- English: "Mirrors Isaac's movement#Shoots towards Isaac"

	[C_ID .. 191] = "Τα δάκρυα του Ισαάκ αποκτούν τυχαία εφέ κάθε 2-3 δευτερόλεπτα", -- 3 Dollar Bill
	-- English: "Isaac's tears get random effects every 2-3 seconds"

	[C_ID .. 198] = "Εμφανίζει 1 αντικείμενο κάθε είδους", -- Box
	-- English: "Spawns 1 pickup of each type"

	[C_ID .. 199] = "Τα σεντούκια περιέχουν περισσότερα αντικείμενα", -- Mom's Key
	-- Full old Desc: "{{Key}} +2 Κλειδιά#Τα σεντούκια περιέχουν περισσότερα αντικείμενα"
	-- English: "Chests contain more pickups"

	[C_ID .. 202] = "Αγγίζοντας εχθρούς μετατρέπονται σε χρυσό#Ο Ισαάκ κάνει ζημιά ανάλογα με τον αριθμό κερμάτων του#{{Coin}} Σκοτώνοντας ένα χρυσό κέρμα εμφανίζονται κέρματα#Τα σκατά που δημιουργούνται από τον Ισαάκ έχουν μεγάλη πιθανότητα να είναι χρυσά", -- Midas' Touch
	-- English: "{{Petrify}} Touching enemies petrifies them and turns them gold#Isaac deals contact damage based on his coin count#{{Coin}} Killing a golden enemy spawns coins#Poop spawned by Isaac has a high chance to be golden poop"

	[C_ID .. 203] = "Αντικείμενα που εμφανίζονται διπλασιάζονται εάν γίνεται", -- Humbleing Bundle
	-- English: "Pickups spawned are doubled if possible"

	[C_ID .. 204] = "Όταν πληγώνεσαι υπάρχει 50% πιθανότητα να εμφανίσεις ένα τυχαίο αντικείμενο", -- Fanny Pack
	-- English: "Taking damage has a 50% chance to spawn a random pickup"

	[C_ID .. 205] = "{{Battery}} Χρησιμοποιώντας ένα αφόρτιστο ενεργό αντικείμενο το φορτίζει τελείως για 2 καρδιές#Μόνο δουλεύει όταν το αντικείμενο δεν είναι καθόλου φορτισμένο", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of 2 hearts#Only works when the item has no charges"

	[C_ID .. 207] = "LVL1: Τροχιάς#LVL2: Τροχιάς που πυροβολεί#LVL3: Κορίτσι Επιδέσμων LVL1#LVL4: Κορίτσι Επιδέσμων LVL2", -- Ball of Bandages
	-- English: "Lv1: Orbital#{{Charm}} Lv2: Orbital that shoots charmed tears#{{Charm}} Lv3: Bandage Girl#{{Charm}} Lv4: Super Bandage Girl"

	[C_ID .. 208] = "+15% πιθανότητα για πρωταθλητές εχθρούς", -- Champion Belt
	-- Full old Desc: "↑ {{Damage}} +1 Περισσότερη ζημιά#+15% πιθανότητα για πρωταθλητές εχθρούς"
	-- English: "Champion enemy chance goes from 5% to 20%#Doesn't increase chance of champion bosses"

	[C_ID .. 209] = "{{Confusion}} Οι εκρήξεις κάθε βόμβας μπερδεύουν και κάνουν ζημιά σε κάθε εχθρό στο δωμάτιο", -- Butt Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombs#{{Confusion}} Οι εκρήξεις κάθε βόμβας μπερδεύουν και κάνουν ζημιά σε κάθε εχθρό στο δωμάτιο"
	-- English: "{{Confusion}} Explosions concuss and damage every enemy in the room"

	[C_ID .. 210] = "Μένοντας ακίνητος για 1 δευτερόλεπτο ο Ισαάκ γίνεται αθάνατος", -- Gnawed Leaf
	-- English: "After 1 second of inactivity, Isaac becomes invincible"

	[C_ID .. 212] = "50% να ξαναεμφανιστεί με μισή καρδιά όταν πεθάνεις", -- Guppy's Collar
	-- English: "50% chance to revive with half a heart on death"

	[C_ID .. 213] = "↓ {{Shotspeed}} -0.15 Ταχύτητα βολών", -- Lost Contact
	-- Full old Desc: "Τα δάκρυα του Ισαάκ καταστρέφουν εχθρικές βολές#↓ {{Shotspeed}} -0.15 Ταχύτητα βολών"
	-- English: "Isaac's tears destroy enemy shots"

	[C_ID .. 214] = "Όταν πληγώνεσαι άρχισε να διαρρέεις τοξικό αίμα για το δωμάτιο", -- Anemic
	-- Full old Desc: "↑ {{Range}} +5 Έκταση δακρύων#Όταν πληγώνεσαι άρχισε να διαρρέεις τοξικό αίμα για το δωμάτιο"
	-- English: "{{Timer}} When taking damage Isaac leaves a trail of blood creep for the room#The creep deals 6 damage per second"

	[C_ID .. 218] = "{{HalfHeart}} Πιθανότητα να θεραπευτεί μια καρδιά κάθε λεπτό", -- Placenta
	-- Full old Desc: "↑ {{Heart}} +1 Καρδιά#{{HalfHeart}} Πιθανότητα να θεραπευτεί μια καρδιά κάθε λεπτό"
	-- English: "{{HealingRed}} 50% chance to heal half a heart every minute"

	[C_ID .. 220] = "{{Bomb}} +5 Βόμβες", -- Sad Bombs
	-- Full old Desc: "Οι βόμβες του Ισαάκ πυροβολεί 10 δάκρυα σε ένα κύκλο όταν εκρήγνυνται#{{Bomb}} +5 Βόμβες"
	-- English: "Isaac's bombs shoot 10 tears in a circle when they explode"

	[C_ID .. 221] = "Τα δάκρυα του Ισαάκ αναπηδάνε από εχθρούς και εμπόδια", -- Rubber Cement
	-- English: "Isaac's tears bounce off enemies and obstacles"

	[C_ID .. 222] = "Αφήνοντας τα δάκρυα πηγαίνουν στην κατεύθυνση που πυροβολήθηκαν#↑ {{Tears}} -2 Καθυστέρηση δακρύων", -- Anti-Gravity
	-- Full old Desc: "Κρατώντας τα πλήκτρα πυροβόλησε πατημένα τα δάκρυα του Ισαάκ παραμένουν ακίνητα#Αφήνοντας τα δάκρυα πηγαίνουν στην κατεύθυνση που πυροβολήθηκαν#↑ {{Tears}} -2 Καθυστέρηση δακρύων"
	-- English: "Holding the fire buttons causes tears to hover in midair#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "{{Bomb}} +5 Βόμβες", -- Pyromaniac
	-- Full old Desc: "Οι εκρήξεις θεραπεύουν 1 Κόκκινη Καρδιά#{{Bomb}} +5 Βόμβες"
	-- English: "Immunity to explosions, rock waves, and stomp attacks#{{HealingRed}} Getting hit by explosions heals 1 heart"

	[C_ID .. 224] = "↓ {{Range}} -10 Έκταση δακρύων", -- Cricket's Body
	-- Full old Desc: "Τα δάκρυα του Ισαάκ σπάνε σε 4 όταν πέσουν#Τα σπασμένα δάκρυα κάνουν την μισή ζημιά#↑ {{Tears}} +1 Περισσότερα δάκρυα#↓ {{Range}} -10 Έκταση δακρύων"
	-- English: "Tears split up in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "{{SoulHeart}} Όταν πληγώνεσαι υπάρχει πιθανότητα να εμφανιστή μία Ψυχική Καρδιά#{{HalfHeart}} Οι εχθροί έχουν πιθανότητα να εμφανίσουν Μισή καρδιά όταν πεθάνουν", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a chance to spawn a Soul Heart#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 227] = "Όταν πληγώνεσαι εμφάνισε 1-2 κέρματα", -- Piggy Bank
	-- Full old Desc: "{{Coin}} +3 κέρματα#Όταν πληγώνεσαι εμφάνισε 1-2 κέρματα#{{Player14}} 0-1 κέρματα ως τον Φύλακα"
	-- English: "{{Coin}} Taking damage spawns 1-2 coins"

	[C_ID .. 228] = "↑ {{Tears}} +1 Περισσότερα δάκρυα", -- Mom's Perfume
	-- Full old Desc: "{{Fear}} 15% πιθανοτητα να πυροβολήσεις Τρομακτικά δάκρυα#↑ {{Tears}} +1 Περισσότερα δάκρυα"
	-- English: "{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 229] = "↓ {{Tears}} 4.3x Καθυστέρηση δακρύων up", -- Monstro's Lung
	-- Full old Desc: "{{Chargeable}} Τα δάκρυα συγκρατούνται και ελευθερώνονται σε μία εκρηκτική επίθεση#↓ {{Tears}} 4.3x Καθυστέρηση δακρύων up"
	-- English: "{{Chargeable}} Tears are charged and released in a shotgun style attack"

	[C_ID .. 230] = "{{BlackHeart}} +6 Μαύρες καρδιές", -- Abaddon
	-- Full old Desc: "↑ {{Damage}} +1.5 Περισσότερη ζημιά#↑ {{Speed}} +0.2 Περισσότερη ταχύτητα#{{Fear}} Τρομακτικά δάκρυα#↓ {{EmptyHeart}} Αφαιρεί όλες τις κόκκινες καρδιές#{{BlackHeart}} +6 Μαύρες καρδιές"
	-- English: "↓ {{EmptyHeart}} Removes all heart containers#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 231] = "Ο Ισαάκ αφήνει επιβραδυντικό ερπυσμό", -- Ball of Tar
	-- Full old Desc: "{{Slow}} 10% πιθανότητα να πυροβολήσεις επιβραδυντικά δάκρυα#{{Luck}} 100% πιθανότητα όταν έχεις 18 τύχη#Ο Ισαάκ αφήνει επιβραδυντικό ερπυσμό"
	-- English: "{{Slow}} {VAR:LUCKCHANCE}% chance to shoot slowing tears#{{Slow}} Isaac leaves a trail of slowing creep"

	[C_ID .. 232] = "↑ +0.3 Περισσότερη ταχύτητα", -- Stop Watch
	-- Full old Desc: "{{Slow}} Όταν πληγώνεσαι επιβραδύνονται μόνιμα όλοι οι εχθροί στο δωμάτιο#↑ +0.3 Περισσότερη ταχύτητα"
	-- English: "{{Slow}} Taking damage slows all enemies in the room permanently"

	[C_ID .. 233] = "↑ +7 Ύψος δακρύων", -- Tiny Planet
	-- Full old Desc: "Τα δάκρυα του Ισαάκ μετακινούνται κυκλικά γύρω του#↑ {{Range}} Πολύ μεγαλύτερη έκταση δακρύων#↑ +7 Ύψος δακρύων#Φασματώδη δάκρυα"
	-- English: "Isaac's tears orbit around him"

	[C_ID .. 234] = "Όταν σκοτώνεις έναν εχθρό εμφανίζεται μια μπλε αράχνη", -- Infestation 2
	-- English: "Killing an enemy spawns a blue spider"

	[C_ID .. 236] = "Αγγίζοντας έναν εχθρό τον μετατρέπεις σε σκατά", -- E. Coli
	-- English: "Touching an enemy turns it into poop"

	[C_ID .. 238] = "{{EternalHeart}} +2% πιθανότητα για Αιώνιες Καρδιές", -- Key Piece 1
	-- Full old Desc: "{{Warning}} Όταν έχεις και τα δύο μέρη του κλειδιού μπορείς να ανοίξεις μία μεγάλη χρυσή πόρτα#{{AngelChance}} 25% περισσότερη πιθανότητα για Αγγελικά Δωμάτια#{{EternalHeart}} +2% πιθανότητα για Αιώνιες Καρδιές"
	-- English: "{{Warning}} Getting both parts of the key opens a big golden door#{{EternalHeart}} +2% chance for Eternal Hearts"

	[C_ID .. 239] = "{{EternalHeart}} +2% πιθανότητα για Αιώνιες Καρδιές", -- Key Piece 2
	-- Full old Desc: "{{Warning}} Όταν έχεις και τα δύο μέρη του κλειδιού μπορείς να ανοίξεις μία μεγάλη χρυσή πόρτα#{{AngelChance}} 25% περισσότερη πιθανότητα για Αγγελικά Δωμάτια#{{EternalHeart}} +2% πιθανότητα για Αιώνιες Καρδιές"
	-- English: "{{Warning}} Getting both parts of the key opens a big golden door#{{EternalHeart}} +2% chance for Eternal Hearts"

	[C_ID .. 241] = "Διπλασιάζει όλες τις ανταμοιβές ολοκλήρωσης δωματίου#33% πιθανότητα για καμία ανταμοιβή ολοκλήρωσης δωματίου#{{GreedMode}} Δεν επηρεάζει την Λειτουργία Απληστίας", -- Contract from Below
	-- English: "Doubles all room clear rewards#33% chance for no room clear reward"

	[C_ID .. 242] = "50% πιθανότητα να αποκρούσεις εχθρικές βολές", -- Infamy
	-- English: "50% chance to block enemy shots"

	[C_ID .. 243] = "Αποκρούει εχθρικές βολές που έρχονται από την κατεύθυνση που πυροβολάει ο Ισαάκ", -- Trinity Shield
	-- English: "Blocks enemy shots coming from the direction Isaac is shooting"

	[C_ID .. 244] = "Ενίοτε	ρίξε λέιζερ μαζί με τα δάκρυα του Ισαάκ", -- Tech.5
	-- English: "Occasionally shoot lasers in addition to Isaac's tears"

	[C_ID .. 245] = "Ο Ισαάκ πυροβολεί 2 δάκρυα συγχρόνως", -- 20/20
	-- English: "Isaac shoots 2 tears at once"

	[C_ID .. 246] = "{{SecretRoom}} Εμφανίζει τις τοποθεσίες των Μυστικών Δωματίων στον χάρτη", -- Blue Map
	-- English: "{{SecretRoom}} Reveals secret room locations on the map"

	[C_ID .. 247] = "Οι Βοηθοί κάνουν διπλή ζημιά", -- BFFS!
	-- English: "Familiars deal double damage"

	[C_ID .. 248] = "Οι μπλε μύγες και αράχνες κάνουν διπλή ζημιά", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage"

	[C_ID .. 249] = "Επιτρέπει στον Ισαάκ να επιλέξει μεταξύ 2 αντικειμένων αφού νικήσει ένα αφεντικό", -- There's Options
	-- English: "Allows Isaac to choose between 2 items after beating a boss"

	[C_ID .. 250] = "{{Bomb}} Όλες οι ανενεργές βόμβες διπλασιάζονται", -- Bogo Bombs
	-- English: "{{Bomb}} All bomb drops become double bombs"

	[C_ID .. 251] = "Μετατρέπει όλα τα χάπια σε κάρτες#Εμφανίζει 1 κάρτα όταν αποκτηθεί", -- Starter Deck
	-- Full old Desc: "{{Card}} Ο Ισαάκ μπορεί να κρατάει 2 κάρτες#Μετατρέπει όλα τα χάπια σε κάρτες#Εμφανίζει 1 κάρτα όταν αποκτηθεί"
	-- English: "Isaac can carry 2 cards#Turns all pills into cards"

	[C_ID .. 252] = "Μετατρέπει όλες τις κάρτες σε χάπια#Εμφανίζει 1 χάπι όταν αποκτηθεί", -- Little Baggy
	-- Full old Desc: "{{Pill}}  Ο Ισαάκ μπορεί να κρατάει 2 χάπια#Μετατρέπει όλες τις κάρτες σε χάπια#Εμφανίζει 1 χάπι όταν αποκτηθεί"
	-- English: "Isaac can carry 2 pills#Turns all cards into pills"

	[C_ID .. 256] = "{{Bomb}} +5 Βόμβες", -- Hot Bombs
	-- Full old Desc: "{{Burning}} Οι βόμβες του Ισαάκ αφήνουν φωτιά που εκρήγνυνται#{{Bomb}} +5 Βόμβες"
	-- English: "{{Burning}} Isaac's bombs leave a flame where they explode"

	[C_ID .. 257] = "{{Warning}} Η έκρηξη πληγώνει τον Ισαάκ", -- Fire Mind
	-- Full old Desc: "{{Burning}} Τα δάκρυα του Ισαάκ πυρπολούν εχθρούς#Πιθανότητα για τα δάκρυα να εκραγούν όταν χτυπήσουν κάποιον εχθρό#{{Luck}} 100% πιθανότητα όταν έχεις 13 τύχη#{{Warning}} Η έκρηξη πληγώνει τον Ισαάκ"
	-- English: "{{Burning}} Isaac's tears light enemies on fire#{VAR:LUCKCHANCE}% chance for tears to explode on enemy impact#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 258] = "Αλλάζει όλα τα αντικείμενα και στατιστικά του Ισαάκ όταν αποκτηθεί και σε κάθε νέο χώρο", -- Missing No.
	-- English: "Rerolls all of Isaac's items and stats on pickup and at every new floor"

	[C_ID .. 260] = "{{CurseBlind}} Ανοσία στις κατάρες", -- Black Candle
	-- Full old Desc: "{{CurseBlind}} Ανοσία στις κατάρες#{{BlackHeart}} +1 Μαύρη Καρδιά#{{AngelDevilChance}} +15% πιθανότητα για Αγγελικά/Διαβολικά δωμάτια"
	-- English: "{{CurseBlind}} Immune to curses"

	[C_ID .. 261] = "↓ Τα δάκρυα κάνουν λιγότερη ζημιά όσο πιο μακριά ταξιδεύουν", -- Proptosis
	-- Full old Desc: "↑ {{Damage}} +100% Περισσότερη ζημιά#↓ Τα δάκρυα κάνουν λιγότερη ζημιά όσο πιο μακριά ταξιδεύουν"
	-- English: "↓ Tears deal less damage the further they travel"

	[C_ID .. 262] = "Όταν πληγώνεσαι σε 1 καρδιά πληγώνονται όλοι οι εχθροί στο δωμάτιο", -- Missing Page 2
	-- Full old Desc: "{{BlackHeart}} +1 Μαύρη Καρδιά#Όταν πληγώνεσαι σε 1 καρδιά πληγώνονται όλοι οι εχθροί στο δωμάτιο"
	-- English: "Taking damage down to 1 heart damages all enemies in the room"

	[C_ID .. 264] = "Επιτίθεται σε εχθρούς όταν πληγώνεται ο Ισαάκ", -- Smart Fly
	-- Full old Desc: "Τροχιάς#Επιτίθεται σε εχθρούς όταν πληγώνεται ο Ισαάκ#Κάνει 22.5 ζημιά ανά δευτερόλεπτο"
	-- English: "Attacks enemies when Isaac takes damage"

	[C_ID .. 265] = "10% πιθανότητα να πληγώσει όλους τους εχθρούς στο δωμάτιο όταν αποκρούσει εχθρικές βολές", -- Dry Baby
	-- English: "10% chance to damage all enemies in the room when it is hit by an enemy tear"

	[C_ID .. 266] = "Αφήνει επιβραδυντικό ερπυσμό#Εμφανίζει 1-2 μπλε αράχνες όταν ολοκληρώνεται ένα δωμάτιο", -- Juicy Sack
	-- English: "{{Slow}} Leaves slowing creep#Spawns 1-2 friendly spiders after clearing a room"

	[C_ID .. 267] = "Πυροβολεί λέιζερ#Κινείται στην κατεύθυνση που πυροβολεί ο Ισαάκ", -- Robo-Baby 2.0
	-- Full old Desc: "Πυροβολεί λέιζερ#Κάνει 3.5 ζημιά ανά βολή#Κινείται στην κατεύθυνση που πυροβολεί ο Ισαάκ"
	-- English: "Shoots lasers#Moves in the direction Isaac is shooting"

	[C_ID .. 268] = "Εμφανίζει μπλε μύγες όταν πυροβολεί ο Ισαάκ", -- Rotten Baby
	-- English: "Spawns blue flies when Isaac shoots"

	[C_ID .. 269] = "Αφήνει ερπυσμό που κάνει 6 ζημιά ανά δευτερόλεπτο", -- Headless Baby
	-- English: "Leaves creep which deals 6 damage per second"

	[C_ID .. 270] = "Κυνηγάει εχθρούς#{{HalfHeart}} Θεραπεύει τον Ισαάκ για μισή καρδιά όταν σκοτώνει έναν εχθρό", -- Leech
	-- Full old Desc: "Κυνηγάει εχθρούς#{{HalfHeart}} Θεραπεύει τον Ισαάκ για μισή καρδιά όταν σκοτώνει έναν εχθρό#Κάνει 3.2 ζημιά ανά δευτερόλεπτο"
	-- English: "Chases enemies#{{HealingRed}} Heals Isaac for half a heart when it kills an enemy"

	[C_ID .. 271] = "Εμφανίζει ένα τυχαίο αντικείμενο κάθε λίγα δωμάτια", -- Mystery Sack
	-- English: "Spawns a random pickup every 5-6 rooms"

	[C_ID .. 272] = "Φιλική εκρηκτική μύγα#{{Warning}} Η έκρηξη πληγώνει τον Ισαάκ", -- BBF
	-- Full old Desc: "Φιλική εκρηκτική μύγα#Η έκρηξη κάνει 60 ζημιά#{{Warning}} Η έκρηξη πληγώνει τον Ισαάκ"
	-- English: "Friendly exploding fly#The explosion deals {VAR:1} damage#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 273] = "Τρέχει στην κατεύθυνση που πυροβολεί ο Ισαάκ#Εκρήγνυται όταν χτυπάει εχθρό", -- Bob's Brain
	-- Full old Desc: "Τρέχει στην κατεύθυνση που πυροβολεί ο Ισαάκ#Εκρήγνυται όταν χτυπάει εχθρό#Η έκρηξη κάνει 60 ζημιά και μπορεί να πληγώσει τον Ισαάκ"
	-- English: "Dashes in the direction Isaac is shooting#Explodes when it hits an enemy#{{Poison}} The explosion deals {VAR:1} damage and poisons enemies#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 274] = "Όταν πληγώνεσαι εμφανίζεται ένας Τροχιάς μεσαίας-απόστασης για το δωμάτιο", -- Best Bud
	-- Full old Desc: "Όταν πληγώνεσαι εμφανίζεται ένας Τροχιάς μεσαίας-απόστασης για το δωμάτιο#Ο Τροχιάς κάνει 75 ζημιά ανά δευτερόλεπτο"
	-- English: "Taking damage spawns one midrange orbital for the room"

	[C_ID .. 275] = "{{Collectible118}} Βοηθός που ρίχνει λέιζερ Θειαφιού", -- Lil Brimstone
	-- Full old Desc: "{{Collectible118}} Βοηθός που ρίχνει λέιζερ Θειαφιού#Κάνει 31.5 ζημιά ανά δευτερόλεπτο"
	-- English: "{{Chargeable}} Familiar that charges and shoots a {{Collectible118}} blood beam#It deals {VAR:1} damage over 0.63 seconds"

	[C_ID .. 276] = "Ο Ισαάκ γίνεται αθάνατος#Εμφανίζει έναν βοηθό-καρδιά που ακολουθεί τον Ισαάκ#{{Warning}} Εάν πληγωθεί η καρδιά, πληγώνεται και ο Ισαάκ", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 277] = "Κυνηγάει και τρομάζει εχθρούς", -- Lil Haunt
	-- Full old Desc: "Κυνηγάει και τρομάζει εχθρούς#Κάνει 4 ζημιά ανά δευτερόλεπτο"
	-- English: "{{Fear}} Chases and fears enemies"

	[C_ID .. 278] = "{{Heart}} Παίρνει Κόκκινες Καρδιές στο έδαφος#Εμφανίζει μία Ψυχική/Μαύρη Καρδιά ή αράχνη για κάθε 1.5 καρδιά που παίρνει", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#{{SoulHeart}} Spawns a Soul Heart or spider for every 1.5 Red Hearts picked up"

	[C_ID .. 279] = "Μεγάλος Τροχιάς", -- Big Fan
	-- Full old Desc: "Μεγάλος Τροχιάς#Κάνει 30 ζημιά ανά δευτερόλεπτο"
	-- English: "Large orbital"

	[C_ID .. 280] = "Εμφανίζει τυχαία μπλε αράχνες ενώ σε εχθρικά δωμάτια", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms"

	[C_ID .. 281] = "Βοηθός δόλωμα#Οι εχθροί στοχοποιούν εκείνον αντί για τον Ισαάκ", -- Punching Bag
	-- English: "Decoy familiar#Enemies target him instead of Isaac"

	[C_ID .. 282] = "Επιτρέπει στον Ισαάκ Isaac να πηδήξει πάνω από εμπόδια και λακούβες", -- How to Jump
	-- English: "Allows Isaac to jump over gaps and obstacles"

	[C_ID .. 283] = "Άλλαξε όλα τα αντικείμενα και συλλεκτικά αντικείμενα στο δωμάτιο, καθώς και όλα τα συλλεκτικά αντικείμενα του Ισαάκ", -- D100
	-- English: "Reroll all pickups and pedestal items in the room, and all of Isaac's passive items"

	[C_ID .. 284] = "Άλλαξε όλα τα συλλεκτικά αντικείμενα του Ισαάκ", -- D4
	-- English: "Reroll all of Isaac's passive items"

	[C_ID .. 285] = "Άλλαξε όλους τους εχθρούς στο δωμάτιο", -- D10
	-- English: "Reroll all enemies in the room"

	[C_ID .. 286] = "Ενεργοποίησε την κάρτα που κρατάει ο Ισαάκ χωρίς να χρησιμοποιηθεί", -- Blank Card
	-- English: "Triggers the effect of the rune or card Isaac holds without using it"

	[C_ID .. 289] = "Ρίχνει μία κόκκινη φωτιά#Η φωτιά εξαφανίζεται όταν προκαλεί ζημιά ή αποκρούει βολές 5 φορές", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 5 times"

	[C_ID .. 290] = "{{Heart}} Όταν συλλέξεις Κόκκινες Καρδιές ενώ έχεις Γεμάτες καρδιές αποθηκεύονται 4 από αυτές στο Δοχείο#Χρησιμοποιώντας το αντικείμενο εμφανίζονται όλες οι καρδιές στο πάτωμα", -- The Jar
	-- English: "{{Heart}} Picking up Red Hearts while at full health stores up to 4 of them in the Jar#Using the item drops all stored hearts on the floor"

	[C_ID .. 291] = "Μετατρέπει όλους τους μη-αφεντικά εχθρούς σε σκατά#Αμέσως σκοτώνει εχθρούς και αφέντες 'σκατά'", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses"

	[C_ID .. 293] = "Ρίχνει λέιζερ Θειαφιού στις 4 κατευθύνσεις", -- Head of Krampus
	-- Full old Desc: "Ρίχνει λέιζερ Θειαφιού στις 4 κατευθύνσεις#Τα λέιζερ περιστρέφονται σπάνια"
	-- English: "{{Collectible118}} Shoot a 4-way blood beam#They each deal {VAR:1} damage over 1.33 seconds"

	[C_ID .. 294] = "Χτυπάει πίσω κοντινούς εχθρούς και βολές", -- Butter Bean
	-- Full old Desc: "Χτυπάει πίσω κοντινούς εχθρούς και βολές#10% πιθανότητα να μετατραπεί στην δυνατότερη {{Collectible484}}Περίμενε Τι; όταν αλλαχθεί με ένα διαφορετικό ενεργό αντικείμενο και ξανααποκτηθεί"
	-- English: "Knocks back nearby enemies and projectiles#10% chance to turn into the stronger {{NameC484}} when swapping it with a different active item and picking it up again"

	[C_ID .. 295] = "Κάνει 2x την ζημιά του Ισαάκ σε όλους τους εχθρούς#{{Warning}} Κοστίζει 1 κέρμα", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage to all enemies#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "Μετατρέπει 2 Ψυχικές/Μαύρες Καρδιές σε 1 Κόκκινη Καρδιά", -- Converter
	-- English: "{{Heart}} Converts 2 Soul/Black Hearts into 1 heart container"

	[C_ID .. 299] = "↑ {{Speed}} Σταδιακά απέκτησε μεγαλύτερη ταχύτητα όταν σε εχθρικά δωμάτια#Όταν έχεις 2 ταχύτητα, γίνεσαι αθάνατος και κάνεις ζημιά όταν αγγίζεις εχθρούς#Ύστερα, χάσε την ταχύτητα για το δωμάτιο", -- Taurus
	-- Full old Desc: "↓ {{Speed}} -0.3 Λιγότερη ταχύτητα#↑ {{Speed}} Σταδιακά απέκτησε μεγαλύτερη ταχύτητα όταν σε εχθρικά δωμάτια#Όταν έχεις 2 ταχύτητα, γίνεσαι αθάνατος και κάνεις ζημιά όταν αγγίζεις εχθρούς#Ύστερα, χάσε την ταχύτητα για το δωμάτιο"
	-- English: "↑ {{Speed}} Slowly gain speed while in hostile rooms#At 2 speed, Isaac becomes invincible and deals contact damage#Afterwards, lose the Taurus speed boost for the room"

	[C_ID .. 300] = "Όταν αγγίζεις εχθρούς κάνεις ζημιά", -- Aries
	-- Full old Desc: "↑ {{Speed}} +0.25 Περισσότερη ταχύτητα#Όταν αγγίζεις εχθρούς κάνεις ζημιά"
	-- English: "Touching enemies deals contact damage"

	[C_ID .. 301] = "Όταν πληγώνεσαι μείωσε όλη τη μελλοντική ζημιά σε μισή καρδιά γι ατο δωμάτιο", -- Cancer
	-- Full old Desc: "{{SoulHeart}} +3 Ψυχικές καρδιές#Όταν πληγώνεσαι μείωσε όλη τη μελλοντική ζημιά σε μισή καρδιά γι ατο δωμάτιο"
	-- English: "Taking damage reduces all future damage in the room to half a heart"

	[C_ID .. 302] = "Περισσότερο μέγεθος", -- Leo
	-- Full old Desc: "Ο Ισαάκ μπορεί να καταστρέψει πέτρες περπατώντας σε αυτές#Περισσότερο μέγεθος"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 303] = "Όταν πληγώνεσαι μπορεί να γίνεις προσωρινά αθάνατος#{{Luck}} 100% πιθανότητα όταν έχεις 10 τύχη#{{Pill}} Μετατρέπει όλα τα αρνητικά χάπια σε θετικά", -- Virgo
	-- English: "Taking damage can make Isaac temporarily invincible#{{Luck}} 100% chance at 10 luck#{{Pill}} Converts negative pills into positive ones"

	[C_ID .. 304] = "Ισορροπεί τα στατιστικά του Ισαάκ#Μελλοντικές αλλαγές στατιστικών μοιράζονται σε όλα τα στατιστικά", -- Libra
	-- Full old Desc: "+6 Κέρματα, Κλειδιά και Βόμβες#Ισορροπεί τα στατιστικά του Ισαάκ#Μελλοντικές αλλαγές στατιστικών μοιράζονται σε όλα τα στατιστικά"
	-- English: "Balances Isaac's stats#Future stat changes will be spread across all stats"

	[C_ID .. 308] = "Ο Ισαάκ αφήνει ερπυσμό#Ο ερπυσμός κάνει 6 ζημιά ανά δευτερόλεπτο", -- Aquarius
	-- English: "Isaac leaves a trail of creep#The creep deals 6 damage per second"

	[C_ID .. 311] = "{{Player12}} Όταν πεθάνεις, ξαναεμφανίσου ως τον Σκοτεινό Ιούδα με 2x Πολλαπλασιαστή ζημιάς", -- Judas' Shadow
	-- English: "{{Player12}} When dead, respawn as Dark Judas with a x2 damage multiplier"

	[C_ID .. 312] = "Όλες οι κόκκινες καρδιές θεραπεύουν διπλάσια", -- Maggy's Bow
	-- Full old Desc: "↑ {{Heart}} +1 Καρδιά#{{Heart}} Θεραπεύει 1 Κόκκινη Καρδιά#Όλες οι κόκκινες καρδιές θεραπεύουν διπλάσια"
	-- English: "All Red Hearts heal double their value"

	[C_ID .. 313] = "Αφαιρεί τον πρώτο τραυματισμό του Ισαάκ για κάθε δωμάτιο", -- Holy Mantle
	-- English: "Negates the first hit taken once per room"

	[C_ID .. 314] = "Ο Ισαάκ μπορεί να καταστρέψει πέτρες περπατώντας σε αυτές", -- Thunder Thighs
	-- Full old Desc: "↑ {{Heart}} +1 Καρδιά#↓ {{Speed}} -0.4 Λιγότερη ταχύτητα#Ο Ισαάκ μπορεί να καταστρέψει πέτρες περπατώντας σε αυτές"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 315] = "Τα δάκρυα του Ισαάκ προσελκύουν εχθρούς, αντικείμενα και μπιχλιμπίδια", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets"

	[C_ID .. 316] = "{{Warning}} Εάν πληγωθείς ενώ φορτίζεις τα δάκρυα τηλεμεταφέρεσαι σε ένα τυχαίο δωμάτιο", -- Cursed Eye
	-- Full old Desc: "Πυροβολάς 4 δάκρυα συνεχόμενα#{{Warning}} Εάν πληγωθείς ενώ φορτίζεις τα δάκρυα τηλεμεταφέρεσαι σε ένα τυχαίο δωμάτιο#{{Collectible260}} Το Μαύρο Κερί αποτρέπει την τηλεμεταφορά"
	-- English: "Charged wave of {VAR:1} tears#{{Warning}} Taking damage while partially charged teleports Isaac to a random room"

	[C_ID .. 317] = "Τα δάκρυα του Ισαάκ αφήνουν ερπυσμό#Ο ερπυσμός κάνει 30 ζημιά ανά δευτερόλεπτο", -- Mysterious Liquid
	-- English: "Isaac's tears leave creep#The creep deals 30 damage per second"

	[C_ID .. 318] = "Βοηθό κοντινής έκτασης", -- Gemini
	-- Full old Desc: "Βοηθό κοντινής έκτασης#Κάνει 6 ζημιά ανά δευτερόλεπτο"
	-- English: "Close combat familiar"

	[C_ID .. 319] = "Αναπηδά στο δωμάτιο#Πυροβολεί στην κατεύθυνση του Ισαάκ#{{Damage}} Κάνει την ίδια ζημιά με τον Ισαάκ", -- Cain's Other Eye
	-- English: "Bounces around the room#Low accuracy tears that deal Isaac's damage"

	[C_ID .. 320] = "Ελεγχόμενη Μύγα", -- ???'s Only Friend
	-- Full old Desc: "Ελεγχόμενη Μύγα#Κάνει 37.5 contact ζημιά ανά δευτερόλεπτο"
	-- English: "Controllable fly"

	[C_ID .. 321] = "Τραχιά μπάλα που μπορεί να καταστρέψει πέτρες", -- Samson's Chains
	-- Full old Desc: "Τραχιά μπάλα που μπορεί να καταστρέψει πέτρες#Κάνει 10.7 ζημιά ανά δευτερόλεπτο"
	-- English: "Draggable ball that can destroy rocks"

	[C_ID .. 322] = "Αντιγράφει έναν από τους βοηθούς του Ισαάκ#Κάνει διπλή ζημιά από αυτόν", -- Mongo Baby
	-- English: "Mimics your baby familiars' tears#If you have none, shoots normal 3.5 damage tears"

	[C_ID .. 323] = "Πυροβόλησε 8 δάκρυα σε κάθε κατεύθυνση#Τα δάκρυα αντιγράφουν τα δάκρυα του Ισαάκ#Φορτίζεται πυροβολώντας δάκρυα", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects#Recharges by shooting tears"

	[C_ID .. 324] = "Τηλεμεταφερει τον Ισαάκ στο {{TreasureRoom}} Δωμάτιο Θησαυρού, {{SecretRoom}} Μυστικό Δωμάτιο, {{SuperSecretRoom}} Υπερμυστικό Δωμάτιο ή {{ErrorRoom}} 'ΕΙΜΑΙ ΣΦΑΛΜΑ' Δωμάτιο", -- Undefined
	-- English: "Teleports Isaac to the {{TreasureRoom}} Treasure, {{SecretRoom}} Secret, {{SuperSecretRoom}} Super Secret or {{ErrorRoom}} I AM ERROR Room"

	[C_ID .. 325] = "Το κεφάλι του Ισαάκ μετατρέπεται σε ακίνητο βοηθό#Το σώμα κινείται ξεχωριστά από το κεφάλι", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The head shoots 3.5 damage tears#The body is controlled separately and still shoots Isaac's tears"

	[C_ID .. 326] = "Όταν χρησιμοποιείται η φόρτιση του μειώνεται#Ο Ισαάκ γίνεται προσωρινά αθάνατος όταν η φόρτιση είναι μηδέν#{{Warning}} Όταν χρησιμοποιείται για πολύ χρόνο κάνει ζημιά στον Ισαάκ", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 327] = "Όταν πληγώνεσαι με μισή ή καμία Κόκκινη Καρδιά γίνεσαι προσωρινά αθάνατος", -- The Polaroid
	-- English: "Taking damage at half a Red Heart or none makes Isaac temporarily invincible"

	[C_ID .. 328] = "Όταν πληγώνεσαι με μισή ή καμία Κόκκινη Καρδιά πληγώνονται όλοι οι εχθροί στο δωμάτιο", -- The Negative
	-- English: "Taking damage at half a Red Heart or none damages all enemies in the room"

	[C_ID .. 329] = "Αντικαθιστά τα δάκρυα του Ισαάκ με ένα τεράστιο ελεγχόμενο δάκρυο", -- The Ludovico Technique
	-- English: "Replaces Isaac's tears with one giant controllable tear"

	[C_ID .. 332] = "{{Player11}} Όταν πεθάνεις, ξαναεμφανίσου ως τον Λάζαρο (Ανερχόμενος)", -- Lazarus' Rags
	-- English: "{{Player11}} When dead, revive as Lazarus (Risen)"

	[C_ID .. 333] = "Πλήρης χάρτης", -- The Mind
	-- English: "Full mapping effect"

	[C_ID .. 335] = "Ο Ισαάκ έχει αύρα που αποθεί εχθρούς και εχθρικές βολές", -- The Soul
	-- Full old Desc: "{{SoulHeart}} +2 Ψυχικές καρδιές#Ο Ισαάκ έχει αύρα που αποθεί εχθρούς και εχθρικές βολές"
	-- English: "Grants an aura that repels enemies and projectiles"

	[C_ID .. 337] = "Επιβραδύνει κάθε 4ο δωμάτιο#13% πιθανότητα να επιταχύνει το δωμάτιο", -- Broken Watch
	-- English: "{{Slow}} Slows down every 4th room#13% chance to speed up the room instead"

	[C_ID .. 338] = "Μπούμερανγκ#Αναισθητοποιεί εχθρούς και κάνει 2x την ζημιά του Ισαάκ#Μπορεί να χτυπήσει και να μετακινήσει αντικείμενα", -- The Boomerang
	-- English: "Throwable boomerang#{{Petrify}} Petrifies enemies and deals 2x Isaac's damage#Can grab and bring back items"

	[C_ID .. 347] = "Διπλασιάζει όσα αντικείμενα και συλλεκτικά αντικείμενα υπάρχουν στο δωμάτιο", -- Diplopia
	-- English: "Duplicates all item pedestals and pickups in the room"

	[C_ID .. 348] = "{{Pill}} Ενεργοποίησε το χάπι που κρατάει ο Ισαάκ χωρίς να χρησιμοποιηθεί", -- Placebo
	-- English: "{{Pill}} Triggers the effect of the pill Isaac holds without using it"

	[C_ID .. 350] = "{{Poison}} Όταν μπαίνεις σε ένα νέο δωμάτιο δηλητηριάζονται όλοι οι εχθροί#Όταν πεθαίνουν οι εχθροί αφήνουν ερπυσμό", -- Toxic Shock
	-- English: "{{Poison}} Entering a room poisons all enemies#Enemies killed leave a puddle of creep#The creep deals 30 damage per second"

	[C_ID .. 351] = "Παγώνει όλους τους εχθρούς στο δωμάτιο#Κάνει 5 ζημιά και δηλητιριάζει κοντινούς εχθρούς#Στέλνει ένα κύμα πέτρας στην κατεύθυνση που μετακινείται ο Ισαάκ#Το κύμα μπορεί να ανοίξει Μυστικά Δωμάτια και να καταστρέψει πέτρες", -- Mega Bean
	-- English: "{{Petrify}} Petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Sends a rock wave in the direction Isaac is moving#The rock wave can open secret rooms and break rocks"

	[C_ID .. 352] = "↓ Όταν χρησιμοποιείται η ζωή του Ισαάκ μειώνεται σε μισή καρδιά συνολικά#Ρίχνει ένα τεράστιο Διαπεραστικό Φασματώδες δάκρυο που κάνει 10x την ζημιά του Ισαάκ", -- Glass Cannon
	-- English: "{{Warning}} Firing the cannon reduces Isaac's health down to half a heart#Shoots a large piercing + spectral tear that does 10x Isaac's damage"

	[C_ID .. 353] = "Οι Βόμβες εκρήγνυται σε σχήμα σταυρού", -- Bomber Boy
	-- Full old Desc: "{{Bomb}} +5 βόμβες#Οι Βόμβες εκρήγνυται σε σχήμα σταυρού"
	-- English: "Bombs explode in a cross-shaped pattern"

	[C_ID .. 356] = "Όταν χρησιμοποιείται ένα ενεργό αντικείμενο χρησιμοποιείται διπλά", -- Car Battery
	-- English: "{{Battery}} Using an active item triggers its effect twice"

	[C_ID .. 357] = "Διπλασιάζει όλους τους βοηθούς για το τωρινό δωμάτιο#Εμφανίζει {{Collectible113}}Διαβολικό Μωρό εάν ο Ισαάκ δεν έχει βοηθούς", -- Box of Friends
	-- English: "{{Timer}} Duplicates all your familiars for the room#{{Collectible113}} Grants a Demon Baby for the room if Isaac has no familiars"

	[C_ID .. 358] = "Φασματώδη δάκρυα", -- The Wiz
	-- Full old Desc: "Ο Ισαάκ ρίχνει 2 διαγώνια δάκρυα ταυτόχρονα#Φασματώδη δάκρυα"
	-- English: "Isaac shoots 2 tears at once diagonally"

	[C_ID .. 359] = "Ενισχύει την ορμή των δακρύων", -- 8 Inch Nails
	-- Full old Desc: "↑ {{Damage}} +1.5 Περισσότερη ζημιά#Ενισχύει την ορμή των δακρύων"
	-- English: "Increases knockback"

	[C_ID .. 360] = "Πυροβολεί δάκρυα με τα ίδια στατιστικά και εφέ με τον Ισαάκ", -- Incubus
	-- English: "Shoots tears with the same tear rate, damage and effects as Isaac"

	[C_ID .. 361] = "Πυροβολεί δάκρυα με τα ίδια στατιστικά και εφέ με τον Ισαάκ#Πυροβολεί 2x πιο αργά από τους υπόλοιπους βοηθούς", -- Fate's Reward
	-- English: "Shoots tears with the same damage and effects as Isaac#Shoots at half the rate of other familiars"

	[C_ID .. 362] = "Εμφανίζει ένα τυχαίο αντικείμενο κάθε λίγα δωμάτια", -- Lil Chest
	-- English: "35% chance to spawn a pickup every room"

	[C_ID .. 363] = "Αποκρούει και προσελκύει εχθρικές βολές#Όταν αποκρούσει 10 βολές σε ένα δωμάτιο εμφανίζει μια Αιώνια Καρδιά", -- Sworn Protector
	-- Full old Desc: "Τροχιάς#Κάνει 105 ζημιά ανά δευτερόλεπτο#Αποκρούει και προσελκύει εχθρικές βολές#Όταν αποκρούσει 10 βολές σε ένα δωμάτιο εμφανίζει μια Αιώνια Καρδιά"
	-- English: "Blocks and attracts enemy shots#{{EternalHeart}} Blocking 10 shots in one room spawns an Eternal Heart"

	[C_ID .. 364] = " Τροχιάς μεσαίας-απόστασης", -- Friend Zone
	-- Full old Desc: " Τροχιάς μεσαίας-απόστασης#Κάνει 45 ζημιά ανά δευτερόλεπτο"
	-- English: "Midrange fly orbital"

	[C_ID .. 365] = "Μετακινείται κατά μήκος τοίχων/εμποδίων", -- Lost Fly
	-- Full old Desc: "Μετακινείται κατά μήκος τοίχων/εμποδίων#Κάνει 105 ζημιά ανά δευτερόλεπτο"
	-- English: "Moves along walls/obstacles"

	[C_ID .. 367] = "Σκοτώνοντας έναν εχθρό με μία βόμβα εμφανίζονται μπλε αράχνες#Οι βόμβες του Ισαάκ κολλάνε σε εχθρούς", -- Sticky Bombs
	-- Full old Desc: "{{Bomb}} +5 βόμβες#Σκοτώνοντας έναν εχθρό με μία βόμβα εμφανίζονται μπλε αράχνες#Οι βόμβες του Ισαάκ κολλάνε σε εχθρούς"
	-- English: "Isaac's bombs stick to enemies#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "Πυροβολώντας σε μία κατεύθυνση μειώνει περιοδικά την Καθυστέρηση δακρύων μέχρι και 200%", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually decreases tear delay up to 200% and decreases accuracy"

	[C_ID .. 369] = "Τα δάκρυα μετακινούνται από την μία άκρη της οθόνης και εμφανίζονται από την άλλη άκρη", -- Continuum
	-- Full old Desc: "↑ {{Range}} +2.25 Έκταση δακρύων#↑ +1.5 Ύψος δακρύων#Φασματώδη δάκρυα#Τα δάκρυα μετακινούνται από την μία άκρη της οθόνης και εμφανίζονται από την άλλη άκρη"
	-- English: "Tears can travel through one side of the screen and come out the other side"

	[C_ID .. 371] = "Όταν πληγώνεσαι εμφανίζονται 6 βόμβες τρολ#Οι βόμβες τρολ κατοπτρίζουν τις βόμβες του Ισαάκ", -- Curse of the Tower
	-- English: "{{Warning}} Taking damage spawns 6 Troll Bombs#The Troll Bombs inherit Isaac's bomb effects"

	[C_ID .. 372] = "Κάθε 30 δευτερόλεπτα σε εχθρικό δωμάτιο, ο βοηθός μπορεί να:#Εμφανίσει μια μπαταρία (μέγιστες 2 ανά δωμάτιο)#Προσθέσει μία μπάρα σε ενεργά αντικείμενα (μέγιστο 2 ανά δωμάτιο)#Παγώσει όλους τους εχθρούς στο δωμάτιο", -- Charged Baby
	-- English: "Every 30 seconds while in an uncleared room, the familiar can:#{{Battery}} Spawn a Battery (max 2 per room)#{{Battery}} Add one charge to the active item (max 2 per room)#{{Petrify}} Petrify all enemies in the room"

	[C_ID .. 373] = "↑ {{Damage}} Συνεχόμενα δάκρυα που χτυπάνε εχθρούς προσφέρουν +25% Περισσότερη ζημιά(μέγιστο +100%)#Αστοχώντας μπορεί να μηδενίσει την ζημιά", -- Dead Eye
	-- English: "↑ {{Damage}} Consecutive tear hits on enemies grant +25% damage (max +100%)#Missing has a chance to reset the multiplier"

	[C_ID .. 374] = "{{Luck}} 50% πιθανότητα όταν έχεις 9 τύχη", -- Holy Light
	-- Full old Desc: "10% πιθανότητα να πυροβολήσεις Ιερά δάκρυα, που εμφανίζουν μία δέσμη φωτός όταν χτυπάνε#Η δέσμη κάνει 4x την ζημιά του Ισαάκ#{{Luck}} 50% πιθανότητα όταν έχεις 9 τύχη"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot holy tears, which spawn a beam of light on hit#{{Damage}} The beam deals 4x Isaac's damage"

	[C_ID .. 375] = "Ο Ισαάκ έχει ανοσία σε εκρήξεις και πατήματα από τα πόδια της Μαμάς και του Σατανά#20% πιθανότητα να αποκρούσει εχθρικές βολές", -- Host Hat
	-- English: "Grants immunity to explosions, rock wave attacks and Mom and Satan's stomp attacks#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Αγοράζοντας αντικείμενα από την Αγορά εμφανίζει καινούργια αντικείμενα αμέσως", -- Restock
	-- Full old Desc: "Εμφανίζει 3 τυχαία αντικείμενα#Αγοράζοντας αντικείμενα από την Αγορά εμφανίζει καινούργια αντικείμενα αμέσως"
	-- English: "Buying an item from a Shop restocks it instantly"

	[C_ID .. 377] = "Οι εχθρικές αράχνες δεν στοχοποιούν ή πληγώνουν τον Ισαάκ", -- Bursting Sack
	-- English: "Spider enemies no longer target or deal contact damage to Isaac"

	[C_ID .. 378] = "Πυροβολώντας δάκρυα για 3 δευτερόλεπτα εμφανίζει μια Σκατο-Βόμβα", -- No. 2
	-- English: "Holding a fire button for 2.35 seconds spawns a lit Butt Bomb"

	[C_ID .. 380] = "Πόρτες που απαιτούν ένα κλειδί ανοίγονται με κλειδιά", -- Pay To Play
	-- Full old Desc: "{{Coin}} +5 κέρματα#Πόρτες που απαιτούν ένα κλειδί ανοίγονται με κλειδιά"
	-- English: "{{Coin}} Single-key doors must be opened with coins instead of keys"

	[C_ID .. 381] = "Προσφέρει ένα τυχαίο συλλεγικό αντικείμενο στην αρχή του επόμενου παιχνιδιού", -- Eden's Blessing
	-- Full old Desc: "↑ {{Tears}} +0.7 Περισσότερα δάκρυα#Προσφέρει ένα τυχαίο συλλεγικό αντικείμενο στην αρχή του επόμενου παιχνιδιού"
	-- English: "Grants a random item at the start of the next run"

	[C_ID .. 382] = "Ρίχνοντάς την σε εχθρούς τους αιχμαλωτίζει#Χρησιμοποιώντας το αντικείμενο αφού υπάρχει αιχμαλωτισμένος εχθρός τον εμφανίζει ως φιλικό σύντροφο", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns it as a friendly companion"

	[C_ID .. 383] = "Σπάει κάθε δάκρυ του Ισαάκ σε έναν κύκλο 6 δακρύων", -- Tear Detonator
	-- English: "Splits all of Isaac's tears currently on screen in a circle of 6 tears"

	[C_ID .. 384] = "{{Chargeable}} Εκτοξεύεται και αναπηδά στο δωμάτιο με ταχύτητα ανάλογα με το πόσο συγκρατήθηκε#Κάνει 5-90 ζημιά ανά δευτερόλεπτο ανάλογα με την ταχύτητα", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-90 contact damage per second depending on speed"

	[C_ID .. 385] = "Κλέβει κοντινά κέρματα#Αναβαθμίζεται αφού κλέψει 6, 12 και 24 κέρματα#LVL2: Πιθανότητα να εμφανίσει αντικείμενα κάθε ολοκλήρωση δωματίου#LVL3: Πυροβολεί δάκρυα που μπορούν να εμφανίσουν κέρματα όταν χτυπήσουν#LVL4: Κυνηγάει εχθρούς, σπανιακά εμφανίζει βόμβες, μπορεί να εμφανίσει αντικείμενα όταν κλέψει κέρματα", -- Bumbo
	-- English: "{{Coin}} Picks up nearby coins#Levels up after getting 6, 12, and 24 coins#Lv2: Chance to spawn item after room clears#Lv3: Shoots tears that can spawn coins on hit#Lv4: Chases enemies, occasionally dropping bombs, can spawn item on coin pickup"

	[C_ID .. 386] = "Αλλάζει κάθε εμπόδιο σε ένα διαφορετικό εμπόδιο (π.χ. σκατό, βάζα, TNT, κόκκινα σκατά, πέτρες κτλ.)", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)"

	[C_ID .. 387] = "Βοηθός περιτριγυρισμένος από μία τεράστια αύρα φωτός που επιβραδύνει εχθρούς και εχθρικές βολές", -- Censer
	-- English: "{{Slow}} Familiar surrounded by a huge aura of light that slows down enemies and projectiles in it"

	[C_ID .. 388] = "Παίρνει κλειδιά και εμφανίζει τυχαία σεντούκια", -- Key Bum
	-- English: "{{Key}} Picks up nearby keys#{{Chest}} Spawns random chests in return"

	[C_ID .. 389] = "{{Rune}} Εμφανίζει ένα τυχαίο ρουνικό κάθε 5-6 δωμάτια", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune every 5-6 rooms"

	[C_ID .. 390] = "Ρίχνει δάκρυα Ιερής Καρδιάς", -- Seraphim
	-- Full old Desc: "Ρίχνει δάκρυα Ιερής Καρδιάς#Κάνει 10 ζημιά ανά βολή"
	-- English: "Shoots Sacred Heart tears"

	[C_ID .. 391] = "{{Charm}} Όταν πληγώνεσαι γοητεύονται όλοι οι εχθροί στο δωμάτιο", -- Betrayal
	-- English: "{{Charm}} Taking damage charms all enemies in the room"

	[C_ID .. 392] = "Ενεργοποιεί ένα τυχαίο ζωδιακό αντικείμενο κάθε χώρο", -- Zodiac
	-- English: "Grants a random zodiac item effect every floor"

	[C_ID .. 393] = "{{Poison}} 15% πιθανότητα να πυροβολήσεις δηλητηριώδη δάκρυα#{{Poison}} Δηλητηρίασε εχθρούς όταν σε αγγίζουν#{{BlackHeart}} Δηλητηριασμένοι εχθροί έχουν πιθανότητα να εμφανίσουν Μαύρες Καρδιές όταν πεθάνουν", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Poisoned enemies have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "↑ +0.3 Ύψος δακρύων", -- Marked
	-- Full old Desc: "Ο Ισαάκ ρίχνει δάκρυα αυτόματα σε έναν μετακινούμενο κόκκινο στόχο στο έδαφος#↑ {{Tears}} +0.7 Περισσότερα δάκρυα#↑ {{Range}} +3.15 Έκταση δακρύων#↑ +0.3 Ύψος δακρύων"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground"

	[C_ID .. 395] = "{{Chargeable}} Τα δάκρυα του Ισαάκ αντικαθίστανται από ένα δακτύλιο λέιζερ#Το μέγεθος του δακτυλίου μεγαλώνει με τον χρόνο φόρτισης", -- Tech X
	-- English: "{{Chargeable}} Isaac's tears are replaced by a chargeable laser ring#Ring size increases with charge amount"

	[C_ID .. 396] = "Δημιουργεί δύο πύλες με τις οποίες μπορείς να μετακινηθείς#Μπορούν να τοποθετηθούν σε διαφορετικά δωμάτια", -- Ventricle Razor
	-- English: "Creates up to two portals to travel between#Can be placed in different rooms"

	[C_ID .. 397] = "↑ +0.5 Ύψος δακρύων", -- Tractor Beam
	-- Full old Desc: "Τα δάκρυα του Ισαάκ πάντα ταξιδεύουν σε μία δέσμη μπροστά από το κεφάλι του#↑ {{Tears}} +0.5 Περισσότερα δάκρυα#↑ {{Range}} +5.25 Έκταση δακρύων#↑ {{Shotspeed}} +0.16 Ταχύτητα δακρύων#↑ +0.5 Ύψος δακρύων"
	-- English: "Isaac's tears always travel along a beam of light in front of him"

	[C_ID .. 398] = "Τα δάκρυα του Ισαάκ συρρικνώνουν εχθρούς#Συρρικνωμένοι εχθροί μπορούν να σκοτωθούν περπατώντας πάνω τους", -- God's Flesh
	-- English: "{{Shrink}} Tears can shrink enemies#Shrunken enemies can be crushed and killed by walking over them"

	[C_ID .. 400] = "Ο Ισαάκ κρατάει ένα δόρυ μπροστά του#Το δόρυ κάνει 2x την ζημιά του Ισαάκ και μπορεί να τρομάξει τους εχθρούς που πληγωνει", -- Spear of Destiny
	-- English: "Isaac holds a spear in front of him#{{Fear}} The spear deals twice his damage and can fear enemies on contact"

	[C_ID .. 401] = "25% πιθανότητα να πυροβολήσεις κολλητικά εκρηκτικά δάκρυα#Αυτά τα δάκρυα δεν πληγώνουν εχθρούς αλλά εκρήγνυνται μετά από λίγα δευτερόλεπτα", -- Explosivo
	-- English: "25% chance to shoot sticky bomb tears#Sticky bomb tears do not deal damage on hit and explode after a few seconds"

	[C_ID .. 402] = "Κάθε συλλεκτικό αντικείμενο επιλέγεται από τυχαία ομάδα αντικειμένων", -- Chaos
	-- Full old Desc: "Κάθε συλλεκτικό αντικείμενο επιλέγεται από τυχαία ομάδα αντικειμένων#Εμφανίζει 1-6 τυχαία αντικείμενα"
	-- English: "All items are chosen from random item pools"

	[C_ID .. 403] = "Εμφανίζει την ζημιά δακρύων και μπάρες ζωής όλων των εχθρών#Προκαλεί τυχαία προβλήματα σε εχθρούς όταν αγγιχθεί#Τυχαία εμφανίζει μπαταρίες", -- Spider Mod
	-- English: "Displays tear damage and health bars of all enemies#Inflicts random status effects to enemies on contact#Randomly spawns batteries"

	[C_ID .. 404] = "Όταν χτυπηθεί, 10% πιθανότητα να κλάσει και να γοητεύσει, δηλητηριάσει ή να απομακρύνει εχθρούς", -- Farting Baby
	-- Full old Desc: "Αποκρούει εχθρικές βολές#Όταν χτυπηθεί, 10% πιθανότητα να κλάσει και να γοητεύσει, δηλητηριάσει ή να απομακρύνει εχθρούς"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies"

	[C_ID .. 405] = "Αναπηδά στο δωμάτιο", -- GB Bug
	-- Full old Desc: "Αναπηδά στο δωμάτιο#Κάνει 120 ζημιά ανά δευτερόλεπτο και προκαλεί τυχαία προβλήματα σε εχθρούς"
	-- English: "Bounces around the room#Applies random status effects to enemies on contact"

	[C_ID .. 406] = "Πολλαπλασιάζει την ζημιά, την ταχύτητα και συχνότητα δακρύων και την ταχύτητα του Ισαάκ από 0.5x μέχρι 2x#Οι πολλαπλασιαστές αλλάζουν με κάθε χρήση", -- D8
	-- English: "Multiplies Isaac's damage, tears, range and speed stats by between x0.5 and x2#The multipliers are rerolled each use"

	[C_ID .. 407] = "↑ Ενισχύει ένα από τα στατιστικά του Ισαάκ ανάλογα με το χρώμα της αύρας του#Όταν πληγώνεται αφαιρείται η αύρα και δίνει στον Ισαάκ μια καινούργια αύρα στο επόμενο δωμάτιο#{{ColorRed}}Κόκκινη{{CR}} = {{Damage}} +4 Περισσότερη ζημιά#{{ColorBlue}}Μπλε{{CR}} = {{Tears}} -4 Καθυστέρηση δακρύων#{{ColorYellow}}Κίτρινο{{CR}} = {{Speed}} +0.5 Περισσότερη ταχύτητα#{{ColorOrange}}Πορτοκαλί{{CR}} = {{Range}} +7.5 Έκταση δακρύων, +1 Ύψος δακρύων", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and gives Isaac a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} -4 Tear delay#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +7.5 Range, ↑ +1 Tear height"

	[C_ID .. 408] = "Όταν πληγώνεσαι εμφανίζεται ένα μαύρο δακτύλιο Θειαφιού γύρω σου#{{BlackHeart}} Εχθροί που σκοτώνονται από τον δακτύλιο έχουν πιθανότητα να εμφανίσουν μία Μαύρη Καρδιά", -- Athame
	-- English: "Taking damage creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the ring have a 15% chance to drop a Black Heart"

	[C_ID .. 409] = "{{Blank}} Όταν ο Ισαάκ δεν έχει Κόκκινες Καρδιές:#Προσφέρει Πτήση#Κάθε 40 δευτερόλεπτα σε εχθρικό δωμάτιο, απέκτησε μία ασπίδα για 10 δευτερόλεπτα", -- Empty Vessel
	-- Full old Desc: "{{BlackHeart}} +2 Μαύρες Καρδιές#{{Blank}} Όταν ο Ισαάκ δεν έχει Κόκκινες Καρδιές:#Προσφέρει Πτήση#Κάθε 40 δευτερόλεπτα σε εχθρικό δωμάτιο, απέκτησε μία ασπίδα για 10 δευτερόλεπτα"
	-- English: "{{EmptyHeart}} When Isaac has no Red Hearts:#Flight#Every 40 seconds while in a hostile room, gain a shield for 10 seconds"

	[C_ID .. 411] = "↑ {{Damage}} +0.5 Περισσότερη ζημιά for each enemy killed in the room#Caps at +5 Περισσότερη ζημιά after 10 kills", -- Lusty Blood
	-- English: "↑ {{Damage}} +0.5 Damage for each enemy killed in the room#Caps at +5 Damage after 10 kills"

	[C_ID .. 412] = "Αφού πληγωθείς 15 φορές εμφάνισε έναν μόνιμο βοηθό δαίμονα#Μετά από δύο βοηθούς, χρειάζεται να πληγωθείς 30 φορές  αντί για 15#Σταματάει στους 4 βοηθούς", -- Cambion Conception
	-- English: "Taking damage 15 times spawns a permanent demon familiar#After two familiars, it takes 30 instead of 15#Caps at 4 familiars"

	[C_ID .. 413] = "Αφού συλλέξεις 15 καρδιές εμφάνισε έναν μόνιμο αγγελικό βοηθό#Σταματάει στους 5 βοηθούς#Εάν έχεις ήδη όλους τους βοηθούς, εμφάνισε μια Ψυχική Καρδιά", -- Immaculate Conception
	-- English: "Picking up 15 hearts spawns a permanent angelic familiar#Caps at 5 familiars#{{SoulHeart}} If all familiars have been granted, spawns a Soul Heart instead"

	[C_ID .. 414] = "{{TreasureRoom}} Επιτρέπει στον Ισαάκ να διαλέξει 2 αντικείμενα στο Δωμάτιο Θησαυρού", -- More Options
	-- English: "{{TreasureRoom}} Allows Isaac to choose between 2 items in treasure rooms"

	[C_ID .. 415] = "{{Blank}} Εάν έχεις γεμίσει όλες τις Κόκκινες Καρδιές:#{VAR:EFFECTLIST}#{{Blank}}", -- Crown Of Light
	-- Full old Desc: "{{SoulHeart}} +2 Ψυχικές καρδιές#{{Blank}} Εάν έχεις γεμίσει όλες τις Κόκκινες Καρδιές:#↑ {{Damage}} +100% Περισσότερη ζημιά#↑ {{Range}} +5.25 Έκταση δακρύων#↑ +0.5 Ύψος δακρύων#↓ {{Shotspeed}} -0.3 Ταχύτητα δακρύων#{{Blank}}#Όταν πληγωθείς αφαιρούνται οι αυξήσεις στατιστικών"
	-- English: "If Isaac has no damaged heart containers:#{VAR:EFFECTLIST}#Taking any damage removes the effect for the room"

	[C_ID .. 416] = "Επιτρέπει στον Ισαάκ να κρατάει δύο κάρτες/χάπια/ρουνικά", -- Deep Pockets
	-- English: "Allows Isaac to carry two runes/cards/pills"

	[C_ID .. 417] = "Αναπηδά στο δωμάτιο περιτριγυρισμένος από μία αύρα που κάνει 129% την ζημιάς του Ισαάκ ανά δευτερόλεπτο#↑ {{Damage}} +50% Ζημιά ενώ βρίσκεσαι στην αύρα", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 1.29x Isaac's damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 418] = "Κάθε δάκρυ του Ισαάκ έχει διαφορετικό εφέ", -- Fruit Cake
	-- English: "Each one of Isaac's tears gets a different effect"

	[C_ID .. 419] = "Τηλεμεταφέρει τον Ισαάκ σε ένα δωμάτιο που δεν έχει ολοκληρωθεί", -- Teleport 2.0
	-- Full old Desc: "Τηλεμεταφέρει τον Ισαάκ σε ένα δωμάτιο που δεν έχει ολοκληρωθεί#Ιεραρχία: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"
	-- English: "Teleports Isaac to a room that has not been cleared yet#Hierarchy: {VAR:TEXT}"

	[C_ID .. 420] = "Όταν μετακινηθείς σε κύκλο εμφανίζεται ένα πεντάγραμμα στο έδαφος, που κάνει 10 ζημιά ανά τικ", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds"

	[C_ID .. 421] = "{{Charm}} Γοητεύει και κάνει 5 ζημιά σε κοντινούς εχθρούς", -- Kidney Bean
	-- English: "{{Charm}} Charms and deals 5 damage to all enemies in close range"

	[C_ID .. 422] = "Επιστρέφει τον Ισαάκ στο προηγούμενο δωμάτιο και αναιρεί όλες τις πράξεις του στο δωμάτιο που χρησιμοποιήθηκε το αντικείμενο", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in"

	[C_ID .. 423] = "Περιτριγυρίζει τον Ισαάκ με ένα τεράστιο φωτοστέφανο που πληγώνει εχθρούς#Πιθανόν να αποκρούσει εχθρικές βολές", -- Circle of Protection
	-- English: "Surrounds Isaac with a large halo that deals his damage on contact per second#Chance to reflect enemy projectiles"

	[C_ID .. 424] = "Όλα τα αντικείμενα έχουν 33% πιθανότητα να αντικαθιστούν από ένα σάκο#Εμφανίζει έναν σάκο", -- Sack Head
	-- English: "Pickups have a chance to be replaced with a {{GrabBag}}sack:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Spawns a sack"

	[C_ID .. 425] = "Εμφανίζει έναν επιβραδυντικό κώνο φωτός μπροστά από τον Ισαάκ", -- Night Light
	-- English: "{{Slow}} Spawns a slowing cone of light in front of Isaac"

	[C_ID .. 427] = "Εμφανίζει ένα βαρέλι TNT που ωθείται#Χρησιμοποιώντας το αντικείμενο για δεύτερη φορά το βαρέλι εκρύγνεται", -- Mine Crafter
	-- English: "Spawns a pushable TNT barrel#Using the item a second time in the same room remotely detonates the barrel"

	[C_ID .. 429] = "{{Coin}} Πληγώνοντας έναν εχθρό με ένα δάκρυ έχει 5% πιθανότητα να εμφανίσει ένα κέρμα", -- Head of the Keeper
	-- English: "{{Coin}} Hitting an enemy with a tear has a 5% chance to spawn a Penny"

	[C_ID .. 430] = "Ρίχνει δάκρυα που κάνουν την ζημιά του Ισαάκ σε κοντινούς εχθρούς", -- Papa Fly
	-- Full old Desc: "Μιμείται τις κινήσεις του Ισαάκ με καθυστέρηση 1 δευτερολέπτου#Ρίχνει δάκρυα που κάνουν την ζημιά του Ισαάκ σε κοντινούς εχθρούς"
	-- English: "{{Damage}} Shoots tears at nearby enemies that deal Isaac's damage"

	[C_ID .. 431] = "Δάκρυα που περνάνει μέσα από αυτό διπλασιάζονται και επιταγχύνονται", -- Multidimensional Baby
	-- Full old Desc: "Μιμείται τις κινήσεις του Ισαάκ με καθυστέρηση 2 δευτερολέπτων#Δάκρυα που περνάνει μέσα από αυτό διπλασιάζονται και επιταγχύνονται"
	-- English: "Tears that pass through it are doubled and gain a range + shot speed boost"

	[C_ID .. 432] = "Οι βόμβες το Ισαάκ έχουν 25% πιθανότητα να εμφανίσουν ένα τυχαίο αντικείμενο και 15% πιθανότητα να γοητεύσουν εχθρούς όταν εκρήγνυται", -- Glitter Bombs
	-- Full old Desc: "{{Bomb}} +5 βόμβες#Οι βόμβες το Ισαάκ έχουν 25% πιθανότητα να εμφανίσουν ένα τυχαίο αντικείμενο και 15% πιθανότητα να γοητεύσουν εχθρούς όταν εκρήγνυται"
	-- English: "{{Charm}} Isaac's bombs have a 25% chance to drop a random pickup and a 15% chance to charm enemies when they explode"

	[C_ID .. 433] = "Όταν πληγώνεσαι φοβούνται όλοι οι εχθροί στο δωμάτιο και εμφανίζεται ένας φιλικό σκουλήκι", -- My Shadow
	-- Full old Desc: "Όταν πληγώνεσαι φοβούνται όλοι οι εχθροί στο δωμάτιο και εμφανίζεται ένας φιλικό σκουλήκι#Το σκουλήκι κάνει 5 ζημιά ανά δευτερόλεπτο"
	-- English: "{{Fear}} Taking damage fears all enemies in the room and spawns a friendly black charger"

	[C_ID .. 434] = "Σκοτώνοντας έναν εχθρό προστίθεται μία μπλε μύγα στην Γυάλα, μέχρι και 20 μύγες#Χρησιμοποιώντας το αντικείμενο ελευθερώνει όλες τις μύγες", -- Jar of Flies
	-- English: "Killing an enemy adds a blue fly to the jar, up to 20 flies#Using the item releases all the flies"

	[C_ID .. 435] = "Πυροβολεί 4 δάκρυα σε σταυρό", -- Lil Loki
	-- Full old Desc: "Πυροβολεί 4 δάκρυα σε σταυρό#Κάνει 3.5 ζημιά ανά βολή"
	-- English: "Shoots 4 tears in a cross pattern"

	[C_ID .. 436] = "{{Tears}} Όταν πληγώνεσαι κερδίζεις περισσότερα δάκρυα για το δωμάτιο", -- Milk!
	-- English: "{{Tears}} Taking damage grants a Tears up for the duration of the room"

	[C_ID .. 437] = "Επαναλαμβάνει το δωμάτιο και ξαναεμφανίζει όλους τους εχθρούς#Μπορεί να χρησιμοποιηθεί για να εμφανιστούν περισσότερες ανταμοιβές δωματίων#Εάν χρησιμοποιηθεί αφού νικήσεις την Απληστία, μετατρέπει το δωμάτιο σε κανονική Αγορά/Μυστικό Δωμάτιο", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room#If used after a Greed fight, rerolls the room into a normal Shop/Secret Room"

	[C_ID .. 440] = "↑ +2 Ύψος δακρύων", -- Kidney Stone
	-- Full old Desc: "Ο Ισαάκ ενίοτε σταματάει να πυροβολεί και προετοιμάζει μία επίθεση που απελευθερώνει έκρηξη δακρύων και ένα νεφρό#↓ -0.2 Λιγότερη ταχύτητα#↓ -17 Έκταση δακρύων#↑ +2 Ύψος δακρύων"
	-- English: "Isaac occasionally stops firing and charges an attack that releases a burst of tears and a kidney stone"

	[C_ID .. 441] = "Ρίχνει ένα τεράστιο λέιζερ σαν του Μέγα Σατανά για 15 δευτερόλεπτα#Το λέιζερ παραμένει μεταξύ δωμάτια και χώρους", -- Mega Blast
	-- English: "{{Timer}} Fires a huge Mega Satan blood beam for 15 seconds#The beam persists between rooms and floors"

	[C_ID .. 442] = "{{Blank}} Όταν έχεις 1 γεμάτη Κόκκινη Καρδιά:#{VAR:EFFECTLIST}", -- Dark Prince's Crown
	-- Full old Desc: "{{Blank}} Όταν έχεις 1 γεμάτη Κόκκινη Καρδιά:#↑ {{Range}} +1.5 Έκταση δακρύων#↑ {{Tears}} +0.75 Περισσότερα δάκρυα#↑ {{Shotspeed}} +0.2 Ταχύτητα δακρύων#↑ +1 Ύψος δακρύων#Δεν δουλεύει με χαρακτήρες χωρίς κόκκινες καρδιές"
	-- English: "While at 1 full Red Heart:#{VAR:EFFECTLIST}"

	[C_ID .. 444] = "Ο Ισαάκ ρίχνει ένα σύμπλεγμα δακρύων αφού πυροβολήσει 15 δάκρυα#Αυτά τα δάκρυα κάνουν διπλή ζημιά", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears#Tears in the cluster deal double damage"

	[C_ID .. 445] = "{{LadderRoom}} Ο σκύλος γαβγίζει σε δωμάτια με καταπακτή μικρόχωρου κάτω από μία πέτρα", -- Dog Tooth
	-- Full old Desc: "↑ {{Damage}} +0.3 Περισσότερη ζημιά#↑ {{Speed}} +0.1 Περισσότερη ταχύτητα#{{SecretRoom}} Ένας λύκος ουρλιάζει όταν βρίσκεσαι σε δωμάτια γειτονικά σε Μυστικά/Υπερμυστικά Δωμάτια#{{LadderRoom}} Ο σκύλος γαβγίζει σε δωμάτια με καταπακτή μικρόχωρου κάτω από μία πέτρα"
	-- English: "{{SecretRoom}}{{SuperSecretRoom}} A wolf howls in rooms adjacent to a Secret/Super Secret Room#{{LadderRoom}} A dog barks in rooms with a crawlspace under a rock"

	[C_ID .. 446] = "Όταν πυροβολεί, ο Ισαάκ περιτριγυρίζεται με μία πράσσινη αύρα που δηλητηριάζει εχθρούς", -- Dead Tooth
	-- English: "{{Poison}} While firing, Isaac is surrounded by a green aura that poisons enemies"

	[C_ID .. 447] = "Πυροβολώντας χωρίς να σταματάς για 7.5 δευτερόλεπτα εμφανίζεται μία κλανιά#Η κλανιά κάνει την ζημιά του Ισαάκ 5 φορές ανά δευτερόλεπτο#Η κλανιά διαρκεί 15 δευτερόλεπτα και μετακινείται από τα δάκρυά σου", -- Linger Bean
	-- English: "Firing without pause for 7.5 seconds spawns a poop cloud#The cloud deals Isaac's damage 5 times a second#The cloud lasts 15 seconds and can be moved by shooting it"

	[C_ID .. 448] = "Όταν πληγωθείς:#{{Heart}} 25% πιθανότητα να εμφανιστεί Κόκκινη Καρδιά#{{Collectible214}} 10% πιθανότητα να αποκτήσεις ↑ +5 Έκταση δακρύων και να εμφανίζεις ίχνοι ερπυσμού για το δωμάτιο", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{Collectible214}} 10% chance to get ↑ {{Range}} +5 Range and leave a trail of blood creep for the room"

	[C_ID .. 449] = "{{Confusion}} Εχθρικές βολές έχουν 25% πιθανότητα να αντικατοπτριστούν ως συγκλονιστικά δάκρυα", -- Metal Plate
	-- Full old Desc: "{{SoulHeart}} +1 Ψυχική Καρδιά#{{Confusion}} Εχθρικές βολές έχουν 25% πιθανότητα να αντικατοπτριστούν ως συγκλονιστικά δάκρυα"
	-- English: "{{Confusion}} Enemy bullets have a 25% chance to be reflected as concussive tears"

	[C_ID .. 450] = "Κάθε 20 δάκρυα, ο Ισαάκ πυροβολεί ένα κέρμα που κάνει διπλή ζημιά#Οι εχθροί που πληγώνονται από το κέρμα γίνονται χρυσοί#Σκοτώνοντας χρυσούς εχθρούς εμφανίζονται 1-4 κέρματα#Όταν πυροβολήσεις το κέρμα χάνεις ένα σεντ", -- Eye of Greed
	-- English: "Every 20 tears, Isaac shoots a coin tear that deals double damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-4 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "{{Card}} Οι κάρτες ενεργοποιούνται διπλά", -- Tarot Cloth
	-- Full old Desc: "{{Card}} Εμφανιει μία κάρτα#{{Card}} Οι κάρτες ενεργοποιούνται διπλά"
	-- English: "{{Card}} Card effects are doubled or enhanced"

	[C_ID .. 452] = "Όταν πληγώνεται ο Ισαάκ πυροβολάει 10 δάκρυα σε κύκλο#Τα δάκρυα κάνουν την ζημιά του Ισαάκ + 25", -- Varicose Veins
	-- English: "Taking damage shoots 10 tears in a circle around Isaac#The tears deal Isaac's damage + 25"

	[C_ID .. 453] = "↑ +1 Ύψος δακρύων", -- Compound Fracture
	-- Full old Desc: "Τα δάκρυά σου σπάνε σε 1-3 μικρά θρύμματα κοκάλων όταν χτυπήσουν#↑ +1.5 Έκταση δακρύων#↑ +1 Ύψος δακρύων"
	-- English: "Tears shatter into 1-3 small bone shards upon hitting anything"

	[C_ID .. 454] = "Επιτρέπει στον Ισαάκ να κρατάει 2 κάρτες, ρουνικά ή χάπια#Εμφανίζει μία κάρτα, ένα χάπι ή ένα ρουνικό", -- Polydactyly
	-- English: "Spawns a {{Rune}} rune, {{Card}} card or {{Pill}} pill on pickup#Allows Isaac to carry 2 runes/cards/pills"

	[C_ID .. 455] = "Εμφανίζει ένα τυχερό κέρμα", -- Dad's Lost Coin
	-- Full old Desc: "↑ {{Range}} +1.5 Έκταση δακρύων#↑ +1 Ύψος δακρύων#Εμφανίζει ένα τυχερό κέρμα"
	-- English: "{{Luck}} Spawns a Lucky Penny"

	[C_ID .. 457] = "20% πιθανότητα να μηδενίσει την ζημιά που δέχεσαι", -- Cone Head
	-- Full old Desc: "{{SoulHeart}} +1 Ψυχική Καρδιά#20% πιθανότητα να μηδενίσει την ζημιά που δέχεσαι"
	-- English: "20% chance to negate damage taken"

	[C_ID .. 458] = "{{Trinket}} Επιτρέπει στον Ισαάκ να κρατάει 2 μπιχλιμπίδια", -- Belly Button
	-- Full old Desc: "{{Trinket}} Επιτρέπει στον Ισαάκ να κρατάει 2 μπιχλιμπίδια#{{Trinket}} Εμφανίζει ένα τυχαίο μπιχλιμπίδι"
	-- English: "{{Trinket}} Allows Isaac to carry 2 trinkets"

	[C_ID .. 459] = "20% πιθανότητα να πυροβολήσεις μία Κολλητική μύξα", -- Sinus Infection
	-- Full old Desc: "20% πιθανότητα να πυροβολήσεις μία Κολλητική μύξα#Οι μύξες κάνουν την ζημιά του Ισαάκ ανά δευτερόλεπτο και κολλάνε για 60 δευτερόλεπτα"
	-- English: "20% chance to shoot a sticky booger#{{Damage}} Boogers deal Isaac's damage once a second and stick for {VAR:1} seconds#{{Luck}} Not affected by luck"

	[C_ID .. 460] = "{{Confusion}} 5% πιθανότητα να πυροβολήσεις συγκλονιστικά δάκρυα#Κάνει την οθόνη λίγο πιο σκούρα", -- Glaucoma
	-- English: "{{Confusion}} 5% chance to shoot concussive tears#Makes the screen slightly darker"

	[C_ID .. 461] = "Οι σάκοι αυγών εμφανίζουν επιβραδυντικό ερπυσμό και μία μπλέ αράχνη ή μύγα όταν χτυπήσουν", -- Parasitoid
	-- Full old Desc: "15% πιθανότητα να πυροβολήσεις σάκους αυγών#{{Luck}} 50% πιθανότητα όταν έχεις 5 τύχη#Οι σάκοι αυγών εμφανίζουν επιβραδυντικό ερπυσμό και μία μπλέ αράχνη ή μύγα όταν χτυπήσουν"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot egg sacks#{{Slow}} Egg sacks spawn slowing creep and a blue spider or fly on hit"

	[C_ID .. 462] = "Πληγώνοντας εχθρούς κάνει το δάκρυ αυτοκατευθυνόμενο και διπλασιάζει την ζημιά του", -- Eye of Belial
	-- Full old Desc: "↑ {{Range}} +1.5 Έκταση δακρύων#↑ +1 Ύψος δακρύων#Διαπεραστικά tears#Πληγώνοντας εχθρούς κάνει το δάκρυ αυτοκατευθυνόμενο και διπλασιάζει την ζημιά του"
	-- English: "Hitting an enemy makes the tear homing and doubles its damage"

	[C_ID .. 463] = "Τα δάκρυα του Ισαάκ μπορούν να καταστρέψουν πέτρες και να ανοίξουν πόρτες", -- Sulfuric Acid
	-- Full old Desc: "↑ {{Damage}} +0.3 Περισσότερη ζημιά#Τα δάκρυα του Ισαάκ μπορούν να καταστρέψουν πέτρες και να ανοίξουν πόρτες"
	-- English: "Isaac's tears can destroy rocks and open doors"

	[C_ID .. 464] = "Οι πρωταθλητές εχθροί εμφανίζουν όποιο αντικείμενο ο Ισαάκ χρειάζεται περισσότερο", -- Glyph of Balance
	-- Full old Desc: "{{SoulHeart}} +2 Ψυχικές καρδιές#Οι πρωταθλητές εχθροί εμφανίζουν όποιο αντικείμενο ο Ισαάκ χρειάζεται περισσότερο"
	-- English: "Champion enemies drop whatever pickup Isaac needs the most"

	[C_ID .. 465] = "Επιτρέπει στον Ισαάκ να πυροβολήσει δάκρυα σε κάθε κατεύθυνση", -- Analog Stick
	-- Full old Desc: "↑ {{Tears}} +0.3 Περισσότερα δάκρυα#Επιτρέπει στον Ισαάκ να πυροβολήσει δάκρυα σε κάθε κατεύθυνση"
	-- English: "Allows Isaac to shoot tears in any direction"

	[C_ID .. 466] = "{{Poison}} Ο πρώτος εχθρός που πεθαίνει σε ένα δωμάτιο εκρύγνεται και δηλητηριάζει τους εχθρούς κοντά του", -- Contagion
	-- English: "{{Poison}} The first enemy killed in a room explodes and poisons all nearby enemies#Enemies that die while poisoned also explode and poison nearby enemies"

	[C_ID .. 467] = "{{Damage}} Συνεχώς κάνει 10% της ζημιάς του Ισαάκ στην κατεύθυνση που δείχνει", -- Finger!
	-- English: "{{Damage}} Constantly deals 10% of Isaac's damage in the direction it points"

	[C_ID .. 469] = "Σύννεφο-βοηθός#Αφήνει ένα ίχνος ερπυσμού#Ο ερπυσμός κάνει 6 ζημιά ανά δευτερόλεπτο#Οι εχθροί που αγγίζουν το σύννεφο μπρούν να χτυπηθούν από μία δέσμη φωτός", -- Depression
	-- English: "Leaves a trail of creep#The creep deals 6 damage per second#Enemies that touch the cloud can be hit by a holy light beam"

	[C_ID .. 470] = "Αναπηδά στο δωμάτιο#Σταματάει να κινείται όταν ο Ισαάκ πυροβολάει#Αποκρούει εχθρικές βολές όταν είναι σταματημένος", -- Hushy
	-- Full old Desc: "Αναπηδά στο δωμάτιο#Κάνει ζημιά#Σταματάει να κινείται όταν ο Ισαάκ πυροβολάει#Αποκρούει εχθρικές βολές όταν είναι σταματημένος"
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped"

	[C_ID .. 471] = "Κάθε δάκρυο κάνει 3.5 ζημιά", -- Lil Monstro
	-- Full old Desc: "{{Chargeable}} Προετοιμάζει μία επίθεση παρόμοια με {{Collectible229}} Τα Πνευμόνια του Μόνστρο#Κάθε δάκρυο κάνει 3.5 ζημιά"
	-- English: "{{Chargeable}} Charges a shotgun attack similar to {{NameC229}}#Each tear deals 3.5 damage"

	[C_ID .. 472] = "Άλλοι βοηθοί τον ακολουθούν#Σταματάει να μετακινείται όταν πυροβολεί ο Ισαάκ#Τηλεμετάφερεται στον Ισαάκ όταν σταματάει να πυροβολεί", -- King Baby
	-- English: "Other familiars follow it#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 473] = "Πολύ αργά ορμάει μπροστά", -- Big Chubby
	-- Full old Desc: "Πολύ αργά ορμάει μπροστά#Αποκρούει εχθρικές βολές#Κάνει 40.5 ζημιά ανά δευτερόλεπτο"
	-- English: "Very slowly charges forwards"

	[C_ID .. 475] = "Σκοτώνει τον Ισαάκ 3 δευτερόλεπτα αργότερα", -- Plan C
	-- Full old Desc: "Κάνει 9,999,999 ζημιά σε όλους τους εχθρούς#Σκοτώνει τον Ισαάκ 3 δευτερόλεπτα αργότερα"
	-- English: "{{Warning}} Kills Isaac 3 seconds later"

	[C_ID .. 476] = "Διπλασιάζει 1 τυχαίο αντικείμενο στο δωμάτιο", -- D1
	-- English: "Duplicates a random pickup in the room"

	[C_ID .. 477] = "Απορροφάει όλα τα συλλεκτικά αντικείμενα στο δωμάτιο#Ενεργά αντικείμενα: Ενεργοποιούνται και θα ενεργοποιηθούν με κάθε μελλοντική χρήση του Κενού#↑ Παθητικά αντικείμενα: Προσφέρει δύο τυχαίες αυξήσεις στατιστικών", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate, and will activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 478] = "Παγώνει όλους τους εχθρούς στο δωμάτιο μέχρι να πυροβολήσει ο Ισαάκ#Αγγίζοντας έναν παγωμένο εχθρό ακόμη σε πληγώνει#Οι εχθροί ξεπαγώνουν μετά από 30 δευτερόλεπτα", -- Pause
	-- English: "Pauses all enemies in the room until Isaac shoots#Touching a paused enemy still deals damage to Isaac#Enemies unpause after 30 seconds"

	[C_ID .. 479] = "{{Trinket}} Απορροφάει τα μπιχλιμπίδια που κρατάει ο Ισαάκ και προσφέρει τα πλεονεκτήματά και τα μειονεκτήματά τους μόνιμα#Αυξάνει την πιθανότητα εμφάνισης μπιχλιμπίδιων", -- Smelter
	-- English: "{{Trinket}} Consumes Isaac's held trinkets and grants their effects permanently#Increases the spawn rate of trinkets"

	[C_ID .. 480] = "Μετατρέπει όλα τα αντικείμενα στο δωμάτιο σε μπλέ μύγες ή αράχνες#Διπλασιάζει όλες τις μπλέ αράχνες και μύγες που έχεις#Εμφανίζει 1 μπλέ μύγα ή αράχνη εάν ο Ισαάκ δεν έχει καμία", -- Compost
	-- English: "Converts pickups into blue flies or spiders#Doubles all blue flies and spiders#Spawns 1 blue fly or spider if Isaac has none"

	[C_ID .. 481] = "Διεφθάρει όλα τις εικόνες και την μουσική στο δωμάτιο", -- Dataminer
	-- Full old Desc: "↑ Τυχαία αύξηση στατιστικού#↓ Τυχαία μείωση στατιστικού#Τυχαίο δάκρυα για το δωμάτιο#Διεφθάρει όλα τις εικόνες και την μουσική στο δωμάτιο"
	-- English: "{{Timer}} Random tear effects for the room#{{Blank}} Corrupts all sprites and music in the room"

	[C_ID .. 482] = "Αλλάζει τον χαρακτήρα σου σε έναν άλλο τυχαίο χαρακτήρα#Αφαιρεί τον τελευταίο συλλεκτικό αντικείμενο που απέκτησες", -- Clicker
	-- English: "Changes your character to a random character#Removes the most recent item collected"

	[C_ID .. 483] = "Επηρεάζει όλο τον χώρο#Καταστρέφει όλες τις πέτρες στο δωμάτιο#{VAR:EFFECTLIST}#Ανοίγει την πόρτα του Δωματίου Ορμής Αφεντικών, Hush και τις πόρτες όλων των Μυστικά Δωμάτια#Εάν έχεις χρυσή βόμβα τότε εκείνη αφαιρείται και μπορείς να ξαναχρησιμοποιήσεις το αντικείμενο", -- Mama Mega!
	-- Full old Desc: "Επηρεάζει όλο τον χώρο#Καταστρέφει όλες τις πέτρες στο δωμάτιο#Κάνει 200 ζημιά σε όλους τους εχθρούς#Ανοίγει την πόρτα του Δωματίου Ορμής Αφεντικών, Hush και τις πόρτες όλων των Μυστικά Δωμάτια#Εάν έχεις χρυσή βόμβα τότε εκείνη αφαιρείται και μπορείς να ξαναχρησιμοποιήσεις το αντικείμενο"
	-- English: "Affects the whole floor#Explodes all objects#{VAR:EFFECTLIST}#Opens secret rooms#Opens Boss Rush and Hush regardless of time"

	[C_ID .. 484] = "Αφού χρησιμοποιηθεί, απωθεί κοντινούς εχθρούς και εμφανίζει κύματα πέτρας γύρω από τον Ισαάκ#Τα κύματα μπορούν να ανοίξουν τις πόρτες δωματίων και να σπάσουν πέτρες", -- Wait What?
	-- English: "Upon use, pushes enemies away and spawns a rock wave around Isaac#The rock wave can open rooms and break rocks"

	[C_ID .. 485] = "50% πιθανότητα να διπλασιάσει όλα τα αντικείμενα, συλλεκτικά αντικείμενα και τα σεντούκια στο δωμάτιο#50% πιθανότητα να τα αφαιρέσει και να εμφανίσει 1 κέρμα", -- Crooked Penny
	-- English: "50% chance to double all items, pickups and chests in room#50% chance to remove items / pickups in room and spawn 1 coin"

	[C_ID .. 486] = "Πληγώνει τον Ισαάκ χωρίς να αφαιρέσει την ζωή του#Ενεργοποιεί όλα τα αντικείμενα που ενεργοποιούνται όταν πληγωθείς", -- Dull Razor
	-- English: "Hurts Isaac without removing health#Triggers any on-hit item effects"

	[C_ID .. 488] = "Προσφέρει ένα τυχαίο αντικείμενο για το δωμάτιο", -- Metronome
	-- English: "Grants a random item effect for the room"

	[C_ID .. 489] = "Ενεργοποιεί ένα τυχαίο ζάρι κάθε φορά που χρησιμοποιείται", -- D Infinity
	-- English: "Triggers a random dice effect each use"

	[C_ID .. 490] = "Εμφανίζει 2 τυχαία αντικείμενα ανάλογα με το δωμάτιο όπου χρησιμοποιείται#Αρχίζει με καμία μπάρα φόρτισης", -- Eden's Soul
	-- English: "Spawns 2 random items depending on the current room's item pool#Starts with no charges"

	[C_ID .. 491] = "{{Poison}} Χρησιμοποιώντας ένα χάπι δηλητιριάζει όλους τους εχθρούς στο δωμάτιο", -- Acid Baby
	-- Full old Desc: "{{Pill}} Εμφανίζει ένα τυχαίο χάπι κάθε 3 δωμάτια#{{Poison}} Χρησιμοποιώντας ένα χάπι δηλητιριάζει όλους τους εχθρούς στο δωμάτιο"
	-- English: "{{Pill}} Spawns a random pill every {VAR:1} rooms#{{Poison}} Using a pill poisons all enemies in the room"

	[C_ID .. 492] = "Μετακινείται στην τοποθεσία των {{SecretRoom}} μυστικών δωματίων, φιμέ πετρών και μικρόχωρους", -- YO LISTEN!
	-- Full old Desc: "↑ {{Luck}} +1 Περισσότερη τύχη#Μετακινείται στην τοποθεσία των {{SecretRoom}} μυστικών δωματίων, φιμέ πετρών και μικρόχωρους"
	-- English: "Highlights the location of {{SecretRoom}} secret rooms, tinted rocks and {{LadderRoom}} crawlspaces"

	[C_ID .. 493] = "Για κάθε άδεια κόκκινη καρδιά κέρδισε:#{VAR:EFFECTLIST}", -- Adrenaline
	-- Full old Desc: "Για κάθε άδεια κόκκινη καρδιά κέρδισε:#↑ +0.2 Περισσότερη ζημιά"
	-- English: "For every empty heart container:#{VAR:EFFECTLIST}"

	[C_ID .. 494] = "Τα δάκρυά σου εμφανίζουν 1-2 σπινθήρες ηλεκτρισμού σε κάθε πρόσκρουση#Οι σπινθήρες κάνουν 0.5 φόρες την ζημιά του Ισαάκ", -- Jacob's Ladder
	-- English: "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half of Isaac's damage"

	[C_ID .. 495] = "Πιθανότητα να πυροβολήσεις μία κόκκινη φωτιά που αποκρούει εχθρικές βολές και κάνει ζημιά#Η φωτιά εξαφανίζεται αφού αποκρούσει εχθρικές βολές ή κάνει ζημιά 5 φορές", -- Ghost Pepper
	-- English: "Chance to shoot a red flame that blocks enemy shots and deals contact damage#The flame disappears after dealing damage or blocking shots 5 times"

	[C_ID .. 496] = "Οι βελόνες σκοτώνουν άμεσα κανονικούς εχθρούς, μετατρέποντάς τους σε 10 δάκρυα#Οι βελόνες κάνουν 3x ζημιά εναντίον αφεντικά", -- Euthanasia
	-- Full old Desc: "3.33% πιθανότητα να πυροβολήσεις μία βελόνα#{{Luck}} 100% πιθανότητα όταν έχεις 15 τύχη#Οι βελόνες σκοτώνουν άμεσα κανονικούς εχθρούς, μετατρέποντάς τους σε 10 δάκρυα#Οι βελόνες κάνουν 3x ζημιά εναντίον αφεντικά"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a needle#Needles kill normal enemies instantly, bursting them into 10 tears#{{Damage}} Needles deal 3x Isaac's damage against bosses"

	[C_ID .. 497] = "Όταν μπείς σε ένα δωμάτιο μπερδεύονται όλοι οι εχθροί μέχρι να αρχίσει να πυροβολεί ο Ισαάκ", -- Camo Undies
	-- English: "{{Confusion}} Entering a room confuses all enemies until Isaac starts shooting"

	[C_ID .. 498] = "{{AngelDevilChance}} Εμφανίζει και Αγγελικό και Διαβολικό Δωμάτιο εάν οποιοδήποτε από αυτά θα εμφανίζοταν#Μπαίνοντας σε ένα εξαφανίζει το άλλο", -- Duality
	-- English: "{{AngelDevilChance}} Spawns both a Devil and Angel Room if either would have spawned#Entering one makes the other disappear"

	[C_ID .. 501] = "Κέρδισε 1 Δοχείο Κόκκινης Καρδιάς για κάθε 25 κέρματα που σύλλεξες αφού απέκτησες τον Οισοφάγο της Απληστίας#{{Player14}} Ο Φύλακας μπορεί να κερδίσει επιπλέον Καρδιές Κερμάτων", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins gained after getting Greed's Gullet"

	[C_ID .. 502] = "Πυροβολώντας ενίοτε ρίχνει ένα άσπρο δάκρυο που κάνει διπλή ζημιά και αφήνει ερπυσμό#Όταν πληγώνεσαι πυροβολάς ένα άσπρο δάκρυο", -- Large Zit
	-- English: "{{Slow}} Firing occasionally shoots a white creep tear that deals double damage and slows enemies#Taking damage shoots a white creep tear"

	[C_ID .. 504] = "Εμφανίζει μία ακίνητη μύγα που πυροβολάει εχθρούς#Κάθε βολή κάνει 2 ζημιά", -- Brown Nugget
	-- English: "Spawns a fly turret that shoots at enemies#Each shot deals 2 damage"

	[C_ID .. 505] = "Μπαίνοντας σε ένα δωμάτιο με εχθρούς υπάρχει πιθανότητα να εμφανιστεί ένας φιλικός εχθρός", -- Poke Go
	-- English: "{{Friendly}} Entering a hostile room has a chance to spawn a friendly enemy"

	[C_ID .. 506] = "Χτυπώντας έναν εχθρό από πίσω κάνει διπλή ζημιά και προκαλεί αιμοραγγία, που αφαιρεί 10% της μέγιστης ζωής του εχθρού κάθε 5 δευτερόλεπτα", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds"

	[C_ID .. 507] = "{{Damage}} Κάνει την ζημιά του Ισαάκ + 10% της μέγιστης ζωής του στόχου σε κάθε εχθρό#{{HalfHeart}} Κάνοντας ζημιά με το Καλαμάκι μπορεί να εμφανίσει μισές κόκκινες καρδιές#{{HalfSoulHeart}} Εάν δεν έχεις κόκκινες καρδιές εμφανίζει Ψυχικές καρδιές", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts#{{HalfSoulHeart}} Having no heart containers drops Soul Hearts instead"

	[C_ID .. 508] = "Τροχιάς που προκαλεί αιμοραγγία, που κάνει 10% της μέγιστης ζωής των εχθρών σε ζημιά κάθε 5 δευτερόλεπτα#Κάνει 3x την ζημιά του Ισαάκ σε κάθε εχθρό που το αγγίζει#Δεν αποκρούει βολές", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds#{{Damage}} Deals 3x Isaac's damage per second#Does not block shots"

	[C_ID .. 509] = "Τροχιάς που ρίνχει δάκρυ σε τυχαία κατεύθυνση κάθε 2 δευτερόλεπτα#Δεν αποκρούει βολές", -- Bloodshot Eye
	-- Full old Desc: "Τροχιάς που ρίνχει δάκρυ σε τυχαία κατεύθυνση κάθε 2 δευτερόλεπτα#Κάνει 3.5 ζημιά ανά δάκρυ#Κάνει 30 ζημιά ανά δευτερόλεπτο#Δεν αποκρούει βολές"
	-- English: "Orbital that shoots a tear in a random direction every 2 seconds#Does not block shots"

	[C_ID .. 510] = "Εμφανίζει έναν φιλικό αφεντικό-παραλήρημα για το δωμάτιο", -- Delirious
	-- English: "{{Friendly}} Spawns a friendly delirium version of a boss for the room"

	[C_ID .. 511] = "Περιστρέφει έναν τυχαίο εχθρό μέχρι να πεθάνει", -- Angry Fly
	-- Full old Desc: "Περιστρέφει έναν τυχαίο εχθρό μέχρι να πεθάνει#Κάνει 30 ζημιά ανά δευτερόλεπτο to other enemies"
	-- English: "Orbits a random enemy until that enemy dies"

	[C_ID .. 512] = "Ρίξε μία μαύρη τρύπα που τραβάει τα πάντα#Κάνει 12 ζημιά κάθε δευτερόλεπτο#Καταστρέφει κοντινές πέτρες#Διαρκεί 6 δευτερόλεπτα", -- Black Hole
	-- English: "Throwable black hole, which sucks in everything#Deals 6 damage per second#Destroys nearby rocks#Lasts 6 seconds"

	[C_ID .. 513] = "Randomly charms/fears enemies#Taking damage has a random chance to spawn a rainbow poop", -- Bozo
	-- Full old Desc: "↑ +0.1 Περισσότερη ζημιά#+1 Ψυχική Καρδιά#Randomly charms/fears enemies#Taking damage has a random chance to spawn a rainbow poop"
	-- English: "{{Charm}} Randomly charms/fears enemies#Taking damage has a random chance to spawn a Rainbow Poop"

	[C_ID .. 514] = "Κάνει εχθρούς και εχθρικές βολές να παγώνουν τυχαία#25% πιθανότητα να διπλασιάσει την ανταμοιβή ολοκλήρωσης δωματίου", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#25% chance to double room clear drops"

	[C_ID .. 515] = "Εμφανίζει ένα τυχαίο συλλεκτικό αντικείμενο από την ομάδα αντικειμένου του εχθρού#Πιθανότητα να εμφανίσει ένα Κομμάτι Άνθρακα ή Το Σκατό", -- Mystery Gift
	-- English: "Spawns a random item from the current room's item pool#Chance to spawn Lump of Coal or The Poop instead"

	[C_ID .. 516] = "Εμφανίζει έναν ψεκαστήρα που ρίχνει τα ίδια δάκρυα με τον Ισαάκ σε κύκλο", -- Sprinkler
	-- English: "Spawns a Sprinkler that shoots the same tears as Isaac in a circle around itself"

	[C_ID .. 517] = "Αφαιρεί την καθυστέρηση μεταξύ τις τοποθετήσεις βόμβας", -- Fast Bombs
	-- Full old Desc: "{{Bomb}} +7 Βόμβες#Αφαιρεί την καθυστέρηση μεταξύ τις τοποθετήσεις βόμβας"
	-- English: "Removes the delay between bomb placements"

	[C_ID .. 518] = "Βοηθός που μοιάζει με τυχαίο μωρό#Έχει τυχαία εφέ δακρύων#Το εφέ αλλάζει κάθε χώρο", -- Buddy in a Box
	-- English: "Familiar which looks like a random co-op baby#Has random tear effects#Effects change every floor"

	[C_ID .. 519] = "Μεταμορφώνεται σε τυχαίο βοηθό κάθε 10 δευτερόλεπτα", -- Lil Delirium
	-- English: "Transforms into a random familiar every 10 seconds"

	[C_ID .. 520] = "Σκοτώνοντας 15 εχθρούς προσθέτει 1 μπάρα στο ενεργό αντικείμενό σου", -- Jumper Cables
	-- English: "Killing 15 enemies adds 1 charge to the active item"

	[C_ID .. 521] = "Κάνει ένα τυχαίο αντικείμενο στην {{Shop}} Αγορά ή το {{DevilRoom}} Διαβολικό Δωμάτιο δωρεάν#Κρατώντας το αντικείμενο εγγυάται πως ένα αντικείμενο της Αγορά βρίσκεται σε εκπτώσεις", -- Coupon
	-- English: "Makes one random item in the {{Shop}} Shop or {{DevilRoom}} Devil Room free#Holding the item guarantees one Shop item is on sale"

	[C_ID .. 522] = "Σταματά όλες τις εχθρικές βολές που πλησιάζουν τον Ισαάκ για 3 δευτερόλεπτα και ύστερα τις αποκρούει", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards"

	[C_ID .. 523] = "Αποθηκεύει όλα τα αντικείμενα και συλλεκτικά αντικείμενα στο δωμάτιο#Χρησιμοποιώντας το αντικείμενο ξανά εμφανίζει τα αποθηκευμένα αντικείμενα#Επιτρέπει στον Ισαάκ να μετακινήσει αντικείμενα σε άλλα δωμάτια", -- Moving Box
	-- English: "Stores all pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Τα δάκρυα του Ισαάκ συνδέονται με δεσμές ηλεκτρισμού#Οι δέσμες κάνουν την ίδια ζημιά με τον Ισαάκ", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#The beams deal Isaac's damage"

	[C_ID .. 525] = "Όταν πληγώνεσαι εμφανίζεται ένας τροχιάς που αποκρούει εχθρικές βολές#Σταματάει όταν έχεις 3 τροχείς#Οι τροχείς καταστρέφονται εάν δεχτούν πολύ ζημιά", -- Leprosy
	-- English: "Taking damage spawns a projectile blocking orbital#Caps at 3 orbitals#They deal 35 contact damage per second#Orbitals are destroyed if they take too much damage"

	[C_ID .. 526] = "Εμφανίζει έναν μικρό βοηθό καβαλάρη που εμφανίζει spawns ακρίδες#Ο καβαλάρης και οι ακρίδες του αλλάζουν κάθε 10 δευτερόλεπτα", -- 7 Seals
	-- English: "Spawns a small horseman familiar that spawns locusts#The horseman and its locust changes every 10 seconds"

	[C_ID .. 527] = "Εμφανίζει ένα μετακινούμενο σταυρόνημα για λίγα δευτερόλεπτα, και ύστερα εμφανίζει ένα φάντασμα που, ανάλογα με την θέση του σταυρονήματος:#Ανοίξει πόρτες ή σεντούκια#Μετακινήσει ένα αντικείμενο#50% πιθανότητα να κλέψει από την Αγορά / τον Διάβολο#Επιτεθεί σε έναν εχθρό μέχρι να πεθάνει#Ανατινάξει τείχους, πέτρες, καταστηματάρχες, αγγελικά αγάλματα, μηχανές, ζητιάνους", -- Mr. ME!
	-- English: "Displays a movable cursor for a few seconds, then summons a ghost that will, depending on the cursor position:#Open doors or chests#Fetch an item#50% chance to steal from the Shop / Devil#Attack an enemy until it dies#Explode walls, rocks, shopkeepers, angel statues, machines, beggars"

	[C_ID .. 528] = "Τροχιάς-πρίσμα#Τα δάκρυα που το αγγίζουν διαιρούνται σε 4", -- Angelic Prism
	-- English: "Orbital prism#Friendly tears hitting it split into 4"

	[C_ID .. 529] = "Τα δάκρυα του Ισαάκ αναπηδούν το ένα από το άλλο και εξαφανίζονται όταν σταματήσουν να κουνιούνται", -- Pop!
	-- English: "Isaac's tears bounce off each other and disappear when they stop moving"

	[C_ID .. 530] = "Σκοτώνοντας εχθρούς στην σειρά που ορίζεται από το σημάδι {{DeathMark}} από πάνω τους προσφέρει ένα τυχαίο αντικείμενο ή αύξηση στατιστικών", -- Death's List
	-- English: "Killing enemies in the order dictated by the mark {{DeathMark}} above them grants a random pickup or stat increase"

	[C_ID .. 532] = "Τα δάκρυα του Ισαάκ σταδιακά επιβραδύνονται, σταματάνε, και εκρήγνυνται σε 8 μικρότερα δάκρυα#Τα δάκρυα μπορούν να ενωθούν και να μεγαλώσουν", -- Lachryphagy
	-- English: "Isaac's tears progressively slow down, stop, then explode into 8 smaller tears#Tears can merge and become bigger"

	[C_ID .. 533] = "Αντικαθιστά τα δάκρυα του Ισαάκ με διαπεραστικές δέσμες φωτός#Οι δέσμες κάνουν 33% ζημιά αλλά πληγώνουν εχθρούς πολλαπλές φορές", -- Trisagion
	-- English: "Replaces Isaac's tears with piercing beams of light#The beams deal 33% damage but can hit enemies multiple times"

	[C_ID .. 534] = "Επιτρέπει στον Ισαάκ να κρατάει 2 ενεργά αντικείμενα#Μπορείς να επιλέξεις το άλλο αντικείμενο πατώντας το κουμπί 'Άφησε'({{ButtonRT}})", -- Schoolbag
	-- English: "Allows Isaac to hold 2 active items#The items can be swapped using the Drop button ({{ButtonRT}})"

	[C_ID .. 535] = "{{Collectible313}} Μπαίνοντας σε ένα Δωμάτιο Αφεντικού προσφέρει μία {{HolyMantleSmall}} ασπίδα Αγίου Μανδύα", -- Blanket
	-- Full old Desc: "{{SoulHeart}} +1 Ψυχική Καρδιά#{{HealingRed}} Θεραπέυει 1 Κόκκινη Καρδιά#{{Collectible313}} Μπαίνοντας σε ένα Δωμάτιο Αφεντικού προσφέρει μία {{HolyMantleSmall}} ασπίδα Αγίου Μανδύα"
	-- English: "{{HolyMantle}} Entering a boss room grants a Holy Mantle shield (prevents damage once)"

	[C_ID .. 536] = "Θυσιάζει μέχρι και 2 βοηθούς και εμφανίζει ένα Διαβολικό αντικείμενο για κάθε θυσία#Μετατρέπει μπλε αράχνες/μύγες σε κέρματα", -- Sacrificial Altar
	-- English: "Sacrifices up to 2 familiars and spawns a devil item for each sacrifice#{{Coin}} Turns blue spiders/flies into coins"

	[C_ID .. 537] = "{{Pill}} Εμφανίζει ένα τυχαίο χάπι όταν αποκτηθεί#Ρίχνει μία γραμμή ερπυσμού#Το είδος ερπυσμού αλλάζει με κάθε χρήση χαπιού", -- Lil Spewer
	-- English: "{{Pill}} Spawns a random pill on pickup#Fires a line of creep#The type of creep changes with each pill use"

	[C_ID .. 538] = "{{Collectible479}} Όταν πληγώνεσαι μπορεί να 'καταπιείς' το μπιχλιμπίδι που κρατάς, κερδίζοντας τα πλεονεκτήματά και τα μειονεκτήματά του μόνιμα", -- Marbles
	-- Full old Desc: "{{Trinket}} Εμφανίζει 3 τυχαία μπιχλιμπίδια#{{Collectible479}} Όταν πληγώνεσαι μπορεί να 'καταπιείς' το μπιχλιμπίδι που κρατάς, κερδίζοντας τα πλεονεκτήματά και τα μειονεκτήματά του μόνιμα"
	-- English: "{{Collectible479}} Taking damage has a 10% chance to consume Isaac's held trinket and grant its effects permanently"

	[C_ID .. 539] = "Όταν πληγώνεσαι εμφανίζεται ένα γοητευμένο εχθρό#Εμφανίζει πιο δυνατούς εχθρούς ανάλογα με τον αριθμό δωματίων που ολοκληρώθηκαν χωρίς να πληγωθείς", -- Mystery Egg
	-- English: "{{Friendly}} Taking damage spawns a friendly enemy#Spawns stronger friends the more rooms are cleared without taking damage"

	[C_ID .. 540] = "Τα δάκρυα του Ισαάκ αναπηδάνε από το έδαφος και προκαλεί ζημιά για κάθε πιτσιλιά", -- Flat Stone
	-- English: "Isaac's tears bounce off the floor and cause splash damage on every bounce"

	[C_ID .. 542] = "Αποκρούει εχθρικές βολές", -- Slipped Rib
	-- Full old Desc: "Τροχιάς#Αποκρούει εχθρικές βολές"
	-- English: "Reflects enemy projectiles"

	[C_ID .. 543] = "Όταν πληγώνεσαι εμφανίζεται ένα άσπρο σκατό#Ενώ βρίσκεσαι στην αύρα του σκατού:#{VAR:EFFECTLIST}#Πιθανότητα να αποκρούσει ζημιά", -- Hallowed Ground
	-- Full old Desc: "Όταν πληγώνεσαι εμφανίζεται ένα άσπρο σκατό#Ενώ βρίσκεσαι στην αύρα του σκατού:#↑ {{Tears}} -50% Καθυστέρηση δακρύων#Πιθανότητα να αποκρούσει ζημιά"
	-- English: "Taking damage spawns a white poop#While inside the poop's aura:#{VAR:EFFECTLIST}#{{IND}}Chance to block damage"

	[C_ID .. 544] = "Αιωρείται μπροστά από τον Ισαάκ#Κάνει την ζημιά του Ισαάκ 6 φορές ανα δευτερόλεπτο", -- Pointy Rib
	-- English: "Levitates in front of Isaac#Deals 6x Isaac's damage per second"

	[C_ID .. 545] = "Εμφανίζει έναν κοκαλένιο Τροχιάς ή έναν γοητευμένο σκελετό για κάθε εχθρό που πέθανε στο δωμάτιο", -- Book of the Dead
	-- English: "{{Friendly}} Spawns a bone orbital or friendly bony per enemy killed in the room (up to 8)"

	[C_ID .. 546] = "Προσφέρει μία αύρα στον Ισαάκ που παγώνει εχθρούς", -- Dad's Ring
	-- English: "{{Petrify}} Grants an aura that petrifies enemies"

	[C_ID .. 547] = "{{Trinket21}} Εμφανίζει το Μυστηριώδες Χαρτί", -- Divorce Papers
	-- Full old Desc: "{{EmptyBoneHeart}} +1 Κοκαλένια Καρδιά#↑ {{Tears}} +0.7 Περισσότερα δάκρυα#{{Trinket21}} Εμφανίζει το Μυστηριώδες Χαρτί"
	-- English: "{{Trinket21}} Spawns the Mysterious Paper trinket"

	[C_ID .. 548] = "Βοηθός-μπούμερανγκ#Αρπάζει και φέρνει αντικείμενα σε εσένα", -- Jaw Bone
	-- Full old Desc: "Βοηθός-μπούμερανγκ#Κάνει 7 ζημιά#Αρπάζει και φέρνει αντικείμενα σε εσένα"
	-- English: "Boomerang-like familiar#Can grab and bring back pickups"

	[C_ID .. 549] = "↑ {{Tears}} +0.5 Περισσότερα δάκρυα", -- Brittle Bones
	-- Full old Desc: "{{EmptyBoneHeart}} Αντικαθιστά όλες τις Κόκκινες Καρδιές του Ισαάκ με 6 κενές Κοκαλενιες Καρδιές#Αφού χάσεις Κοκαλένια Καρδιά:#Ρίχνει 8 κόκκαλα in σε όλες τις κατευθύνσεις#↑ {{Tears}} +0.5 Περισσότερα δάκρυα"
	-- English: "{{EmptyBoneHeart}} Replaces all of Isaac's Red Heart containers with 6 empty Bone Hearts#Upon losing a Bone Heart:#{VAR:EFFECTLIST}#{{IND}}Shoots 8 bone tears in all directions"

	[C_ID .. 550] = "Το πόδι της Μαμάς προσπαθεί συνεχώς να χτυπήσει ον Ισαάκ#Χρησιμοποιώντας το αντικείμενο σταματάει αυτές τις επιθέσεις για το δωμάτιο#{{Warning}} (Προσπάθησε να νικήσεις την Ορμή Αφεντικών!)", -- Broken Shovel
	-- English: "Mom's Foot constantly tries to stomp Isaac#Using the item stops the stomping for the room (or one Boss Rush wave)#{{Warning}} (Try to beat Boss Rush with it!)"

	[C_ID .. 551] = "Ολοκληρώνει το Φτυάρι της Μαμάς#{{Warning}} Χρησιμοποίησε το φτυάρι στον λόφο χώματος στον \"Σκοτεινό Χώρο\"", -- Broken Shovel
	-- English: "Completes Mom's Shovel#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 552] = "Εμφανίζει μία καταπακτή που οδηγεί στον επόμενο χώρο#10% πιθανότητα για {{LadderRoom}}καταπακτή μικρόχωρου#{{Warning}} Χρησιμοποίησε το φτυάρι στον λόφο χώματος στον \"Σκοτεινό Χώρο\"", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#10% chance for {{LadderRoom}} crawlspace trapdoor#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 1] = "{{Coin}} Όταν πληγώνεσαι εμφάνισε 1 κέρμα", -- Swallowed Penny
	-- English: "{{Coin}} Taking damage spawns 1 coin"

	[T_ID .. 2] = "50% πιθανότητα να εμφανιστούν ανταμοιβές από σκατά", -- Petrified Poop
	-- English: "50% chance to get drops from poop"

	[T_ID .. 3] = "-1 απαιτούμενη μπάρα για ενεργά αντικείμενα", -- AAA Battery
	-- English: "{{Battery}} -1 Charge needed for active items"

	[T_ID .. 4] = "{{Collectible44}} Χρησιμοποιώντας ένα ενεργό αντικείμενο ο Ισαάκ τηλεμεταφέρεται σε ένα τυχαίο δωμάτιο", -- Broken Remote
	-- English: "{{Collectible44}} Using an active item teleports Isaac to a random room"

	[T_ID .. 5] = "2x πιθανότητα για πρωταθλητές εχθρούς", -- Purple Heart
	-- English: "2x chance for champion enemies"

	[T_ID .. 6] = "Προσελκύει κέρματα στον Ισαάκ", -- Broken Magnet
	-- English: "{{Coin}} Attracts coins to Isaac"

	[T_ID .. 7] = "{{Collectible33}} Μεγαλύτερη πιθανότητα να βρεθεί η βίβλος σε {{Shop}} καταστήματα και {{Library}} βιβλιοθήκες", -- Rosary Bead
	-- Full old Desc: "{{AngelChance}} 50% μεγαλύτερη πιθανότητα για Αγγελικά Δωμάτια#{{Collectible33}} Μεγαλύτερη πιθανότητα να βρεθεί η βίβλος σε {{Shop}} καταστήματα και {{Library}} βιβλιοθήκες"
	-- English: "{{Collectible33}} Higher chance to find The Bible in {{Shop}} Shops and {{Library}} Libraries"

	[T_ID .. 8] = "{VAR:ITEMDESCRIPTION}", -- Cartridge
	-- Full old Desc: "{{Collectible93}} Όταν πληγώνεσαι υπάρχει 5% πιθανότητα να ενεργοποιηθεί Το Gamekid"
	-- English: "{{Timer}} {VAR:LUCKCHANCE}% chance upon taking damage:#{VAR:ITEMDESCRIPTION}"

	[T_ID .. 9] = "Τα δάκρυα του Ισαάκ σφύγονται#Επηρεάζει το μέγεθος των δακρύων", -- Pulse Worm
	-- English: "Isaac's tears pulsate#Affects tear hitbox"

	[T_ID .. 10] = "↑ {{Tears}} +0.3 Περισσότερα δάκρυα", -- Wiggle Worm
	-- Full old Desc: "Τα δάκρυα του Ισαάκ κουνιούνται σε κύματα#↑ {{Tears}} +0.3 Περισσότερα δάκρυα"
	-- English: "Isaac's tears move in waves"

	[T_ID .. 11] = "Τα δάκρυα του Ισαάκ κινούνται σε δακτύλους με μεγάλη ταχύτητα", -- Ring Worm
	-- English: "Isaac's tears move in spirals with high speed"

	[T_ID .. 12] = "50% πιο πλατεία δάκρυα#Ενισχύει την ορμή των δακρύων", -- Flat Worm
	-- English: "50% wider tears#Increases knockback"

	[T_ID .. 13] = "{{Shop}} Επιτρέπει στον Ισαάκ να πάρει 1 αντικείμενο σε πώληση χωρίς να πληρώσει", -- Store Credit
	-- English: "{{Shop}} Allows Isaac to take 1 Shop item for free"

	[T_ID .. 14] = "Προσφέρει ανοσία σε ερπυσμό και καρφιά", -- Callus
	-- English: "Immune to creep and floor spikes"

	[T_ID .. 15] = "{{Coin}} Καταστρέφοντας πέτρες εμφανίζονται κέρματα", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks spawns coins"

	[T_ID .. 17] = "{{BlackHeart}} +10% πιθανότητα για τυχαίες Ψυχικές καρδιές να εμφανιστούν ως Μαύρες καρδιές", -- Black Lipstick
	-- English: "{{BlackHeart}} +10% chance for random Soul Hearts to spawn as Black Hearts"

	[T_ID .. 18] = "{{EternalHeart}} +3% πιθανότητα για Αιώνιες Καρδιές", -- Bible Tract
	-- English: "{{EternalHeart}} +3% chance for Eternal Hearts"

	[T_ID .. 19] = "Τα χρυσά σεντούκια {{GoldenChest}} μπορούν να ανοιχτούν για δωρεάν", -- Paper Clip
	-- English: "{{GoldenChest}} Gold chests can be opened for free"

	[T_ID .. 20] = "{{BlackHeart}} Εμφανίζει 1 Μαύρη καρδιά όταν η ζωή του Ισαάκ μειώνεται σε μισή καρδιά#{{Warning}} Εξαφανίζεται αφού εμφανίσει 3 Μαύρες καρδιές", -- Monkey Paw
	-- English: "{{BlackHeart}} Spawns 1 Black Heart when Isaac's health is reduced to half a heart#{{Warning}} Disappears after spawning 3 Black Hearts"

	[T_ID .. 21] = "{{Blank}} Τυχαία ενεργοποιεί: #{VAR:TEXT}", -- Mysterious Paper
	-- Full old Desc: "{{Blank}} Τυχαία ενεργοποιεί: #{{Collectible327}} Το Πόλαροιντ#{{Collectible328}} Το Αρνητικό#{{Trinket48}} Μια Αγνοούμενη Σελίδα #{{Trinket23}} Πόστερ Αγνοούμενου"
	-- English: "Randomly grants the effect of:#{VAR:TEXT}"

	[T_ID .. 22] = "{{Heart}} Μειώνει την πιθανότητα εμφάνισης καρδιάς σε 20%#{{BlackHeart}} Όλες οι καρδιές μετατρέπονται σε Μαύρες καρδιές#{{Key}} Αυξάνει την πιθανότητα εμφάνισης των κλειδιών", -- Daemon's Tail
	-- English: "{{Heart}} Decreases spawn rate of hearts to 20%#{{BlackHeart}} All Heart pickups turn into Black Hearts#{{Key}} Increases the drop chance of keys"

	[T_ID .. 23] = "{{Player10}} Ξαναεμφανίσου ως Τον Χαμένο όταν πεθάνεις#Πεθαίνοντας σε {{SacrificeRoom}} Δωμάτιο Θυσίας ενώ κρατάς αυτό το μπιχλιμπίδι ξεκλειδώνει Τον Χαμένο", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death"

	[T_ID .. 24] = "{{Coin}} 20% μεγαλύτερη πιθανότητα να εμφανιστούν κέρματα από σκατά#Όταν ο Ισαάκ συλλέγει ένα κέρμα κλάνει", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#Picking up coins makes Isaac fart"

	[T_ID .. 25] = "Ο Ισαάκ κλάνει ή εμφανίζει σκατά κάθε 30 δευτερόλεπτα", -- Mysterious Candy
	-- English: "Isaac farts or spawns poop every 30 seconds"

	[T_ID .. 26] = "↑ {{Range}} +10 Έκταση δακρύων", -- Hook Worm
	-- Full old Desc: "Τα δάκρυα του Ισαάκ κουνιούνται με γωνιακά μοτίβα#↑ {{Range}} +10 Έκταση δακρύων"
	-- English: "Isaac's tears move in angular patterns"

	[T_ID .. 28] = "{{Player4}} 22% πιθανότητα να ξαναεμφανιστεί ως ο ??? (Μπλε Μωρό) όταν πεθάνεις", -- Broken Ankh
	-- English: "{{Player4}} 22% chance to respawn as ??? (Blue Baby) on death"

	[T_ID .. 29] = "Όταν πληγώνεσαι εμφανίζεις 1 μπλε μύγα", -- Fish Head
	-- English: "Taking damage spawns 1 blue fly"

	[T_ID .. 32] = "25% πιθανότητα για ένα τυχαίο αντικείμενο μανιταριού ανά δωμάτιο#Μπορεί να εμφανίσει μυστικά δωμάτια στον χάρτη", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room#Can reveal special rooms on the minimap"

	[T_ID .. 34] = "{{Heart}} 10% πιθανότητα για την ανταμοιβή ολοκλήρωσης δωματίου να είναι μια τυχαία καρδιά#Πιθανότητα για περισσότερες καρδιές από σεντούκια, φιμέ βράχια και κατεστραμμένες μηχανές", -- Child's Heart
	-- English: "{{UnknownHeart}} 10% chance for the room clear reward to be a random heart#{{Heart}} 33% chance for a bonus heart from chests, tinted rocks, and destroyed machines"

	[T_ID .. 36] = "{{Key}} 10% πιθανότητα για την ανταμοιβή ολοκλήρωσης δωματίου να είναι ένα τυχαίο κλειδί#Πιθανότητα για περισσότερα κλειδιά από σεντούκια, φιμέ βράχια και κατεστραμμένες μηχανές", -- Rusted Key
	-- English: "{{Key}} 10% chance for the room clear reward to be a key#{{Key}} 33% chance for a bonus key from chests, tinted rocks, and destroyed machines"

	[T_ID .. 38] = "+10% πιθανότητα για τις καρδιές να είναι {{SoulHeart}} Ψυχικές καρδιές, {{BlackHeart}} Μαύρες καρδιές ή {{EmptyBoneHeart}} Κοκαλενιες καρδιές", -- Mom's Pearl
	-- English: "+10% chance for heart drops to be {{SoulHeart}} Soul Hearts, {{BlackHeart}} Black Hearts or {{EmptyBoneHeart}} Bone Hearts"

	[T_ID .. 40] = "{{Damage}} Όταν πληγωθείς υπάρχει 20% πιθανότητα να κερδίσεις +1.8 περισσότερη ζημιά", -- Red Patch
	-- Full old Desc: "{{Damage}} Όταν πληγωθείς υπάρχει 20% πιθανότητα να κερδίσεις +1.8 περισσότερη ζημιά#{{Luck}} 100% πιθανότητα όταν έχεις 8 τύχη#{{Timer}} Διαρκεί για το τωρινό δωμάτιο"
	-- English: "{{Timer}} Taking damage has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +1.8 damage for the room"

	[T_ID .. 41] = "{{Bomb}} 10% πιθανότητα για την ανταμοιβή ολοκλήρωσης δωματίου να είναι μία τυχαία βόμβα#Πιθανότητα για περισσότερες βόμβες από σεντούκια, φιμέ βράχια και κατεστραμμένες μηχανές#{{Warning}} Αφαιρέι {{Trinket53}}Το Τσιμπούρι", -- Match Stick
	-- English: "{{Bomb}} 10% chance for the room clear reward to be a bomb#{{Bomb}} 33% chance for a bonus bomb from chests, tinted rocks, and destroyed machines#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 42] = "+8% πιθανότητα για ανταμοιβή ολοκλήρωσης δωματίου#Περισσότερα αντικείμενα από σεντούκια,  φιμέ βράχια και κατεστραμμένες μηχανές", -- Lucky Toe
	-- Full old Desc: "↑ {{Luck}} +1 Περισσότερη τύχη#+8% πιθανότητα για ανταμοιβή ολοκλήρωσης δωματίου#Περισσότερα αντικείμενα από σεντούκια,  φιμέ βράχια και κατεστραμμένες μηχανές"
	-- English: "+8% room clear reward chance#33% chance for an extra pickup from chests, tinted rocks, and destroyed machines"

	[T_ID .. 43] = "Όταν πληγωθείς σε μισή καρδιά ή λιγότερο, Ο Ισαάκ τηλεμεταφέρεται σε τυχαίο δωμάτιο", -- Cursed Skull
	-- English: "When damaged down to half a heart or less, Isaac is teleported to a random room"

	[T_ID .. 44] = "{{Pill}} 10% πιθανότητα για την ανταμοιβή ολοκλήρωσης δωματίου να είναι ένα τυχαίο χάπι#Πιθανότητα για περισσότερα χάπια από σεντούκια, φιμέ βράχια και κατεστραμμένες μηχανές", -- Safety Cap
	-- English: "{{Pill}} 10% chance for the room clear reward to be a pill#{{Pill}} 33% chance for a bonus pill from chests, tinted rocks, and destroyed machines"

	[T_ID .. 45] = "{{Card}} 10% πιθανότητα για την ανταμοιβή ολοκλήρωσης δωματίου να είναι ένα τυχαίο κλειδί#Πιθανότητα για περισσότερα κλειδιά από σεντούκια, φιμέ βράχια και κατεστραμμένες μηχανές", -- Ace of Spades
	-- English: "{{Card}} 10% chance for the room clear reward to be a card#{{Card}} 33% chance for a bonus card from chests, tinted rocks, and destroyed machines"

	[T_ID .. 49] = "{{HalfHeart}} Συλλέγοντας ένα κέρμα υπάρχει 50% πιθανότητα να εμφανιστεί μισή καρδιά", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 50% chance to spawn a half Red Heart"

	[T_ID .. 50] = "{{Bomb}} Συλλέγοντας ένα κέρμα υπάρχει 50% πιθανότητα να εμφανιστεί μία βόμβα", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 50% chance to spawn a bomb"

	[T_ID .. 51] = "{{Key}} Συλλέγοντας ένα κέρμα υπάρχει 50% πιθανότητα να εμφανιστεί ένα κλειδί", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 50% chance to spawn a key"

	[T_ID .. 52] = "{{Coin}} Συλλέγοντας ένα κέρμα υπάρχει 50% πιθανότητα να προστεθεί ένα επιπλέον κέρμα", -- Counterfeit Penny
	-- English: "{{Coin}} Picking up a coin has a 50% chance to add another coin to the counter"

	[T_ID .. 53] = "-15% ζωή αφεντικού#{{BossRoom}} Θεραπεύει 1 Κόκκινη Καρδιά όταν μπαίνεις σε Δωμάτιο Αφεντικού#{{Warning}} Όταν, το πάρεις δεν μπορεί να αφαιρεθεί#Μπορεί να αφαιρεθεί μόνο με το {{Trinket41}} 'Μπαστούνι Σπίρτου' ή καταπίνοντάς το", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick or gulping"

	[T_ID .. 54] = "Βοηθός με διαπεραστικά δάκρυα", -- Isaac's Head
	-- Full old Desc: "Βοηθός με διαπεραστικά δάκρυα#Κάνει 3.5 ζημιά με κάθε δάκρυ"
	-- English: "Familiar with piercing tears"

	[T_ID .. 55] = "{{EternalHeart}} Μπαίνοντας σε έναν καινούργιο χώρο κέρδισε +1 Αιώνια Καρδιά", -- Maggy's Faith
	-- English: "{{EternalHeart}} Entering a new floor grants +1 Eternal Heart"

	[T_ID .. 56] = "{{DevilRoom}} Μειώνει την τιμή όλων των ανταλλαγών του διαβόλου σε 1 καρδιά#Δεν μειώνει την τιμή 3 ψυχικών καρδιών ", -- Judas' Tongue
	-- English: "{{DevilRoom}} Reduces all devil deal prices to 1 heart container#Doesn't reduce 3 Soul Heart prices"

	[T_ID .. 57] = "Βοηθός που αναπηδά στο δωμάτιο#Πυροβολεί στην ίδια κατεύθυνση με τον Ισαάκ", -- ???'s Soul
	-- Full old Desc: "Βοηθός που αναπηδά στο δωμάτιο#Πυροβολεί στην ίδια κατεύθυνση με τον Ισαάκ#Κάνει 3.5 ζημιά ανά δάκρυ"
	-- English: "Familiar that bounces around the room#Shoots in the same direction as Isaac"

	[T_ID .. 58] = "{{Damage}} Σκοτώνοντας έναν εχθρό υπάρχει 1/15 πιθανότητα να προσφέρει +0.5 περισσότερη ζημιά", -- Samson's Lock
	-- Full old Desc: "{{Damage}} Σκοτώνοντας έναν εχθρό υπάρχει 1/15 πιθανότητα να προσφέρει +0.5 περισσότερη ζημιά#{{Luck}} 100% πιθανότητα όταν έχεις 10 τύχη#{{Timer}} Effect lasts for the current room"
	-- English: "{{Timer}} Killing an enemy has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +0.5 damage for the room"

	[T_ID .. 61] = "Μετατρέπει όλα τα σεντούκια σε κόκκινα σεντούκια", -- The Left Hand
	-- English: "{{RedChest}} Turns all chests into Red Chests"

	[T_ID .. 62] = "Πέτρες με καταπακτές μικρόχωρου και φιμέ βράχια αναβοσβήνουν κάθε 10 δευτερόλεπτα", -- Shiny Rock
	-- English: "Crawlspace rocks and tinted rocks blink every 10 seconds"

	[T_ID .. 63] = "Μετατρέπει βόμβες τρολ σε ανενεργές βόμβες", -- Safety Scissors
	-- English: "{{Bomb}} Turns Troll Bombs into bomb pickups"

	[T_ID .. 64] = "Προσφέρει το εφέ ενός τυχαίου σκουληκιού κάθε 3 δευτερόλεπτα", -- Rainbow Worm
	-- English: "Grants a random worm effect every 3 seconds"

	[T_ID .. 67] = "Όταν πληγώνεσαι υπάρχει 50% πιθανότητα να χρησιμοποιηθεί το:#{VAR:TEXT}", -- Cracked Dice
	-- Full old Desc: "Όταν πληγώνεσαι υπάρχει 50% πιθανότητα να χρησιμοποιηθεί το:#{{Collectible105}} Εξάπλευρο Ζάρι#{{Collectible406}} Οκτάπλευρο Ζάρι#{{Collectible386}} Δωδεκάπλευρο Ζάρι #{{Collectible166}} Εικοσάπλευρο Ζάρι"
	-- English: "Taking damage has a 50% chance to trigger one of these effects:#{VAR:TEXT}"

	[T_ID .. 68] = "Ο Ισαάκ προσελκύει αντικείμενα και εχθρούς", -- Super Magnet
	-- English: "Isaac attracts pickups and enemies"

	[T_ID .. 69] = "Ο Ισαάκ γίνεται τυχαία αόρατος#Μπερδεύει εχθρούς", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies"

	[T_ID .. 70] = "Τυχαία εμφανίζει μια μπλε αράχνη σε δωμάτια με εχθρούς", -- Louse
	-- English: "Occasionally spawns a blue spider in hostile rooms"

	[T_ID .. 71] = "Οι βόμβες του Ισαάκ αφήνουν επιβλαβή ερπυσμό", -- Bob's Bladder
	-- English: "Isaac's bombs leave damaging creep"

	[T_ID .. 72] = "6.66% πιθανότητα για την ανταμοιβή ολοκλήρωσης δωματίου να είναι μπαταρία#+10% πιθανότητα για τυχαία αντικείμενα να είναι μπαταρία#5% πιθανότητα να προστεθεί 1 μπάρα στο ενεργό αντικείμενο το Ισαάκ όταν ολοκληρώνεται ένα δωμάτιο", -- Watch Battery
	-- English: "{{Battery}} 6.66% chance for the room clear reward to be a battery#{{Battery}} +10% chance for random pickups to be a battery#{{Battery}} 5% chance to add 1 charge to held active item when clearing a room"

	[T_ID .. 73] = "10% πιθανότητα για την έκρηξη βόμβας to να εμφανίσει μια ανενεργή βόμβα", -- Blasting Cap
	-- English: "{{Bomb}} 10% chance for exploding bombs to drop a bomb pickup"

	[T_ID .. 74] = "Το σπάσιμο μιας πέτρας έχει 0.5% πιθανότητα να εμφανίσει μία {{LadderRoom}} καταπακτή μικρόχωρου", -- Stud Finder
	-- English: "{{LadderRoom}} +0.5% chance to reveal a crawlspace when breaking a rock"

	[T_ID .. 75] = "Grants a random trinket effect every room", -- Error
	-- English: "Grants a random trinket effect every room"

	[T_ID .. 76] = "↑ 50% πιθανότητα για τα σεντούκια να εμφανίσουν περισσότερα αντικείμενα#↓ 50% πιθανότητα για τα σεντούκια να περιέχουν μία μπλε μύγα", -- Poker Chip
	-- English: "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly"

	[T_ID .. 77] = "Ενισχύει την ορμή των δακρύων", -- Blister
	-- English: "Increases knockback"

	[T_ID .. 78] = "Οι καταστάσεις που εφαρμόζονται στους εχθρούς διαρκούν τον διπλάσιο χρόνο", -- Second Hand
	-- English: "Status effects applied to enemies last twice as long"

	[T_ID .. 79] = "Χρησιμοποιώντας ένα χάπι, μία κάρτα ή ένα ρουνικό έχει 25% πιθανότητα να εμφανίσει ένα αντίγραφο αυτού του χαπιού, της κάρτας ή του ρουνικού", -- Endless Nameless
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill has a 25% chance to spawn a copy of that rune, card or pill"

	[T_ID .. 81] = "Ο χρόνος αθανασίας αφού πληγωθείς διαρκεί τον διπλάσιο χρόνο", -- Blind Rage
	-- English: "Invincibility frames after taking damage last twice as long"

	[T_ID .. 82] = "{{TreasureRoom}} Μελλοντικά Δωμάτια Θησαυρού έχουν +15% πιθανότητα να επιτρέψουν τον Ισαάκ να διαλέξει μεταξύ δύο αντικειμένων", -- Golden Horse Shoe
	-- English: "{{TreasureRoom}} Future Treasure Rooms have +15% chance to let Isaac choose between two items"

	[T_ID .. 83] = "{{Shop}} Επιτρέπει τον Ισαάκ να ανοίξει την πόρτα της Αγοράς δωρεάν", -- Store Key
	-- English: "{{Shop}} Lets Isaac open Shops for free"

	[T_ID .. 84] = "5% περισσότερα κέρματα και λιγότερες καρδιές από τις ανταμοιβές ολοκλήρωσης δωματίων#Η Απληστία και η Υπεραπληστία δεν εμφανίζονται πλέον στις {{Shop}}Αγορές ή σε {{SecretRoom}}Μυστικά Δωμάτια", -- Rib of Greed
	-- English: "{{Coin}} 5% more coins and fewer hearts from room clear rewards#Greed and Super Greed no longer appear in {{Shop}} Shops or {{SecretRoom}} Secret Rooms"

	[T_ID .. 85] = "{{DonationMachine}} Χρησιμοποιώντας μια Μηχανή Δωρεάς μπορεί να:#{{Heart}} Θεραπεύσει 1 καρδιά#{{Coin}} Δώσει 1 κέρμα#{{Luck}} Προσφέρει +1 τύχη#{{Beggar}} Εμφανίσει έναν ζητιάνο", -- Karma
	-- English: "{{DonationMachine}} Using a Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)"

	[T_ID .. 86] = "Καταστρέφοντας ένα σκατό εμφανίζεται 1 μπλε μύγα", -- Lil Larva
	-- English: "Destroying poop spawns 1 blue fly"

	[T_ID .. 87] = "Χρησιμοποιώντας ένα κλειδί θεραπεύεις μισή καρδιά#Μετατρέπει μισές καρδιές σε ολόκληρες καρδιές", -- Mom's Locket
	-- English: "{{HealingRed}} Using a key heals half a heart#{{Heart}} Turns half hearts into full hearts"

	[T_ID .. 88] = "Αποτρέπει ενεργά αντικείμενα από το να εμφανιστούν", -- NO!
	-- English: "Prevents active items from spawning"

	[T_ID .. 89] = "Οι Βοηθοί βρίσκονται πιο κοντά στον Ισαάκ", -- Child Leash
	-- English: "Familiars stay closer to Isaac"

	[T_ID .. 90] = "Τα σκατά εκρήγνυνται για 100 ζημιά όταν καταστρέφονται", -- Brown Cap
	-- English: "Poop explodes for 100 damage when destroyed"

	[T_ID .. 91] = "33% πιθανότητα για μαύρα σκατά να εμφανιστούν#Καταστρέφοντας μαύρα σκατά υπάρχει 5% πιθανότητα να εμφανίσει μία Μαύρη καρδιά", -- Meconium
	-- English: "33% chance for Black Poops to spawn#{{BlackHeart}} Destroying Black Poop has a 5% chance to spawn a Black Heart"

	[T_ID .. 92] = "↑ +0.2 Περισσότερα δάκρυα", -- Cracked Crown
	-- Full old Desc: "↑ Οι αυξήσεις στατιστικών είναι 33% πιο αποτελεσματικές#↑ +0.2 Περισσότερα δάκρυα#↑ -1 Καθυστέρηση δακρύων"
	-- English: "↑ x1.33 Stat multiplier for the stats that are above 1 {{Speed}} speed, 3.5 {{Damage}} damage, 23.75 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 93] = "15% πιθανότητα σε κάθε δωμάτιο για τις εχθρικές μύγες να γίνουν φιλικές", -- Used Diaper
	-- English: "15% chance per room for all fly enemies to become friendly"

	[T_ID .. 94] = "Διπλασιάζει όλες τις μπλε μύγες/αράχνες που εμφανίζονται", -- Fish Tail
	-- English: "Doubles all blue fly / spider spawns"

	[T_ID .. 97] = "Σταματάει στους 2 βοηθούς", -- Tonsil
	-- Full old Desc: "Όταν πληγώνεσαι 12-20 φορές εμφάνισε έναν βοηθό που αποτρέπει εχθρικές βολές#Σταματάει στους 2 βοηθούς"
	-- English: "Taking damage {VAR:RANGE} times spawns a projectile blocking familiar#Disappears after spawning 2 familiars"

	[T_ID .. 98] = "10% πιθανότητα να πυροβολήσεις αυτοκατευθυνόμενα γλοιώδη δάκρυα#Οι μύξες κάνουν την ζημιά του Ισαάκ μία φορά κάθε δευτερόλεπτο#Οι μύξες παραμένουν για 60 δευτερόλεπτα", -- Nose Goblin
	-- Full old Desc: "10% πιθανότητα να πυροβολήσεις αυτοκατευθυνόμενα γλοιώδη δάκρυα#Οι μύξες κάνουν την ζημιά του Ισαάκ μία φορά κάθε δευτερόλεπτο#Οι μύξες παραμένουν για 60 δευτερόλεπτα"
	-- English: "10% chance to shoot a sticky tear#50% chance for it to be homing#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for {VAR:1} seconds"

	[T_ID .. 99] = "10% πιθανότητα να πυροβολήσεις δάκρυα που αναπηδούν", -- Super Ball
	-- English: "10% chance to shoot bouncing tears"

	[T_ID .. 100] = "Όταν κρατάς ένα πλήρως φορτισμένο ενεργό αντικείμενο κέρδισε:#{VAR:EFFECTLIST}", -- Vibrant Bulb
	-- Full old Desc: "Όταν κρατάς ένα πλήρως φορτισμένο ενεργό αντικείμενο κέρδισε:#↑ {{Damage}} +0.5 Περισσότερη ζημιά#↑ {{Speed}} +0.25 Περισσότερη ταχύτητα#↑ {{Range}} +0.75 Έκταση δακρύων#↑ {{Tears}} +0.2 Περισσότερα δάκρυα#↑ {{Shotspeed}} +0.1 Ταχύτητα δακρύων#↑ {{Luck}} +1 Περισσότερη τύχη"
	-- English: "Holding a fully charged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 101] = "Όταν κρατάς ένα πλήρως αφόρτιστο ενεργό αντικείμενο κέρδισε:#{VAR:EFFECTLIST}", -- Dim Bulb
	-- Full old Desc: "Όταν κρατάς ένα πλήρως αφόρτιστο ενεργό αντικείμενο κέρδισε:#↑ {{Damage}} +1.5 Περισσότερη ζημιά#↑ {{Speed}} +0.5 Περισσότερη ταχύτητα#↑ {{Range}} +1.5 Έκταση δακρύων#↑ {{Tears}} +0.4 Περισσότερα δάκρυα#↑ {{Shotspeed}} +0.3 Ταχύτητα δακρύων#↑ {{Luck}} +2 Περισσότερη τύχη"
	-- English: "Holding a completely uncharged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 102] = "{{SecretRoom}} +1 περισσότερο Μυστικό Δωμάτιο ανά χώρο όταν κρατιέται", -- Fragmented Card
	-- English: "{{SecretRoom}} +1 extra Secret Room per floor while held"

	[T_ID .. 103] = "{{Warning}} Μετατρέπει μονά αντικείμενα σε διπλά όταν ο Ισαάκ έχει ίσο αριθμό κερμάτων, κλειδιών και βόμβων", -- Equality!
	-- English: "Turns single pickups into double pickups when Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal"

	[T_ID .. 106] = "Ενισχύει το μέγεθος ερπυσμού", -- Lost Cork
	-- English: "Increases the radius of friendly creep"

	[T_ID .. 107] = "Όταν πληγώνεσαι αφαιρούνται πρώτα οι Κόκκινες καρδιές πριν τις Ψυχικές/Μαύρες καρδιές#Αυτή η ζημιά Κόκκινων καρδιών δεν μειώνει την πιθανότητα εμφάνισης Διαβολικού/Αγγελικού Δωματίου", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#This red heart damage does not reduce Devil/Angel Room chances"

	[T_ID .. 108] = "Όταν ο Ισαάκ βρίσκεται σε 1-9 εκρήξεις το μπιχλιμπίδι καταστρέφεται και εμφανίζει ένα κλειδί, κέρμα, μία καρδιά και ένα τυχαίο μπιχλιμπίδι#Το να πληγωθείς δεν απαιτείται", -- Walnut
	-- English: "Getting hit by 1-9 explosions destroys the trinket and drops a random {{UnknownHeart}} heart, {{Coin}} coin, {{Key}} key and {{Trinket}} trinket#Taking damage isn't required"

	[T_ID .. 109] = "Οι Βοηθοί σου κολλάνε σε ένα σημείο και δεν μπορούν να μετακινηθούν", -- Duct Tape
	-- English: "Familiars are stuck in one spot and cannot move"

	[T_ID .. 110] = "{{Shop}} Οι Αγορές εμφανίζονται στην Μήτρα", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb"

	[T_ID .. 111] = "{{TreasureRoom}} Τα Δωμάτια Θησαυρού εμφανίζονται στην Μήτρα", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb"

	[T_ID .. 112] = "{{RestockMachine}} Οι Μηχανές Εφοδιασμού πάντα εμφανίζονται σε {{TreasureRoom}} Δωμάτια Θησαυρού", -- Pay To Win
	-- English: "{{RestockMachine}} Restock boxes always spawn in {{TreasureRoom}} Treasure Rooms"

	[T_ID .. 113] = "Όταν μπαίνεις σε ένα δωμάτιο με εχθρούς εμφανίζεται μια εκρηκτική μύγη #Η μύγα κάνει δύο φορές την ζημιά του Ισαάκ + ζημιά της έκρηξης", -- Locust of War
	-- English: "Entering a hostile room spawns an exploding attack fly #The fly deals 2x Isaac's damage + explosion damage"

	[T_ID .. 114] = "Όταν μπαίνεις σε ένα δωμάτιο με εχθρούς εμφανίζεται μια δηλητιριώδες μύγα#Η μύγα κάνει δύο φορές την ζημιά του Ισαάκ", -- Locust of Pestilence
	-- English: "{{Poison}} Entering a hostile room spawns a poison attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 115] = "Όταν μπαίνεις σε ένα δωμάτιο με εχθρούς εμφανίζεται a slowing attack fly#Η μύγα κάνει δύο φορές την ζημιά του Ισαάκ", -- Locust of Famine
	-- English: "{{Slow}} Entering a hostile room spawns a slowing attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 116] = "Όταν μπαίνεις σε ένα δωμάτιο με εχθρούς εμφανίζεται μια μύγα#Η μύγα κάνει τέσσερις φορές την ζημιά του Ισαάκ", -- Locust of Death
	-- English: "Entering a hostile room spawns an attack fly#The fly deals 4x Isaac's damage"

	[T_ID .. 117] = "Όταν μπαίνεις σε ένα δωμάτιο με εχθρούς εμφανίζονται 1-4 μύγες#Οι μύγες κάνει δύο φορές την ζημιά του Ισαάκ", -- Locust of Conquest
	-- English: "Entering a hostile room spawns 1-4 attack flies#Each fly deals 2x Isaac's damage"

	[T_ID .. 118] = "Σκοτώνοντας έναν εχθρό υπάρχει 5% πιθανότητα να κερδίσεις Πτήση για το τωρινό δωμάτιο", -- Bat Wing
	-- English: "{{Timer}} Killing an enemy has a 5% chance to grant flight for the room"

	[T_ID .. 119] = "Όταν μπαίνεις σε νέο χώρο θεραπεύει μισή καρδιά", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half a heart"

	[T_ID .. 120] = "Όταν μπαίνεις σε ένα καινούργιο Δωμάτιο Αφεντικού τα ενεργά αντικείμενά σου", -- Hairpin
	-- English: "{{Battery}} Entering an uncleared boss room fully recharges active items"

	[T_ID .. 121] = "{{Collectible313}} Αναιρεί την πρώτη ζημιά που δέχεται στο χώρο", -- Wooden Cross
	-- English: "{{Collectible313}} Grants a Holy shield that prevents damage once per floor"

	[T_ID .. 122] = "Χρησιμοποιώντας ένα ενεργό αντικείμενο μετατρέπεται σε συλλεκτικό αντικείμενο στο δωμάτιο#Όταν πληγώνεσαι υπάρχει 2% πιθανότητα να μετατραπέι ένα από τα συλλεκτικά αντικείμενα του Ισαάκ", -- Butter!
	-- English: "Using an active item drops it on a pedestal on the ground#Taking damage has a 2% chance to drop one of Isaac's passive items"

	[T_ID .. 123] = "Αγγελικά Αφεντικά αφήνουν Αγγελικά αντικείμενα αντί για Κομμάτια του Κλειδιού", -- Filigree Feather
	-- English: "Angel bosses drop angel items instead of Key Pieces"

	[T_ID .. 124] = "Η τελευταία πόρτα που χρησιμοποιήθηκε παραμένει ανοιχτή", -- Door Stop
	-- English: "The last door used stays open"

	[T_ID .. 125] = "Συνδέει όλους τους βοηθούς με ακτίνες ηλεκτρισμού#Οι ακτίνες κάνουν 6 ζημιά", -- Extension Cord
	-- English: "Connects all familiars with beams of electricity#The beams deal 6 damage"

	[T_ID .. 126] = "Συλλέγοντας ένα κέρμα εμφανίζεται μια μπλε μύγα", -- Rotten Penny
	-- English: "Picking up a coin spawns a blue fly"

	[T_ID .. 127] = "Όλοι οι Βοηθοί έχουν Αυτοκατευθυνόμενες βολές", -- Baby-Bender
	-- English: "Grants all familiars homing shots"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 1] = "Τηλεμετάφερε τον Ισαάκ στο πρώτο δωμάτιο του χώρου", -- 0 - The Fool
	-- English: "Teleports Isaac to the first room of the floor"

	[Card_ID .. 3] = "Το Πόδι της Μαμάς πέφτει σε εχθρό#Το Πόδι της Μαμάς πέφτει στον Ισαάκ εάν δεν υπάρχουν καθόλου εχθροί", -- II - The High Priestess
	-- English: "Mom's Foot stomps on an enemy#Mom's Foot stomps Isaac if there are no enemies"

	[Card_ID .. 5] = "{{BossRoom}} Τηλεμετάφερε τον Ισαάκ στο Δωμάτιο Αφεντικού", -- IV - The Emperor
	-- English: "{{BossRoom}} Teleports Isaac to the Boss Room"

	[Card_ID .. 9] = "Εμφάνισε 1 βόμβα, 1 κλειδί, 1 κέρμα, 1 καρδιά", -- VIII - Justice
	-- English: "Spawns a random {{UnknownHeart}} heart, {{Coin}} coin, {{Bomb}} bomb and {{Key}} key"

	[Card_ID .. 10] = "{{Shop}} Τηλεμετάφερε τον Ισαάκ στην Αγορά", -- IX - The Hermit
	-- English: "{{Shop}} Teleports Isaac to the Shop"

	[Card_ID .. 11] = "Εμφάνισε μία {{Slotmachine}} μηχανή υποδοχής ή {{FortuneTeller}} μηχανή μαντείας", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 25% chance for it to be a Fortune Telling Machine"

	[Card_ID .. 15] = "{{DonationMachine}} Εμφάνισε μια μηχανή δωρεά αίματος#{{GreedMode}} Εμφανίζει έναν Διαβολικό Ζητιάνο στην Λειτουργία Απληστίας", -- XIV - Temperance
	-- English: "{{DonationMachine}} Spawns a Blood Donation Machine"

	[Card_ID .. 17] = "Εμφάνισε 6 βόμβες τρολ", -- XVI - The Tower
	-- English: "Spawns 6 Troll Bombs"

	[Card_ID .. 18] = "{{TreasureRoom}} Τηλεμετάφερε τον Ισαάκ στο Δωμάτιο Θησαυρού", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room"

	[Card_ID .. 19] = "{{SecretRoom}} Τηλεμετάφερε τον Ισαάκ στο Μυστικό Δωμάτιο", -- XVIII - The Moon
	-- English: "{{SecretRoom}} Teleports Isaac to the Secret Room"

	[Card_ID .. 21] = "Εμφάνισε Ζητιάνο ή Διαβολικό Ζητιάνο", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#2% chance for it to be a Key Master or Bomb Bum"

	[Card_ID .. 23] = "{{Bomb}} Διπλασίασε τον αριθμό των βόμβων του Ισαάκ", -- 2 of Clubs
	-- English: "{{Bomb}} Doubles Isaac's number of bombs"

	[Card_ID .. 24] = "{{Coin}} Διπλασίασε τον αριθμό των κερμάτων του Ισαάκ", -- 2 of Diamonds
	-- English: "{{Coin}} Doubles Isaac's number of coins"

	[Card_ID .. 25] = "{{Key}} Διπλασίασε τον αριθμό των κλειδιών του Ισαάκ", -- 2 of Spades
	-- English: "{{Key}} Doubles Isaac's number of keys"

	[Card_ID .. 26] = "{{Heart}}Διπλασίασε τον αριθμό των κόκκινων καρδιών του Ισαάκ#Μόνο θεραπεύει", -- 2 of Hearts
	-- English: "{{HealingRed}} Doubles Isaac's number of Red Hearts {{ColorSilver}}(not containers){{CR}}"

	[Card_ID .. 27] = "{{Bomb}} Μετάτρεψε όλα τα αντικείμενα σε βόμβες", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups into random bombs"

	[Card_ID .. 28] = "{{Coin}} Μετάτρεψε όλα τα αντικείμενα σε κέρματα", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups into random coins"

	[Card_ID .. 29] = "{{Key}} Μετέτρεψε όλα τα αντικείμενα σε κλειδιά", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups into random keys"

	[Card_ID .. 30] = "{{Heart}} Μετάτρεψε όλα τα αντικείμενα σε καρδιές", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups into random hearts"

	[Card_ID .. 31] = "{{AngelDevilChance}} Τηλεμετάφερε τον Ισαάκ στο Διαβολικό/Αγγελικό δωμάτιο", -- Joker
	-- English: "{{AngelDevilChance}} Teleports Isaac to the Devil or Angel Room"

	[Card_ID .. 32] = "Κατέστρεψε όλες τις πέτρες στο δωμάτιο", -- Hagalaz
	-- English: "Destroy all rocks in the room"

	[Card_ID .. 33] = "Διπλασίασε στα αντικείμενα στο δωμάτιο", -- Jera
	-- English: "Duplicates all pickups in room"

	[Card_ID .. 34] = "Εμφάνισε μία καταπακτή που οδηγεί στον επόμενο χώρο#8% πιθανότητα για {{LadderRoom}}καταπακτή μικρόχωρου", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} 8% chance for a crawlspace trapdoor"

	[Card_ID .. 35] = "{{CurseCursed}} Αφαιρεί όλες τις κατάρες", -- Dagaz
	-- Full old Desc: "{{SoulHeart}} +1 Ψυχική Καρδιά#{{CurseCursed}} Αφαιρεί όλες τις κατάρες"
	-- English: "{{CurseCursed}} Removes all curses for the floor"

	[Card_ID .. 37] = "Άλλαξε όλα τα συλλεκτικά αντικείμενα στο δωμάτιο", -- Perthro
	-- English: "Rerolls all pedestal items in the room"

	[Card_ID .. 40] = "Εκτέλεσε ένα τυχαίο ρουνικό#25% πιθανότητα να διπλασιαστεί όταν χρησιμοποιηθεί", -- Blank Rune
	-- English: "Triggers a random rune effect#25% chance to duplicate itself when used"

	[Card_ID .. 41] = "Μετάτρεψε όλα τα συλλεκτικά αντικείμενα στο δωμάτιο σε τυχαίες αυξήσεις στατιστικών#Μετατρέπει όλα τα αντικείμενα στο δωμάτιο σε μπλε μύγες", -- Black Rune
	-- Full old Desc: "Κάνε 40 ζημιά σε όλους τους εχθρούς#Μετάτρεψε όλα τα συλλεκτικά αντικείμενα στο δωμάτιο σε τυχαίες αυξήσεις στατιστικών#Μετατρέπει όλα τα αντικείμενα στο δωμάτιο σε μπλε μύγες"
	-- English: "Converts all pedestal items in the room into random stat ups#Converts all pickups in the room into blue flies"

	[Card_ID .. 42] = "Χρησιμοποιώντας την κάρτα ρίχνεται στην κατεύθυνση που κινείται ο Ισαάκ#Αμέσως σκοτώνει ΟΠΟΙΟΝ εχθρό αγγίξει (εκτός από τον Παραλήρημα)", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium)"

	[Card_ID .. 43] = "Κάνει όλα τα αντικείμενα και συλλεκτικά αντικείμενα σε {{Shop}} Αγορά ή σε {{DevilRoom}} Διαβολικό Δωμάτιο δωρεάν", -- Credit Card
	-- English: "Makes all items and pickups in a {{Shop}} Shop or {{DevilRoom}} Devil Room free"

	[Card_ID .. 44] = "Παρουσιάζει \"βοηθητικές\" συμβουλές όταν χρησιμοποιηθεί", -- Rules Card
	-- English: "Displays "helpful" tips on use"

	[Card_ID .. 45] = "Γεμίζει το δωμάτιο με σκατά", -- A Card Against Humanity
	-- English: "Fills the whole room with poop"

	[Card_ID .. 46] = "Αμέσως σκοτώνει τον Ισαάκ και εμφανίζει 10 αντικείμενα ή συλλεκτικά αντικείμενα στο δωμάτιο", -- Suicide King
	-- English: "Instantly kills Isaac and spawns 10 pickups or items on the floor#Spawned items will use the current room's item pool"

	[Card_ID .. 47] = "Ανοίγει όλες τις πόρτες στο δωμάτιο", -- Get Out Of Jail Free Card
	-- English: "Open all doors in the room"

	[Card_ID .. 48] = "Χρησιμοποίησε το ενεργό αντικείμενο του Ισαάκ δωρεάν", -- ? Card
	-- English: "Uses Isaac's active item for free"

	[Card_ID .. 49] = "Αλλάζει όλα τα αντικείμενα και συλλεκτικά αντικείμενα σε αυτό το δωμάτιο", -- Dice Shard
	-- English: "Rerolls all item pedestals and pickups in the room"

	[Card_ID .. 50] = "Δύο από τα Χέρια της Μαμάς προσγειώνεται και κρατάνε έναν εχθρό το καθένα", -- Emergency Contact
	-- English: "Two of Mom's Hands come down and grab an enemy each"

	[Card_ID .. 51] = "{{Collectible313}} Προσφέρει μία {{HolyMantleSmall}} ασπίδα Αγίου Μανδύα για ένα δωμάτιο#(Αποτρέπει ζημιά μία φορά)#25% πιθανότητα να εμφανιστεί και άλλη Άγια Κάρτα", -- Holy Card
	-- English: "{{HolyMantle}} Holy Mantle shield for the room (prevents damage once)#25% chance to spawn another Holy Card"

	[Card_ID .. 52] = "{VAR:ROOMEFFECT}#{{Timer}} Διαρκεί για ένα δωμάτιο", -- Huge Growth
	-- Full old Desc: "↑ {{Damage}} +7 Περισσότερη ζημιά#↑ {{Range}} +30 Έκταση δακρύων#Επιτρέπει στον Ισαάκ να καταστρέψει πέτρες περπατώντας σε αυτές#Μεγέθυνση#{{Timer}} Διαρκεί για ένα δωμάτιο"
	-- English: "{VAR:ROOMEFFECT}#Allows Isaac to destroy rocks by walking into them"

	[Card_ID .. 54] = "{VAR:ROOMEFFECT}#{{Timer}} Διαρκεί για ένα δωμάτιο", -- Era Walk
	-- Full old Desc: "{{Slow}} Κάνε τους εχθρούς πιο αργούς#↑ {{Speed}} +0.5 Περισσότερη ταχύτητα#↓ {{Shotspeed}} -1 Ταχύτητα βολών#{{Timer}} Διαρκεί για ένα δωμάτιο"
	-- English: "{VAR:ROOMEFFECT}#{{Slow}} Slow down enemies"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 1] = "Ο Ισαάκ κλάνει και δηλητιριάζει κοντινούς εχθρούς", -- Bad Gas
	-- English: "{{Poison}} Isaac farts and poisons nearby enemies"

	[Pill_ID .. 2] = "Πληγώνει τον Ισαάκ για 1 καρδιά#Γίνεται το χάπι 'Γεμάτες καρδιές' όταν έχεις 1 ή λιγότερες καρδιές", -- Bad Trip
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#Becomes a Full Health pill at 1 heart or less"

	[Pill_ID .. 4] = "Swaps Isaac's number of bombs and keys", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys"

	[Pill_ID .. 5] = "Isaac quickly spawns 5 lit bombs", -- Explosive Diarrhea
	-- English: "Isaac quickly spawns 5 lit bombs"

	[Pill_ID .. 7] = "Γίνεται το χάπι 'Καρδιές πάνω' όταν έχεις 0 ή 1 καρδιές", -- Health Down
	-- Full old Desc: "↓ {{Heart}} -1 Καρδιά#Γίνεται το χάπι 'Καρδιές πάνω' όταν έχεις 0 ή 1 καρδιές"
	-- English: "Becomes a Health Up pill at 0 or 1 heart containers"

	[Pill_ID .. 10] = "Καταναλώνοντας 3 τέτοια χάπια δίνει την μεταμόρφωση 'Ενήλικας' (+1 Κόκκινη Καρδιά)#{VAR:EFFECTLIST}", -- Puberty
	-- Full old Desc: "Καμία επίπτωση#Καταναλώνοντας 3 τέτοια χάπια δίνει την μεταμόρφωση 'Ενήλικας' (+1 Κόκκινη Καρδιά)"
	-- English: "Eating 3 grants the Adult transformation:#{VAR:EFFECTLIST}"

	[Pill_ID .. 20] = "Τηλεμετάφερε τον Ισαάκ σε τυχαίο δωμάτιο#{{ErrorRoom}} Μικρή πιθανότητα να τηλεμεταφερθεί στο 'ΕΙΜΑΙ ΣΦΑΛΜΑ' δωμάτιο", -- Telepills
	-- English: "Teleports Isaac to a random room#{{ErrorRoom}} Small chance to teleport Isaac to the I AM ERROR room"

	[Pill_ID .. 21] = "Απολύτως φορτίζει το ενεργό αντικείμενο", -- 48 Hour Energy!
	-- Full old Desc: "Απολύτως φορτίζει το ενεργό αντικείμενο#Εμφανίζει 1-2 μπαταρίες"
	-- English: "{{Battery}} Fully recharges the active item"

	[Pill_ID .. 22] = "Αποχετεύει όλες μα μία Κόκκινη Καρδιά", -- Hematemesis
	-- Full old Desc: "Αποχετεύει όλες μα μία Κόκκινη Καρδιά#Εμφανίζει 1-4 Κόκκινες Καρδιές"
	-- English: "{{Warning}} Drains all but one heart container"

	[Pill_ID .. 23] = "Αποτρέπει τον Ισαάκ από το να πυροβολεί και να κουνιέται για 2 δευτερόλεπτα", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 2 seconds"

	[Pill_ID .. 24] = "{{SecretRoom}} Εμφανίζει όλες τις εισόδους μυστικών δωματίων στο τωρινό δωμάτιο", -- I can see forever!
	-- English: "{{SecretRoom}} Opens all secret room entrances on the floor"

	[Pill_ID .. 25] = "{{Charm}} Γοητεύει όλους τους εχθρούς στο δωμάτιο", -- Pheromones
	-- English: "{{Charm}} Charms all enemies in the room"

	[Pill_ID .. 26] = "{{CurseLost}} Κρύβει το χάρτη του χώρου", -- Amnesia
	-- English: "{{CurseLost}} Hides the map for the floor"

	[Pill_ID .. 27] = "Εμφανίζει μια μεγάλη λακκούβα στο έδαφος που πληγώνει εχθρούς", -- Lemon Party
	-- English: "Spawns a large puddle on the ground which damages enemies"

	[Pill_ID .. 28] = "Ο Ισαάκ πυροβολεί διαγώνια για 30 δευτερόλεπτα", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 30 seconds"

	[Pill_ID .. 29] = "Μειώνει την ζημιά που παίρνεις σε μισή καρδιά για τη διάρκεια του δωματίου", -- Percs!
	-- English: "{{Timer}} Reduces all damage taken to half a heart for the room"

	[Pill_ID .. 30] = "Αυξάνει όλη την ζημιά που παίρνεις σε μία ολόκληρη καρδιά για τη διάρκεια του δωματίου", -- Addicted!
	-- English: "{{Timer}} Increases all damage taken to a full heart for the room"

	[Pill_ID .. 31] = "Ο Ισαάκ εμφανίζει σκατά από πίσω του για 2 δευτερόλεπτα", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 2 seconds"

	[Pill_ID .. 32] = "{{CurseMaze}} Ενεργοποίησε την Κατάρα του Λαβυρίνθου για τον χώρο", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. 33] = "Δεν επηρεάζει τον χώρο που χτυπάνε οι εχθροί", -- One makes you larger
	-- Full old Desc: "Αυξάνει το μέγεθος του Ισαάκ#Δεν επηρεάζει τον χώρο που χτυπάνε οι εχθροί"
	-- English: "Doesn't affect his hitbox"

	[Pill_ID .. 34] = "Μειώνει και τον χώρο που χτυπάνε οι εχθροί", -- One makes you small
	-- Full old Desc: "Μειώνει το μέγεθος του Ισαάκ#Μειώνει και τον χώρο που χτυπάνε οι εχθροί"
	-- English: "Also decreases his hitbox"

	[Pill_ID .. 35] = "Εμφάνισε 1 μπλε αράχνη για κάθε σκατό στο δωμάτιο", -- Infested!
	-- English: "Spawns 1 blue spider for each poop in the room"

	[Pill_ID .. 36] = "Εμφάνισε 1 μπλε αράχνη για κάθε εχθρό στο δωμάτιο#Εμφάνισε 1-3 μπλε αράχνες εάν δεν υπάρχουν εχθροί στο δωμάτιο", -- Infested?
	-- English: "Spawn 1 blue spider for each enemy in the room#Spawns 1-3 blue spiders if there are no enemies in the room"

	[Pill_ID .. 38] = "Η οθόνη γίνεται εικονογλημένη 3 φορές σε 30 δευτερόλεπτα", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen 3 times over 30 second"

	[Pill_ID .. 40] = "Εμφανίζει μία λακκούβα γλιστερού ερπυσμού", -- X-Lax
	-- English: "Spawns a pool of slippery creep"

	[Pill_ID .. 41] = "{{Slow}} Εμφανίζει μία λακούβα επιβραδυντικού ερπυσμού", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of slowing creep"

	[Pill_ID .. 42] = "{{Slow}} Επιβραδύνει όλους τους εχθρούς στο δωμάτιο", -- I'm Drowsy...
	-- English: "{{Slow}} Slows all enemies in the room"

	[Pill_ID .. 43] = "Επιταχύνει όλους τους εχθρούς στο δωμάτιο", -- I'm Excited!!
	-- English: "Speeds up all enemies in the room"

	[Pill_ID .. 44] = "{{Trinket}} Κατανάλωσε το τωρινό μπιχλιμπίδι του Ισαάκ και πρόσφερε τα εφέ του μόνιμα", -- Gulp!
	-- English: "{{Trinket}} Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. 45] = "{{Collectible149}} Ρίξε ένα δάκρυο Ιπεκακουάνας", -- Horf!
	-- English: "{{Collectible149}} Shoots one Ipecac tear"

	[Pill_ID .. 47] = "Εμφάνισε το τελευταίο χάπι που χρησιμοποιήθηκε πριν το 'Βορυπ!'", -- Vurp!
	-- English: "Spawns the last pill used before Vurp!"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)
