
local languageCode = "de"
---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 13] = "{{Poison}} Berühren von Feinden vergiftet sie", -- The Virus
	-- Full old Desc: "↑ {{Speed}} +0.2 Geschwindigkeit#{{Poison}} Berühren von Feinden vergiftet sie#Isaac verursacht 48 Kontaktschaden pro Sekunde"
	-- English: "{{Poison}} Touching enemies poisons them"

	[C_ID .. 42] = "Das Benutzen des Gegenstands und das Abschießen in eine Richtung wirft den Kopf#{{Poison}} Der Kopf explodiert, wo er landet, und erzeugt eine Giftwolke#Verursacht Isaacs Schaden + 185", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes where it lands and creates a poison cloud#Deals Isaac's damage + 185"

	[C_ID .. 46] = "Bessere Gewinnchance beim Glücksspiel#Erhöht die Wahrscheinlichkeit von Gegenständen beim Raumabschluss#Verwandelt schlechte Pillen in gute um", -- Lucky Foot
	-- Full old Desc: "↑ {{Luck}} +1 Glück#Bessere Gewinnchance beim Glücksspiel#Erhöht die Wahrscheinlichkeit von Gegenständen beim Raumabschluss#Verwandelt schlechte Pillen in gute um"
	-- English: "Better chance to win while gambling#Increases room clearing drop chance#Turns bad pills into good ones"

	[C_ID .. 52] = "{{Damage}} Diese Bomben verursachen 10x Isaacs Tränenschaden#Wenn das zu mehr als 60 Schaden führt, verursachen sie stattdessen 5x Schaden +30", -- Dr. Fetus
	-- Full old Desc: "↓ {{Tears}} x0.4 Feuerratenmultiplikator#{{Bomb}} Isaac schießt Bomben anstelle von Tränen#{{Damage}} Diese Bomben verursachen 10x Isaacs Tränenschaden#Wenn das zu mehr als 60 Schaden führt, verursachen sie stattdessen 5x Schaden +30"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 10x Isaac's tear damage#If that results in over 60 damage, they instead deal 5x damage +30"

	[C_ID .. 53] = "Gegenstände werden von Isaac angezogen#Öffnet Truhen aus 2 Kacheln Entfernung, ignoriert den Schaden von Dornenkisten", -- Magneto
	-- English: "Pickups are attracted to Isaac#Opens chests from 2 tiles away, ignoring damage of Spike Chests"

	[C_ID .. 69] = "{{Chargeable}} Aufladbare Tränen#{{Damage}} Der Schaden skaliert mit der Ladezeit, bis zu 4x", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x"

	[C_ID .. 78] = "{{AngelDevilChance}} +17.5% Teufels- oder Engelsraumchance bei Besitz", -- Book of Revelations
	-- Full old Desc: "{{SoulHeart}} +1 Seelenherz#Das Benutzen des Gegenstands ersetzt den Boss des Stocks durch einen Reiter#{{AngelDevilChance}} +17.5% Teufels- oder Engelsraumchance bei Besitz"
	-- English: "Using the item replaces the floor's boss with a horseman"

	[C_ID .. 84] = "Öffnet eine Falltür zum nächsten Stock#{{LadderRoom}} Öffnet einen Durchgang, wenn er auf einem dekorativen Bodenkachel (Gras, kleine Steine, Papiere, Edelsteine usw.) verwendet wird", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} Opens a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[C_ID .. 91] = "Räume auf der Karte werden aus größerer Entfernung angezeigt#{{SecretRoom}} Kann auch geheime und supergeheime Räume aufdecken#Verhindert Schaden durch fallende Projektile", -- Spelunker Hat
	-- English: "Rooms on the map are revealed from further away#{{SecretRoom}} Can also reveal Secret and Super Secret Rooms#Prevents damage from falling projectiles"

	[C_ID .. 114] = "Isaacs Tränen werden durch ein werfbares Messer ersetzt#{{Damage}} Das Messer verursacht 2x Isaacs Schaden beim Halten und begrenzt sich bei 1/3 Ladung auf 6x Schaden#Weitere Aufladung erhöht nur die Wurfweite#Schaden reduziert sich auf 2x beim Zurückkehren zu Isaac", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and caps at 6x damage at 1/3 charge#Charging further only increases throwing range#Damage reduces to 2x when returning to Isaac"

	[C_ID .. 123] = "{{Timer}} Spawnt für den Raum ein zufälliges Begleittier", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the floor"

	[C_ID .. 126] = "↑ {{Damage}} +1.2 Schaden für den Raum#{{Warning}} Verursacht 1 Herz Schaden an Isaac#Nach dem ersten Gebrauch im Raum nur noch ein halbes Herz#{{Heart}} Entfernt zuerst Rote Herzen", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first"

	[C_ID .. 140] = "{{Poison}} Giftimmunität", -- Bob's Curse
	-- Full old Desc: "{{Bomb}} +5 Bomben#{{Poison}} Isaacs Bomben erzeugen eine Giftwolke#{{Poison}} Giftimmunität"
	-- English: "{{Poison}} Isaac's bombs create a cloud of poison#{{Poison}} Poison immunity"

	[C_ID .. 142] = "{{SoulHeart}} Isaac erhält 1 Seelenherz, wenn er auf halbes Herz Schaden nimmt#Kann nur einmal pro Raum passieren#Verlassen und Wiederbetreten des Raumes ermöglicht das Auslösen des Effekts erneut#{{Warning}} Wird nicht durch Gesundheitsspenden ausgelöst", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again#{{Warning}} Doesn't trigger from health donations"

	[C_ID .. 147] = "Benutzen des Gegenstands lässt Isaac die Axt halten#Die Axt zu halten ermöglicht es Isaac, Felsen, Geheimgangzugänge und Feinde zu beschädigen#Ein Treffer mit der Axt reduziert ihre Ladung#Das Betreten eines neuen Stocks lädt die Axt vollständig auf", -- Notched Axe
	-- English: "Using the item makes Isaac hold the axe#Holding the axe allows Isaac to break rocks, secret room entrances and damage enemies#Landing a hit with the axe reduces its charge#Entering a new floor fully recharges the axe"

	[C_ID .. 149] = "Isaacs Tränen fliegen in einem Bogen#{{Poison}} Die Tränen explodieren und vergiften Feinde, wo sie landen", -- Ipecac
	-- Full old Desc: "↑ {{Damage}} +40 Schaden#↓ {{Tears}} x0.33 Feuerratenmultiplikator#↓ {{Range}} x0.8 Reichweitenmultiplikator#↓ {{Shotspeed}} -0.2 Schussgeschwindigkeit#Isaacs Tränen fliegen in einem Bogen#{{Poison}} Die Tränen explodieren und vergiften Feinde, wo sie landen"
	-- English: "Isaac's tears are fired in an arc#{{Poison}} The tears explode and poison enemies where they land"

	[C_ID .. 152] = "Ersetzt Isaacs rechte Augentränen durch einen kontinuierlichen Laser#{{Damage}} Der Laser verursacht 2x Isaacs Schaden pro Sekunde", -- Technology 2
	-- Full old Desc: "↓ {{Tears}} x0.67 Feuerratenmultiplikator#Ersetzt Isaacs rechte Augentränen durch einen kontinuierlichen Laser#{{Damage}} Der Laser verursacht 2x Isaacs Schaden pro Sekunde"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} The laser deals 2x Isaac's damage per second"

	[C_ID .. 171] = "{{Slow}} Verlangsamt Feinde für 4 Sekunden#Feinde, die vom Gegenstand getötet werden, erzeugen blaue Spinnen", -- Spider Butt
	-- Full old Desc: "{{Slow}} Verlangsamt Feinde für 4 Sekunden#Verursacht allen Feinden 10 Schaden#Feinde, die vom Gegenstand getötet werden, erzeugen blaue Spinnen"
	-- English: "{{Slow}} Slows down enemies for 4 seconds#Enemies killed by the item spawn blue spiders"

	[C_ID .. 178] = "{{Throwable}} Schießt sich in die Richtung, in die Isaac schießt#Bricht und verursacht 7 Schaden beim Treffen eines Feindes#Hinterlässt eine Fläche mit versteinerndem + schädlichem Schleim", -- Holy Water
	-- English: "{{Throwable}} Launches itself in the direction Isaac shoots#Breaks and deals 7 damage upon hitting an enemy#{{Petrify}} Leaves a pool of petrifying + damaging creep"

	[C_ID .. 180] = "Isaac furzt mehrmals, wenn er Schaden nimmt#{{Poison}} Die Fürze hinterlassen Giftwolken und lenken Projektile ab", -- The Black Bean
	-- English: "Isaac farts multiple times when damaged#{{Poison}} The farts leave poison clouds and deflects projectiles"

	[C_ID .. 186] = "{{Heart}} Entfernt zuerst Rote Herzen", -- Blood Rights
	-- Full old Desc: "Verursacht 40 Schaden an allen Feinden#{{Warning}} Verursacht 1 Herz Schaden an Isaac#Nach dem ersten Gebrauch im Raum nur noch ein halbes Herz#{{Heart}} Entfernt zuerst Rote Herzen"
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first"

	[C_ID .. 203] = "Pickups haben eine 50% ige Chance, verdoppelt zu werden", -- Humbleing Bundle
	-- English: "Pickups have a 50% chance to be doubled"

	[C_ID .. 205] = "{{Battery}} Benutzen eines ungeladenen Aktivgegenstands lädt ihn vollständig auf, kostet jedoch ein halbes Herz pro fehlender Ladung#{{Heart}} Entfernt zuerst Rote Herzen", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of half a heart per missing charge#{{Heart}} Removes Red Hearts first"

	[C_ID .. 222] = "Das Halten der Feuertasten lässt Tränen in der Luft schweben#Das Loslassen der Feuertasten schießt sie in die Richtung, in die sie abgefeuert wurden", -- Anti-Gravity
	-- Full old Desc: "↑ {{Tears}} +1 Feuerrate#Das Halten der Feuertasten lässt Tränen in der Luft schweben#Das Loslassen der Feuertasten schießt sie in die Richtung, in die sie abgefeuert wurden"
	-- English: "Holding the fire buttons causes tears to hover in mid-air#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "{{HalfHeart}} Bei Treffern durch Explosionen heilt sich Isaac um ein halbes Herz anstelle von Schaden#{{Burning}} Feuerimmunität (außer gegen Projektile)", -- Pyromaniac
	-- Full old Desc: "{{Bomb}} +5 Bomben#{{HalfHeart}} Bei Treffern durch Explosionen heilt sich Isaac um ein halbes Herz anstelle von Schaden#{{Burning}} Feuerimmunität (außer gegen Projektile)"
	-- English: "Immunity to explosions and fire#{{HealingRed}} Getting hit by explosions heals half a heart"

	[C_ID .. 224] = "↓ {{Range}} x0.8 Reichweitenmultiplikator#Tränen teilen sich bei Treffern in 4 Teile", -- Cricket's Body
	-- Full old Desc: "↑ {{Tears}} +0.5 Feuerrate#↑ {{Tearsize}} +0.1 Tränengröße#↓ {{Range}} x0.8 Reichweitenmultiplikator#Tränen teilen sich bei Treffern in 4 Teile#Geteilte Tränen richten halben Schaden an"
	-- English: "Tears split in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "{{SoulHeart}} Bei Treffern besteht eine 8% ige Chance, ein Seelenherz zu erzeugen#{{Luck}} +2% Chance pro Glück#{{HalfHeart}} Feinde haben eine Chance, beim Tod ein halbes rotes Herz fallen zu lassen", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a 8% chance to spawn a Soul Heart#{{Luck}} +2% chance per luck#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 230] = "{{Fear}} 15% ige Chance, Furchttränen zu schießen", -- Abaddon
	-- Full old Desc: "↑ {{Speed}} +0.2 Geschwindigkeit#↑ {{Damage}} +1.5 Schaden#{{BlackHeart}} Wandelt alle Herzcontainer in Schwarze Herzen um#{{BlackHeart}} +2 Schwarze Herzen#{{Fear}} 15% ige Chance, Furchttränen zu schießen"
	-- English: "{{BlackHeart}} Converts all heart containers into Black Hearts#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 232] = "{{Slow}} Feinde sind dauerhaft auf 80% ihrer Angriffs- und Bewegungsgeschwindigkeit verlangsamt", -- Stop Watch
	-- Full old Desc: "↑ {{Speed}} +0.3 Geschwindigkeit#{{Slow}} Feinde sind dauerhaft auf 80% ihrer Angriffs- und Bewegungsgeschwindigkeit verlangsamt"
	-- English: "{{Slow}} Enemies are permanently slowed down to 80% of their attack and movement speed"

	[C_ID .. 248] = "Blaue Spinnen und Fliegen verursachen doppelten Schaden#Spinne- und Fliegen-Begleiter werden stärker", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage#Spider and fly familiars become stronger"

	[C_ID .. 256] = "{{Burning}} Feuerimmunität (außer gegen Projektile)", -- Hot Bombs
	-- Full old Desc: "{{Bomb}} +5 Bomben#{{Burning}} Isaacs Bomben verursachen Kontaktschaden#{{Burning}} Isaacs Bomben hinterlassen eine Flamme, wo sie explodieren#{{Burning}} Feuerimmunität (außer gegen Projektile)"
	-- English: "{{Burning}} Isaac's bombs deal contact damage#{{Burning}} Isaac's bombs leave a flame where they explode#{{Burning}} Fire immunity (except projectiles)"

	[C_ID .. 261] = "↓ Tränen verursachen weniger Schaden, je länger sie in der Luft sind#Tränen verursachen bei Nahkampf 3x Schaden und danach keinen Schaden mehr nach 0,8 Sekunden", -- Proptosis
	-- Full old Desc: "↑ {{Damage}} +0.5 Schaden#↓ Tränen verursachen weniger Schaden, je länger sie in der Luft sind#Tränen verursachen bei Nahkampf 3x Schaden und danach keinen Schaden mehr nach 0,8 Sekunden"
	-- English: "↓ Tears deal less damage the longer they are airborne#Tears deal 3x damage at point blank range and no damage after 0.8 seconds"

	[C_ID .. 262] = "Bei Schaden auf 1 Herz werden alle Feinde im Raum beschädigt#{{Collectible35}} Schwarze Herzen und Nekronomikon-ähnliche Effekte verursachen doppelten Schaden", -- Missing Page 2
	-- Full old Desc: "{{BlackHeart}} +1 Schwarzes Herz#Bei Schaden auf 1 Herz werden alle Feinde im Raum beschädigt#{{Collectible35}} Schwarze Herzen und Nekronomikon-ähnliche Effekte verursachen doppelten Schaden"
	-- English: "Taking damage down to 1 heart damages all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[C_ID .. 263] = "{{Rune}} Löst den Effekt der Rune aus, die Isaac hält, ohne sie zu verwenden", -- Clear Rune
	-- Full old Desc: "{{Rune}} Spawnt 1 Rune beim Aufsammeln#{{Rune}} Löst den Effekt der Rune aus, die Isaac hält, ohne sie zu verwenden"
	-- English: "{{Rune}} Triggers the effect of the rune Isaac holds without using it"

	[C_ID .. 276] = "Isaac wird unverwundbar#Erzeugt ein Herz-Begleiter, der Isaac folgt#Das Herz lädt sich auf, wenn Isaac schießt, und gibt einen Schauer von Tränen ab, wenn er aufhört#{{Warning}} Wenn das Herz getroffen wird, erleidet Isaac Schaden", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#The heart charges up when Isaac fires and releases a burst of tears when he stops#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 278] = "{{Heart}} Sammelt nahegelegene rote Herzen ein#Erzeugt für jedes aufgesammelte Herz ein Schwarzes Herz, Rune, Karte, Pille oder Spinne", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#Spawns a Black Heart, rune, card, pill, or spider for every 1.5 hearts picked up"

	[C_ID .. 280] = "Erzeugt zufällig blaue Spinnen in feindlichen Räumen#{{Charm}} Verzaubert Feinde, mit denen es in Kontakt kommt", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms#{{Charm}} Charms enemies it comes in contact with"

	[C_ID .. 283] = "Dupliziert 1 Aufsammelobjekt im Raum#Würfelt Isaacs Geschwindigkeit, Tränen, Schaden, Reichweite und passive Objekte neu#Würfelt alle Sockelobjekte, Aufsammelobjekte und Felsen im Raum neu#Startet den Raum neu, belebt alle Feinde wieder und lässt sie zurückentwickeln", -- D100
	-- English: "Duplicates 1 pickup in the room#Rerolls Isaac's speed, tears, damage, range and passive items#Rerolls all pedestal items, pickups and rocks in the room#Restarts the room, respawns all enemies and devolves them"

	[C_ID .. 285] = "Verwandelt alle Feinde im Raum zurück#Zum Beispiel werden alle roten Fliegen zu schwarzen Fliegen", -- D10
	-- English: "Devolves all enemies in the room#For instance, all Red Flies become Black Flies"

	[C_ID .. 286] = "Löst den Effekt der Karte aus, die Isaac hält, ohne sie zu verwenden", -- Blank Card
	-- English: "Triggers the effect of the card Isaac holds without using it"

	[C_ID .. 287] = "Markiert getönte und Kellerfelsen im Raum#{{Collectible76}} Wenn alle Effekte aktiv sind, gewährt Röntgensicht", -- Book of Secrets
	-- Full old Desc: "Markiert getönte und Kellerfelsen im Raum#{{Timer}} Erhalte einen dieser Effekte für den Raum:#{{Collectible54}} Schatzkarte#{{Collectible21}} Kompass#{{Collectible246}} Blaue Karte#Gewährt nur Effekte, die noch nicht aktiv sind#{{Collectible76}} Wenn alle Effekte aktiv sind, gewährt Röntgensicht"
	-- English: "Highlights tinted and crawlspace rocks in the room#{{Timer}} Receive one of these effects for the floor:#{{IND}}{{NameC54}}#{{IND}}{{NameC21}}#{{IND}}{{NameC246}}#Only grants effects not already active#{{Collectible76}} If all effects are active, grants X-Ray Vision"

	[C_ID .. 289] = "Wirft eine rote Flamme#Die Flamme verschwindet, wenn sie Schaden verursacht hat oder 5 Schüsse blockiert hat oder nach 10 Sekunden", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 4 times or after 10 seconds"

	[C_ID .. 291] = "Verwandelt alle nicht-bossartigen Feinde in Kacke#Tötet sofort Kackfeinde und Bosse#Löscht Feuerstellen und füllt den Raum mit Wasser#Verwandelt Lava-Gruben in begehbaren Boden", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses#Extinguishes fire places and fills the room with water#Turns lava pits into walkable ground"

	[C_ID .. 292] = "{{DevilRoom}} Das Benutzen des Gegenstands vor einem Bosskampf führt dazu, dass der Boss eine Teufelsdeal-Belohnung gibt#Der Kauf dieser Teufelsdeals hat die gleichen Konsequenzen wie die in Teufelsräumen#Betrifft keine Gegenstandspodeste im Void-Stockwerk", -- Satanic Bible
	-- Full old Desc: "{{BlackHeart}} +1 Schwarzes Herz#{{DevilRoom}} Das Benutzen des Gegenstands vor einem Bosskampf führt dazu, dass der Boss eine Teufelsdeal-Belohnung gibt#Der Kauf dieser Teufelsdeals hat die gleichen Konsequenzen wie die in Teufelsräumen#Betrifft keine Gegenstandspodeste im Void-Stockwerk"
	-- English: "{{DevilRoom}} Using the item before a boss fight makes the boss reward a devil deal#Purchasing these devil deals has the same consequences as those in Devil Rooms#Does not affect item pedestals in The Void floor"

	[C_ID .. 294] = "Stößt nahegelegene Feinde und Projektile zurück#Feinde, die gegen Hindernisse gestoßen werden, erleiden 10 Schaden", -- Butter Bean
	-- English: "Knocks back nearby enemies and projectiles#Enemies pushed into obstacles take 10 damage"

	[C_ID .. 295] = "Verursacht 2x Isaacs Schaden + 10 an allen Feinden im Raum#{{Coin}} Kosten 1 Münze", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage + 10 to all enemies in the room#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "{{Heart}} Wandelt 1 Seelen- oder Schwarzes Herz in 1 Herzcontainer um", -- Converter
	-- English: "{{Heart}} Converts 1 Soul or Black Heart into 1 heart container"

	[C_ID .. 297] = "Erzeugt Belohnungen basierend auf der Ebene:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#C1: Boss-Gegenstand; C2: B1+C1#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Boss-Gegenstände#W2: {{Collectible33}} Die Bibel#???/Leere: Nichts#Sheol: Teufelsgegenstand + 1{{BlackHeart}}#Kathedrale: Engelsgenstand + 1{{EternalHeart}}#Dunkler Raum: Schaltet {{Collectible523}} Die Umzugskiste frei; Truhe: 1{{Coin}}#Zuhause: {{Collectible580}} Roter Schlüssel", -- Pandora's Box
	-- English: "{{NoLB}}Spawns rewards based on floor:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#{{NoLB}}C1: Boss item; C2: C1 + 2{{SoulHeart}}#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Boss items#W2: {{Collectible33}} The Bible#???/Void: Nothing#Sheol: Devil item + 1{{BlackHeart}}#Cathe: Angel item + 1{{EternalHeart}}#{{NoLB}}Dark Room: Unlocks {{Collectible523}} Moving Box#Chest: 1{{Coin}}#Home: {{Collectible580}} Red Key"

	[C_ID .. 300] = "Bewegung über 0,85 Geschwindigkeit macht Isaac immun gegen Berührungsschaden und fügt Feinden 25 Schaden zu", -- Aries
	-- Full old Desc: "↑ {{Speed}} +0.25 Geschwindigkeit#Bewegung über 0,85 Geschwindigkeit macht Isaac immun gegen Berührungsschaden und fügt Feinden 25 Schaden zu"
	-- English: "Moving above 0.85 Speed makes Isaac immune to contact damage and deals 25 damage to enemies"

	[C_ID .. 308] = "Isaac hinterlässt eine Spur aus Klecksen#{{Damage}} Der Klecks fügt 66% des Schadens von Isaac pro Sekunde zu und übernimmt seine Träreffekte", -- Aquarius
	-- English: "Isaac leaves a trail of creep#{{Damage}} The creep deals 66% of Isaac's damage per second and inherits his tear effects"

	[C_ID .. 315] = "Isaacs Tränen ziehen Feinde, Aufsammelobjekte und Trinkets an#Der Anziehungseffekt ist am Ende des Tränenweges viel stärker", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets#The attraction effect is much stronger at the end of the tears' path"

	[C_ID .. 319] = "Schießt Tränen in zufällige Richtungen mit denselben Effekten wie Isaac#{{Damage}} Fügt 75% des Schadens von Isaac zu", -- Cain's Other Eye
	-- English: "Shoots tears in random directions with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 323] = "Schießt 8 Tränen in alle Richtungen#Die Tränen kopieren Isaacs Träreffekte, plus 5 Schaden#Lädt sich durch das Abschießen von Tränen wieder auf", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects, plus 5 damage#Recharges by shooting tears"

	[C_ID .. 325] = "<MISSING>", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The body is controlled separately and gushes blood tears in the direction Isaac is shooting"

	[C_ID .. 326] = "Das Halten der BENUTZEN-Taste leert die Ladeleiste#Isaac ist vorübergehend unverwundbar, wenn die Ladeleiste leer ist#Isaac ruft Lichtstrahlen hervor, wenn er Feinde berührt, während er unverwundbar ist#Wenn Schaden mit perfektem Timing blockiert wird, schießt ein 4-Wege-Heiligkeitsstrahl und gewinnt einen kurzen Schild#{{Warning}} Das Halten für zu lange fügt Isaac Schaden zu", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#Isaac summons light beams on contact with enemies when invincible#If damage is blocked with perfect timing, shoot a 4-way holy beam and gain a brief shield#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 330] = "Reduziert den Rückstoß drastisch", -- Soy Milk
	-- Full old Desc: "↑ {{Tears}} x5.5 Feuerratenmultiplikator#↓ {{Damage}} x0.2 Schadensmultiplikator#↓ {{Tearsize}} -0.3 Tränengröße#Reduziert den Rückstoß drastisch"
	-- English: "Drastically reduces knockback"

	[C_ID .. 331] = "Tränen erhalten eine Aura, die pro Sekunde 60 Schaden verursacht", -- Godhead
	-- Full old Desc: "↑ {{Damage}} +0.5 Schaden#↓ {{Tears}} -0.3 Tränen#↓ {{Shotspeed}} -0.3 Schussgeschwindigkeit#Heilige Tränen#Tränen erhalten eine Aura, die pro Sekunde 60 Schaden verursacht"
	-- English: "Tears gain an aura that deals 60 damage per second"

	[C_ID .. 344] = "{{Trinket41}} Erzeugt den Streichholztrinket", -- Match Book
	-- Full old Desc: "{{BlackHeart}} +1 Schwarzes Herz#{{Bomb}} Erzeugt 3 Bomben#{{Trinket41}} Erzeugt den Streichholztrinket"
	-- English: "{{Trinket41}} Spawns Match Stick"

	[C_ID .. 352] = "{{Damage}} Schießt eine große durchdringende spektrale Träne ab, die 10x Isaacs Schaden verursacht#{{Warning}} Beim Halten bewirkt Schaden:#↓ Entfernt zusätzlich 2 Herzen Gesundheit#↓ Zerbricht die Kanone für einige Räume#↑ {{Range}} +1.5 Reichweite und hinterlässt einen Blutpfad für den Raum#Der zusätzliche Schaden kann Isaac nicht töten#Selbstschaden löst den Effekt nicht aus", -- Glass Cannon
	-- English: "{{Damage}} Shoots a large piercing spectral tear that does 10x Isaac's damage#{{Warning}} While held, taking damage:#↓ Removes an extra 2 hearts of health#↓ Breaks the cannon for a few rooms#↑ {{Range}} +1.5 Range and leaves a blood trail for the room#The extra damage can't kill Isaac#Self-damage does not trigger the effect"

	[C_ID .. 360] = "Schießt Tränen mit denselben Effekten wie Isaac ab#{{Damage}} Verursacht 75% des Schadens von Isaac", -- Incubus
	-- English: "Shoots tears with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 365] = "Bewegt sich entlang von Wänden/Hindernissen im Raum#Nahegelegene Feinde nehmen die Fliege ins Visier", -- Lost Fly
	-- Full old Desc: "Bewegt sich entlang von Wänden/Hindernissen im Raum#Fügt 30 Kontaktschaden pro Sekunde zu#Nahegelegene Feinde nehmen die Fliege ins Visier"
	-- English: "Moves along walls/obstacles in the room#Nearby enemies target the fly"

	[C_ID .. 367] = "{{Slow}} Isaacs Bomben haften an Feinden und hinterlassen weißes, verlangsamendes Klecksen#Das Töten eines Feindes mit einer Bombe beschwört blaue Spinnen herbei", -- Sticky Bombs
	-- Full old Desc: "{{Bomb}} +5 Bomben#{{Slow}} Isaacs Bomben haften an Feinden und hinterlassen weißes, verlangsamendes Klecksen#Das Töten eines Feindes mit einer Bombe beschwört blaue Spinnen herbei"
	-- English: "{{Slow}} Isaac's bombs stick to enemies and leave white slowing creep#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "↑ {{Tears}} Das Schießen in eine Richtung erhöht allmählich die Feuerrate auf bis zu 200%", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually increases fire rate up to 200% and decreases accuracy"

	[C_ID .. 374] = "{{Damage}} Der Strahl fügt 3x Isaacs Schaden zu", -- Holy Light
	-- Full old Desc: "10% Chance, heilige Tränen abzufeuern, die beim Treffen einen Lichtstrahl erzeugen#{{Luck}} 50% Chance bei 9 Glück#{{Damage}} Der Strahl fügt 3x Isaacs Schaden zu"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot holy tears, which spawn a beam of light on hit#{{Damage}} The beams deals 3x Isaac's damage"

	[C_ID .. 375] = "Verleiht Immunität gegen Explosionen und fallende Projektile#25% Chance, feindliche Schüsse abzuprallen", -- Host Hat
	-- English: "Grants immunity to explosions and falling projectiles#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Der Kauf eines Gegenstands im Laden füllt ihn sofort wieder auf#Aufgefüllte Gegenstände steigen mit jedem Mal im Preis", -- Restock
	-- English: "Buying an item from a Shop restocks it instantly#Restocked items increase in price each time"

	[C_ID .. 380] = "Verschlossene Blöcke, Türen und Truhen müssen mit Münzen anstelle von Schlüsseln geöffnet werden", -- Pay To Play
	-- Full old Desc: "{{Coin}} +5 Münzen#Verschlossene Blöcke, Türen und Truhen müssen mit Münzen anstelle von Schlüsseln geöffnet werden"
	-- English: "Locked blocks, doors and chests must be opened with coins instead of keys"

	[C_ID .. 382] = "Kann auf Feinde geworfen werden, um sie zu fangen#Die Verwendung des Gegenstands nach dem Fangen eines Feindes beschwört ihn als freundlichen Begleiter#Das Überqueren des Balls nach dem Fangen lädt den Gegenstand sofort wieder auf", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns the capture as a friendly companion#Walking over the ball after a capture instantly recharges the item"

	[C_ID .. 384] = "{{Chargeable}} Schießt durch den Raum und prallt abhängig von der Ladungsgeschwindigkeit ab#Fügt bei Treffern 5-25 Kontaktschaden pro Treffer zu", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-20 contact damage per hit depending on speed"

	[C_ID .. 386] = "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)#Small chance to reroll obstacles into buttons, killswitches, crawlspaces or trapdoors", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)#Small chance to reroll obstacles into buttons, killswitches, crawlspaces or trapdoors"

	[C_ID .. 389] = "{{Rune}} Erzeugt alle 7-8 Räume eine zufällige Rune oder Seelenstein", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune or Soul Stone every 7-8 rooms"

	[C_ID .. 391] = "Feinde können sich gegenseitig mit ihren Geschossen treffen und bekämpfen", -- Betrayal
	-- English: "Enemies can hit each other with their projectiles, and start infighting"

	[C_ID .. 393] = "{{Poison}} 15% Chance, Gifttränen abzufeuern#{{Poison}} Vergiftet Feinde bei Kontakt#{{BlackHeart}} Feinde, die durch Kontaktgift getötet werden, haben die Chance, ein Schwarzes Herz beim Tod fallen zu lassen", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Enemies killed by contact poison have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "Isaac schießt automatisch Tränen auf ein bewegliches rotes Ziel am Boden#Begleiter schießen ebenfalls auf das Ziel#Das Schießen kann gestoppt und der Standort des Ziels zurückgesetzt werden, indem die Abwurftaste ({{ButtonRT}}) gedrückt wird", -- Marked
	-- Full old Desc: "↑ {{Tears}} +0,7 Tränen#↑ {{Range}} +3 Reichweite#Isaac schießt automatisch Tränen auf ein bewegliches rotes Ziel am Boden#Begleiter schießen ebenfalls auf das Ziel#Das Schießen kann gestoppt und der Standort des Ziels zurückgesetzt werden, indem die Abwurftaste ({{ButtonRT}}) gedrückt wird"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground#Familiars shoot towards the target too#You can stop shooting and reset the target's location by pressing the drop button ({{ButtonRT}})"

	[C_ID .. 395] = "Isaacs Tränen werden durch einen aufladbaren Laserreifen ersetzt#Die Größe und der Schaden des Rings nehmen mit der Ladezeit um bis zu 100% zu", -- Tech X
	-- English: "Isaac's tears are replaced by a chargeable laser ring#Ring size and damage increases up to 100% with charge time"

	[C_ID .. 399] = "{{Chargeable}} Feuern von Tränen für 2,35 Sekunden und Freigeben der Feuertaste erzeugt einen schwarzen Brimstonering um Isaac", -- Maw of the Void
	-- English: "{{Chargeable}} Firing tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds"

	[C_ID .. 401] = "25% Chance, klebrige Tränen zu schießen#Klebrige Tränen wachsen und explodieren nach wenigen Sekunden, verursachen Isaacs Schaden +60", -- Explosivo
	-- English: "25% chance to shoot sticky tears#Sticky tears grow and explode after a few seconds, dealing Isaac's damage +60"

	[C_ID .. 404] = "Bei Treffer 10% Chance zu furzen und {{Charm}} zu verursachen, {{Poison}} zu vergiften oder Feinde wegzustoßen#Die Fürze verursachen 5-6 Schaden", -- Farting Baby
	-- Full old Desc: "Blockiert Geschosse#Bei Treffer 10% Chance zu furzen und {{Charm}} zu verursachen, {{Poison}} zu vergiften oder Feinde wegzustoßen#Die Fürze verursachen 5-6 Schaden"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies#The farts deal 5-6 damage"

	[C_ID .. 405] = "{{Throwable}} Werfbar (doppeltippe zum Schießen)#Verändert Feinde und Pickups, mit denen er in Kontakt kommt, neu", -- GB Bug
	-- English: "{{Throwable}} Throwable (double-tap shoot)#Rerolls enemies and pickups it comes in contact with"

	[C_ID .. 407] = "↑ Erhöht einen von Isaacs Werten abhängig von der Farbe der Aura#Schaden entfernt den Effekt, gewährt aber im nächsten Raum einen neuen Effekt#{{ColorYellow}}Gelb{{CR}} = ↑ {{Speed}} +0,5 Geschwindigkeit#{{ColorBlue}}Blau{{CR}} = ↑ {{Tears}} +2 Schussrate#{{ColorRed}}Rot{{CR}} = ↑ {{Damage}} +4 Schaden#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +3 Reichweite", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and grants a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} +2 Fire rate#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +3 Range"

	[C_ID .. 408] = "25% Chance, dass ein schwarzer Brimstonering um getötete Feinde erscheint#{{Luck}} +2,5% Chance pro Glück", -- Athame
	-- English: "25% chance for a black brimstone ring to spawn around killed enemies#It deals 30x Isaac's damage over 2 seconds#{{Luck}} +2.5% chance per luck"

	[C_ID .. 416] = "{{Coin}} Wenn das Leeren eines Raums keine Belohnung bringen würde, erscheinen 1-3 Münzen#{{Coin}} Erhöht das Münzenlimit auf 999", -- Deep Pockets
	-- English: "{{Coin}} If clearing a room would yield no reward, spawns 1-3 coins#{{Coin}} Increases the coin cap to 999"

	[C_ID .. 417] = "Springt im Raum herum, umgeben von einer schädlichen Aura, die 7,5-10 Schaden pro Sekunde verursacht#↑ {{Damage}} x1,5 Schadensmultiplikator, wenn man in der Aura steht", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 7.5-10 damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 421] = "{{Charm}} Verzaubert alle Feinde in unmittelbarer Nähe", -- Kidney Bean
	-- English: "{{Charm}} Charms all enemies in close range"

	[C_ID .. 422] = "Bringt Isaac zurück in den vorherigen Raum und kehrt alle Handlungen um, die im Raum durchgeführt wurden, in dem das Item verwendet wurde#Die Rückspulung kann dreimal pro Ebene verwendet werden#{{Collectible66}} Wirkt wie die Sanduhr, wenn die Rückspulungen aufgebraucht sind und verlangsamt Feinde für 8 Sekunden", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in#The rewind can be used three times per floor#{{Collectible66}} Acts as The Hourglass when out of rewinds, which slows enemies down for 8 seconds"

	[C_ID .. 432] = "{{Charm}} Bomben haben eine 63% ige Chance, eine zufällige Belohnung fallen zu lassen und eine 15% ige Chance, Feinde zu verzaubern, wenn sie explodieren#Die Wahrscheinlichkeit, dass eine Belohnung erscheint, sinkt um 1% für jede Belohnung in dieser Ebene", -- Glitter Bombs
	-- Full old Desc: "{{Bomb}} +5 Bomben#{{Charm}} Bomben haben eine 63% ige Chance, eine zufällige Belohnung fallen zu lassen und eine 15% ige Chance, Feinde zu verzaubern, wenn sie explodieren#Die Wahrscheinlichkeit, dass eine Belohnung erscheint, sinkt um 1% für jede Belohnung in dieser Ebene"
	-- English: "{{Charm}} Bombs have a 63% chance to drop a random pickup and a 15% chance to charm enemies when they explode#The pickup spawn chance goes down by 1% for each spawn this floor"

	[C_ID .. 433] = "Ein kleiner Schatten folgt Isaac#{{Timer}} Wenn ein Feind den Schatten berührt, erscheint für den Raum ein freundlicher schwarzer Charger", -- My Shadow
	-- Full old Desc: "Ein kleiner Schatten folgt Isaac#{{Timer}} Wenn ein Feind den Schatten berührt, erscheint für den Raum ein freundlicher schwarzer Charger#Der Charger verursacht 8,7 Schaden pro Treffer"
	-- English: "A small shadow follows Isaac#{{Friendly}} When an enemy touches the shadow a friendly black charger spawns for the room"

	[C_ID .. 437] = "Startet einen Raum neu und lässt alle Feinde wieder auferstehen#Kann verwendet werden, um mehrere Raum-Belohnungen aus einem einzigen Raum zu erhalten", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room"

	[C_ID .. 444] = "Isaac schießt alle 15 Tränen einen Cluster von Tränen", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears"

	[C_ID .. 448] = "Bei Schaden:#{{Heart}} 25% Chance, ein Rotes Herz fallen zu lassen#{{BleedingOut}} Isaac blutet und schießt Tränen in die Richtung, in die er schießt#Das Bluten verursacht alle 20 Sekunden einen halben roten Herzschaden#Das Bluten stoppt, wenn ein Rotes Herz geheilt wird, alle roten Herzen leer sind oder der nächste Schaden Isaac töten würde", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{BleedingOut}} Isaac bleeds, spewing tears in the direction he is shooting#The bleeding does half a Red Heart of damage every 20 seconds#The bleeding stops if a Red Heart is healed, all Red Hearts are empty, or the next damage would kill Isaac"

	[C_ID .. 450] = "{{Damage}} Alle 20 Tränen schießt Isaac eine Münzträne ab, die x1,5 +10 Schaden verursacht#Feinde, die mit der Münze getroffen werden, werden zu Gold#{{Coin}} Das Töten eines goldenen Feindes lässt 1-3 Münzen fallen#{{Warning}} Das Abschießen einer Münzträne kostet 1 Münze", -- Eye of Greed
	-- English: "{{Damage}} Every 20 tears, Isaac shoots a coin tear that deals x1.5 +10 damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-3 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "{{Card}} Tarot-Karteneffekte sind verdoppelt oder verbessert", -- Tarot Cloth
	-- Full old Desc: "{{Card}} Lässt eine Karte erscheinen#{{Card}} Tarot-Karteneffekte sind verdoppelt oder verbessert"
	-- English: "{{Card}} Tarot card effects are doubled or enhanced"

	[C_ID .. 453] = "Tränen zersplittern beim Aufprall in 1-3 Knochensplitter", -- Compound Fracture
	-- Full old Desc: "↑ {{Range}} +1,5 Reichweite#Tränen zersplittern beim Aufprall in 1-3 Knochensplitter"
	-- English: "Tears shatter into 1-3 bone shards upon hitting anything"

	[C_ID .. 464] = "Champion-Gegner und Raum-Belohnungen werden zu der Belohnung, die Isaac am meisten braucht", -- Glyph of Balance
	-- Full old Desc: "{{SoulHeart}} +2 Seelenherzen#Champion-Gegner und Raum-Belohnungen werden zu der Belohnung, die Isaac am meisten braucht"
	-- English: "Room clear rewards and champion enemy drops become whatever pickup Isaac needs the most"

	[C_ID .. 472] = "Andere Begleiter folgen ihm und schießen automatisch auf Feinde#Hält an, wenn Isaac schießt#Teleportiert zu Isaac zurück, wenn er aufhört zu schießen", -- King Baby
	-- English: "Other familiars follow it and automatically shoot at enemies#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 474] = "Die Verwendung des Gegenstands verwandelt ihn zurück in die Glasskanone", -- Broken Glass Cannon
	-- English: "Using the item turns it back into Glass Cannon"

	[C_ID .. 476] = "Dupliziert ein zufälliges Pickup im Raum#Duplizierte Pickups müssen nicht identisch mit dem Original sein", -- D1
	-- English: "Duplicates a random pickup in the room#Duplicated pickups may not be identical to the original"

	[C_ID .. 477] = "Verzehrt alle Sockelobjekte im Raum#Active Items: Ihre Effekte aktivieren sich bei jeder zukünftigen Verwendung von Leere#↑ Passive Objekte gewähren zwei zufällige Stat-Upgrades", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 489] = "Kann so eingestellt werden, dass es sich wie ein beliebiges Würfelobjekt verhält (außer {{Collectible723}} Spindown Dice) mit der Abwurftaste ({{ButtonRT}})#Die Ladezeit variiert je nach zuletzt verwendeten Würfel und wird bei jedem Gebrauch aktualisiert", -- D Infinity
	-- Full old Desc: "Kann so eingestellt werden, dass es sich wie ein beliebiges Würfelobjekt verhält (außer {{Collectible723}} Spindown Dice) mit der Abwurftaste ({{ButtonRT}})#Die Ladezeit variiert je nach zuletzt verwendeten Würfel und wird bei jedem Gebrauch aktualisiert"
	-- English: "Can be made to act as any die item (except {{Name723}}) with the drop button ({{ButtonRT}})#Charge time varies based on the last die used and updates with every use"

	[C_ID .. 493] = "↑ {{Damage}} Schaden für jeden leeren Herzcontainer#Je mehr leere Herzcontainer, desto größer der Bonus für jeden neuen", -- Adrenaline
	-- English: "↑ {{Damage}} Damage up for every empty heart container#The more empty heart containers, the bigger the bonus for each new one"

	[C_ID .. 494] = "Tränen erzeugen einen Funken Elektrizität bei Kontakt#Funken verursachen die Hälfte von Isaacs Schaden#Funken können auf andere Feinde überspringen", -- Jacob's Ladder
	-- English: "Tears spawn a spark of electricity on impact#Sparks deal half of Isaac's damage#Sparks can arc to up to 4 other enemies"

	[C_ID .. 495] = "Flammen schrumpfen und verschwinden nach 2 Sekunden", -- Ghost Pepper
	-- Full old Desc: "8,33% Chance, eine blaue Flamme zu schießen, die feindliche Geschosse blockiert und Kontaktschaden verursacht#{{Luck}} 50% Chance bei 10 Glück#Flammen schrumpfen und verschwinden nach 2 Sekunden"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a blue fire that blocks enemy shots and deals contact damage#Fires shrink and disappear after 2 seconds"

	[C_ID .. 497] = "{{Verwirrung}} Das Betreten eines Raums tarnt Isaac und verwirrt alle Feinde, bis eine Träne abgefeuert wird#↑ {{Speed}} +0,5 Geschwindigkeit im getarnten Zustand#Das Enttarnen verursacht Schaden um Isaac herum und gewährt kurzzeitig Feuerrate- und Schadensbonus", -- Camo Undies
	-- English: "{{Confusion}} Entering a room camouflages Isaac and confuses all enemies until a tear is shot#↑ {{Speed}} +0.5 Speed while cloaked#Uncloaking deals damage around Isaac and grants a very brief fire rate and damage up"

	[C_ID .. 501] = "{{Heart}} +1 Herzcontainer für jeweils 25 Münzen, die Isaac besitzt", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins Isaac has"

	[C_ID .. 503] = "Die Hand tötet Feinde sofort und verursacht 36 Schaden an Bossen", -- Little Horn
	-- Full old Desc: "5% Chance, eine Träne zu schießen, die eine Hand von Big Horn beschwört#{{Luck}} 20% Chance bei 15 Glück#Die Hand tötet Feinde sofort und verursacht 36 Schaden an Bossen#Isaac verursacht 7 Kontaktschaden pro Sekunde"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a tear that summons a Big Horn hand#The hand instantly kills enemies and deals 36 damage to bosses"

	[C_ID .. 504] = "Spawnt eine Fliege, die auf Feinde schießt", -- Brown Nugget
	-- Full old Desc: "Spawnt eine Fliege, die auf Feinde schießt#Jeder Schuss verursacht 3,5 Schaden"
	-- English: "Spawns a fly that shoots at enemies"

	[C_ID .. 506] = "{{BleedingOut}} Ein Treffer von hinten verursacht doppelten Schaden und Blutungen, wodurch Feinde Kriechspuren hinterlassen und Schaden erleiden, wenn sie sich bewegen", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which makes enemies leave creep and take damage when they move"

	[C_ID .. 507] = "{{Damage}} Verursacht Isaacs Schaden + 10% der maximalen Gesundheit des Feindes an alle Feinde#{{HalfHeart}} Schaden mit dem Strohhalm kann halbe Herzen spawnen", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts"

	[C_ID .. 508] = "{{BleedingOut}} Orbitale, die Blutungen verursachen und Feinde Schaden nehmen lassen, wenn sie sich bewegen#{{Damage}} Verursacht 1,5x Isaacs Schaden pro Sekunde", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which makes enemies take damage when they move#{{Damage}} Deals 1.5x Isaac's damage per second"

	[C_ID .. 509] = "Orbitale, die alle 0,33 Sekunden eine Träne auf nahegelegene Feinde schießen", -- Bloodshot Eye
	-- Full old Desc: "Orbitale, die alle 0,33 Sekunden eine Träne auf nahegelegene Feinde schießen#Verursacht 3,5 Schaden pro Träne#Verursacht 20 Kontaktschaden pro Sekunde"
	-- English: "Orbital that shoots a tear every 0.33 seconds to nearby enemies"

	[C_ID .. 514] = "Veranlasst einige Feinde und Geschosse, sich in zufälligen Intervallen kurzzeitig zu pausieren#Pausierte Geschosse verschwinden#25% Chance, Raum-Belohnungen zu verdoppeln#(Verdoppelt keine Kisten-, Karten- oder Pillenbelohnungen)", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#Paused projectiles disappear#25% chance to double room clear rewards"

	[C_ID .. 517] = "Entfernt die Verzögerung zwischen dem Platzieren von Bomben#Bomben stoßen sich nicht gegenseitig ab", -- Fast Bombs
	-- Full old Desc: "{{Bomb}} +7 Bomben#Entfernt die Verzögerung zwischen dem Platzieren von Bomben#Bomben stoßen sich nicht gegenseitig ab"
	-- English: "Removes the delay between bomb placements#Bombs don't deal knockback to each other"

	[C_ID .. 522] = "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards#Pushes close enemies away during the effect", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards#Pushes close enemies away during the effect"

	[C_ID .. 523] = "Speichert bis zu 10 Pickups und Gegenstände aus dem aktuellen Raum#Bei erneuter Verwendung lässt der Gegenstand alles auf den Boden fallen#Ermöglicht es Isaac, Dinge zwischen Räumen zu bewegen", -- Moving Box
	-- English: "Stores up to 10 pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Isaacs Tränen sind mit elektrischen Strahlen verbunden#Elektrizität verursacht 4,5x Isaacs Schaden pro Sekunde", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#Electricity deals 4.5x Isaac's damage per second"

	[C_ID .. 552] = "Spawnt eine Falltür zum nächsten Stockwerk#{{LadderRoom}} Spawnt einen Kriechraum, wenn er auf einem dekorativen Bodenbelag (Gras, kleine Steine, Papier, Edelsteine usw.) verwendet wird#{{Warning}} Verwende die Schaufel auf dem Erdhügel im \"Dunklen Raum\"", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 553] = "25% Chance, eine klebrige Sporenträne zu schießen#{{Luck}} Nicht von Glück beeinflusst#{{Poison}} Sporen explodieren nach 2,5 Sekunden und verursachen Schaden, vergiften nahegelegene Feinde und setzen weitere Sporen frei", -- Mucormycosis
	-- English: "25% chance to shoot a sticky spore tear#{{Luck}} Not affected by luck#{{Poison}} Spores blow up after 2.5 seconds, dealing damage, poisoning nearby enemies and releasing more spores"

	[C_ID .. 554] = "{{Fear}} Verängstigt Feinde in einem kleinen Radius um Isaac", -- 2Spooky
	-- English: "{{Fear}} Fears enemies in a small radius around Isaac"

	[C_ID .. 555] = "{{Timer}} Zahle 5 Münzen und erhalte für den Raum:#{VAR:EFFECTLIST}", -- Golden Razor
	-- Full old Desc: "{{Coin}} +5 Münzen beim Aufsammeln#{{Timer}} Zahle 5 Münzen und erhalte für den Raum:#↑ {{Damage}} +1,2 Schaden"
	-- English: "{{Timer}} Pay 5 {{Coin}} coins and receive for the room:#{VAR:EFFECTLIST}"

	[C_ID .. 556] = "Using it multiple times in one room grants increased damage and a larger beam", -- Sulfur
	-- Full old Desc: "{{Timer}} {{Collectible118}} Brimstone für den Raum#Using it multiple times in one room grants increased damage and a larger beam"
	-- English: "{{Timer}} {{NameC118}} for the room#Using it multiple times in one room grants increased damage and a larger beam"

	[C_ID .. 557] = "Gewährt eine der folgenden Belohnungen:#Eine Prophezeiung#{{SoulHeart}} Ein Soul Heart#{{Rune}} Eine Rune oder Seelenstein#{{Card}} Eine Tarot-Karte#{{Trinket}} Ein Trinket", -- Fortune Cookie
	-- English: "Grants one of the following rewards:#A fortune#{{SoulHeart}} A Soul Heart#{{Rune}} A Rune or Soul Stone#{{Card}} A Tarot card#{{Trinket}} A Trinket"

	[C_ID .. 558] = "Chance, 1-3 zusätzliche Tränen in zufällige Richtungen zu schießen#{{Luck}} Nicht von Glück beeinflusst", -- Eye Sore
	-- English: "Chance to shoot 1-3 extra tears in random directions#{{Luck}} Not affected by luck"

	[C_ID .. 559] = "Zappt wiederholt nahegelegene Feinde#{{Damage}} Elektrizität verursacht bis zu 3,75x Isaacs Schaden pro Sekunde", -- 120 Volt
	-- English: "Repeatedly zaps nearby enemies#{{Damage}} Electricity deals up to 3.75x Isaac's damage per second#Sparks can arc to up to 4 other enemies"

	[C_ID .. 560] = "{{Timer}} Bei Schaden erhalten für den Raum:#↑ {{Tears}} +1,2 Feuerrate beim ersten Treffer#↑ {{Tears}} +0,4 Feuerrate für jeden zusätzlichen Treffer#Entlässt einen Ring aus 10 Tränen um Isaac", -- It Hurts
	-- English: "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac"

	[C_ID .. 561] = "Tränen erhalten zufällige Wurmschmuckeffekte und einige Gegenstandseffekte", -- Almond Milk
	-- Full old Desc: "↑ {{Tears}} x4 Feuerratenmultiplikator#↓ {{Damage}} x0,3 Schadensmultiplikator#↓ {{Tearsize}} -0,16 Tränengröße#Tränen erhalten zufällige Wurmschmuckeffekte und einige Gegenstandseffekte"
	-- English: "Tears gain random worm trinket effects and some item effects"

	[C_ID .. 562] = "↑ Verhindert, dass Statistiken für den Rest des Durchlaufs gesenkt werden", -- Rock Bottom
	-- English: "↑ Prevents stats from being lowered for the rest of the run"

	[C_ID .. 563] = "Isaacs Bomben explodieren mit zufälligen Effekten", -- Nancy Bombs
	-- Full old Desc: "{{Bomb}} +5 Bomben#Isaacs Bomben explodieren mit zufälligen Effekten"
	-- English: "Isaac's bombs explode with random effects"

	[C_ID .. 565] = "Verfolgt Feinde#Nach dem Töten von 15 Feinden verursacht sie mehr Schaden, spawnt alle 10 Kills ein halbes rotes Herz, versucht aber, Isaac zu verletzen#Nach dem Töten von 40 Feinden verursacht sie noch mehr Schaden, spawnt volle rote Herzen und kann Felsen zerstören#Ausreichender Schaden an sie bringt sie in ihre erste Phase zurück", -- Blood Puppy
	-- English: "Chases enemies#After killing 15 enemies, it deals more damage, spawns a half Red Heart every 10 kills, but tries to hurt Isaac#After killing 40 enemies, it deals even more damage, spawns full Red Hearts, and can destroy rocks#Dealing enough damage to it returns it to its first phase"

	[C_ID .. 566] = "{{HalfSoulHeart}} +1 halbes Soul Heart beim Betreten einer neuen Ebene#Der Albtraumübergang zeigt den Bosskampf und den Schatzraum des nächsten Stockwerks", -- Dream Catcher
	-- English: "{{HalfSoulHeart}} +1 half Soul Heart when entering a new floor#The stage transition nightmare reveals the next floor's boss fight and Treasure Room item"

	[C_ID .. 567] = "↑ {{Tears}} Raum ohne Schaden zu nehmen abschließen gewährt +0,4 Feuerrate#Begrenzt auf +2 Feuerrate {{ColorSilver}}(5 Räume)", -- Paschal Candle
	-- English: "↑ {{Tears}} Clearing a room without taking damage grants +0.4 Fire rate#Caps at +2 Fire rate {{ColorSilver}}(5 rooms){{CR}}"

	[C_ID .. 568] = "Doppelklick auf eine Feuertaste erzeugt einen Schild#Der Schild dauert 1 Sekunde, stößt Feinde ab und reflektiert feindliche Projektile und Laser", -- Divine Intervention
	-- English: "Double-tapping a fire key creates a shield#The shield lasts 1 second, pushes enemies away and reflects enemy projectiles and lasers"

	[C_ID .. 569] = "{{Warning}} Das Betreten einer neuen Ebene entleert alle roten Herzen von Isaac, gewährt jedoch Geschwindigkeits- und Schadensboni für jedes verlorene Herz#Jedes halbe Herz zählt als einzelner Treffer für Effekte bei Treffern", -- Blood Oath
	-- English: "{{Warning}} Entering a new floor drains all of Isaac's Red Hearts, but grants speed and damage bonuses for each heart lost#Each half heart lost counts as an individual hit for on-hit effects"

	[C_ID .. 570] = "Jede von Isaacs Tränen hat eine andere Farbe und Statuswirkung", -- Playdough Cookie
	-- English: "Each of Isaac's tears have a different color and status effect"

	[C_ID .. 571] = "Immun gegen Kriech- und Bodenstacheln", -- Orphan Socks
	-- Full old Desc: "↑ {{Speed}} +0,3 Geschwindigkeit#↑ {{SoulHeart}} +2 Soul Hearts#Immun gegen Kriech- und Bodenstacheln"
	-- English: "Immune to creep and floor spikes"

	[C_ID .. 572] = "Isaacs Tränen können in der Luft gesteuert werden", -- Eye of the Occult
	-- Full old Desc: "↑ {{Damage}} +1 Schaden#↑ {{Range}} +2 Reichweite#↓ {{Shotspeed}} -0,16 Schussgeschwindigkeit#Isaacs Tränen können in der Luft gesteuert werden"
	-- English: "Isaac's tears can be controlled in mid-air"

	[C_ID .. 573] = "20% Chance, eine zusätzliche kreisende Spektralträne abzuschießen", -- Immaculate Heart
	-- Full old Desc: "↑ {{Heart}} +1 Gesundheit#↑ {{Damage}} x1.2 Schadensmultiplikator#{{Heart}} Volle Gesundheit#20% Chance, eine zusätzliche kreisende Spektralträne abzuschießen"
	-- English: "20% chance to shoot an extra orbiting spectral tear"

	[C_ID .. 574] = "Isaac ist von einer schadensverursachenden Aura umgeben#Je näher Feinde an Isaac sind, desto mehr Schaden verursacht die Aura bei ihnen", -- Monstrance
	-- English: "Isaac is surrounded by a damaging aura#The closer enemies are to Isaac, the more damage the aura deals to them"

	[C_ID .. 575] = "{{Slow}} Vergräbt sich in Isaacs Kopf und verschießt 4 zusätzliche verlangsamende Tränen#Durch den erlittenen Schaden kann die Spinne den Kopf verlassen und Feinde jagen", -- The Intruder
	-- English: "{{Slow}} Buries itself in Isaac's head and shoots 4 extra slowing tears that deal 1.5 damage#Taking damage can make the spider exit the head and chase enemies"

	[C_ID .. 576] = "Alle Dip-Feinde (kleine Kacke) sind freundlich#Die Zerstörung von Kacke erzeugt 1-4 Dips#Dip-Typ hängt vom Kack-Typ ab#Felsen können durch Kacke ersetzt werden", -- Dirty Mind
	-- English: "All Dip (small poop) enemies are friendly#Destroying poop spawns 1-4 Dips#Dip type depends on the poop type#Rocks may be replaced with poop"

	[C_ID .. 577] = "Hängt ein Schwert über Isaacs Kopf, das alle Sockel-Items verdoppelt#Verdoppelt nicht die Shop-, Kisten- oder Teufelsdeal-Items#{{Warning}} Nachdem Schaden genommen wurde, besteht eine extrem geringe Chance, dass das Schwert Isaac in jedem Frame sofort tötet", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 578] = "Erzeugt eine große Pfütze gelben Schleims#Der Schleim verursacht 24 Schaden pro Sekunde", -- Free Lemonade
	-- English: "Creates a large pool of yellow creep#The creep deals 24 damage per second"

	[C_ID .. 579] = "Statt Tränen abzuschießen, schwingt Isaac ein Schwert#{{Damage}} Das Schwert verursacht 3x Isaacs Schaden +3,5 und schwingt so schnell wie der Feuerknopf gedrückt wird#{{Chargeable}} Beim Aufladen erfolgt ein Drehschlag + Projektilschuss#Schießt Projektile mit normalen Schwingungen bei voller Gesundheit#{{Tears}} Tränen beeinflussen die Ladezeit und wie oft ein Projektil bei voller Gesundheit abgefeuert wird", -- Spirit Sword
	-- English: "Instead of shooting tears, swing a sword#{{Damage}} The sword deals 3x Isaac's damage +3.5 and swings as fast as the fire button is tapped#{{Chargeable}} Charging does a spin attack + projectile shot#Shoots projectiles with swings at full health"

	[C_ID .. 580] = "Erzeugt einen roten Raum neben einem normalen Raum, der durch eine Türumrisslinie gekennzeichnet ist#Rote Räume können besondere Räume sein#{{ErrorRoom}} Betreten eines Raums außerhalb der 13x13-Ebenenkarte teleportiert Isaac zum I AM ERROR-Raum", -- Red Key
	-- English: "Creates a red room adjacent to a regular room, indicated by a door outline#Red Rooms can be special rooms#{{ErrorRoom}} Entering a room outside the 13x13 floor map teleports Isaac to the I AM ERROR room"

	[C_ID .. 581] = "Verfolgt und lenkt feindliche Geschosse ab", -- Psy Fly
	-- Full old Desc: "Verfolgt und lenkt feindliche Geschosse ab#Verursacht 15 Kontaktschaden pro Sekunde"
	-- English: "Chases and deflects enemy projectiles"

	[C_ID .. 582] = "Verzerrt den Bildschirm#Dauert länger, um bei jeder Verwendung aufzuladen#Verlassen oder Löschen von Räumen reduziert die Effekte", -- Wavy Cap
	-- Full old Desc: "↑ {{Tears}} +0,75 Schussrate#↓ {{Speed}} -0,03 Geschwindigkeit#Verzerrt den Bildschirm#Dauert länger, um bei jeder Verwendung aufzuladen#Verlassen oder Löschen von Räumen reduziert die Effekte"
	-- English: "Distorts the screen#Takes longer to recharge each use#Leaving or clearing rooms reduces the effects"

	[C_ID .. 583] = "Das Platzieren einer Bombe beim Schießen feuert eine Rakete in diese Richtung ab", -- Rocket in a Jar
	-- Full old Desc: "{{Bomb}} +5 Bomben#Das Platzieren einer Bombe beim Schießen feuert eine Rakete in diese Richtung ab"
	-- English: "Placing a bomb while shooting fires a rocket in that direction instead"

	[C_ID .. 584] = "Beschwört einen orbitalen Wisphelfer, der spektrale Tränen abfeuert, aber zerstört werden kann#Kann mit einem zweiten active Item kombiniert werden, um spezielle Wisps zu erstellen#{{AngelRoom}} Ermöglicht das Erscheinen von Engelsräumen, nachdem ein Teufelsdeal angenommen wurde", -- Book of Virtues
	-- Full old Desc: "{{AngelChance}} +12,5% Engelsraumchance bei Benutzung#Beschwört einen orbitalen Wisphelfer, der spektrale Tränen abfeuert, aber zerstört werden kann#Kann mit einem zweiten active Item kombiniert werden, um spezielle Wisps zu erstellen#{{AngelRoom}} Verwandelt den ersten Teufelsraum in einen Engelsraum#{{AngelRoom}} Ermöglicht das Erscheinen von Engelsräumen, nachdem ein Teufelsdeal angenommen wurde"
	-- English: "Spawns an orbital wisp familiar that shoots spectral tears but can be destroyed#Can be combined with a second active item to create special wisps#{{AngelRoom}} Turns the first Devil Room into an Angel Room#{{AngelRoom}} Allows Angel Rooms to spawn after taking a Devil deal"

	[C_ID .. 585] = "Muss durch das Aufnehmen von Seelenherzen aufgeladen werden, dann beschwört:#{{SoulHeart}} Drei Seelenherzen#{{AngelRoom}} Zwei Engelsraum-Items#{{DevilRoom}} Beschwört nur 2 Seelenherzen und 1 Engelsitem, wenn zuvor ein Teufelsdeal angenommen wurde", -- Alabaster Box
	-- English: "Must be charged by picking up Soul Hearts, then spawns:#{{SoulHeart}} Three Soul Hearts#{{AngelRoom}} Two Angel Room items#{{DevilRoom}} Only spawns 2 Soul Hearts and 1 Angel item if a Devil deal was taken previously"

	[C_ID .. 586] = "Beschwört eine Leiter im ersten Raum jeder Ebene, die zu einem einzigartigen {{AngelRoom}} Engelsraumshop mit Gegenständen und Verbrauchsmaterialien führt", -- The Stairway
	-- English: "Spawns a ladder in the first room of every floor that leads to a unique {{AngelRoom}} Angel Room shop with items and pickups"

	[C_ID .. 588] = "{{CurseBlind}} Entfernt alle Flüche", -- Sol
	-- Full old Desc: "{{BossRoom}} Zeigt den Standort des Bossraums an#{{Timer}} Wenn der Boss besiegt ist, erhältst du für die Ebene:#↑ {{Damage}} +3 Schaden#↑ {{Luck}} +1 Glück#{{Card20}} Die Sonnenwirkung#{{Battery}} Lädt das acitve Item vollständig auf#{{CurseBlind}} Entfernt alle Flüche"
	-- English: "{{BossRoom}} Reveals the location of the Boss Room#{{Timer}} When the floor boss is defeated, receive for the floor:#{VAR:EFFECTLIST}#{{NameK20}} effect#{{Battery}} Fully recharges the active item#{{CurseBlind}} Removes any curses"

	[C_ID .. 589] = "Fügt jeder Ebene einen zusätzlichen {{SecretRoom}} Geheimraum und {{SuperSecretRoom}} Supergeheimraum hinzu#Jede Ebene erhält einen Geheimraum#{{Timer}} Geheimräume enthalten einen Lichtstrahl, der für die Ebene folgendes gewährt:#↑ {{Tears}} +0,5 Schussrate#↑ {{Tears}} Zusätzliche +0,5 Schussrate ab dem ersten Strahl pro Ebene#{{HalfSoulHeart}} Halbes Seelenherz", -- Luna
	-- English: "Adds an extra {{SecretRoom}} Secret Room and {{SuperSecretRoom}} Super Secret Room to each floor#Reveals one Secret Room each floor#{{Timer}} Secret Rooms contain a beam of light that grant for the floor:#↑ {{Tears}} +0.5 Fire rate#↑ {{Tears}} Additional +0.5 Fire rate from the first beam per floor#{{HalfSoulHeart}} Half a Soul Heart"

	[C_ID .. 590] = "Die meisten Türen bleiben dauerhaft geöffnet", -- Mercurius
	-- Full old Desc: "↑ {{Speed}} +0,4 Geschwindigkeit#Die meisten Türen bleiben dauerhaft geöffnet"
	-- English: "Most doors stay permanently open"

	[C_ID .. 591] = "{{Charm}} Verzaubert nahegelegene Feinde", -- Venus
	-- Full old Desc: "↑ {{Heart}} +1 Gesundheit#{{Heart}} Heilt 1 Herz#{{Charm}} Verzaubert nahegelegene Feinde"
	-- English: "{{Charm}} Charms nearby enemies"

	[C_ID .. 592] = "Ersetzt Isaacs Tränen durch Steine#Steine verursachen variablen Schaden, können Hindernisse zerstören und haben eine erhöhte Rückstoßkraft", -- Terra
	-- Full old Desc: "↑ {{Damage}} +1 Schaden#Ersetzt Isaacs Tränen durch Steine#Steine verursachen variablen Schaden, können Hindernisse zerstören und haben eine erhöhte Rückstoßkraft"
	-- English: "Replaces Isaac's tears with rocks#Rocks deal variable damage, can destroy obstacles and have increased knockback"

	[C_ID .. 593] = "Doppeltes Tippen auf eine Bewegungstaste lässt Isaac sprinten#{{Damage}} Während eines Sprints ist Isaac unverwundbar und verursacht 4x seinen Schaden +8#{{Timer}} 3 Sekunden Abklingzeit", -- Mars
	-- English: "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown"

	[C_ID .. 594] = "{{Poison}} Giftimmunität", -- Jupiter
	-- Full old Desc: "↑ {{EmptyHeart}} +2 Leere Herzcontainer#↓ {{Speed}} -0,3 Geschwindigkeit#{{HalfHeart}} Heilt ein halbes Herz#{{Speed}} Die Geschwindigkeit baut sich bis zu +0,5 auf, während man still steht#{{Poison}} Bewegung setzt Giftwolken frei#{{Poison}} Giftimmunität"
	-- English: "{{Speed}} Speed builds up to +0.5 while standing still#{{Poison}} Moving releases poison clouds#{{Poison}} Poison immunity"

	[C_ID .. 595] = "Das Betreten eines Raums lässt 7 Tränen um Isaac kreisen#Diese Tränen halten 13 Sekunden an und verursachen 1,5x Isaacs Schaden +5#Feindliche Geschosse haben die Chance, um Isaac zu kreisen", -- Saturnus
	-- English: "Entering a room causes 7 tears to orbit Isaac#Those tears last for 13 seconds and deal 1.5x Isaac's damage +5#Enemy projectiles have a chance to orbit Isaac"

	[C_ID .. 596] = "{{Freezing}} Isaac schießt Eis-Tränen, die Feinde bei ihrem Tod einfrieren#Berühren eines gefrorenen Feindes lässt ihn wegrutschen und in 10 Eissplitter explodieren", -- Uranus
	-- English: "{{Freezing}} Isaac shoots petrifying tears that freeze enemies on death#Touching a frozen enemy makes it slide away and explode into 10 ice shards"

	[C_ID .. 597] = "{{Tears}} Kein Schießen baut über 3 Sekunden einen Tränenbonus auf#Der Tränenbonus nimmt ab, wenn Isaac schießt", -- Neptunus
	-- English: "{{Tears}} Not shooting builds up a tear bonus over 3 seconds#The tear bonus decreases as Isaac shoots"

	[C_ID .. 598] = "Verkleinert Isaac erheblich, sodass er zwischen Objekten hindurchpasst#Projektile können über ihn hinwegfliegen", -- Pluto
	-- Full old Desc: "↑ {{Tears}} +0,7 Tränen#Verkleinert Isaac erheblich, sodass er zwischen Objekten hindurchpasst#Projektile können über ihn hinwegfliegen"
	-- English: "Significantly shrinks Isaac, allowing him to squeeze between objects#Projectiles can pass over him"

	[C_ID .. 599] = "{{CursedRoom}} Beschwört jede Ebene einen zusätzlichen Fluchraum#Verbessert Fluchraum-Layouts und Belohnungen#{{Coin}} Spawnt eine Münze in jedem Fluchraum", -- Voodoo Head
	-- English: "{{CursedRoom}} Spawns an additional Curse Room each floor#Improves Curse Room layouts and rewards#{{Coin}} Spawns a coin in every Curse Room"

	[C_ID .. 601] = "Durch roten Herzschaden wird die Teufels/Engelsraumchance nicht so stark reduziert", -- Act of Contrition
	-- Full old Desc: "↑ {{Tears}} +0,7 Tränen#{{EternalHeart}} +1 Ewiges Herz#{{AngelChance}} Ermöglicht das Erscheinen von Engelsräumen, auch nachdem ein Teufelsdeal angenommen wurde#Durch roten Herzschaden wird die Teufels/Engelsraumchance nicht so stark reduziert"
	-- English: "{{AngelChance}} Allows Angel Rooms to spawn after taking a devil deal#Taking Red Heart damage doesn't reduce Devil/Angel Room chance as much"

	[C_ID .. 602] = "{{Shop}} Öffnet in jedem Laden eine Falltür#Die Falltür führt zu einem unterirdischen Laden, der Schmuckstücke, Runen, Karten, besondere Herzen und Gegenstände aus jedem Pool verkauft", -- Member Card
	-- English: "{{Shop}} Opens a trapdoor in every Shop#The trapdoor leads to an underground shop that sells trinkets, runes, cards, special hearts and items from any pool"

	[C_ID .. 603] = "{{Battery}} Lädt das active Item vollständig auf", -- Battery Pack
	-- Full old Desc: "{{Battery}} Spawnt 2-4 Batterien#{{Battery}} Lädt das active Item vollständig auf"
	-- English: "{{Battery}} Fully recharges the active item"

	[C_ID .. 604] = "Ermöglicht es Isaac, Felsen, TNT, Kacke, freundliche Dips, Gastgeber und andere Hindernisse aufzuheben und zu werfen#Erlaubt das Tragen zwischen Räumen", -- Mom's Bracelet
	-- English: "Allows Isaac to pick up and throw rocks, TNT, poops, friendly Dips, Hosts and other obstacles#Allows carrying them between rooms"

	[C_ID .. 606] = "Risse verursachen 3x Isaacs Schaden pro Sekunde und ziehen nahegelegene Feinde, Pickups und Geschosse an", -- Ocular Rift
	-- Full old Desc: "5% Chance, Tränen abzuschießen, die Risse an den Aufschlagstellen erzeugen#{{Luck}} 20% Chance bei 15 Glück#Risse verursachen 3x Isaacs Schaden pro Sekunde und ziehen nahegelegene Feinde, Pickups und Geschosse an"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot tears that create rifts where they land#Rifts do 3x Isaac's damage per second and pull in nearby enemies, pickups, and projectiles"

	[C_ID .. 607] = "Schießt chaotische Salven von Tränen in alle Richtungen", -- Boiled Baby
	-- Full old Desc: "Schießt chaotische Salven von Tränen in alle Richtungen#Verursacht 3,5 oder 5,3 Schaden pro Träne"
	-- English: "Shoots chaotic bursts of tears in all directions"

	[C_ID .. 608] = "Schießt versteinerte Tränen ab#{{Freezing}} Gefriert Feinde bei ihrem Tod", -- Freezer Baby
	-- English: "{{Petrify}} Shoots petrifying tears that deal 3.5 damage#{{Freezing}} Freezes enemies upon killing them"

	[C_ID .. 609] = "Würfelt alle Sockel-Items im Raum neu#Hat eine 25%ige Chance, Gegenstände zu löschen, anstatt sie neu zu würfeln", -- Eternal D6
	-- English: "Rerolls all pedestal items in the room#Has a 25% chance to delete items instead of rerolling them"

	[C_ID .. 610] = "Springt auf den Feind, der Isaac im Raum als Erstes Schaden zufügt#Verursacht 45 Schaden und setzt eine Wellenwelle frei#Verfolgt danach Feinde", -- Bird Cage
	-- English: "Leaps on the enemy that deals the first damage to Isaac in a room#Deals 45 damage and releases a rock wave#Chases enemies afterwards for 6.5 contact damage per second"

	[C_ID .. 611] = "Isaac schreit, beschädigt und stößt nahegelegene Feinde zurück#Der Schrei wird stärker, je mehr Ladungen der Gegenstand hat", -- Larynx
	-- English: "Isaac screams, damages and knocks back nearby enemies#The scream gets stronger the more charges the item has"

	[C_ID .. 612] = "Stirbt bei einem Treffer und spawnt am Anfang der nächsten Ebene neu#Wenn sie lebendig zur nächsten Ebene gebracht wird, kann sie spawnt:#{{SoulHeart}} 3 Seelenherzen#{{EternalHeart}} 2 Ewige Herzen#{{TreasureRoom}} Ein Schatzraum-Gegenstand#{{AngelRoom}} Ein Engelsraum-Gegenstand", -- Lost Soul
	-- English: "Dies in one hit and respawns at the start of the next floor#If it is brought alive to the next floor, it can spawn:#{{SoulHeart}} 3 Soul Hearts#{{EternalHeart}} 2 Eternal Hearts#{{TreasureRoom}} A Treasure Room item#{{AngelRoom}} An Angel Room item"

	[C_ID .. 614] = "{{HalfHeart}} Wenn Isaac keine Bomben hat, kann eine gegen einen halben Herzcontainer platziert werden#Isaacs Bomben hinterlassen roten Schleim", -- Blood Bombs
	-- Full old Desc: "↑ {{Heart}} +1 Leben#{{Heart}} Heilt 4 Herzen#{{HalfHeart}} Wenn Isaac keine Bomben hat, kann eine gegen einen halben Herzcontainer platziert werden#Isaacs Bomben hinterlassen roten Schleim#"
	-- English: "{{HalfHeart}} If Isaac has no bombs, one can be placed at the cost of half a heart#Isaac's bombs leave red creep"

	[C_ID .. 615] = "Lenkt einen Feind oder Geschoss ab, kurz bevor Isaac Schaden nehmen würde#Chance, Geschosse in der Nähe abzulenken#Muss nach dem Ablenken berührt werden, um wieder aktiviert zu werden", -- Lil Dumpy
	-- English: "Deflects an enemy or projectile right before Isaac would take damage from it#Chance to deflect projectiles near it#Needs to be touched after deflecting to be reactivated"

	[C_ID .. 616] = "Feuer verschwinden nach dem Blockieren von 4 Schüssen, verursachen 4-mal Schaden oder nach 10 Sekunden", -- Bird's Eye
	-- Full old Desc: "8% Chance, ein rotes Feuer zu schießen, das feindliche Schüsse blockiert und Kontaktschaden verursacht#{{Luck}} 50% Chance bei 10 Glück#Feuer verschwinden nach dem Blockieren von 4 Schüssen, verursachen 4-mal Schaden oder nach 10 Sekunden"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a red fire that blocks enemy shots and deals contact damage#Fires disappear after blocking 4 shots, dealing damage 4 times or after 10 seconds"

	[C_ID .. 617] = "Magnetisierte Feinde ziehen nahegelegene Gegenstände, Geschosse und Feinde an", -- Lodestone
	-- Full old Desc: "{{Magnetisieren}} 17% Chance, magnetisierende Tränen zu schießen#{{Luck}} 100% Chance bei 5 Glück#Magnetisierte Feinde ziehen nahegelegene Gegenstände, Geschosse und Feinde an"
	-- English: "{{Magnetize}} {VAR:LUCKCHANCE}% chance to shoot magnetizing tears#Magnetized enemies attract nearby pickups, projectiles and enemies"

	[C_ID .. 618] = "Markierte Feinde werden von anderen Feinden angegriffen", -- Rotten Tomato
	-- Full old Desc: "{{Bait}} 17% Chance, Tränen zu schießen, die Feinde markieren#{{Luck}} 100% Chance bei 5 Glück#Markierte Feinde werden von anderen Feinden angegriffen"
	-- English: "{{Bait}} {VAR:LUCKCHANCE}% chance to shoot tears that mark enemies#Marked enemies are targeted by other enemies"

	[C_ID .. 619] = "Hat für jeden Charakter eine andere Wirkung", -- Birthright
	-- English: "Has a different effect for each character"

	[C_ID .. 621] = "Der Schadensbonus lässt in 3 Minuten nach#Töten von Feinden während des aktiven Effekts verlängert diesen", -- Red Stew
	-- Full old Desc: "↑ {{Damage}} +21.6 Schadensmultiplikator#{{Heart}} Vollgesundheit#Der Schadensbonus lässt in 3 Minuten nach#Töten von Feinden während des aktiven Effekts verlängert diesen"
	-- English: "The damage up wears off over 3 minutes#Killing enemies while the effect is active extends it"

	[C_ID .. 622] = "Entfernt alle von Isaac's Gegenständen und Aufsammlungen#Teleportiert Isaac zu einem Schlafzimmer mit Aufsammlungen und Truhen#Für jeden entfernten Gegenstand kann Isaac zwischen 3 Gegenständen aus demselben Pool wählen#Verlassen des Schlafzimmers teleportiert Isaac zum nächsten Stock", -- Genesis
	-- English: "Removes all of Isaac's items and pickups#Teleports Isaac to a bedroom with pickups and chests#For every item removed, Isaac can choose between 3 items from the same pool#Leaving the bedroom takes Isaac to the next floor"

	[C_ID .. 623] = "Wirft einen von Isaacs Schlüsseln in die Richtung, in die er schießt#Die geworfenen Schlüssel verursachen Schaden, zerstören Hindernisse und öffnen Türen#Feinde, die mit Schlüsseln getötet werden, können den Inhalt einer Truhe, einschließlich Gegenständen, fallen lassen", -- Sharp Key
	-- Full old Desc: "{{Key}} +5 Schlüssel#Wirft einen von Isaacs Schlüsseln in die Richtung, in die er schießt#Die geworfenen Schlüssel verursachen Schaden, zerstören Hindernisse und öffnen Türen#Feinde, die mit Schlüsseln getötet werden, können den Inhalt einer Truhe, einschließlich Gegenständen, fallen lassen"
	-- English: "Throws one of Isaac's keys in the direction he shoots#Thrown keys deal damage, destroy obstacles, and open doors#Enemies killed with keys can spawn the contents of a chest, including items"

	[C_ID .. 625] = "{VAR:TIMEDEFFECT}#Fähigkeit, Feinde und Hindernisse zu zermalmen", -- Mega Mush
	-- Full old Desc: "Macht Isaac riesig und gewährt:#↑ {{Damage}} x4 Schadensmultiplikator#↑ {{Range}} +2 Reichweite#↓ {{Tears}} -1.9 Tränen#Unverwundbarkeit#Fähigkeit, Feinde und Hindernisse zu zermalmen#{{Timer}} Dauert 30 Sekunden und bleibt zwischen Räumen und Stockwerken bestehen"
	-- English: "{VAR:TIMEDEFFECT}#Gigantifies Isaac#Ability to crush enemies and obstacles#Persists between rooms and floors"

	[C_ID .. 626] = "Das Messer kann eine Tür aus Fleisch öffnen", -- Knife Piece 1
	-- Full old Desc: "Verwandelt sich beim Kombinieren mit {{Collectible627}} Messerstück 2 in ein werfbares Messer#Das Messer kann eine Tür aus Fleisch öffnen"
	-- English: "Turns into a throwable knife that deals 25 damage when combined with {{NameC627}}#The knife can open a door made of flesh"

	[C_ID .. 627] = "Das Messer kann eine Tür aus Fleisch öffnen", -- Knife Piece 2
	-- Full old Desc: "Verwandelt sich beim Kombinieren mit {{Collectible626}} Messerstück 1 in ein werfbares Messer#Das Messer kann eine Tür aus Fleisch öffnen"
	-- English: "Turns into a throwable knife that deals 25 damage when combined with {{NameC626}}#The knife can open a door made of flesh"

	[C_ID .. 628] = "Teleportiert Isaac auf ein Stockwerk, das jeden Gegenstand im Spiel enthält#Das Auswählen eines Gegenstands aus diesem Stockwerk teleportiert Isaac zurück in den Raum, aus dem er kam", -- Death Certificate
	-- English: "Teleports Isaac to a floor that contains every item in the game#Choosing an item from this floor teleports Isaac back to the room he came from"

	[C_ID .. 629] = "Schießt geschützte Tränen ab, um feindliche Geschosse zu zerstören", -- Bot Fly
	-- Full old Desc: "Schießt geschützte Tränen ab, um feindliche Geschosse zu zerstören"
	-- English: "Shoots shielded tears to destroy enemy projectiles"

	[C_ID .. 631] = "Teilt alle Feinde im Raum in 2 kleinere Versionen with 40% health#Enemies that naturally split (like Envy) take enough damage to split instead#Deals 25 damage to enemies that can't be split", -- Meat Cleaver
	-- English: "Splits all enemies in the room into 2 smaller versions with 40% health#Enemies that naturally split (like Envy) take enough damage to split instead#Deals 25 damage to enemies that can't be split"

	[C_ID .. 632] = "Immun gegen {{Brennen}} Verbrennung, {{Verwirrung}} Verwirrung, {{Furcht}} Furcht und {{Vergiftung}} Vergiftungseffekte", -- Evil Charm
	-- Full old Desc: "↑ {{Luck}} +2 Glück#Immun gegen {{Brennen}} Verbrennung, {{Verwirrung}} Verwirrung, {{Furcht}} Furcht und {{Vergiftung}} Vergiftungseffekte"
	-- English: "Immune to {{Burning}} burn, {{Confusion}} confusion, {{Fear}} fear, and {{Poison}} poison effects"

	[C_ID .. 634] = "Auf feindlichen Böden entstehen rote Risse#Das Betreten der Risse beschwört suchende explodierende Geister", -- Purgatory
	-- English: "Red cracks spawn on the ground in hostile rooms#Walking over the cracks summons homing exploding ghosts"

	[C_ID .. 635] = "Beschwört einen Begleiter, der sich in Richtung bewegt, in die Isaac schießt#Bei Benutzung tauscht Isaac die Plätze mit dem Begleiter und wird kurzzeitig unverwundbar#Das Teleportieren auf Gegenstände kann diese beschädigen oder zerstören", -- Stitches
	-- English: "Spawns a familiar that moves in the direction Isaac shoots#On use, Isaac swaps places with the familiar and becomes briefly invincible#Teleporting onto things can damage or destroy them"

	[C_ID .. 636] = "Startet den gesamten Lauf neu#Alle gesammelten Gegenstände, Trinkets, Stats und Aufsammlungen bleiben erhalten#Der Timer wird nicht zurückgesetzt", -- R Key
	-- English: "Restarts the entire run#All items, trinkets, stats and pickups collected are kept#The timer does not reset"

	[C_ID .. 637] = "Feinde erleiden Schaden, wenn sie gegen eine Wand/Hindernis geschleudert werden", -- Knockout Drops
	-- Full old Desc: "{{Verwirrung}} 10% Chance, eine Faust zu schießen, die Verwirrung und extremen Rückstoß verursacht#{{Luck}} 100% Chance bei 9 Glück#Feinde erleiden Schaden, wenn sie gegen eine Wand/Hindernis geschleudert werden"
	-- English: "{{Confusion}} {VAR:LUCKCHANCE}% chance to shoot a fist that inflicts confusion and extreme knockback#Enemies take damage when they get knocked into a wall/obstacle"

	[C_ID .. 638] = "Wirft einen Radiergummi, der einen Feind sofort tötet#Verhindert, dass der gelöschte Feind für den Rest des Laufs erscheint#Fügt Bossen 15 Schaden zu#Kann nur einmal pro Stock verwendet werden", -- Eraser
	-- English: "Throws an eraser that instantly kills an enemy#Prevents the erased enemy from spawning for the rest of the run#Deals 15 damage to bosses#Can only be used once per floor"

	[C_ID .. 640] = "Speit einen Flammenstrahl aus#Das Töten eines Feindes fügt der Urne eine Ladung hinzu", -- Urn of Souls
	-- English: "Spews a stream of flames#Killing an enemy adds a charge to the urn"

	[C_ID .. 641] = "Erzeugt eine Kette von Tränen hinter Isaac in feindlichen Räumen#Die Tränen verursachen 3,5 Schaden", -- Akeldama
	-- English: "Creates a chain of tears behind Isaac in hostile rooms#The tears deal 3.5 damage"

	[C_ID .. 642] = "Beschwört einen Gegenstand aus dem aktuellen Gegenstands-Pool des Raums#{{BrokenHeart}} Verwandelt 1 Herzcontainer oder 1 Knochenherz oder 2 Seelenherzen in ein Gebrochenes Herz#{{Warning}} Ersetzt zukünftige Gegenstände, wenn Isaac ihn nicht hält {{ColorSilver}}(33% nach 1 Verwendung, 50% nach 2, 100% nach 3)#Geringere Chance, wenn die Magic Skin auf einem Podest im aktuellen Stockwerk liegt", -- Magic Skin
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Turns 1 heart container or 1 Bone Heart or 2 Soul Hearts into a Broken Heart#{{Warning}} Replaces future items if Isaac isn't holding it {{ColorSilver}}(33% after 1 use, 50% after 2, 100% after 3)#Lower chance if Magic Skin is on a pedestal on the current floor"

	[C_ID .. 643] = "{{Chargeable}} Aufladbare hochschädliche heilige Strahlen#Ersetzt nicht die Tränen von Isaac", -- Revelation
	-- Full old Desc: "{{SoulHeart}} +2 Seelenherzen#Flug#{{Chargeable}} Aufladbare hochschädliche heilige Strahlen#Ersetzt nicht die Tränen von Isaac"
	-- English: "{{Chargeable}} Chargeable high damage holy beam#Does not replace Isaac's tears"

	[C_ID .. 644] = "↑ Erhöht die niedrigste Statistik von Isaac aus Geschwindigkeit, Schussrate, Schaden und Reichweite#Spawnt entweder 3 {{Coin}} Münzen, 1 {{Bomb}} Bombe oder 1 {{Key}} Schlüssel, abhängig davon, von welchem Isaac am wenigsten hat", -- Consolation Prize
	-- English: "↑ Increases Isaac's lowest stat out of Speed, Fire rate, Damage, and Range#Spawns either 3 {{Coin}} coins, 1 {{Bomb}} bomb, or 1 {{Key}} key depending on what Isaac has the least of"

	[C_ID .. 645] = "Großes Orbital, das Schüsse blockiert#Teilt sich in kleinere Versionen auf, nachdem es 3 Treffer genommen hat#Die kleineren Versionen brechen in blaue Spinnen auf#Respawnt 5 Sekunden nach dem vollständigen Verschwinden", -- Tinytoma
	-- Full old Desc: "Großes Orbital, das Schüsse blockiert#Verursacht 3,5 Kontakt-Schaden pro Sekunde#Teilt sich in kleinere Versionen auf, nachdem es 3 Treffer genommen hat#Die kleineren Versionen brechen in blaue Spinnen auf#Respawnt 5 Sekunden nach dem vollständigen Verschwinden"
	-- English: "Large orbital that blocks shots#Splits into smaller versions of itself upon taking 3 hits#The smaller versions break into blue spiders#Respawns 5 seconds after fully disappearing"

	[C_ID .. 646] = "{{Collectible118}} Isaacs Bomben geben einen 4-Wege-Blutstrahl ab#Die Strahlen verletzen Isaac nicht", -- Brimstone Bombs
	-- Full old Desc: "{{Bomb}} +5 Bomben#{{Collectible118}} Isaacs Bomben geben einen 4-Wege-Blutstrahl ab#Die Strahlen verletzen Isaac nicht"
	-- English: "{{Collectible118}} Isaac's bombs release a 4-way blood beam#The beams don't hurt Isaac"

	[C_ID .. 647] = "Das Abschließen von Räumen lädt active Items nicht mehr auf#Schaden an Feinden füllt langsam die Ladeleiste#Der für jede Ladung benötigte Schaden steigt auf jedem Stockwerk", -- 4.5 Volt
	-- English: "Clearing rooms no longer charges active items#Dealing damage to enemies slowly fills up the charge bar#Damage needed per charge increases each floor"

	[C_ID .. 649] = "Katapultiert sich diagonal durch den Raum und schießt Tränen auf ihrem Weg, die 3 Schaden verursachen", -- Fruity Plum
	-- Full old Desc: "Katapultiert sich diagonal durch den Raum und schießt Tränen auf ihrem Weg, die 3 Schaden verursachen#Verursacht 6 Kontakt-Schaden pro Sekunde"
	-- English: "Propels herself diagonally around the room, firing tears in her path that deal 3 damage"

	[C_ID .. 650] = "{{Timer}} Beschwört für 10 Sekunden einen freundlichen Baby Plum im Raum", -- Plum Flute
	-- English: "{{Timer}} Summons a friendly Baby Plum in the room for 10 seconds"

	[C_ID .. 651] = "Bewegt sich langsam vom ersten Raum des Stockwerks zum {{BossRoom}} Bossraum#Bewegt sich schneller, wenn du vor ihm bist, und langsamer, wenn du hinter ihm bist#Im Stehen in seiner Aura gibt es:#{VAR:EFFECTLIST}#50% Chance, Schaden zu ignorieren", -- Star of Bethlehem
	-- Full old Desc: "Bewegt sich langsam vom ersten Raum des Stockwerks zum {{BossRoom}} Bossraum#Bewegt sich schneller, wenn du vor ihm bist, und langsamer, wenn du hinter ihm bist#Im Stehen in seiner Aura gibt es:#↑ {{Tears}} x2,5 Tränenmultiplikator#↑ {{Damage}} x1,8 Schadensmultiplikator#Suchende Tränen#50% Chance, Schaden zu ignorieren"
	-- English: "Slowly travels from the first room of the floor to the {{BossRoom}} Boss Room#Moves faster if you're ahead of it, and slower if you're behind it#Standing in its aura grants:#{VAR:EFFECTLIST}#50% chance to ignore damage"

	[C_ID .. 652] = "Kann durch Anstoßen bewegt werden#{{Freezing}} Verursacht Langsamkeit, fügt Kontaktschaden zu und friert Feinde ein, die es tötet", -- Cube Baby
	-- English: "Can be kicked around by walking into it#{{Slow}} Slows and deals up to 17.5 contact damage depending on speed#{{Freezing}} Freezes enemies it kills"

	[C_ID .. 653] = "Das Halten des Gegenstands lässt bei Tod nicht-geisterhafter Feinde kleine rote Geister erscheinen#Das Benutzen des Gegenstands lässt die Geister explodieren#Das Benutzen des Gegenstands tötet auch alle Geisterfeinde (einschließlich Bosse), die weniger als 50% HP haben", -- Vade Retro
	-- English: "Holding the item causes non-ghost enemies to spawn small red ghosts on death#Using the item causes the ghosts to explode#Using the item also kills any ghost enemies (including bosses) that have less than 50% HP left"

	[C_ID .. 654] = "{{BlackHeart}} Das Essen anderer schlechter Pillen beschwört ein Schwarzes Herz herbei", -- False PHD
	-- Full old Desc: "{{BlackHeart}} +1 Schwarzes Herz#{{Pill}} Identifiziert alle Pillen#Konvertiert alle guten Pillen in schlechte Pillen#↑ {{Damage}} Das Essen einer Stat-Down-Pille gewährt +0,6 Schaden#{{BlackHeart}} Das Essen anderer schlechter Pillen beschwört ein Schwarzes Herz herbei"
	-- English: "{{Pill}} Identifies all pills#Converts all good pills into bad pills#↑ {{Damage}} Eating a stat down pill grants +0.6 damage#{{BlackHeart}} Eating other bad pills spawns a Black Heart"

	[C_ID .. 655] = "Gewährt passiv ein Orbit, das feindliche Schüsse blockiert und 10,5 Kontaktschaden pro Sekunde verursacht#{VAR:ONUSEEFFECT}#Erhöht die Rotationsgeschwindigkeit von Orbitalen erheblich", -- Spin to Win
	-- Full old Desc: "Gewährt passiv ein Orbit, das feindliche Schüsse blockiert und 10,5 Kontaktschaden pro Sekunde verursacht#Das Benutzen des Gegenstands gewährt:#↑ {{Speed}} +0,5 Geschwindigkeit#Erhöht die Rotationsgeschwindigkeit von Orbitalen erheblich"
	-- English: "Passively grants an orbital that blocks enemy shots and deals 10.5 contact damage per second#{VAR:ONUSEEFFECT}#{{IND}}Increases speed and damage of orbitals"

	[C_ID .. 656] = "Hängt ein Schwert über Isaacs Kopf, das alle Sockelgegenstände verdoppelt#Verdoppelt keine Gegenstände im Laden, Truhen oder Teufelsraum#{{Warning}} Nach dem Erleiden von Schaden besteht eine extrem geringe Chance, dass das Schwert Isaac in jedem Frame sofort tötet", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 657] = "Feinde explodieren bei Tod in Tränen, die die Effekte von Isaacs Tränen erben", -- Vasculitis
	-- English: "Enemies explode into tears upon death, which inherit the effects of Isaac's tears"

	[C_ID .. 658] = "Das Nehmen von Schaden beschwört ein Minisaac herbei#Minisaacs jagen und schießen auf nahe Feinde", -- Giant Cell
	-- English: "Taking damage spawns a Minisaac#Minisaacs chase and shoot at nearby enemies"

	[C_ID .. 660] = "Beschwört zwei Portale im ersten Raum jeder Ebene herbei#Das Verlassen des Raumes lässt die Portale verschwinden#{{Blank}} {{ColorRed}}Rot: {{CR}}{{BossRoom}} Bossraum#{{Blank}} {{ColorYellow}}Gelb: {{CR}}{{TreasureRoom}} Itemraum#{{Blank}} {{ColorBlue}}Blau: {{CR}}{{SecretRoom}} Geheimraum", -- Card Reading
	-- English: "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room"

	[C_ID .. 661] = "Das Töten eines Feindes beschwört einen stationären Begleiter an seiner Stelle herbei#Maximal 5 Begleiter", -- Quints
	-- English: "Killing an enemy spawns a stationary familiar in its place#Caps at 5 familiars"

	[C_ID .. 663] = "1 Sekunde Unverwundbarkeit alle 6 Sekunden#Isaac blinkt kurz, bevor der Effekt ausgelöst wird", -- Tooth and Nail
	-- English: "1 second of invincibility every 6 seconds#Isaac flashes right before the effect triggers"

	[C_ID .. 664] = "Essensgegenstände heilen 2 Herzen#Gegenstandspodeste wechseln zwischen ihrem Gegenstand und einem Nahrungsgegenstand#↓ {{Speed}} -0,03 Geschwindigkeit", -- Binge Eater
	-- Full old Desc: "↑ {{Heart}} +1 Gesundheit#{{Heart}} Volle Gesundheit#Essensgegenstände heilen 2 Herzen#Gegenstandspodeste wechseln zwischen ihrem Gegenstand und einem Nahrungsgegenstand#Das Aufnehmen eines Nahrungsgegenstands gewährt:#↑ {{Damage}} Vorübergehend +3,6 Schaden#↑ 2 Dauerhafte Statistikverbesserungen (abhängig von der Nahrung)#↓ {{Speed}} -0,03 Geschwindigkeit"
	-- English: "Item pedestals cycle between their item and a food item#Picking up a food item grants:#{{HealingRed}} Heal 2 hearts#↑ {{Damage}} Temporary +3.6 damage#↑ 2 permanent stat ups (depending on the food)#↓ {{Speed}} -0.03 speed"

	[C_ID .. 665] = "Enthüllt den Inhalt von {{Chest}} Kisten, {{GrabBag}} Säcken, Ladenbesitzern und Kaminen, bevor sie geöffnet oder zerstört werden", -- Guppy's Eye
	-- English: "Reveals the contents of {{Chest}} chests, {{GrabBag}} sacks, shopkeepers, and fireplaces before they're opened or destroyed"

	[C_ID .. 667] = "{{Warning}} Strohmann kann Story-Gegenstände aufnehmen", -- Strawman
	-- Full old Desc: "{{Bomb}} +1 Bombe#{{Player14}} Beschwört Keeper als zweiten Charakter herbei#Wenn er stirbt, beschwört er blaue Spinnen herbei und entfernt dauerhaft Strohmann und jeden Gegenstand, den er aufgenommen hat, aus dem Inventar#{{DevilRoom}} Teufelsraumgegenstände kosten Münzen, solange Strohmann lebt#{{Warning}} Strohmann kann Story-Gegenstände aufnehmen"
	-- English: "{{Player14}} Spawns Keeper as a second character#When he dies, spawns blue spiders and permanently removes Strawman and any item that he has picked up from the inventory#{{DevilRoom}} Devil Room items cost coins while Strawman is alive#{{Warning}} Strawman can pick up story items"

	[C_ID .. 668] = "Beginnt den Aufstieg#In vorherigen {{TreasureRoom}} Schatz- oder {{BossRoom}} Bossräumen zurückgelassene Glückspillen werden zu {{Card78}} Rissigen Schlüsseln", -- Dad's Note
	-- English: "Begins the Ascent#Trinkets left in previous {{TreasureRoom}} Treasure or {{BossRoom}} Boss Rooms turn into {{Card78}} Cracked Keys"

	[C_ID .. 670] = "Ermöglicht es Isaac, zwischen zwei verschiedenen Belohnungen für das Leeren eines Raumes zu wählen", -- Options?
	-- English: "Allows Isaac to choose from two different room clear rewards"

	[C_ID .. 671] = "↑ Aufsammeln von {{Heart}} Rote Herzen gewährt zufällige dauerhafte Statistikverbesserungen#{{Heart}} Spawnt ein Rotes Herz", -- Candy Heart
	-- English: "↑ Healing with {{Heart}} Red Hearts grants random permanent stat ups#{{Heart}} Spawns a Red Heart"

	[C_ID .. 672] = "{{DevilRoom}} Teufelsraumgegenstände kosten Münzen#{{Shop}} Ladenobjekte kosten Herzen#Verbrauchsmaterialien in Läden sind von Stacheln umgeben", -- A Pound of Flesh
	-- English: "{{DevilRoom}} Devil Room items cost coins#{{Shop}} Shop items cost hearts#Consumables in Shops are surrounded by spikes"

	[C_ID .. 673] = "{{DevilRoom}} Das Betreten einer neuen Ebene nach dem Besuch eines Teufelsraums und dem Nichtannehmen von Gegenständen/Abholungen gewährt:#{VAR:EFFECTLIST}", -- Redemption
	-- Full old Desc: "{{DevilRoom}} Das Betreten einer neuen Ebene nach dem Besuch eines Teufelsraums und dem Nichtannehmen von Gegenständen/Abholungen gewährt:#↑ {{Damage}} +1 Schaden#{{SoulHeart}} +1 Seelenherz"
	-- English: "{{DevilRoom}} Entering a new floor after visiting a Devil Room and not taking any item/pickup grants:#{VAR:EFFECTLIST}"

	[C_ID .. 674] = "Wenn Isaac tödlichen Schaden erleidet, verwandelt er sich in einen Geist, der an seinen toten Körper gekettet ist, und kann mit einem halben Herz weiterkämpfen#Wenn der Geist überlebt, wird Isaac nach 10 Sekunden wiederbelebt#Muss durch das Aufnehmen eines Seelenherzens wieder aufgeladen werden", -- Spirit Shackles
	-- English: "Taking fatal damage transforms Isaac into a ghost chained to his dead body and allows him to continue to fight with half a heart#If the ghost survives, Isaac revives after 10 seconds#Must be recharged by picking up a Soul Heart"

	[C_ID .. 675] = "Beim Einstecken von Schaden:#Entsperrt alle verschlossenen Türen im Raum#Enthüllt einen zufälligen Raum auf der Karte#Zerstört alle getönten und Kriechraum-Felsen", -- Cracked Orb
	-- English: "Taking damage:#Unlocks all locked doors in the room#Reveals a random room on the map#Destroys all tinted and crawlspace rocks"

	[C_ID .. 676] = "{{EmptyHeart}} +1 Leeres Herz-Container, wenn zu Beginn einer neuen Ebene 1 Rotes Herz oder weniger vorhanden ist#Keine Wirkung für Charaktere, die keine roten Herzen haben können", -- Empty Heart
	-- English: "{{EmptyHeart}} +1 Empty heart container when at 1 Red Heart or less at the start of a new floor"

	[C_ID .. 677] = "{{Timer}} Beim Einstecken von Schaden in einem nicht geleerten Raum gibt es für den Kampf:#Spektraltränen#Flug#Negiert den nächsten erlittenen Schaden#Stoppt die Zeit für 2 Sekunden#Erhöht die Geschwindigkeit und Schussrate erheblich für 2 Sekunden", -- Astral Projection
	-- English: "{{Timer}} Taking damage in an uncleared room grants for the fight:#Spectral tears#Flight#Negates the next damage taken#Stops time for 2 seconds#Greatly increases speed and fire rate for 2 seconds"

	[C_ID .. 678] = "{{Chargeable}} Ersetzt Isaacs Tränen durch einen Ladeangriff, der homing, spektrale Fötustränen schießt#{{Damage}} Fötustränen verursachen etwa 2,8-fachen Schaden von Isaacs pro Sekunde", -- C Section
	-- English: "{{Chargeable}} Replaces Isaac's tears with a charge attack that shoots homing, spectral fetus tears#{{Damage}} Fetus tears deal about 2.8x Isaac's damage per second"

	[C_ID .. 679] = "{{Collectible399}} Begleiter, der sich auflädt und einen Maw of the Void-Kreis freisetzt", -- Lil Abaddon
	-- English: "{{Collectible399}} Familiar that charges and unleashes a Maw of the Void circle#It deals 52.5 damage over 1 second"

	[C_ID .. 680] = "{{Chargeable}} Das Feuern lädt einen kurzreichweitigen, starken rückwärts gerichteten Strahl auf#Ersetzt nicht Isaacs Tränen", -- Montezuma's Revenge
	-- English: "{{Chargeable}} Firing charges up a short-ranged high damage backwards beam#Does not replace Isaac's tears"

	[C_ID .. 681] = "Verursacht Kontaktschaden und fliegt nach vorne#Verbraucht Pickups auf ihrem Weg#Jedes konsumierte Pickup erhöht ihre Größe, ihren Schaden und beschwört eine blaue Fliege herbei#Das Konsumieren von vier Pickups beschwört ein Portal zu einem unerforschten Raum herbei", -- Lil Portal
	-- English: "Deals contact damage and flies forward#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming four pickups spawns a portal to an unexplored room"

	[C_ID .. 682] = "Taucht manchmal aus dem Boden auf, greift einen Feind an#Gegriffene Feinde erleiden Schaden, werden verlangsamt und können sich nicht bewegen", -- Worm Friend
	-- English: "Sometimes bursts out of the ground and grabs an enemy#Grabbed enemies take 8 damage per second, are slowed and cannot move"

	[C_ID .. 683] = "Feinde lassen bei Tod Knochensplitter fallen#Knochen blockieren Projektile und verursachen Kontaktschaden", -- Bone Spurs
	-- English: "Enemies spawn bone shards on death#Bones block projectiles and deal contact damage"

	[C_ID .. 684] = "Das Töten eines Feindes hat eine Chance, einen Geist herbeizurufen#Geister jagen Feinde, verursachen Kontaktschaden und explodieren nach 5 Sekunden#Isaac nimmt keinen Schaden von der Explosion", -- Hungry Soul
	-- English: "Killing an enemy has a chance to spawn a ghost#Ghosts chase enemies, deal contact damage and explode after 5 seconds#Isaac doesn't take damage from the explosion"

	[C_ID .. 685] = "Beschwört eine zufällige Wisp herbei#Beschwört bei jeder Verwendung eine zusätzliche Wisp herbei, bis zu 12", -- Jar of Wisps
	-- English: "Spawns a random wisp#Spawns one additional wisp with each use, up to 12"

	[C_ID .. 686] = "↑ Aufsammeln von {{SoulHeart}} Seelenherzen gewährt zufällige dauerhafte Statistikverbesserungen", -- Soul Locket
	-- Full old Desc: "↑ Aufsammeln von {{SoulHeart}} Seelenherzen gewährt zufällige dauerhafte Statistikverbesserungen#{{SoulHeart}} Spawnt ein Seelenherz"
	-- English: "↑ Picking up {{SoulHeart}} Soul Hearts grants random permanent stat ups"

	[C_ID .. 687] = "Beschwört ein zufälliges freundliches Monster herbei, das Isaacs Bewegungen und Angriffe nachahmt", -- Friend Finder
	-- English: "{{Friendly}} Spawns a random friendly monster that mimics Isaac's movements and attacks"

	[C_ID .. 688] = "Nach dem Tod:#Respawnt Isaac im selben Raum mit einem halben Herz#↑ {{Speed}} +0,2 Geschwindigkeit#↑ Massiver Größenrückgang", -- Inner Child
	-- Full old Desc: "+1 Leben#Nach dem Tod:#Respawnt Isaac im selben Raum mit einem halben Herz#↑ {{Speed}} +0,2 Geschwindigkeit#↑ Massiver Größenrückgang"
	-- English: "Upon death:#Respawns Isaac in the same room with half a heart#↑ {{Speed}} +0.2 Speed#↑ Massive size down"

	[C_ID .. 689] = "Gegenstandspodeste wechseln schnell zwischen 5 zufälligen Gegenständen", -- Glitched Crown
	-- English: "Item pedestals quickly cycle between 5 random items"

	[C_ID .. 690] = "Feinde prallen von Isaac ab#50% Chance, Kontaktschaden zu negieren#50% Chance, feindliche Projektile abzulenken", -- Belly Jelly
	-- English: "Enemies bounce off of Isaac#50% chance to negate contact damage#50% chance to deflect enemy projectiles"

	[C_ID .. 691] = "Verhindert das Erscheinen von Gegenständen von Qualität {{Quality0}}/{{Quality1}}#Gegenstände von Qualität {{Quality2}} haben eine 33%ige Chance, neu gewürfelt zu werden", -- Sacred Orb
	-- English: "Prevents Quality {{Quality0}}/{{Quality1}} items from spawning#Quality {{Quality2}} items have a 33% chance to be rerolled"

	[C_ID .. 692] = "Beschwört ein Spikeset im {{DevilRoom}} Teufelsraum herbei#Bei Schaden auf den Spikes gibt es:#35%: Nichts#33%: ↑ {{Damage}} +0,5 Schaden#15%: 6 {{Coin}} Pennys#10%: 2 {{BlackHeart}} Schwarze Herzen#5%: {{DevilRoom}} Zufälliger Teufelsgegenstand#2%: Leviathan-Transformation", -- Sanguine Bond
	-- English: "Spawns a set of spikes in the {{DevilRoom}} Devil Room#Taking damage on the spikes grants:#35%: Nothing#33%: ↑ {{Damage}} +0.5 Damage#15%: 6 {{Coin}} pennies#10%: 2 {{BlackHeart}} Black Hearts#5%: {{DevilRoom}} Random Devil item#2%: Leviathan transformation"

	[C_ID .. 693] = "Das Leeren eines Raumes beschwört eine neue Fliege herbei#Fliegen verwandeln sich nach dem Blockieren eines Schusses in blaue Fliegen", -- The Swarm
	-- Full old Desc: "Gewährt 8 orbitale Fliegen#Das Leeren eines Raumes beschwört eine neue Fliege herbei#Fliegen verwandeln sich nach dem Blockieren eines Schusses in blaue Fliegen"
	-- English: "Clearing a room spawns a new fly#Flies turn into blue flies after blocking a shot"

	[C_ID .. 694] = "{{BrokenHeart}} Jeder tödliche Treffer gewährt +2 Gebrochene Herzen#Isaac stirbt bei 12 Gebrochenen Herzen", -- Heartbreak
	-- Full old Desc: "↑ {{Damage}} +0,25 Schaden für jedes gebrochene Herz#{{BrokenHeart}} +3 Gebrochene Herzen#{{BrokenHeart}} Jeder tödliche Treffer gewährt +2 Gebrochene Herzen#Isaac stirbt bei 12 Gebrochenen Herzen"
	-- English: "↑ {{Damage}} +0.25 Damage for each Broken Heart#{{BrokenHeart}} Every fatal hit grants +2 Broken Hearts#Isaac dies at 12 Broken Hearts"

	[C_ID .. 695] = "Beim Einstecken von Schaden für die Ebene erhalten:#↑ {{Speed}} +0,4 Geschwindigkeit#↓ {{Tears}} x0,5 Feuerratenmultiplikator#↑ {{Tears}} +2 Feuerrate#↑ {{Damage}} +3 Schaden#Schaltet Angriffe auf Nahkampf um#{{Timer}} Jeder Mord erhöht die Dauer um 1 Sekunde", -- Bloody Gust
	-- English: "When taking damage, receive for the floor:#↑ {{Speed}} Speed up#↑ {{Tears}} Fire rate up#Caps at +1.02 speed and +3 fire rate"

	[C_ID .. 696] = "Isaac ist von einem Halo umgeben#Feinde, die sich zu lange im Halo aufhalten, werden von einem kreuzförmigen Lichtstrahl getroffen#Das Aufnehmen von Schaden erhöht die Größe des Halos für die Ebene", -- Salvation
	-- English: "Isaac is surrounded by a halo#Enemies that stand in the halo for too long are hit by a cross-shaped beam of light#Taking damage increases the size of the halo for the floor"

	[C_ID .. 697] = "Das Betreten eines Bossraums beschwört einen Klon des Bosses herbei#Das Besiegen des Klons beschwört einen zusätzlichen Gegenstand herbei#Der Klon ist langsamer und hat 75% Gesundheit", -- Vanishing Twin
	-- English: "Entering a boss room spawns a clone of the boss#Defeating the clone spawns an extra item#The clone is slower and has 75% health"

	[C_ID .. 698] = "Zwei Begleiter, die Tränen mit denselben Statistiken und Effekten wie Isaac schießen#{{Damage}} Sie verursachen 37,5% von Isaacs Schaden", -- Twisted Pair
	-- English: "Two familiars that shoot tears with the same stats and effects as Isaac#{{Damage}} They deal 37.5% of Isaac's damage"

	[C_ID .. 699] = "{{Collectible118}} Das Leeren von 4 Räumen feuert beim Betreten des nächsten Raumes einen großen Brimstone-Strahl ab", -- Azazel's Rage
	-- English: "{{Collectible118}} Clearing 4 rooms fires a large Brimstone beam upon entering the next room"

	[C_ID .. 700] = "Die Verwendung einer {{Rune}} Rune, {{Card}} Karte oder {{Pill}} Pille verwendet auch eine Kopie der letzten 3 verwendeten Runen/Karten/Pillen nach dem Aufnehmen von Echo-Kammer", -- Echo Chamber
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill also uses a copy of the last 3 runes/cards/pills used after picking up Echo Chamber"

	[C_ID .. 701] = "Spawnt zu Beginn jeder Ebene eine {{DirtyChest}} Alte Truhe#Alte Truhen müssen mit einem Schlüssel geöffnet werden und können {{SoulHeart}} Seelenherzen, {{Trinket}} Trinkets oder Mamas, Papas und Engelgegenstände enthalten", -- Isaac's Tomb
	-- English: "Spawns an {{DirtyChest}} Old Chest at the start of every floor#Old Chests require a key to unlock and can contain {{SoulHeart}} Soul Hearts, {{Trinket}} trinkets or Mom, Dad and Angel items"

	[C_ID .. 702] = "Das Einstecken von Schaden beschwört eine orbitale Wisp herbei#Wisps schießen Tränen, blockieren keine Schüsse und verschwinden auf der nächsten Ebene#Maximal 6 Wisps", -- Vengeful Spirit
	-- English: "Taking damage spawns an orbital wisp#Wisps shoot tears, do not block shots and disappear on the next floor#Caps at 6 wisps"

	[C_ID .. 703] = "Wechselt zwischen dem aktuellen Charakter und Esau Jr.#Esau Jr. hat {{BlackHeart}} 3 Schwarze Herzen, {{Damage}} +2 Schaden, Flug und zufällige Gegenstände in Höhe der Anzahl der Gegenstände, die der Spieler das erste Mal verwendet hat#Charaktere haben unabhängige Gegenstände und Gesundheit#{{Warning}} Das Sterben als einer der Charaktere beendet den Lauf", -- Esau Jr.
	-- English: "Swaps between the current character and Esau Jr.#Esau Jr. has {{BlackHeart}} 3 Black Hearts, {{Damage}} +2 Damage, flight, and random items equal to the number of items the player has the first time this item is used#Characters have independent items and health#{{Warning}} Dying as either character ends the run"

	[C_ID .. 704] = "{{Timer}} Jeder Mord erhöht die Dauer um 1 Sekunde", -- Berserk!
	-- Full old Desc: "{{Battery}} Lädt sich mit zugefügtem Schaden auf#{{Timer}} Für 5 Sekunden erhalten:#↑ {{Speed}} +0,4 Geschwindigkeit#↓ {{Tears}} x0,5 Feuerratenmultiplikator#↑ {{Tears}} +2 Feuerrate#↑ {{Damage}} +3 Schaden#Beschränkt Angriffe auf Nahkampf#{{Timer}} Jeder Mord erhöht die Dauer um 1 Sekunde"
	-- English: "{{Battery}} Charges with damage dealt#{VAR:TIMEDEFFECT}#Restricts attacks to a melee that reflects shots#{{Timer}} Each kill increases the duration by 1 second and grants brief invincibility"

	[C_ID .. 705] = "{VAR:EFFECTLIST}#Isaac kann durch Feinde/Projektile hindurchgehen und paralysiert sie#Wenn der Effekt endet, werden paralysierte Feinde beschädigt, paralysierte Projektile entfernt und es entsteht eine Explosion an Isaacs Position#Die Angriffe und Explosionen sind stärker, je mehr Feinde/Projektile getroffen wurden", -- Dark Arts
	-- Full old Desc: "{{Timer}} Für 1 Sekunde (oder bis zum Schießen):↑ {{Speed}} +1 Geschwindigkeit#Isaac kann durch Feinde/Projektile hindurchgehen und paralysiert sie#Wenn der Effekt endet, werden paralysierte Feinde beschädigt, paralysierte Projektile entfernt und es entsteht eine Explosion an Isaacs Position#Die Angriffe und Explosionen sind stärker, je mehr Feinde/Projektile getroffen wurden"
	-- English: "{{Timer}} Receive for 1 second (or until shooting):#{VAR:EFFECTLIST}#Isaac can pass through enemies/projectiles and paralyzes them#When the effect ends, damages paralyzed enemies, removes paralyzed projectiles and creates a blast at Isaac's location#The attacks and blast are more powerful the more enemies/projectiles have been hit"

	[C_ID .. 706] = "Verbraucht alle Gegenstandspodeste im Raum und beschwört einen Angriffsfliegen-Begleiter für jeden herbei#Einige Gegenstände beschwören beim Verzehr eine spezielle Fliege", -- Abyss
	-- English: "Consumes all item pedestals in the room and spawns a locust familiar for each one#Locusts deal Isaac's damage 2-3 times an attack#Some items spawn a special locust when consumed"

	[C_ID .. 708] = "Alle Tränen von Isaac werden aus dem rechten Auge abgefeuert", -- Stapler
	-- Full old Desc: "↑ {{Damage}} +1 Schaden#Alle Tränen von Isaac werden aus dem rechten Auge abgefeuert"
	-- English: "All of Isaac's tears are shot from the right eye"

	[C_ID .. 709] = "Isaac sprintet in die Bewegungsrichtung#Ein Sprint in einen Feind oder Boss hebt ihn auf und schmettert ihn zu Boden#Der Schlag verursacht Schaden und erzeugt Wellen von Steinen basierend auf Isaacs Größe#Du bist während des Sprints und Schlags unverwundbar", -- Suplex!
	-- English: "Isaac dashes in the direction he moves#Dashing into an enemy or boss picks it up and slams it into the ground#Slam deals damage and spawns rock waves based on Isaac's size#You're invincible during the dash and slam"

	[C_ID .. 710] = "Sammelt bis zu 8 Pickups, die nicht fallengelassen werden können#Die Verwendung des Gegenstands mit 8 Pickups in der Tasche stellt einen Gegenstand her#Die Qualität des Gegenstands basiert auf der Qualität der Pickups", -- Bag of Crafting
	-- English: "Collects up to 8 pickups which cannot be dropped#Using the item with 8 pickups in the bag crafts an item#Item quality is based on the quality of the pickups"

	[C_ID .. 711] = "Das Betreten eines Raumes mit Gegenstandspodesten zeigt einen geisterhaften zweiten Gegenstand auf den Podesten an#Die Verwendung des Gegenstands wendet den echten und geisterhaften Gegenstand um#Die Verwendung von Wenden nach dem Aufnehmen des ersten Gegenstands ermöglicht es Isaac, den anderen Gegenstand aufzuheben#{{Warning}} Geisterhafte Gegenstände allein auf Podesten verschwinden nach Verlassen des Raumes", -- Flip
	-- English: "Entering a room with item pedestals displays a ghostly second item on the pedestals#Using the item flips the real and ghostly item#Using Flip after taking the first item allows Isaac to pick up the other item#{{Warning}} Ghostly items alone on pedestals disappear after leaving the room"

	[C_ID .. 712] = "Beschwört ein Orbitale herbei, das den Effekt eines zufälligen Gegenstands gewährt#Die Gegenstände haben eine 25%ige Chance, aus dem aktuellen Raum-Gegenstandspool und eine 75%ige Chance, aus den Schatz-, Boss- oder Laden-Gegenstandspools zu stammen", -- Lemegeton
	-- English: "Spawns an orbital that grants a random item's effect#The items have a 25% chance to be from the current room's item pool and 75% chance to be from the Treasure, Boss or Shop pools"

	[C_ID .. 713] = "Entfernt ein halbes Herz und erzeugt einen Klumpen#Klumpen kopieren Isaacs Tränen#Jede Art von Herz erzeugt einen Klumpen mit unterschiedlicher HP, Schaden und Tränenwirkung", -- Sumptorium
	-- English: "Removes half a heart and creates a clot#Clots copy Isaac's tears#Each type of heart generates a clot with different HP, damage and tear effect"

	[C_ID .. 714] = "Ruft den Körper von The Forgotten aus jeder Entfernung zurück#The Soul is invincible while the Forgotten is returning", -- Recall
	-- English: "Retrieves the Forgotten's body from any distance#The Soul is invincible while the Forgotten is returning"

	[C_ID .. 715] = "Die Verwendung des Gegenstands, wenn er leer ist, speichert die nächste Kacke darin#Die Verwendung des Gegenstands mit Kacke darin verwendet diese Kacke", -- Hold
	-- English: "Using the item when empty stores the next poop inside#Using the item with a poop inside uses that poop"

	[C_ID .. 716] = "{{Shop}} Ausgeben von 3 Münzen gewährt entweder:#{VAR:EFFECTLIST}", -- Keeper's Sack
	-- Full old Desc: "Beschwört 3 {{Coin}} Münzen und 1 {{Key}} Schlüssel herbei#{{Shop}} Ausgeben von 3 Münzen gewährt entweder:#↑ {{Speed}} +0,03 Geschwindigkeit#↑ {{Damage}} +0,5 Schaden#↑ {{Range}} +0,25 Reichweite"
	-- English: "{{Shop}} Spending 3 coins grants either:#{VAR:EFFECTLIST}"

	[C_ID .. 717] = "Felsen und andere Hindernisse beschwören beim Zerstören 2 blaue Spinnen herbei#Felsen können gelegentlich in feindlichen Räumen blaue Spinnen beschwören", -- Keeper's Kin
	-- English: "Rocks and other obstacles spawn 2 blue spiders when destroyed#Rocks can occasionally spawn blue spiders in hostile rooms"

	[C_ID .. 719] = "{{Shop}} Beschwört ein zufälliges Shop-Item/Pickup zum Kauf herbei", -- Keeper's Box
	-- English: "{{Shop}} Spawns a random Shop item/pickup to be purchased"

	[C_ID .. 720] = "Beschwört Pickups basierend auf der Anzahl der Ladungen herbei#Belohnungen je Ladung:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} Löst bei 12 Ladungen einen mächtigen zufälligen Effekt aus", -- Everything Jar
	-- English: "Spawns pickups based on the number of charges#Charge Rewards:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} Triggers a powerful random effect at 12 charges"

	[C_ID .. 721] = "Bewirkt, dass alle zukünftigen Gegenstände fehlerhaft sind#Fehlerhafte Gegenstände haben völlig zufällige Effekte", -- TMTRAINER
	-- English: "Causes all future items to be glitched#Glitched items have completely random effects"

	[C_ID .. 722] = "Fesselt das nächstgelegene Feind für 5 Sekunden#Gefesselte Feinde können sich nicht bewegen oder angreifen", -- Anima Sola
	-- English: "{{Chained}} Chains down the nearest enemy for 5 seconds#Chained enemies cannot move or attack"

	[C_ID .. 723] = "Würfelt alle Gegenstände im Raum neu, indem ihre interne ID um eins verringert wird", -- Spindown Dice
	-- English: "Rerolls all items in the room by decreasing their internal ID by one"

	[C_ID .. 724] = "{{Heart}} Das Einstecken von Schaden lässt ein halbes oder ganzes rotes Herz fallen, abhängig davon, wie viel Isaac verloren hat#Die Herzen schießen heraus und verschwinden nach 1,5 Sekunden", -- Hypercoagulation
	-- English: "{{Heart}} Taking damage drops a half or full Red Heart depending on how much Isaac lost#The hearts launch out and despawn after 1.5 seconds"

	[C_ID .. 725] = "Ausreichender Schaden verursacht, dass Isaac rot leuchtet#Lösen des Feuerknopfs, während Isaac leuchtet, bewirkt entweder:#Wirft eine zufällige Kacke#Erzeugt buffenden Schleim#{{Poison}} Fart eine Giftwolke aus#Beschwört 5 lebende Bomben", -- IBS
	-- English: "Dealing enough damage causes Isaac to flash red#Releasing the fire button while Isaac is flashing either:#Throws a random poop#Creates buffing creep#{{Poison}} Farts a poison cloud#Spawns 5 live bombs"

	[C_ID .. 726] = "Doppeltes Antippen einer Feuertaste lässt Isaac Blut niesen#Das Niesen verursacht 1,5x Isaacs Schaden#1 Sekunde Abklingzeit#{{BrimstoneCurse}} Betroffene Feinde erleiden zusätzlichen Schaden durch Brimstone-Strahlen", -- Hemoptysis
	-- English: "Double-tapping a fire button makes Isaac sneeze blood#The sneeze deals 1.5x Isaac's damage#1 second cooldown#{{BrimstoneCurse}} Affected enemies take extra damage from Brimstone beams"

	[C_ID .. 727] = "Isaacs Bomben beschwören Geister herbei, die Feinde jagen#Geister verursachen 2x Isaacs Schaden pro Sekunde und explodieren nach 10 Sekunden", -- Ghost Bombs
	-- Full old Desc: "{{Bomb}} +5 Bomben#Isaacs Bomben beschwören Geister herbei, die Feinde jagen#Geister verursachen 2x Isaacs Schaden pro Sekunde und explodieren nach 10 Sekunden"
	-- English: "Isaac's bombs spawn ghosts that chase enemies#Ghosts deal 2x Isaac's damage per second and explode after 10 seconds"

	[C_ID .. 728] = "Ein dämonischer Begleiter platzt aus Isaac für den Raum#Der Dämon ahmt Isaacs Tränen, Statistiken und Effekte nach", -- Gello
	-- English: "A demon familiar bursts out of Isaac for the room#The demon shoots towards the nearest enemy, mimicing Isaac's tears, stats and effects#{{Damage}} Its tears deal 75% of Isaac's damage"

	[C_ID .. 729] = "Wirft Isaacs Kopf in eine Richtung#Der Kopf verursacht Kontaktschaden und schießt Tränen aus der Stelle, an der er landet#Erneutes Verwenden des Gegenstands oder Betreten des Kopfes befestigt ihn wieder", -- Decap Attack
	-- English: "Throws Isaac's head in a direction#The head deals contact damage and shoots tears from where it lands#Using the item again or stepping on the head reattaches it"

	[C_ID .. 732] = "{{Rune}} Beschwört eine zufällige Rune oder Seelenstein herbei", -- Mom's Ring
	-- Full old Desc: "↑ {{Damage}} +1 Schaden#{{Rune}} Beschwört eine zufällige Rune oder Seelenstein herbei"
	-- English: "{{Rune}} Spawns a random rune or soul stone"

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 15] = "{{Coin}} Zerstören von Felsen hat eine 33%ige Chance, eine Münze erscheinen zu lassen", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks has a 33% chance to spawn a coin"

	[T_ID .. 24] = "{{Coin}} 20% höhere Chance, dass Münzen aus Kacke erscheinen#{{Poison}} Das Aufsammeln von Münzen lässt Isaac furzen, was Feinde und Projektile vergiftet und zurückstößt", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#{{Poison}} Picking up coins makes Isaac fart, which poisons and knocks back enemies and projectiles"

	[T_ID .. 32] = "25% Chance auf einen zufälligen Pilzeffekt pro Raum", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room"

	[T_ID .. 33] = "{{Collectible318}} Schaden nehmen hat eine hohe Chance, für den Raum einen Gemini-Begleiter erscheinen zu lassen", -- Umbilical Cord
	-- Full old Desc: "{{HalfHeart}} Wenn ein halbes rotes Herz oder weniger vorhanden ist, gewährt dies {{Collectible100}} Little Steven#{{Collectible318}} Schaden nehmen hat eine hohe Chance, für den Raum einen Gemini-Begleiter erscheinen zu lassen"
	-- English: "{{HalfHeart}} Having half a Red Heart or less grants {{NameC100}}#{{Collectible318}} Taking damage has a high chance to spawn a Gemini familiar for the room"

	[T_ID .. 48] = "Schaden nehmen hat eine 5%ige Chance, 80 Schaden an allen Feinden im Raum zuzufügen#{{Collectible35}} Schwarze Herzen und Necronomicon-ähnliche Effekte fügen doppelten Schaden zu", -- A Missing Page
	-- English: "Taking damage has a 5% chance to deal 80 damage to all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[T_ID .. 49] = "{{HalfHeart}} Das Aufsammeln einer Münze hat eine 25%ige Chance, ein halbes rotes Herz erscheinen zu lassen", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 25% chance to spawn a half Red Heart#Higher chance from nickels and dimes"

	[T_ID .. 50] = "{{Bomb}} Das Aufsammeln einer Münze hat eine 25%ige Chance, eine Bombe erscheinen zu lassen", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 25% chance to spawn a bomb#Higher chance from nickels and dimes"

	[T_ID .. 51] = "{{Key}} Das Aufsammeln einer Münze hat eine 25%ige Chance, einen Schlüssel erscheinen zu lassen", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 25% chance to spawn a key#Higher chance from nickels and dimes"

	[T_ID .. 69] = "Tarnung von Isaac in zufälligen Abständen#{{Confusion}} Verwirrt Feinde#Kann verwendet werden, um die \"Seltsame Tür\" in \"Tiefen II\" zu öffnen", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies#Can be used to open the "Strange Door" in "Depths II""

	[T_ID .. 92] = "↑ x1,33 Stat-Multiplikator (außer Schussrate) für die Werte, die über 1 liegen: {{Speed}} Geschwindigkeit, 2,73 {{Tears}} Tränen, 3,5 {{Damage}} Schaden, 6,5 {{Range}} Reichweite, 1 {{Shotspeed}} Schusssgeschwindigkeit", -- Cracked Crown
	-- English: "↑ x1.33 Stat multiplier (except fire rate) for the stats that are above 1 {{Speed}} speed, 2.73 {{Tears}} tears, 3.5 {{Damage}} damage, 6.5 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 107] = "Schaden nehmen verbraucht rote Herzen, bevor Seelen-/Schwarze Herzen verbraucht werden#{{Warning}} Der Schaden durch rote Herzen kann deine Chance auf ein Devil-/Angel Room senken", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#{{Warning}} Taking Red Heart damage will reduce Devil/Angel Room chance"

	[T_ID .. 110] = "{{Shop}} Shops erscheinen in der Womb und Corpse", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb and Corpse"

	[T_ID .. 111] = "{{TreasureRoom}} Schatzräume erscheinen in der Womb und im Leichnam", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb and Corpse"

	[T_ID .. 119] = "{{Heart}} Beim Betreten einer neuen Ebene heilen sich die leeren roten/Knochenherzen von Isaac um die Hälfte#{{HalfHeart}} Heilt mindestens ein halbes Herz", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half of Isaac's empty Red/Bone Hearts#{{HealingRed}} Heals half a heart minimum"

	[T_ID .. 131] = "{{HalfSoulHeart}} Das Aufsammeln einer Münze hat eine 17%ige Chance, ein halbes Seelenherz erscheinen zu lassen", -- Blessed Penny
	-- English: "{{HalfSoulHeart}} Picking up a coin has a 17% chance to spawn a half Soul Heart#Higher chance from nickels and dimes"

	[T_ID .. 132] = "25% Chance, jeden Raum einen zufälligen Spritzeneffekt zu erhalten", -- Broken Syringe
	-- English: "25% chance to get a random syringe effect each room"

	[T_ID .. 133] = "Isaacs Bomben explodieren schneller", -- Short Fuse
	-- English: "Isaac's bombs explode faster"

	[T_ID .. 134] = "Erhöht die Furzgröße", -- Gigante Bean
	-- English: "Increases fart size"

	[T_ID .. 136] = "Türen, Schlüsselblöcke und goldene Truhen können mit Explosionen geöffnet werden#Explosionen können auch die \"Seltsame Tür\" in \"Tiefen II\" öffnen", -- Broken Padlock
	-- English: "Doors, key blocks and golden chests can be opened with explosions#Explosions can also open the "Strange Door" in "Depths II""

	[T_ID .. 137] = "Beim Betreten einer neuen Ebene erscheinen bis zu 4 nicht eingesammelte Pickups aus dem vorherigen Stock im Startraum", -- Myosotis
	-- English: "Entering a new floor spawns up to 4 uncollected pickups from the previous floor in the starting room"

	[T_ID .. 138] = "Benutzen eines active Items würfelt ihn um", -- 'M
	-- English: "Using an active item rerolls it"

	[T_ID .. 139] = "{{Luck}} +4 Glück für auf Glück basierende Träneneffekte", -- Teardrop Charm
	-- English: "{{Luck}} +4 Luck towards luck-based tear effects"

	[T_ID .. 140] = "Das Aufsammeln von roten Herzen kann sie in blaue Spinnen umwandeln#Funktioniert auch bei vollem Leben#Der Effekt kann Herzen verbrauchen, die für die Heilung benötigt werden", -- Apple of Sodom
	-- English: "Picking up Red Hearts can convert them into blue spiders#Works even while at full health#Effect may consume hearts needed for healing"

	[T_ID .. 141] = "Erhöht die Feuerrate von Begleitern", -- Forgotten Lullaby
	-- English: "2x Fire rate for familiars"

	[T_ID .. 142] = "{{Collectible584}} Beim Betreten einer neuen Ebene erscheinen 4 Book of Virtues-Wisps", -- Beth's Faith
	-- English: "{{Collectible584}} Entering a new floor spawns 4 Book of Virtues wisps"

	[T_ID .. 144] = "Tränen drehen sich um 90 Grad, um Feinde anzuvisieren, die sie verpasst haben", -- Brain Worm
	-- English: "Tears turn 90 degrees to target enemies that they may have missed"

	[T_ID .. 145] = "Schaden nehmen zerstört das Trinket", -- Perfection
	-- Full old Desc: "↑ {{Luck}} +10 Glück#Schaden nehmen zerstört das Trinket"
	-- English: "Taking damage destroys the trinket"

	[T_ID .. 146] = "{{RedTreasureRoom}} Schatzraum-Items werden durch Teufelsdeals ersetzt", -- Devil's Crown
	-- English: "{{RedTreasureRoom}} Treasure Room items are replaced with devil deals"

	[T_ID .. 147] = "{{Battery}} Das Aufsammeln einer Münze hat eine 17%ige Chance, 1 Ladung zum active Item hinzuzufügen", -- Charged Penny
	-- English: "{{Battery}} Picking up a coin has a 17% chance to add 1 charge to the active item#Higher chance from nickels and dimes"

	[T_ID .. 148] = "Alle Begleiter kreisen um Isaac", -- Friendship Necklace
	-- English: "All familiars orbit around Isaac"

	[T_ID .. 149] = "Schaden nehmen verwendet den active Item, wenn er aufgeladen ist", -- Panic Button
	-- English: "Right before taking damage, uses the active item if it is charged"

	[T_ID .. 150] = "Verschlossene Türen können kostenlos geöffnet werden, aber Isaac muss einen Raum auf der Hush-Ebene leeren, bevor er Zugang zum Raum dahinter hat", -- Blue Key
	-- English: "Locked doors can be opened for free, but Isaac has to clear a room from the Hush floor before accessing the room behind them"

	[T_ID .. 151] = "Zieht die meisten Stacheln ein, macht sie harmlos#Betrifft auch {{CursedRoom}} Fluchraumtüren, Mimics und jedes Stachelhindernis", -- Flat File
	-- English: "Retracts most spikes, rendering them harmless#Also affects {{CursedRoom}} Curse Room doors, mimics and any spike obstacle"

	[T_ID .. 152] = "+9%, wenn bereits ein Planetarium erschienen ist#Planetarien können in der Womb und im Leichnam erscheinen", -- Telescope Lens
	-- Full old Desc: "{{PlanetariumChance}} +24% Planetarium-Chance, wenn noch keines erschienen ist#+9%, wenn bereits ein Planetarium erschienen ist#Planetarien können in der Womb und im Leichnam erscheinen"
	-- English: "Additional +15% chance if a Planetarium hasn't been entered yet#Planetariums can spawn in the Womb and Corpse"

	[T_ID .. 153] = "25% Chance für einen zufälligen Mama-Item-Effekt pro Raum", -- Mom's Lock
	-- English: "25% chance for a random Mom item effect each room"

	[T_ID .. 154] = "50%ige Chance pro neuem Raum, einen einmal verwendbaren Würfel-Verbrauchsgegenstand zu gewähren#Der Würfel verschwindet beim Verlassen des Raumes#Der Würfel belegt keinen Pillen-/Kartenplatz", -- Dice Bag
	-- English: "50% chance per new room to grant a single use die consumable item#The die disappears when leaving#The die does not take up a pill/card slot"

	[T_ID .. 155] = "Erzeugt einen {{TreasureRoom}} Schatzraum und {{Shop}} Laden im Kathedralen-Level", -- Holy Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Cathedral"

	[T_ID .. 156] = "{{Heart}} +1 Herzcontainer solange es gehalten wird", -- Mother's Kiss
	-- English: "{{Heart}} +1 Heart container while held"

	[T_ID .. 158] = "Schaden nehmen lässt Isaac 2 seiner Münzen, Schlüssel oder Bomben fallen#Die Pickups können durch andere Varianten wie goldene Schlüssel, Nickel, Dimes, etc. ersetzt werden", -- Torn Pocket
	-- English: "Taking damage makes Isaac drop 2 of his coins, keys or bombs#The pickups can be replaced with other variants, such as golden keys, nickels, dimes, etc."

	[T_ID .. 159] = "{{GoldenChest}} Goldene Truhen können zusätzliche Karten, Pillen oder Trinkets enthalten", -- Gilded Key
	-- Full old Desc: "{{Key}} +1 Schlüssel beim Aufsammeln#{{GoldenChest}} Ersetzt alle Truhen (außer Alt/Mega) durch goldene Truhen#{{GoldenChest}} Goldene Truhen können zusätzliche Karten, Pillen oder Trinkets enthalten"
	-- English: "{{GoldenChest}} Replaces all chests (except Old/Mega) with golden chests#{{GoldenChest}} Golden chests can contain extra cards, pills or trinkets"

	[T_ID .. 160] = "{{GrabBag}} Das Betreten einer neuen Ebene lässt einen Sack erscheinen", -- Lucky Sack
	-- English: "{{GrabBag}} Entering a new floor spawns a sack"

	[T_ID .. 161] = "Erzeugt einen {{TreasureRoom}} Schatzraum und {{Shop}} Laden in Sheol", -- Wicked Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Sheol"

	[T_ID .. 162] = "{{Player7}} Einen Raum leeren hat eine 50%ige Chance, den Spieler in Azazel zu verwandeln#{{Timer}} Der Effekt dauert an, bis ein anderer Raum geräumt und verlassen wird", -- Azazel's Stump
	-- English: "{{Player7}} Clearing a room has a 33% chance to turn the player into Azazel#{{Timer}} Effect lasts until clearing and leaving another room"

	[T_ID .. 163] = "Alle Dip (kleine Kack-) Feinde sind freundlich#Das Leeren eines Raumes lässt einen zufälligen Dip erscheinen", -- Dingle Berry
	-- English: "All Dip (small poop) enemies are friendly#Clearing a room spawns 1 random Dip"

	[T_ID .. 164] = "{{Bomb}} Erzeugt 1 zusätzliche Bombe für jede platzierte Bombe", -- Ring Cap
	-- English: "{{Bomb}} Spawns 1 extra bomb for each bomb placed"

	[T_ID .. 165] = "Auf Womb und darüber hinaus ersetzt alle Münz- und Schlüsselspawns durch eine Bombe, ein Herz, eine Pille, eine Karte, ein Trinket, eine Batterie oder einen Feindflieger", -- Nuh Uh!
	-- English: "On Womb and beyond, replaces all coin and key spawns with a bomb, heart, pill, card, trinket, battery, or enemy fly"

	[T_ID .. 166] = "50%ige Chance, den Effekt eines zufälligen passiven Gegenstands pro Raum zu gewähren", -- Modeling Clay
	-- English: "50% chance to grant the effect of a random passive item each room"

	[T_ID .. 167] = "Einen Raum leeren hat eine 25%ige Chance, einen freundlichen Bony erscheinen zu lassen", -- Polished Bone
	-- English: "{{Friendly}} Clearing a room has a 25% chance to spawn a friendly Bony"

	[T_ID .. 168] = "{{EmptyBoneHeart}} Das Betreten einer neuen Ebene gewährt +1 Knochenherz", -- Hollow Heart
	-- English: "{{EmptyBoneHeart}} Entering a new floor grants +1 Bone Heart"

	[T_ID .. 169] = "{{Guppy}} Zählt als 1 Item für die Guppy-Transformation solange es gehalten wird", -- Kid's Drawing
	-- English: "{{Guppy}} Counts as 1 item towards the Guppy transformation while held"

	[T_ID .. 170] = "{{Collectible580}} Einen Raum leeren hat eine 33%ige Chance, einen Red Key-Raum zu erstellen#Geringere Chance, wenn sich in einem roten Raum befindet", -- Crystal Key
	-- English: "{{Collectible580}} Clearing a room has a 33% chance to create a Red Key room#Lower chance to occur when in a red room"

	[T_ID .. 171] = "{{DevilRoom}} 50%ige Chance, dass Teufelsdeals Münzen statt Herzen kosten", -- Keeper's Bargain
	-- English: "{{DevilRoom}} 50% chance for devil deals to cost coins instead of hearts"

	[T_ID .. 172] = "Das Aufsammeln einer Münze teleportiert Isaac in einen zufälligen Raum#Kann zu Geheimräumen teleportieren", -- Cursed Penny
	-- English: "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms"

	[T_ID .. 173] = "{{DevilRoom}} Erlaubt Isaac, 1 Devil Room-Item kostenlos zu nehmen#{{Warning}} Der kostenlose Teufelsdeal beeinflusst immer noch die Engelraumchance", -- Your Soul
	-- English: "{{DevilRoom}} Allows Isaac to take 1 Devil Room item for free#{{Warning}} The free Devil deal still affects Angel Room chance"

	[T_ID .. 174] = "Verhindert, dass Krampus in Teufelsräumen erscheint#Teufelsräume sind spezielle Varianten mit mehr Angeboten, schwarzen Herzen und Feinden", -- Number Magnet
	-- Full old Desc: "{{DevilChance}} +10% Teufelsraumchance#Verhindert, dass Krampus in Teufelsräumen erscheint#Teufelsräume sind spezielle Varianten mit mehr Angeboten, schwarzen Herzen und Feinden"
	-- English: "Prevents Krampus from appearing in Devil Rooms#Devil Rooms are special variants with more deals, Black Hearts and enemies"

	[T_ID .. 175] = "Öffnet die Tür zur Hush-Ebene unabhängig vom Timer", -- Strange Key
	-- Full old Desc: "Öffnet die Tür zur Hush-Ebene unabhängig vom Timer#Die Verwendung von {{Collectible297}} Pandoras Box verbraucht den Schlüssel und lässt 6 Items aus zufälligen Pools erscheinen"
	-- English: "Opens the door to the Hush floor regardless of the timer#Using {{NameC297}} consumes the key and spawns 6 items from random pools"

	[T_ID .. 176] = "Erzeugt einen Blutklumpen, der Isaacs Bewegungen nachahmt#Kopiert Isaacs Werte, Träneneffekte und 35% seines Schadens#Respawned jeden Raum", -- Lil Clot
	-- English: "Spawns a blood clot that mimics Isaac's movement#Copies Isaac's stats, tear effects and 35% of his damage#Respawns each room"

	[T_ID .. 177] = "{{Chest}} Das Leeren eines {{ChallengeRoom}} Challenge-Raums lässt eine Truhe erscheinen#Das Leeren eines {{BossRushRoom}} Boss Challenge-Raums lässt einen Gegenstand erscheinen", -- Temporary Tattoo
	-- English: "{{Chest}} Clearing a {{ChallengeRoom}} Challenge Room spawns a chest#Clearing a {{BossRushRoom}} Boss Challenge Room spawns an item"

	[T_ID .. 178] = "Das Schaden nehmen hat eine 50%ige Chance, dass Isaac explodiert", -- Swallowed M80
	-- English: "Taking damage has a 50% chance for Isaac to explode#Doesn't destroy Blood Donation Machines or Confessionals, while spawning pickups as if it did"

	[T_ID .. 179] = "Begleiter ahmen Isaacs Bewegungen nach#Halte die Abwurftaste ({{ButtonRT}}), um die Begleiter an Ort und Stelle zu halten", -- RC Remote
	-- English: "Familiars mimic Isaac's movement#Hold the drop button ({{ButtonRT}}) to keep the familiars in place"

	[T_ID .. 180] = "Folgt Isaacs Bewegungen und schießt spektrale Tränen#Kopiert Isaacs Werte, Träneneffekte und 50% seines Schadens#Stirbt bei einem Treffer#Respawnt jede Ebene", -- Found Soul
	-- English: "Follows Isaac's movement and shoots spectral tears#Copies Isaac's stats, tear effects and 50% of his damage#Uses most active items when Isaac does#Dies in one hit#Respawns each floor"

	[T_ID .. 181] = "Die Verwendung eines active Items löst den Effekt eines zusätzlichen 1-2 Ladeactive Items aus", -- Expansion Pack
	-- English: "Using an active item triggers the effect of an additional 1-2 charge active item"

	[T_ID .. 182] = "Das Betreten eines {{AngelRoom}} Engelsraums lässt 5 Wisps erscheinen#Das Spenden an Bettler hat eine 25%ige Chance, einen Wisp erscheinen zu lassen", -- Beth's Essence
	-- English: "Entering an {{AngelRoom}} Angel Room spawns 5 wisps#Donating to Beggars has a 25% chance to spawn a wisp"

	[T_ID .. 183] = "50%ige Chance, jeden Raum einen Begleiter zu duplizieren", -- The Twins
	-- Full old Desc: "50%ige Chance, jeden Raum einen Begleiter zu duplizieren#Gewährt {{Collectible8}} Brother Bobby oder {{Collectible67}} Sister Maggy, wenn Isaac keine Begleiter hat"
	-- English: "50% chance to duplicate a familiar each room#Grants {{NameC8}} or {{NameC67}} if Isaac has no familiars"

	[T_ID .. 184] = "{{Shop}} Läden verkaufen Begleiter für 10 Münzen", -- Adoption Papers
	-- English: "{{Shop}} Shops sell familiars for 10 coins"

	[T_ID .. 185] = "Das Töten eines Feindes hat eine 17%ige Chance, eine zufällige Heuschrecke erscheinen zu lassen", -- Cricket Leg
	-- English: "Killing an enemy has a 17% chance to spawn a random locust"

	[T_ID .. 186] = "{{Collectible706}} Gewährt 1 Abyss-Heuschrecke", -- Apollyon's Best Friend
	-- English: "{{Collectible706}} Grants 1 Abyss locust"

	[T_ID .. 187] = "{{TreasureRoom}} 50%ige Chance, einen zusätzlichen Blind-Item in Schatzräumen hinzuzufügen#50%ige Chance, das Blind-Item in Alt-Path-Schatzräumen aufzudecken", -- Broken Glasses
	-- English: "{{TreasureRoom}} 50% chance of adding an extra blind item in Treasure Rooms#50% chance to reveal the blind item in alt path Treasure Rooms"

	[T_ID .. 188] = "{{Freezing}} Das Töten eines versteinerten Feindes friert ihn ein", -- Ice Cube
	-- Full old Desc: "Das Betreten eines Raumes hat eine 20%ige Chance, zufällige Feinde zu versteinern#{{Freezing}} Das Töten eines versteinerten Feindes friert ihn ein"
	-- English: "{{Petrify}} Entering a room has a {VAR:LUCKCHANCE}% chance to petrify random enemies#{{Freezing}} Killing a petrified enemy freezes it"

	[T_ID .. 189] = "Das Töten eines Feindes macht Isaac für 1 Sekunde unverwundbar#Unverwundbarkeit addiert sich mit aufeinander folgenden Feindtötungen", -- Sigil of Baphomet
	-- English: "Killing an enemy makes Isaac invincible for 1 second#Invincibility stacks with successive enemy kills"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 18] = "{{TreasureRoom}} Teleportiert Isaac zum Schatzraum#{{Planetarium}} Falls es ein Planetarium gibt, teleportiert es dorthin stattdessen", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room#{{Planetarium}} If there is a Planetarium, it teleports there instead"

	[Card_ID .. 20] = "{{CurseDarkness}} Entfernt Fluch der Dunkelheit", -- XIX - The Sun
	-- Full old Desc: "{{HealingRed}} Volles Leben#Fügt allen Gegnern 100 Schaden zu#{{Timer}} Voller Mapping-Effekt für das Stockwerk (außer {{SuperSecretRoom}} Super / {{UltraSecretRoom}} Ultra Geheimer Raum)#{{CurseDarkness}} Entfernt Fluch der Dunkelheit"
	-- English: "{{CurseDarkness}} Removes Curse of Darkness"

	[Card_ID .. 21] = "<MISSING>", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#5% chance for it to be a Key Master, Bomb Bum, Battery Bum, or Rotten Beggar"

	[Card_ID .. 27] = "{{Bomb}} Verwandelt alle Pickups, Truhen und nicht-Boss-Gegner in zufällige Bomben", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups, chests and non-boss enemies into random bombs"

	[Card_ID .. 28] = "{{Coin}} Verwandelt alle Pickups, Truhen und nicht-Boss-Gegner in zufällige Münzen", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups, chests and non-boss enemies into random coins"

	[Card_ID .. 29] = "{{Key}} Verwandelt alle Pickups, Truhen und nicht-Boss-Gegner in zufällige Schlüssel", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups, chests and non-boss enemies into random keys"

	[Card_ID .. 30] = "{{UnknownHeart}} Verwandelt alle Pickups, Truhen und nicht-Boss-Gegner in zufällige Herzen", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups, chests and non-boss enemies into random hearts"

	[Card_ID .. 34] = "Spawnt eine Falltür zum nächsten Stock#{{LadderRoom}} Spawnt einen Kriechraum, wenn er auf ein dekoratives Bodenkacheln (Gras, kleine Steine, Papier, Edelsteine, usw.) verwendet wird", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[Card_ID .. 42] = "Benutzen der Karte wirft sie in die Richtung, in die sich Isaac bewegt#Tötet sofort JEDE Feindeinheit, die sie berührt (außer Delirium oder das Biest)", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium or the Beast)"

	[Card_ID .. 51] = "{{HeiligerMantel}} Ein Einmaliger Heiliger Mantel-Schild (verhindert einmaligen Schaden)", -- Holy Card
	-- English: "{{HolyMantle}} A one-use Holy Mantle shield (prevents damage once)"

	[Card_ID .. 55] = "{{Rune}} Aktiviert einen zufälligen Runeneffekt#Der Runeneffekt ist schwächer", -- Rune Shard
	-- English: "{{Rune}} Activates a random rune effect#The rune effect is weaker"

	[Card_ID .. 56] = "Lässt alle Herzen von Isaac bis auf eines und alle seine Pickups auf den Boden fallen#Münzen und Bomben fallen als {{Collectible74}} Das Viertel oder {{Collectible19}} Boom! wenn möglich", -- 0 - The Fool?
	-- English: "Drops all of Isaac's hearts but one and all of his pickups on the floor#Coins and bombs are dropped as {{Collectible74}} The Quarter or {{Collectible19}} Boom! if possible"

	[Card_ID .. 57] = "{{Timer}} Gewährt eine Aura, die Feinde und Geschosse für 60 Sekunden abwehrt", -- I - The Magician?
	-- English: "{{Timer}} Grants an aura that repels enemies and projectiles for 60 seconds"

	[Card_ID .. 58] = "{{Timer}} Mamas Fuß versucht, Isaac für 60 Sekunden zu stampfen", -- II - The High Priestess?
	-- English: "{{Timer}} Mom's Foot tries to stomp Isaac for 60 seconds"

	[Card_ID .. 60] = "Teleportiert Isaac zu einem zusätzlichen Bossraum, der für einen Gegenstand besiegt werden kann#Der Boss wird aus zwei Ebenen tiefer als der aktuelle ausgewählt", -- IV - The Emperor?
	-- English: "Teleports Isaac to an extra Boss room that can be defeated for an item#The boss is chosen from two floors deeper than the current one"

	[Card_ID .. 62] = "Spawnt einen Gegenstand aus dem aktuellen Raum-Gegenstandspool#{{BrokenHeart}} Konvertiert 1 Herzcontainer oder 2 Seelenherzen in ein Gebrochenes Herz", -- VI - The Lovers?
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Converts 1 heart container or 2 Soul Hearts into a Broken Heart"

	[Card_ID .. 63] = "{VAR:TIMEDEFFECT}#Unverwundbar, kann sich aber nicht bewegen", -- VII - The Chariot?
	-- Full old Desc: "{{Timer}} Erhalte für 10 Sekunden:#↑ {{Tears}} x4 Schussrate-Multiplikator#Unverwundbar, kann sich aber nicht bewegen"
	-- English: "{VAR:TIMEDEFFECT}#Invincible but can't move"

	[Card_ID .. 64] = "{{GoldenChest}} Spawnt 2-4 goldene Truhen", -- VIII - Justice?
	-- English: "{{GoldenChest}} Spawns 2-4 golden chests"

	[Card_ID .. 65] = "{{Coin}} Verwandelt alle Pickups und Gegenstände im Raum in eine Anzahl von Münzen, die ihrem Kaufwert entspricht#Wenn nichts umzuwandeln ist, spawnt eine Penny stattdessen", -- IX - The Hermit?
	-- English: "{{Coin}} Turns all pickups and items in the room into a number of coins equal to their Shop value#If there is nothing to turn, spawns a Penny instead"

	[Card_ID .. 66] = "{{DiceRoom}} Löst einen zufälligen Würfelraumeffekt aus", -- X - Wheel of Fortune?
	-- English: "{{DiceRoom}} Triggers a random Dice Room effect"

	[Card_ID .. 67] = "{{Timer}} Gegner im Raum sind {{Slow}} verlangsamt und nehmen 30 Sekunden lang doppelten Schaden", -- XI - Strength?
	-- English: "{{Timer}} Enemies in the room are {{Slow}} slowed and take double damage for 30 seconds"

	[Card_ID .. 68] = "{VAR:TIMEDEFFECT}#Dreifachschuss#{{Coin}} Getötete Feinde lassen Münzen fallen", -- XII - The Hanged Man?
	-- Full old Desc: "{{Timer}} Erhalte für 30 Sekunden:#↓ {{Speed}} -0,1 Geschwindigkeit#Dreifachschuss#{{Coin}} Getötete Feinde lassen Münzen fallen"
	-- English: "{VAR:TIMEDEFFECT}#Triple shot#{{Coin}} Killed enemies drop coins"

	[Card_ID .. 69] = "{{Collectible545}} Aktiviert das Buch der Toten#Spawnt Knochenwesen für jeden im Raum getöteten Feind", -- XIII - Death?
	-- English: "{{Collectible545}} Activates Book of the Dead#{{Friendly}} Spawns friendly Bone entities for each enemy killed in room"

	[Card_ID .. 70] = "{{Pill}} Zwingt Isaac, 5 zufällige Pillen zu essen", -- XIV - Temperance?
	-- English: "{{Pill}} Forces Isaac to eat 5 random pills"

	[Card_ID .. 71] = "{{Timer}} Erhalte für 60 Sekunden:#{{Collectible33}} Aktiviert die Bibel (Flug)#{{Collectible390}} Seraphim-Begleiter#{{MomsHeart}} Tötet Mamas Fuß und Mamas Herz sofort#{{Warning}} Tötet Isaac, wenn es gegen Satan verwendet wird", -- XV - The Devil?
	-- English: "{{Timer}} Receive for 60 seconds:#{{Collectible33}} Activates The Bible (flight)#{{Collectible390}} Seraphim familiar#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[Card_ID .. 72] = "Spawnt 7 Gruppen zufälliger Felsen und Hindernisse#Gruppen enthalten oft Getönte Felsen", -- XVI - The Tower?
	-- English: "Spawns 7 clusters of random rocks and obstacles#Clusters often contain Tinted Rocks"

	[Card_ID .. 73] = "Entfernt Isaacs ältesten eingesammelten passiven Gegenstand (ignoriert Startgegenstände)#Spawnt 2 zufällige Gegenstände aus dem aktuellen Raum-Gegenstandspool", -- XVII - The Stars?
	-- English: "Removes Isaac's oldest collected passive item (ignoring starting items)#Spawns 2 random items from the current room's item pool"

	[Card_ID .. 74] = "{{UltraSecretRoom}} Teleportiert Isaac in den Ultra Secret Room#Der Rückweg besteht aus roten Räumen", -- XVIII - The Moon?
	-- English: "{{UltraSecretRoom}} Teleports Isaac to the Ultra Secret Room#Pathway back will be made of red rooms"

	[Card_ID .. 75] = "{{CurseDarkness}} Fluch der Dunkelheit", -- XIX - The Sun?
	-- Full old Desc: "{{Timer}} Erhalte für das Stockwerk:#↑ {{Damage}} +1,5 Schaden#Flug und spektrale Tränen#{{BoneHeart}} Konvertiert Herzcontainer in Knochenherzen (kehrt zurück)#{{CurseDarkness}} Fluch der Dunkelheit"
	-- English: "{{Timer}} Receive for the floor:#{VAR:EFFECTLIST}#{{BoneHeart}} Converts heart containers into Bone Hearts (reverts)#{{CurseDarkness}} Curse of Darkness"

	[Card_ID .. 76] = "{{RestockMachine}} Spawnt eine Restock-Maschine", -- XX - Judgement?
	-- English: "{{RestockMachine}} Spawns a Restock Machine"

	[Card_ID .. 77] = "{{LadderRoom}} Spawnt eine Falltür zu einem Kriechraum", -- XXI - The World?
	-- English: "{{LadderRoom}} Spawns a trapdoor to a crawlspace"

	[Card_ID .. 78] = "{{Collectible580}} Einmal verwendbarer Roter Schlüssel", -- Cracked Key
	-- English: "{{Collectible580}} Single-use Red Key"

	[Card_ID .. 80] = "Kopiert den Effekt deiner zuletzt verwendeten Pille, Karte, Rune, Seelenstein oder aktivierten Gegenstands", -- Wild Card
	-- English: "Copies the effect of your most recently used pill, card, rune, soul stone or activated item"

	[Card_ID .. 81] = "Lässt alle Gegenstandspodeste im Raum zwischen zwei verschiedenen Gegenständen wechseln", -- Soul of Isaac
	-- English: "Makes all item pedestals in the room cycle between two different items"

	[Card_ID .. 82] = "{{Timer}} Effekt dauert für den Raum:#{{HalfHeart}} Getötete Feinde lassen halbe Rote Herzen fallen, die nach 2 Sekunden verschwinden", -- Soul of Magdalene
	-- English: "{{Timer}} Effect lasts for the room:#{{HalfHeart}} Enemies killed drop half Red Hearts that disappear after 2 seconds"

	[Card_ID .. 83] = "Öffnet alle Türen im Raum#{{Collectible580}} Erstellt rote Räume an jeder möglichen Wand", -- Soul of Cain
	-- English: "Opens all doors in the room#{{Collectible580}} Creates red rooms on every wall possible"

	[Card_ID .. 84] = "{{Collectible705}} Aktiviert Dark Arts mit einer Dauer von 3 Sekunden#Vorübergehender ↑ {{Damage}} Schadensbonus für jeden getroffenen Feind/Projektil", -- Soul of Judas
	-- English: "{{Collectible705}} Activates Dark Arts with a 3 second duration#Temporary ↑ {{Damage}} damage up for every enemy/projectile hit"

	[Card_ID .. 85] = "{{Poison}} Verursacht 8 Giftwinde mit braunem Schleim, spawnt dann schnell 7 Hinternbomben#Das Stehen auf dem Schleim gewährt:#{VAR:EFFECTLIST}", -- Soul of ???
	-- Full old Desc: "{{Poison}} Verursacht 8 Giftwinde mit braunem Schleim, spawnt dann schnell 7 Hinternbomben#Das Stehen auf dem Schleim gewährt:#↑ {{Tears}} +1,5 Schussrate#↑ {{Damage}} +1 Schaden"
	-- English: "{{Poison}} Causes 8 poison farts with brown creep, then quickly spawns 7 Butt Bombs#Standing on the creep grants:#{VAR:EFFECTLIST}"

	[Card_ID .. 86] = "{{Timer}} 14 tote Vogel-Begleiter fliegen herein und greifen Feinde im Raum an", -- Soul of Eve
	-- English: "{{Timer}} 14 Dead Bird familiars fly in and attack enemies for the room"

	[Card_ID .. 87] = "{{Collectible704}} Aktiviert Berserk! für 10 Sekunden#{{Timer}} Jeder Kill verlängert die Dauer um 1 Sekunde", -- Soul of Samson
	-- English: "{{Collectible704}} Activates Berserk! for 10 seconds#{{Timer}} Each kill increases the duration by 1 second"

	[Card_ID .. 88] = "{{Collectible441}} Feuert einen Mega Blast-Strahl für 7,5 Sekunden", -- Soul of Azazel
	-- English: "{{Collectible441}} Fires a Mega Blast beam for 7.5 seconds"

	[Card_ID .. 89] = "Isaac stirbt und wird sofort mit einem halben Herz wiederbelebt#Dieser Gegenstand wird automatisch verwendet, wenn tödlicher Schaden verursacht wird (fungiert als Extraleben)", -- Soul of Lazarus
	-- English: "Isaac dies and immediately revives at half a heart#This item is automatically used upon taking fatal damage (acts as an extra life)"

	[Card_ID .. 90] = "Rerollt Gegenstandspodeste und Pickups im Raum#Die gerollten Gegenstände stammen aus zufälligen Gegenstandspools", -- Soul of Eden
	-- English: "Rerolls item pedestals and pickups in the room#The rerolled items come from random item pools"

	[Card_ID .. 91] = "{{Player10}} Verwandelt den Spieler in The Lost für den Raum#Ermöglicht das kostenlose Nehmen eines {{DevilRoom}} Devil Room-Gegenstands#Ermöglicht das kostenlose Betreten der Mausoleum- oder Gehenna-Tür", -- Soul of the Lost
	-- English: "{{Player10}} Turns the player into The Lost for the room#Allows taking one {{DevilRoom}} Devil Room item for free#Allows entering the Mausoleum or Gehenna door for free"

	[Card_ID .. 92] = "Gewährt dauerhaft einen zufälligen Begleiter", -- Soul of Lilith
	-- English: "Permanently grants a random familiar"

	[Card_ID .. 94] = "Spawnt 15 zufällige Heuschrecken", -- Soul of Apollyon
	-- English: "Spawns 15 random locusts"

	[Card_ID .. 95] = "{{Player16}} Spawnt The Forgotten als sekundären Charakter für den Raum", -- Soul of the Forgotten
	-- English: "{{Player16}} Spawns The Forgotten as a secondary character for the room"

	[Card_ID .. 96] = "{{Collectible584}} Spawnt 6 zufällige Buch der Tugenden-Schweifchen", -- Soul of Bethany
	-- English: "{{Collectible584}} Spawns 6 random Book of Virtues wisps"

	[Card_ID .. 97] = "{{Player20}} Spawnt Esau als sekundären Charakter für den Raum#Er spawnt mit so vielen passiven Gegenständen wie der Spieler", -- Soul of Jacob and Esau
	-- English: "{{Player20}} Spawns Esau as a secondary character for the room#He spawns with as many passive items as the player"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 4] = "Tauscht Isaacs Anzahl an {{Bomb}} Bomben und {{Key}} Schlüsseln#Goldene Bomben und Schlüssel werden ebenfalls getauscht", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Golden bombs and keys are also swapped"

	[Pill_ID .. 38] = "{{Timer}} Pixelt den Bildschirm für 30 Sekunden", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen for 30 seconds"

	[Pill_ID .. 42] = "{{Slow}} Verlangsamt Isaac und alle Feinde im Raum", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. 43] = "{{Timer}} Beschleunigt Isaac und alle Feinde im Raum#Löst sich erneut nach 30 und 60 Sekunden aus", -- I'm Excited!!
	-- English: "{{Timer}} Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. 9999] = "Zufälliger Pilleneffekt#Hat eine Chance, sich bei jeder Verwendung zu zerstören", -- Golden Pill
	-- English: "Random pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Horse Pills ----------

local HorseID = PillColor.PILL_GIANT_FLAG
local additionalHorsePillInformations = {
	[Pill_ID .. (HorseID + 1)] = "{{Poison}} Vergiftet den gesamten Raum", -- Bad Gas
	-- English: "{{Poison}} Poisons the entire room"

	[Pill_ID .. (HorseID + 2)] = "{{Heart}} Fügt Isaac 2 Herzen Schaden zu#Wird zu einer Vollgesundheit-Pferdepille (+3 Seelenherzen) bei 1 Herz oder weniger", -- Bad Trip
	-- English: "{{Warning}} Deals 2 hearts of damage to Isaac#Becomes a Full Health horse pill (+3 Soul Hearts) at 1 heart or less"

	[Pill_ID .. (HorseID + 4)] = "Tauscht Isaacs Anzahl an {{Bomb}} Bomben und {{Key}} Schlüsseln#Erhöht die Anzahl der Bomben und Schlüssel um 50%#Goldene Bomben und Schlüssel werden ebenfalls getauscht", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Increases bomb and key count by 50%#Golden bombs and keys are also swapped"

	[Pill_ID .. (HorseID + 5)] = "Erzeugt ein paar homing Mega Troll Bomben", -- Explosive Diarrhea
	-- English: "Spawns a few homing Mega Troll Bombs"

	[Pill_ID .. (HorseID + 7)] = "Wird zu einer Gesundheit-Up-Pferdepille bei 0 oder 1 Herzcontainern", -- Health Down
	-- Full old Desc: "↓ {{EmptyHeart}} -2 Gesundheit#Wird zu einer Gesundheit-Up-Pferdepille bei 0 oder 1 Herzcontainern"
	-- English: "Becomes a Health Up horse pill at 0 or 1 heart containers"

	[Pill_ID .. (HorseID + 11)] = "{{Collectible279}} Gewährt einen großen orbitalen Fan#Es gibt keine Begrenzung für die Anzahl der großen Fans, die Isaac haben kann", -- Pretty Fly
	-- English: "{{Collectible279}} Grants a Big Fan orbital#There is no limit on the number of Big Fans Isaac can have"

	[Pill_ID .. (HorseID + 21)] = "{{Battery}} Lädt active Items vollständig auf", -- 48 Hour Energy!
	-- Full old Desc: "{{Battery}} Lädt active Items vollständig auf#{{Battery}} Lässt 3-4 Batterien fallen"
	-- English: "{{Battery}} Fully recharges active items"

	[Pill_ID .. (HorseID + 22)] = "{{EmptyHeart}} Entleert alle außer einem Herzcontainer", -- Hematemesis
	-- Full old Desc: "{{EmptyHeart}} Entleert alle außer einem Herzcontainer#{{Heart}} Spawnt 1-4 Rote Herzen"
	-- English: "{{EmptyHeart}} Drains all but one heart container"

	[Pill_ID .. (HorseID + 23)] = "Verhindert, dass Isaac sich für 4 Sekunden bewegt und schießt", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 4 seconds"

	[Pill_ID .. (HorseID + 25)] = "{{Charm}} Macht jeden Feind im Raum dauerhaft freundlich", -- Pheromones
	-- English: "{{Charm}} Turns every enemy in the room permanently friendly"

	[Pill_ID .. (HorseID + 27)] = "Erzeugt eine Pfütze von Creep in Größe eines Raums, die Feinden Schaden zufügt", -- Lemon Party
	-- English: "Spawns a puddle of creep the size of a room which damages enemies"

	[Pill_ID .. (HorseID + 28)] = "{{Timer}} Isaac schießt 60 Sekunden lang diagonal", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 60 seconds"

	[Pill_ID .. (HorseID + 31)] = "Isaac lässt für 10 Sekunden Kacke hinter sich erscheinen", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 10 seconds"

	[Pill_ID .. (HorseID + 32)] = "{{CurseMaze}} Fluch des Labyrinths-Effekt für den gesamten Boden", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. (HorseID + 33)] = "Vergrößert Isaac erheblich#Beeinträchtigt nicht seine Trefferbox", -- One makes you larger
	-- English: "Greatly increases Isaac's size#Doesn't affect his hitbox"

	[Pill_ID .. (HorseID + 34)] = "Verkleinert Isaac erheblich#Verringert auch die Größe seiner Trefferbox", -- One makes you small
	-- English: "Greatly decreases Isaac's size#Also decreases his hitbox's size"

	[Pill_ID .. (HorseID + 35)] = "Erzeugt 2 blaue Spinnen für jede Kacke im Raum", -- Infested!
	-- English: "Spawns 2 blue spiders for each poop in the room"

	[Pill_ID .. (HorseID + 36)] = "Erzeugt 2 blaue Spinnen für jeden Feind im Raum#Erzeugt 2-6 blaue Spinnen, wenn keine Feinde im Raum sind", -- Infested?
	-- English: "Spawn 2 blue spiders for each enemy in the room#Spawns 2-6 blue spiders if there are no enemies in the room"

	[Pill_ID .. (HorseID + 38)] = "Pixelisiert den Bildschirm für 90 Sekunden", -- Retro Vision
	-- English: "Pixelates the screen for 90 seconds"

	[Pill_ID .. (HorseID + 40)] = "Erzeugt eine Pfütze von lang anhaltendem rutschigem Creep", -- X-Lax
	-- English: "Spawns a pool of long lasting slippery creep"

	[Pill_ID .. (HorseID + 41)] = "{{Slow}} Erzeugt eine Pfütze von lang anhaltendem verlangsamendem Creep", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of long lasting slowing creep"

	[Pill_ID .. (HorseID + 42)] = "{{Slow}} Verlangsamt Isaac und alle Feinde im Raum", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. (HorseID + 43)] = "Beschleunigt Isaac und alle Feinde im Raum#Löst sich nach 30 und 60 Sekunden erneut aus", -- I'm Excited!!
	-- English: "Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. (HorseID + 44)] = "Verzehrt Isaacs Trinket und gewährt seine Effekte dauerhaft", -- Gulp!
	-- English: "Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. (HorseID + 45)] = "{{Collectible149}} Schießt einen Cluster von Ipecac-Tränen ab", -- Horf!
	-- English: "{{Collectible149}} Shoots a cluster of Ipecac tears"

	[Pill_ID .. (HorseID + 47)] = "Erzeugt die zuletzt von Isaac verwendete Pille als Pferdepille", -- Vurp!
	-- English: "Spawns the last pill Isaac used as a horse pill"

	[Pill_ID .. (HorseID + 50)] = "↑ Erhöht eine zufällige Stat zweimal#↓ Verringert eine zufällige Stat zweimal#Keine Stat-Verringerung mit {{Collectible75}} PHD, {{Collectible46}} Glücklicher Fuß oder {{Collectible303}} Jungfrau#Keine Stat-Erhöhung mit {{Collectible654}} Falsches PHD", -- Experimental Pill
	-- English: "↑ Increases 1 random stat twice#↓ Decreases 1 random stat twice"

	[Pill_ID .. (HorseID + 9999)] = "Zufälliger Pferdepilleneffekt#Hat eine Chance, sich bei jeder Verwendung selbst zu zerstören", -- Golden Pill
	-- English: "Random horse pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalHorsePillInformations, EID.descriptions[languageCode].AdditionalInformations)
