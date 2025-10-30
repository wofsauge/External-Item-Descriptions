---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 13] = "↑ +0.2 Hız", -- The Virus
	-- Full old Desc: "Zehir dokunuşu#↑ +0.2 Hız"
	-- English: "{{Poison}} Touching enemies poisons them"

	[C_ID .. 42] = "Atılabilir zehir bombası#185 + senin hasarını verir#Zehir bulutu oluşturur", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes where it lands and creates a poison cloud#Deals Isaac's damage + 185"

	[C_ID .. 46] = "Kumarda daha çok kazanma şansı#Oda ödülünü arttırır#Bazı kötü hapları iyiye çevirir", -- Lucky Foot
	-- Full old Desc: "↑ +1.0 Şans#Kumarda daha çok kazanma şansı#Oda ödülünü arttırır#Bazı kötü hapları iyiye çevirir"
	-- English: "Better chance to win while gambling#Increases room clearing drop chance#Turns bad pills into good ones"

	[C_ID .. 53] = "Pick-upları kendine çeker#Kasaları uzaktan açabilir, dikenli kasaları hasarsız açar", -- Magneto
	-- English: "Pickups are attracted to Isaac#Opens chests from 2 tiles away, ignoring damage of Spike Chests"

	[C_ID .. 69] = "<MISSING>", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x"

	[C_ID .. 84] = "<MISSING>", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} Opens a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[C_ID .. 91] = "<MISSING>", -- Spelunker Hat
	-- English: "Rooms on the map are revealed from further away#{{SecretRoom}} Can also reveal Secret and Super Secret Rooms#Prevents damage from falling projectiles"

	[C_ID .. 114] = "<MISSING>", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and caps at 6x damage at 1/3 charge#Charging further only increases throwing range#Damage reduces to 2x when returning to Isaac"

	[C_ID .. 123] = "Rastgele bir arkadaş verir#Kat boyunca sürer", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the floor"

	[C_ID .. 126] = "<MISSING>", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first"

	[C_ID .. 140] = "bombalar zehir bulutu bırakır", -- Bob's Curse
	-- Full old Desc: "Zehir bombası#+5 bomba#bombalar zehir bulutu bırakır"
	-- English: "{{Poison}} Isaac's bombs create a cloud of poison#{{Poison}} Poison immunity"

	[C_ID .. 142] = "<MISSING>", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again#{{Warning}} Doesn't trigger from health donations"

	[C_ID .. 147] = "Taşları kırar ve kullanıldığında düşmana hasar verir#Baltayı kullandıkça sarjı azalır#Şarjı kat inerken tekrar dolar", -- Notched Axe
	-- English: "Using the item makes Isaac hold the axe#Holding the axe allows Isaac to break rocks, secret room entrances and damage enemies#Landing a hit with the axe reduces its charge#Entering a new floor fully recharges the axe"

	[C_ID .. 152] = "Laser deals 13% of your hasar#↓ Gözyaşı azalır 33%", -- Technology 2
	-- Full old Desc: "Permanent laser attack!#Laser deals 13% of your hasar#↓ Gözyaşı azalır 33%"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} The laser deals 2x Isaac's damage per second"

	[C_ID .. 171] = "4 saniyeliğine düşmanlkarı yavaşlatır#Bununla öldürülen düşmanlar mavi örümcek yaratır", -- Spider Butt
	-- Full old Desc: "4 saniyeliğine düşmanlkarı yavaşlatır#Tüm düşmanlara 10 hasar#Bununla öldürülen düşmanlar mavi örümcek yaratır"
	-- English: "{{Slow}} Slows down enemies for 4 seconds#Enemies killed by the item spawn blue spiders"

	[C_ID .. 178] = "{{Throwable}} {{ColorOrange}}Atılabilir{{CR}}#Atılan yerde havuz oluşturur", -- Holy Water
	-- English: "{{Throwable}} Launches itself in the direction Isaac shoots#Breaks and deals 7 damage upon hitting an enemy#{{Petrify}} Leaves a pool of petrifying + damaging creep"

	[C_ID .. 180] = "<MISSING>", -- The Black Bean
	-- English: "Isaac farts multiple times when damaged#{{Poison}} The farts leave poison clouds and deflects projectiles"

	[C_ID .. 203] = "pickupların çift olan versiyonunu düşürme şansı", -- Humbleing Bundle
	-- English: "Pickups have a 50% chance to be doubled"

	[C_ID .. 205] = "- yarım kalp = kullanıldığında itemin sarjını 1 doldurur", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of half a heart per missing charge#{{Heart}} Removes Red Hearts first"

	[C_ID .. 224] = "Ayrılan gözyaşları yarım hasar verir#↑ -1 gözyaşı gecikmesi maksimum limiti geçebilir", -- Cricket's Body
	-- Full old Desc: "↓ -20% Menzil eksilir#Gözyaşları temasta 4e ayrılır#Ayrılan gözyaşları yarım hasar verir#↑ -1 gözyaşı gecikmesi maksimum limiti geçebilir"
	-- English: "Tears split in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "<MISSING>", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a 8% chance to spawn a Soul Heart#{{Luck}} +2% chance per luck#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 230] = "+2 Siyah kalp", -- Abaddon
	-- Full old Desc: "↑ +1.5 Hasar#↑ +0.2 Hız#Korku gözyaşları#Bütün kalp konteynırlarını siyah kalbe çevirir#+2 Siyah kalp"
	-- English: "{{BlackHeart}} Converts all heart containers into Black Hearts#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 232] = "↑ +0.3 Hız", -- Stop Watch
	-- Full old Desc: "Düşmanlar için kalıcı yavaşlatma efekti#↑ +0.3 Hız"
	-- English: "{{Slow}} Enemies are permanently slowed down to 80% of their attack and movement speed"

	[C_ID .. 248] = "Mavi örümcekler/sinekler iki katı hasar verir#Örümcek/Sinek bazlı arkadaşlar güçlenir", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage#Spider and fly familiars become stronger"

	[C_ID .. 256] = "bomba dokunma hasarı verir", -- Hot Bombs
	-- Full old Desc: "Yanan bomba#+5 bomba##Ateşten artık hasar almazsın#bomba dokunma hasarı verir"
	-- English: "{{Burning}} Isaac's bombs deal contact damage#{{Burning}} Isaac's bombs leave a flame where they explode#{{Burning}} Fire immunity (except projectiles)"

	[C_ID .. 261] = "↓ Hasar gözyaşı havada kaldıkça artar#Sıfır mesafede 300% Hasar", -- Proptosis
	-- Full old Desc: "↑ +0.5 Hasar#↓ Hasar gözyaşı havada kaldıkça artar#Sıfır mesafede 300% Hasar"
	-- English: "↓ Tears deal less damage the longer they are airborne#Tears deal 3x damage at point blank range and no damage after 0.8 seconds"

	[C_ID .. 262] = "1 kalbe düştüğünde odadaki canavarlara hasar verır#Siyah kalp ve Necronomicon efekti iki katı hasar verir", -- Missing Page 2
	-- Full old Desc: "+1 Siyah kalp#1 kalbe düştüğünde odadaki canavarlara hasar verır#Siyah kalp ve Necronomicon efekti iki katı hasar verir"
	-- English: "Taking damage down to 1 heart damages all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[C_ID .. 263] = "Alındığında 1 rune düşürür", -- Clear Rune
	-- Full old Desc: "Eldeki rune ve ruh taşı efektini kopyalar#Alındığında 1 rune düşürür"
	-- English: "{{Rune}} Triggers the effect of the rune Isaac holds without using it"

	[C_ID .. 276] = "Dokunulmaz vücut kazan#!!! Kalp arkadaşı hasar aldığında sen hasar alırsın#Arkadaş ateş ederken sarjı dolar ve gözyaşı grubu atar", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#The heart charges up when Isaac fires and releases a burst of tears when he stops#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 278] = "!!! Çevir:#1,5 kırmızı kalbı 1 Ruh/Siyah kalp, örümcek, hap, kart veya rune", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#Spawns a Black Heart, rune, card, pill, or spider for every 1.5 hearts picked up"

	[C_ID .. 280] = "Düşmanlı odalarda rastgele mavi örümcek yaratır#Temas ettiği düşmanları aşık eder", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms#{{Charm}} Charms enemies it comes in contact with"

	[C_ID .. 283] = "Bütün itemleri, statları, pickupları ve eldeki pasif itemleri değiştirir.#Odadaki rastgele 1 pickupı çift yapar#Odayı tekrar başlatır, düşmanları değiştirip tekrar yaratır.#Odadaki taşları değiştirir", -- D100
	-- English: "Duplicates 1 pickup in the room#Rerolls Isaac's speed, tears, damage, range and passive items#Rerolls all pedestal items, pickups and rocks in the room#Restarts the room, respawns all enemies and devolves them"

	[C_ID .. 285] = "Odadaki düşmanları değiştirir#Benzer HP sahibi düşmanlarla değiştirmeye çalışır", -- D10
	-- English: "Devolves all enemies in the room#For instance, all Red Flies become Black Flies"

	[C_ID .. 286] = "<MISSING>", -- Blank Card
	-- English: "Triggers the effect of the card Isaac holds without using it"

	[C_ID .. 287] = "Kullanıldığında kat için {{Collectible54}}Hazine harıtası, {{Collectible21}}Pusula or {{Collectible246}}Mavi harita efekti verir", -- Book of Secrets
	-- Full old Desc: "Kullanıldığında kat için {{Collectible54}}Hazine harıtası, {{Collectible21}}Pusula or {{Collectible246}}Mavi harita efekti verir#Sadece elde olmayan harita efeklerini verir#Bütün efektler aktif ise, {{Collectible76}}X-Ray vizyonu verir"
	-- English: "Highlights tinted and crawlspace rocks in the room#{{Timer}} Receive one of these effects for the floor:#{{IND}}{{NameC54}}#{{IND}}{{NameC21}}#{{IND}}{{NameC246}}#Only grants effects not already active#{{Collectible76}} If all effects are active, grants X-Ray Vision"

	[C_ID .. 289] = "Kırmızı ateş atar#Ateş 5 defa 23 hasara verene veya 10 saniye sonra söner", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 4 times or after 10 seconds"

	[C_ID .. 291] = "!!! Bok düşmanlarını ve bosslarını anında öldürür!#Düşmanları boka çevirir#Ateşleri söndürür#Lava çukurlarını yürünebilen zemine çevirir", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses#Extinguishes fire places and fills the room with water#Turns lava pits into walkable ground"

	[C_ID .. 292] = "Boss savaşından önce kullanıldığında, boss itemini şeytan anlaşmasına çevirir", -- Satanic Bible
	-- Full old Desc: "+1 Siyah kalp#Boss savaşından önce kullanıldığında, boss itemini şeytan anlaşmasına çevirir"
	-- English: "{{DevilRoom}} Using the item before a boss fight makes the boss reward a devil deal#Purchasing these devil deals has the same consequences as those in Devil Rooms#Does not affect item pedestals in The Void floor"

	[C_ID .. 294] = "Yakın düşman ve gözyaşlarını ittirir#Engele ittirilen düşmanlara 10 hasar verir", -- Butter Bean
	-- English: "Knocks back nearby enemies and projectiles#Enemies pushed into obstacles take 10 damage"

	[C_ID .. 295] = "Bütün odaya oyuncu hasarı x 2 + 10 hasar verir. #Fiyat: 1 altın", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage + 10 to all enemies in the room#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "!!! Çevir:#1 Ruh/Siyah kalp -> 1 kırmızı kalp", -- Converter
	-- English: "{{Heart}} Converts 1 Soul or Black Heart into 1 heart container"

	[C_ID .. 297] = "Bulunan kata gore farklı şeyler düşürür:#B1: 2 Ruh Kalbi#B2: 2 anahtar ve bomba#C1: 1 Boss itemi#C2: B1+C1#D1: 4 Ruh Kalbi#D2: 20 Altın#W1: 2 Boss itemi#W2: İncil#Sheol: 1 Şeytan itemi + Siyah kalp#Cat: 1 Melek itemi + Ruh kalbi#Chest: 1 Altın#Home: Kırmızı anahtar", -- Pandora's Box
	-- English: "{{NoLB}}Spawns rewards based on floor:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#{{NoLB}}C1: Boss item; C2: C1 + 2{{SoulHeart}}#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Boss items#W2: {{Collectible33}} The Bible#???/Void: Nothing#Sheol: Devil item + 1{{BlackHeart}}#Cathe: Angel item + 1{{EternalHeart}}#{{NoLB}}Dark Room: Unlocks {{Collectible523}} Moving Box#Chest: 1{{Coin}}#Home: {{Collectible580}} Red Key"

	[C_ID .. 300] = "Dokunulan düşmanlar hasar görür", -- Aries
	-- Full old Desc: "↑ +0.25 Hız#Dokunulan düşmanlar hasar görür#Yeterince hızlı koşmak dokunma hasarından korur"
	-- English: "Moving above 0.85 Speed makes Isaac immune to contact damage and deals 25 damage to enemies"

	[C_ID .. 308] = "Arkada akıntı bırakır#Akıntı saniyede hasarının 66%sını verir #Akıntı gözyaşı efekleri ile sinerji olur", -- Aquarius
	-- English: "Isaac leaves a trail of creep#{{Damage}} The creep deals 66% of Isaac's damage per second and inherits his tear effects"

	[C_ID .. 315] = "Manyetik gözyaşları#Düşmanları, pickupları ve trinketleri etkiler#İtemler gözyaşının düştüğü yere çekilir", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets#The attraction effect is much stronger at the end of the tears' path"

	[C_ID .. 319] = "<MISSING>", -- Cain's Other Eye
	-- English: "Shoots tears in random directions with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 323] = "<MISSING>", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects, plus 5 damage#Recharges by shooting tears"

	[C_ID .. 325] = "<MISSING>", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The body is controlled separately and gushes blood tears in the direction Isaac is shooting"

	[C_ID .. 326] = "Dokunulmazlık için şarj barı bitene kadar boşluğa bas#Dokunulmaz iken dokunan düşmanlara ışık hüzmeleri iner#!!! Uzun süre basılı tutma!", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#Isaac summons light beams on contact with enemies when invincible#If damage is blocked with perfect timing, shoot a 4-way holy beam and gain a brief shield#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 331] = "↓ -0.3 Atış hızı eksilir", -- Godhead
	-- Full old Desc: "Balistik gözyaşı#↑ +0.5 Hasar#↑ +0.5 Menzil#↓ -0.3 Gözyaşı azalır#↓ -0.3 Atış hızı eksilir#↑ +0.8 Gözyaşı yüksekliği#Göz yaşları hasar veren auraya sahip olur"
	-- English: "Tears gain an aura that deals 60 damage per second"

	[C_ID .. 344] = "Kibrit {{Trinket41}} trinketi yaratır", -- Match Book
	-- Full old Desc: "+1 Siyah kalp#2-3 Bomba pickupı yaratır#Kibrit {{Trinket41}} trinketi yaratır"
	-- English: "{{Trinket41}} Spawns Match Stick"

	[C_ID .. 352] = "Büyük bir delici gözyaşı atar. ((HASAR+1) X 10)#Hasar aldığında:#↓Alınan her hasar 2 tam kalğ götürür#↑+ 1.5 Menzil", -- Glass Cannon
	-- English: "{{Damage}} Shoots a large piercing spectral tear that does 10x Isaac's damage#{{Warning}} While held, taking damage:#↓ Removes an extra 2 hearts of health#↓ Breaks the cannon for a few rooms#↑ {{Range}} +1.5 Range and leaves a blood trail for the room#The extra damage can't kill Isaac#Self-damage does not trigger the effect"

	[C_ID .. 360] = "Özellik ve efekt olarak isaacin gözyaşlarının aynısını atar.#Lilith ile oynarken hasarının 100%ünü verir#Başka karakterle hasarının 75%ini verir", -- Incubus
	-- English: "Shoots tears with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 365] = "<MISSING>", -- Lost Fly
	-- English: "Moves along walls/obstacles in the room#Nearby enemies target the fly"

	[C_ID .. 368] = "<MISSING>", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually increases fire rate up to 200% and decreases accuracy"

	[C_ID .. 375] = "20% şansla gözyaşı bloklama#Patlama bağışıklığı verir", -- Host Hat
	-- English: "Grants immunity to explosions and falling projectiles#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Dükkanlar alınan itemlerin stoğunu yeniler#İtemler tekrar geldiğinde fiyatları artar", -- Restock
	-- English: "Buying an item from a Shop restocks it instantly#Restocked items increase in price each time"

	[C_ID .. 382] = "Düşmanları yakalamak için düşmanlara atılabilir#Sonraki kullanım yakalanan düşmanı dost olarak verir#Kullanıldıktan sonra topun üstüne yürümek itemin anında şarj olmasını sağlarW", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns the capture as a friendly companion#Walking over the ball after a capture instantly recharges the item"

	[C_ID .. 384] = "Fırlar ve odada kayar#Dokunma başına şarj süresine bağlı olarak 5-20 dokunma hasarı verir", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-20 contact damage per hit depending on speed"

	[C_ID .. 386] = "<MISSING>", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)#Small chance to reroll obstacles into buttons, killswitches, crawlspaces or trapdoors"

	[C_ID .. 389] = "Her 7-8 odada bir rastgele rune düşürür.#Ruh kalbi de düşürebilir", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune or Soul Stone every 7-8 rooms"

	[C_ID .. 391] = "<MISSING>", -- Betrayal
	-- English: "Enemies can hit each other with their projectiles, and start infighting"

	[C_ID .. 393] = "Zehir gözyaşı atma şansı#Dokunulan düşmanları zehirler#Dokunma zehiri ile öldürülen düşmanlar 20% şans ile siyah kalp düşürür", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Enemies killed by contact poison have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "↑ +3.0 Menzil#↑ +0.3 Gözyaşı yüksekliği#Arkadaşlar da hedefe doğru ateş eder", -- Marked
	-- Full old Desc: "Oyuncu tarafından kontrol edilen kırmızı hedefe doğru gözyaşları atar#↑ +0.7 Gözyaşı#↑ +3.0 Menzil#↑ +0.3 Gözyaşı yüksekliği#Arkadaşlar da hedefe doğru ateş eder"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground#Familiars shoot towards the target too#You can stop shooting and reset the target's location by pressing the drop button ({{ButtonRT}})"

	[C_ID .. 395] = "Şarj edip lazer halkası atma özelliği verir#Hasar şarj miktarina göre değişir#Full şarjda 100% hasar", -- Tech X
	-- English: "Isaac's tears are replaced by a chargeable laser ring#Ring size and damage increases up to 100% with charge time"

	[C_ID .. 399] = "3 saniye boyunca gözyaşı attıktan sonra Isaac'in kafasında kırmızı çarpı oluşur. Ateş butonu bırakıldığında, siyah brimstone halkaı oluşturur", -- Maw of the Void
	-- English: "{{Chargeable}} Firing tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds"

	[C_ID .. 401] = "Yapışkan bomba gözyaşları atma şansı#Yapışkan gözyaşları periyodik olarak hasar verir", -- Explosivo
	-- English: "25% chance to shoot sticky tears#Sticky tears grow and explode after a few seconds, dealing Isaac's damage +60"

	[C_ID .. 404] = "Vurulursa osurur, düşmanları aşık eder, zehirler veya ittirir#Osuruklar 5-6 hasar verir", -- Farting Baby
	-- Full old Desc: "Gözyaşlarını bloke eder#Vurulursa osurur, düşmanları aşık eder, zehirler veya ittirir#Osuruklar 5-6 hasar verir"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies#The farts deal 5-6 damage"

	[C_ID .. 405] = "{{Throwable}} {{ColorOrange}}Atılabilir{{CR}} (ateş tuşuna çift bas)#Temas ettiği düşmanları ve pickupları değiştirir.değiştirir", -- GB Bug
	-- English: "{{Throwable}} Throwable (double-tap shoot)#Rerolls enemies and pickups it comes in contact with"

	[C_ID .. 407] = "↑ Etrafındaki auranın rengine göre bir özelliğini yükseltir#Hasar aldığında yeni aura gelir#{{ColorRed}}Kırmızı{{CR}} = +4.0 Hasar#{{ColorBlue}}Mavi{{CR}} = -4 Gözyaşı gecikmesi#{{ColorYellow}}Sarı{{CR}} = +0.5 Hız#{{ColorOrange}}Turuncu{{CR}} = +3.0 Menzil, +1 Gözyaşı yüksekliği", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and grants a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} +2 Fire rate#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +3 Range"

	[C_ID .. 408] = "Hasar aldığında etrafında siyah brimstone halkası oluşur.", -- Athame
	-- English: "25% chance for a black brimstone ring to spawn around killed enemies#It deals 30x Isaac's damage over 2 seconds#{{Luck}} +2.5% chance per luck"

	[C_ID .. 416] = "Eğer oda ödül vermediyse 1-3 altın oluşturur.#Altın limitini 999a çıkartır", -- Deep Pockets
	-- English: "{{Coin}} If clearing a room would yield no reward, spawns 1-3 coins#{{Coin}} Increases the coin cap to 999"

	[C_ID .. 417] = "Hasar veren aura ile oda etrafında dolaşır, her saniye 7.5-10 hasar verir#↑ auranın içinde iken +50% hasar", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 7.5-10 damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 421] = "Yakındaki düşmanları aşık eder", -- Kidney Bean
	-- English: "{{Charm}} Charms all enemies in close range"

	[C_ID .. 422] = "<MISSING>", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in#The rewind can be used three times per floor#{{Collectible66}} Acts as The Hourglass when out of rewinds, which slows enemies down for 8 seconds"

	[C_ID .. 433] = "<MISSING>", -- My Shadow
	-- English: "A small shadow follows Isaac#{{Friendly}} When an enemy touches the shadow a friendly black charger spawns for the room"

	[C_ID .. 437] = "Odadaki tüm düşmanları değiştir#Oda sonu ödüllerini tekrar tekrar almanı sağlayabilir", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room"

	[C_ID .. 444] = "Atılan her 15 gözyaşında grup gözyaşı atar", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears"

	[C_ID .. 448] = "Kırmızı kalp hasarı alındığında, kırmızı gözyaşları tükür#Atış tuşları ile yönü kontrol et#Aktif iken, her 20 saniyede yarım kalp hasarı verir#Kanamayı durdurmak için kırmızı kalp doldur", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{BleedingOut}} Isaac bleeds, spewing tears in the direction he is shooting#The bleeding does half a Red Heart of damage every 20 seconds#The bleeding stops if a Red Heart is healed, all Red Hearts are empty, or the next damage would kill Isaac"

	[C_ID .. 450] = "<MISSING>", -- Eye of Greed
	-- English: "{{Damage}} Every 20 tears, Isaac shoots a coin tear that deals x1.5 +10 damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-3 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "Bazı kartlara iki katı güç efekti verir", -- Tarot Cloth
	-- Full old Desc: "Alındığında rastgele kart veya rune düşür#Bazı kartlara iki katı güç efekti verir"
	-- English: "{{Card}} Tarot card effects are doubled or enhanced"

	[C_ID .. 453] = "Gözyaşları vurduğunda 1-3 küçük kemik parçalarına ayrılır", -- Compound Fracture
	-- Full old Desc: "Kemik gözyaşları#Gözyaşları vurduğunda 1-3 küçük kemik parçalarına ayrılır#↑ +0.38 Menzil#↑ +1.0 Gözyaşı yüksekliği"
	-- English: "Tears shatter into 1-3 bone shards upon hitting anything"

	[C_ID .. 464] = "Şampiyon düşmanlar ve oda ödülleri daha yaygın olur", -- Glyph of Balance
	-- Full old Desc: "+2 Ruh Kalbi#Şampiyon düşmanlar ve oda ödülleri daha yaygın olur#Düşen pickupların önceliği oyuncunun eksiklerine öncelikli olarak gelir"
	-- English: "Room clear rewards and champion enemy drops become whatever pickup Isaac needs the most"

	[C_ID .. 472] = "Diğer arkadaşlar bunu takip eder ve otomatik olarak düşmana ateş eder.#Sen ateş ederken hareket etmeyi bırakır#Sen ateş etmeyi bıraktığında yanına ışınlanır", -- King Baby
	-- English: "Other familiars follow it and automatically shoot at enemies#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 474] = "Kullanıldığında glass cannon itemine dönüşür", -- Broken Glass Cannon
	-- English: "Using the item turns it back into Glass Cannon"

	[C_ID .. 476] = "<MISSING>", -- D1
	-- English: "Duplicates a random pickup in the room#Duplicated pickups may not be identical to the original"

	[C_ID .. 477] = "<MISSING>", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 489] = "Her kullanımda rastgele zar efekti#Düşürme tuşuyla zarlar arasında geçir yapar", -- D Infinity
	-- Full old Desc: "Her kullanımda rastgele zar efekti#Düşürme tuşuyla zarlar arasında geçir yapar"
	-- English: "Can be made to act as any die item (except {{Name723}}) with the drop button ({{ButtonRT}})#Charge time varies based on the last die used and updates with every use"

	[C_ID .. 493] = "Her boş kalp konteynırı için:#↑ Hasar hesabı ((2 * BoşYarımKalp) ^ 1.6) * 0.1", -- Adrenaline
	-- English: "↑ {{Damage}} Damage up for every empty heart container#The more empty heart containers, the bigger the bonus for each new one"

	[C_ID .. 494] = "Gözyaşları çarptığında elektrik çıkartır#Elektrik hasarının yarısı kadar hasar verir#Elektrik düşmandan düşmana geçebilir", -- Jacob's Ladder
	-- English: "Tears spawn a spark of electricity on impact#Sparks deal half of Isaac's damage#Sparks can arc to up to 4 other enemies"

	[C_ID .. 497] = "<MISSING>", -- Camo Undies
	-- English: "{{Confusion}} Entering a room camouflages Isaac and confuses all enemies until a tear is shot#↑ {{Speed}} +0.5 Speed while cloaked#Uncloaking deals damage around Isaac and grants a very brief fire rate and damage up"

	[C_ID .. 501] = "<MISSING>", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins Isaac has"

	[C_ID .. 503] = "Düşmanların üzerine koşmak onlara 3.5 hasar verir", -- Little Horn
	-- Full old Desc: "Big Horn eli çıkartacak gözyaşı atma şansı#El düşmanları anında yok eder ve bosslara hasar verir#Düşmanların üzerine koşmak onlara 3.5 hasar verir"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a tear that summons a Big Horn hand#The hand instantly kills enemies and deals 36 damage to bosses"

	[C_ID .. 504] = "Düşmanlara ateş eden bir sinek çıkartır", -- Brown Nugget
	-- Full old Desc: "Düşmanlara ateş eden bir sinek çıkartır#Her atış 3.5 hasar verir"
	-- English: "Spawns a fly that shoots at enemies"

	[C_ID .. 506] = "<MISSING>", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which makes enemies leave creep and take damage when they move"

	[C_ID .. 507] = "<MISSING>", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts"

	[C_ID .. 508] = "<MISSING>", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which makes enemies take damage when they move#{{Damage}} Deals 1.5x Isaac's damage per second"

	[C_ID .. 509] = "Orbital that shoots a tear every 1/3rd second when enemy is nearby", -- Bloodshot Eye
	-- Full old Desc: "Orbital that shoots a tear every 1/3rd second when enemy is nearby#Gözyaşı başına 3.5 hasar verir#Saniyede 30 dokunma hasarı"
	-- English: "Orbital that shoots a tear every 0.33 seconds to nearby enemies"

	[C_ID .. 514] = "<MISSING>", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#Paused projectiles disappear#25% chance to double room clear rewards"

	[C_ID .. 522] = "<MISSING>", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards#Pushes close enemies away during the effect"

	[C_ID .. 523] = "Kullanıldığında, odada 10 pickupa kadar içinde saklayabilir#Tekrar kullanıldığında hepsini yere çıkartır#Odalar arasında eşya taşımak için kullanılabilir", -- Moving Box
	-- English: "Stores up to 10 pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Gözyaşları elektrik ile bağlanır#Elektrik hasarı senin hasarının 1/3üne eşit olur", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#Electricity deals 4.5x Isaac's damage per second"

	[C_ID .. 552] = "<MISSING>", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 553] = "Yapışkan spor gözyaşları atma şansı#Sporlar 2.5 saniye sonra patlar, hasar verir, yakın düşmanları zehirler ve daha fazla spor salar", -- Mucormycosis
	-- English: "25% chance to shoot a sticky spore tear#{{Luck}} Not affected by luck#{{Poison}} Spores blow up after 2.5 seconds, dealing damage, poisoning nearby enemies and releasing more spores"

	[C_ID .. 554] = "Etrafındaki küçük çaptaki düşmanları korkutur", -- 2Spooky
	-- English: "{{Fear}} Fears enemies in a small radius around Isaac"

	[C_ID .. 555] = "{VAR:EFFECTLIST}", -- Golden Razor
	-- Full old Desc: "Oda için 5 Altını +1.2 Hasara çevirir"
	-- English: "{{Timer}} Pay 5 {{Coin}} coins and receive for the room:#{VAR:EFFECTLIST}"

	[C_ID .. 557] = "Fal, Ruh kalbi, Tarot veya trinket verir", -- Fortune Cookie
	-- English: "Grants one of the following rewards:#A fortune#{{SoulHeart}} A Soul Heart#{{Rune}} A Rune or Soul Stone#{{Card}} A Tarot card#{{Trinket}} A Trinket"

	[C_ID .. 558] = "Rastgele yönlerde 1-2 ekstra gözyaşı atma şansı", -- Eye Sore
	-- English: "Chance to shoot 1-3 extra tears in random directions#{{Luck}} Not affected by luck"

	[C_ID .. 559] = "Yakın düşmanları sürekli çarpar#Elektrik hasarının 75%ini verir", -- 120 Volt
	-- English: "Repeatedly zaps nearby enemies#{{Damage}} Electricity deals up to 3.75x Isaac's damage per second#Sparks can arc to up to 4 other enemies"

	[C_ID .. 560] = "Hasar alınğında 10 gözyaşından bir çember oluşturur#↑ İlk hasar için +1.2 Gözyaşı#↑ Her ekstra hasar için +0.4 gözyaşı", -- It Hurts
	-- English: "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac"

	[C_ID .. 562] = "Oyun boyunca özelliklerin azalmasına engel olur", -- Rock Bottom
	-- English: "↑ Prevents stats from being lowered for the rest of the run"

	[C_ID .. 563] = "bomba rastgele bomba efektiyle patlar", -- Nancy Bombs
	-- Full old Desc: "+5 bomba#bomba rastgele bomba efektiyle patlar"
	-- English: "Isaac's bombs explode with random effects"

	[C_ID .. 565] = "Düşmanları kovalayan arkadaş#Yeterince düşman öldürdüğünde daha güçlenir fakat sana da zarar vermeye çalışır#Ona saldırmak normale dönmesine sebep olur", -- Blood Puppy
	-- English: "Chases enemies#After killing 15 enemies, it deals more damage, spawns a half Red Heart every 10 kills, but tries to hurt Isaac#After killing 40 enemies, it deals even more damage, spawns full Red Hearts, and can destroy rocks#Dealing enough damage to it returns it to its first phase"

	[C_ID .. 566] = "Kata girerken +1 yarım ruh kalbi#İlerideki İtem odası ve boss itemini kat değişim kabusunda gösterir", -- Dream Catcher
	-- English: "{{HalfSoulHeart}} +1 half Soul Heart when entering a new floor#The stage transition nightmare reveals the next floor's boss fight and Treasure Room item"

	[C_ID .. 567] = "Hasar almadan temizlenen her oda için ↑ +0.4 Gözyaşı#5 defaya kadar üst üste biner", -- Paschal Candle
	-- English: "↑ {{Tears}} Clearing a room without taking damage grants +0.4 Fire rate#Caps at +2 Fire rate {{ColorSilver}}(5 rooms){{CR}}"

	[C_ID .. 568] = "Ateş tuşuna çift basmak kalkan yaratır#Kalkan 1 saniye dayanır, düşmanları uzağa iter, gözyaşlarını ve lazerleri  yansıtır", -- Divine Intervention
	-- English: "Double-tapping a fire key creates a shield#The shield lasts 1 second, pushes enemies away and reflects enemy projectiles and lasers"

	[C_ID .. 569] = "Her kat başlangıcında seni bıçaklar, yarım kırmızı kalp dışında bütün kırmızı kalpleri götürür#Kat için şu özellikleri arttırır:#↑ hasar + 0.15 * GidenKalp^2#↑ Speed + 0.05*GidenKalp", -- Blood Oath
	-- English: "{{Warning}} Entering a new floor drains all of Isaac's Red Hearts, but grants speed and damage bonuses for each heart lost#Each half heart lost counts as an individual hit for on-hit effects"

	[C_ID .. 570] = "Farklı efektlerle çeşitli renklerde gözyaşı sağlar", -- Playdough Cookie
	-- English: "Each of Isaac's tears have a different color and status effect"

	[C_ID .. 571] = "↑ +2 Ruh Kalbi", -- Orphan Socks
	-- Full old Desc: "Yer sıvısı ve dikenlerinden koruma sağlar#↑ +0.3 Hız#↑ +2 Ruh Kalbi"
	-- English: "Immune to creep and floor spikes"

	[C_ID .. 572] = "↓ -0.16 Atış hızı eksilir", -- Eye of the Occult
	-- Full old Desc: "Kontrol edilebilen gözyaşlar#↑ +1 Hasar#↑ +7.5 Menzil#↓ -0.16 Atış hızı eksilir"
	-- English: "Isaac's tears can be controlled in mid-air"

	[C_ID .. 573] = "Hayalet yörünge gözyaşları atma şansı", -- Immaculate Heart
	-- Full old Desc: "+1 kırmızı kalp konteynırı#↑ +20% Hasar#Full can#Hayalet yörünge gözyaşları atma şansı"
	-- English: "20% chance to shoot an extra orbiting spectral tear"

	[C_ID .. 574] = "Düşmanlara hasar veren 2 dairsel aura verir#İç aura daha fazla hasar verir", -- Monstrance
	-- English: "Isaac is surrounded by a damaging aura#The closer enemies are to Isaac, the more damage the aura deals to them"

	[C_ID .. 575] = "Kafanın içine gömülmüş bir arkadaş, 4 yavaşlatma gözyaşı atar#Hasar aldığında, kafandan dışarı çıkar", -- The Intruder
	-- English: "{{Slow}} Buries itself in Isaac's head and shoots 4 extra slowing tears that deal 1.5 damage#Taking damage can make the spider exit the head and chase enemies"

	[C_ID .. 576] = "Bok parçalamak 1-4 minik bok oluşturur", -- Dirty Mind
	-- English: "All Dip (small poop) enemies are friendly#Destroying poop spawns 1-4 Dips#Dip type depends on the poop type#Rocks may be replaced with poop"

	[C_ID .. 577] = "Kafanın üstünde bir kılıç oluşturur, İtem ve dilenci ödüllerini iki katına çıkartır#Hasar alınan rastgele bir zamanda seni öldürür", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 578] = "Büyük bir sarı havuz oluşturur", -- Free Lemonade
	-- English: "Creates a large pool of yellow creep#The creep deals 24 damage per second"

	[C_ID .. 579] = "Isaac gözyaşı atmak yerine kılıç sallar#Hasar 3x#Dönme atağı yapar + şarj olunca ateş eder#Can full ise her sallamada ateş de eder", -- Spirit Sword
	-- English: "Instead of shooting tears, swing a sword#{{Damage}} The sword deals 3x Isaac's damage +3.5 and swings as fast as the fire button is tapped#{{Chargeable}} Charging does a spin attack + projectile shot#Shoots projectiles with swings at full health"

	[C_ID .. 580] = "Uygun bir duvarda yeni bir oda yaratır, kırmızı kapı çerçevesinden anlaşılabilir#Odalar özel oda olabilir# 13x13 kat haritası dışında yaratılan oda seni I AM ERROR odasına ışınlar", -- Red Key
	-- English: "Creates a red room adjacent to a regular room, indicated by a door outline#Red Rooms can be special rooms#{{ErrorRoom}} Entering a room outside the 13x13 floor map teleports Isaac to the I AM ERROR room"

	[C_ID .. 581] = "Sinek yörünge arkadaşı", -- Psy Fly
	-- Full old Desc: "Sinek yörünge arkadaşı#Düşman gözyaşlarını kovalar ve geri gönderir#Dokunma hasarı verir"
	-- English: "Chases and deflects enemy projectiles"

	[C_ID .. 582] = " Gözyaşları rastgele solucan efektine sahip olur. Üstüse alınabilir", -- Wavy Cap
	-- Full old Desc: "↑ +0.75 Atış sıklığı#↓ -0.03 Hız eksilir# Gözyaşları rastgele solucan efektine sahip olur. Üstüse alınabilir"
	-- English: "Distorts the screen#Takes longer to recharge each use#Leaving or clearing rooms reduces the effects"

	[C_ID .. 583] = "Yürürken bırakılan bombalar yürüme yönünde atılan bir füzeye dönüşür", -- Rocket in a Jar
	-- Full old Desc: "+5 bomba#Yürürken bırakılan bombalar yürüme yönünde atılan bir füzeye dönüşür"
	-- English: "Placing a bomb while shooting fires a rocket in that direction instead"

	[C_ID .. 584] = "İkinci bir aktif item ile birleştiripi temalı wispler çıkartılabilir#İlk şeytan odasını melek odasına çevirir", -- Book of Virtues
	-- Full old Desc: "Hayalet gözyaşları atan ama yok edilebilen yörüngede dolaşan Wisp çıkartır#İkinci bir aktif item ile birleştiripi temalı wispler çıkartılabilir#İlk şeytan odasını melek odasına çevirir"
	-- English: "Spawns an orbital wisp familiar that shoots spectral tears but can be destroyed#Can be combined with a second active item to create special wisps#{{AngelRoom}} Turns the first Devil Room into an Angel Room#{{AngelRoom}} Allows Angel Rooms to spawn after taking a Devil deal"

	[C_ID .. 585] = "3 ruh kalbi ve 2 melek itemi çıartır# Ruh Kalpleri toplayarak şarj edilmelidir", -- Alabaster Box
	-- English: "Must be charged by picking up Soul Hearts, then spawns:#{{SoulHeart}} Three Soul Hearts#{{AngelRoom}} Two Angel Room items#{{DevilRoom}} Only spawns 2 Soul Hearts and 1 Angel item if a Devil deal was taken previously"

	[C_ID .. 586] = "Her katın başlangıcında bir merdiven çıkartır, Merdiven melek odası dükkanına götürür", -- The Stairway
	-- English: "Spawns a ladder in the first room of every floor that leads to a unique {{AngelRoom}} Angel Room shop with items and pickups"

	[C_ID .. 589] = "Her kata ekstra bir Gizli Oda{{SecretRoom}} ve Süper Gizli Oda{{SuperSecretRoom}} ekler#Gizli odalar dokununca kat boyu gözyaşı arttıran ve mavi kalp veren bir ışık hüzmesine sahip olur", -- Luna
	-- English: "Adds an extra {{SecretRoom}} Secret Room and {{SuperSecretRoom}} Super Secret Room to each floor#Reveals one Secret Room each floor#{{Timer}} Secret Rooms contain a beam of light that grant for the floor:#↑ {{Tears}} +0.5 Fire rate#↑ {{Tears}} Additional +0.5 Fire rate from the first beam per floor#{{HalfSoulHeart}} Half a Soul Heart"

	[C_ID .. 590] = "Odaya girildiğinde kapılar açık kalır", -- Mercurius
	-- Full old Desc: "↑ +0.4 Hız#Odaya girildiğinde kapılar açık kalır"
	-- English: "Most doors stay permanently open"

	[C_ID .. 591] = "Yakın düşmanları aşık eder", -- Venus
	-- Full old Desc: "+1 kırmızı kalp konteynırı#Full can#Yakın düşmanları aşık eder"
	-- English: "{{Charm}} Charms nearby enemies"

	[C_ID .. 592] = "Gözyaşlarını taşlar ile değiştirir#Değişken hasar verirler", -- Terra
	-- Full old Desc: "↑ +1.0 Hasar#Gözyaşlarını taşlar ile değiştirir#Değişken hasar verirler#Engelleri yok edebilir#Arttırılmış ittirme"
	-- English: "Replaces Isaac's tears with rocks#Rocks deal variable damage, can destroy obstacles and have increased knockback"

	[C_ID .. 593] = "Hareket tuşuna çift basarak hızlı kaçma#Kaçarken dokunulmaz olup hasarının 4x katını verir#3 saniye içinde tekrar kullanılamaz", -- Mars
	-- English: "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown"

	[C_ID .. 595] = "Etrafında bir çember oluşur#Odaya girildiğinde 7 gözyaşı çemberin etrafinda yörünge alır#Düşman gözyaşlarını yakalama şansı", -- Saturnus
	-- English: "Entering a room causes 7 tears to orbit Isaac#Those tears last for 13 seconds and deal 1.5x Isaac's damage +5#Enemy projectiles have a chance to orbit Isaac"

	[C_ID .. 596] = "Buz gözyaşları atar, düşmanları dondurup yavaşlatır#Düşmanlara dokunulduğunda düşmanlar kayar ve 6 buz parçalarına patla#Seherin", -- Uranus
	-- English: "{{Freezing}} Isaac shoots petrifying tears that freeze enemies on death#Touching a frozen enemy makes it slide away and explode into 10 ice shards"

	[C_ID .. 597] = "Ateş etmezken 3 saniye boyunca biriken büyük bir gözyaşı bonusu verir##Tekrar ateş etmek biriktirilen gözyaşlarını bırakır#Ateş ettikçe gözyaşi bonusu düşer", -- Neptunus
	-- English: "{{Tears}} Not shooting builds up a tear bonus over 3 seconds#The tear bonus decreases as Isaac shoots"

	[C_ID .. 598] = "Isaaci çok fazla küçültür, objelerin arasından geçmesine izin verir#Düşman gözyaşları onun üstünden geçebilir", -- Pluto
	-- Full old Desc: "↑ +0.7 Gözyaşı#Isaaci çok fazla küçültür, objelerin arasından geçmesine izin verir#Düşman gözyaşları onun üstünden geçebilir"
	-- English: "Significantly shrinks Isaac, allowing him to squeeze between objects#Projectiles can pass over him"

	[C_ID .. 599] = "Her katta ekstra bir lanet odası {{CursedRoom}} oluşturur", -- Voodoo Head
	-- English: "{{CursedRoom}} Spawns an additional Curse Room each floor#Improves Curse Room layouts and rewards#{{Coin}} Spawns a coin in every Curse Room"

	[C_ID .. 602] = "Her dükkana yeni ürünlerden oluşan ikinci dükkana açılan bir kapı ekler", -- Member Card
	-- English: "{{Shop}} Opens a trapdoor in every Shop#The trapdoor leads to an underground shop that sells trinkets, runes, cards, special hearts and items from any pool"

	[C_ID .. 603] = "Aktif itemini tamamen şarj eder", -- Battery Pack
	-- Full old Desc: "2-4 pil çıkartır#Aktif itemini tamamen şarj eder"
	-- English: "{{Battery}} Fully recharges the active item"

	[C_ID .. 604] = "Taş, TNT, bok, host ve diğer engellerin kaldırılıp atılmasına imkan sağlar#Odalar arasında taşınmasına izin verir", -- Mom's Bracelet
	-- English: "Allows Isaac to pick up and throw rocks, TNT, poops, friendly Dips, Hosts and other obstacles#Allows carrying them between rooms"

	[C_ID .. 607] = "Her yönde kaotik gözyaşı grupları atan arkadaş", -- Boiled Baby
	-- Full old Desc: "Her yönde kaotik gözyaşı grupları atan arkadaş# 3.5 ya da 5.3 hasar verir"
	-- English: "Shoots chaotic bursts of tears in all directions"

	[C_ID .. 608] = "Buz gözyaşları atan arkadaş#Öldürdüğü düşmanları buz yapar", -- Freezer Baby
	-- English: "{{Petrify}} Shoots petrifying tears that deal 3.5 damage#{{Freezing}} Freezes enemies upon killing them"

	[C_ID .. 609] = "Odadaki her itemi değiştirir#Itemlerin yok olma şansı vardır", -- Eternal D6
	-- English: "Rerolls all pedestal items in the room#Has a 25% chance to delete items instead of rerolling them"

	[C_ID .. 610] = "Odadaki ilk hasarda düşmana atlayan arkadaş#45 hasar verir ve taş dalgaları çıkartır#Ardından düşmanları kovalar", -- Bird Cage
	-- English: "Leaps on the enemy that deals the first damage to Isaac in a room#Deals 45 damage and releases a rock wave#Chases enemies afterwards for 6.5 contact damage per second"

	[C_ID .. 611] = "Bağırmanı sağlar, yakındaki düşmanlara hasar verip ittirirsin#İtemin şarjına göre bağırma güçlenir", -- Larynx
	-- English: "Isaac screams, damages and knocks back nearby enemies#The scream gets stronger the more charges the item has"

	[C_ID .. 612] = "Tek hasarda ölen ruh arkadaşı, yeni katta tekrar doğar#Bütün kat boyunca canlı kalırsa 3 Ruh kalbi, 2 Ebedi kalp veya itemler düşürür", -- Lost Soul
	-- English: "Dies in one hit and respawns at the start of the next floor#If it is brought alive to the next floor, it can spawn:#{{SoulHeart}} 3 Soul Hearts#{{EternalHeart}} 2 Eternal Hearts#{{TreasureRoom}} A Treasure Room item#{{AngelRoom}} An Angel Room item"

	[C_ID .. 614] = "bombalar kırmızı havuz bırakır#Oyuncunun bombası kalmadığında yarım kalp karşılığında bomba bırakılabilir", -- Blood Bombs
	-- Full old Desc: "+1 kırmızı kalp konteynırı#5 kalp iyileştirir#bombalar kırmızı havuz bırakır#Oyuncunun bombası kalmadığında yarım kalp karşılığında bomba bırakılabilir"
	-- English: "{{HalfHeart}} If Isaac has no bombs, one can be placed at the cost of half a heart#Isaac's bombs leave red creep"

	[C_ID .. 615] = "Dumpy arkadaşı#Hasar aldığında yakındaki düşmanları ittirir, afallatır veya zehirler", -- Lil Dumpy
	-- English: "Deflects an enemy or projectile right before Isaac would take damage from it#Chance to deflect projectiles near it#Needs to be touched after deflecting to be reactivated"

	[C_ID .. 619] = "Her karakter için farklı bir efekti vardır", -- Birthright
	-- English: "Has a different effect for each character"

	[C_ID .. 621] = "3 dakika içinde hasar azalarak biter", -- Red Stew
	-- Full old Desc: "Full can#↑ +21.6 Hasar#3 dakika içinde hasar azalarak biter"
	-- English: "The damage up wears off over 3 minutes#Killing enemies while the effect is active extends it"

	[C_ID .. 622] = "Isaacin bütün itemlerini ve pickuplarını siler#Seni pickupların, kasaların ve alt kapının olduğu bir yatak odasına ışınlar#Kaybedilen her item için, Hazine Odası {{TreasureRoom}} seçmek üzere 3 item sunar", -- Genesis
	-- English: "Removes all of Isaac's items and pickups#Teleports Isaac to a bedroom with pickups and chests#For every item removed, Isaac can choose between 3 items from the same pool#Leaving the bedroom takes Isaac to the next floor"

	[C_ID .. 623] = "Hasar vermek, engelleri kırmak ve kapı açmak için anahtar fırlat", -- Sharp Key
	-- Full old Desc: "+5 keys#Hasar vermek, engelleri kırmak ve kapı açmak için anahtar fırlat"
	-- English: "Throws one of Isaac's keys in the direction he shoots#Thrown keys deal damage, destroy obstacles, and open doors#Enemies killed with keys can spawn the contents of a chest, including items"

	[C_ID .. 625] = "{VAR:TIMEDEFFECT}", -- Mega Mush
	-- Full old Desc: "30 Saniyeliğine seni dev yapar#Hasarı ve menzili arttırır#Düşmanları ve engelleri ezme, dokunulmazlık verir#Odalar arasında efekt devam eder"
	-- English: "{VAR:TIMEDEFFECT}#Gigantifies Isaac#Ability to crush enemies and obstacles#Persists between rooms and floors"

	[C_ID .. 627] = "düşmanlara hasar verir", -- Knife Piece 2
	-- Full old Desc: "Bıçak parçası 1 {{Collectible627}} ile birleştirildiğinde, bıçak arkadaşı yaratır#düşmanlara hasar verir#Et kapısını açar"
	-- English: "Turns into a throwable knife that deals 25 damage when combined with {{NameC626}}#The knife can open a door made of flesh"

	[C_ID .. 628] = "Oyundaki her itemin olduğu bir kata ışınlar#1 İtem aldıktan sonra geldiğin odaya ışınlar", -- Death Certificate
	-- English: "Teleports Isaac to a floor that contains every item in the game#Choosing an item from this floor teleports Isaac back to the room he came from"

	[C_ID .. 629] = "Yörünge sineği, kalkanlı gözyaşı atar", -- Bot Fly
	-- Full old Desc: "Yörünge sineği, kalkanlı gözyaşı atar"
	-- English: "Shoots shielded tears to destroy enemy projectiles"

	[C_ID .. 631] = "Odadaki düşmanları çok daha az canı olan 2 parçaya böler", -- Meat Cleaver
	-- English: "Splits all enemies in the room into 2 smaller versions with 40% health#Enemies that naturally split (like Envy) take enough damage to split instead#Deals 25 damage to enemies that can't be split"

	[C_ID .. 632] = "Yanma, kafa karışıklığı, korku, zehir ve zehir gazına bağışıklık", -- Evil Charm
	-- Full old Desc: "↑ +2 Şans#Yanma, kafa karışıklığı, korku, zehir ve zehir gazına bağışıklık"
	-- English: "Immune to {{Burning}} burn, {{Confusion}} confusion, {{Fear}} fear, and {{Poison}} poison effects"

	[C_ID .. 634] = "Düşmanların olduğu odadayken yerde çatlaklar oluşturur#Bu çatlakların üstüne yürümek patlayan hayaletler çıkartır", -- Purgatory
	-- English: "Red cracks spawn on the ground in hostile rooms#Walking over the cracks summons homing exploding ghosts"

	[C_ID .. 635] = "Isaacin ateş ettiği yönde hareket eden bir arkadaş çıkartır#Kullanıldığında, Isaac arkadaşın olduğu yere ışınlanır ve kısa süre dokunulmaz olur#Bir şeylerin üzerine ışınlanmak onlara hasar verebilir ya da yok edebilir.", -- Stitches
	-- English: "Spawns a familiar that moves in the direction Isaac shoots#On use, Isaac swaps places with the familiar and becomes briefly invincible#Teleporting onto things can damage or destroy them"

	[C_ID .. 636] = "Yeni bir oyunun ilk katına ışınlar#İtemler ve pickuplar üzerinde kalır", -- R Key
	-- English: "Restarts the entire run#All items, trinkets, stats and pickups collected are kept#The timer does not reset"

	[C_ID .. 638] = "Düşmanı anında öldüren bir silgi atar#Silinen düşmanın oyun boyunca tekrar çıkmasını engeller#Bosslara 15 hasar verir#Katta sadece bir kez kullanılabilir", -- Eraser
	-- English: "Throws an eraser that instantly kills an enemy#Prevents the erased enemy from spawning for the rest of the run#Deals 15 damage to bosses#Can only be used once per floor"

	[C_ID .. 640] = "Ateş akıntısı fırlatır#Her düşman öldüğünde şarjı dolar#Maksimum şarj 20", -- Urn of Souls
	-- English: "Spews a stream of flames#Killing an enemy adds a charge to the urn"

	[C_ID .. 641] = "Çatışmadayken arkanda gözyaşı zinciri oluşturur#Gözyaşları 3.5 hasar verir", -- Akeldama
	-- English: "Creates a chain of tears behind Isaac in hostile rooms#The tears deal 3.5 damage"

	[C_ID .. 642] = "1 kalp konteynırı veya 2 Ruh Kalbi alıp o odanın itemini çıkartır#Bunun yanında doldurulamayan kırık kalp konteynırı verir#{{Warning}} The Lost için tek kullanımlık item", -- Magic Skin
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Turns 1 heart container or 1 Bone Heart or 2 Soul Hearts into a Broken Heart#{{Warning}} Replaces future items if Isaac isn't holding it {{ColorSilver}}(33% after 1 use, 50% after 2, 100% after 3)#Lower chance if Magic Skin is on a pedestal on the current floor"

	[C_ID .. 644] = "En düşük özelliğini arttırır#En az hangisinden varsa 3 Altın, 1 bomba, veya 1 anahtar düşürür", -- Consolation Prize
	-- English: "↑ Increases Isaac's lowest stat out of Speed, Fire rate, Damage, and Range#Spawns either 3 {{Coin}} coins, 1 {{Bomb}} bomb, or 1 {{Key}} key depending on what Isaac has the least of"

	[C_ID .. 645] = "Teratoma yörüngesi#Dokunma hasarı verir#3 defa vurulduğunda daha küçük parçalara ayrılır#Küçük versiyonlar mavi örümceklere kırılır", -- Tinytoma
	-- Full old Desc: "Teratoma yörüngesi#Ateşleri bloklar#Dokunma hasarı verir#3 defa vurulduğunda daha küçük parçalara ayrılır#Küçük versiyonlar mavi örümceklere kırılır#Tamamen yok olduktan 5 saniye sonra tekrar doğar"
	-- English: "Large orbital that blocks shots#Splits into smaller versions of itself upon taking 3 hits#The smaller versions break into blue spiders#Respawns 5 seconds after fully disappearing"

	[C_ID .. 646] = "bomba dikey yönlerde 4 brimstone lazeri çıkartır", -- Brimstone Bombs
	-- Full old Desc: "+5 bomba#bomba dikey yönlerde 4 brimstone lazeri çıkartır"
	-- English: "{{Collectible118}} Isaac's bombs release a 4-way blood beam#The beams don't hurt Isaac"

	[C_ID .. 647] = "Aktif itemler oda temizlendiğinde şarj olmaz#Düşmanlar hasar aldıkça dolar#60 hasar = 1 şarj", -- 4.5 Volt
	-- English: "Clearing rooms no longer charges active items#Dealing damage to enemies slowly fills up the charge bar#Damage needed per charge increases each floor"

	[C_ID .. 649] = "Minik bebek Plum arkadaşı", -- Fruity Plum
	-- Full old Desc: "Minik bebek Plum arkadaşı#Odada çapraz yönde kendini atar, arkasından gözyaşı atar"
	-- English: "Propels herself diagonally around the room, firing tears in her path that deal 3 damage"

	[C_ID .. 650] = "Odada 10 saniyeliğine Bebek Plum çıkartır", -- Plum Flute
	-- English: "{{Timer}} Summons a friendly Baby Plum in the room for 10 seconds"

	[C_ID .. 651] = "Boss odasına doğru yavaşca giden arkadaş#+20% + 1 Hasar, Gözyaşı ve gözyaşı takibi veren bir aura verir#{VAR:EFFECTLIST}", -- Star of Bethlehem
	-- Full old Desc: "Boss odasına doğru yavaşca giden arkadaş#+20% + 1 Hasar, Gözyaşı ve gözyaşı takibi veren bir aura verir"
	-- English: "Slowly travels from the first room of the floor to the {{BossRoom}} Boss Room#Moves faster if you're ahead of it, and slower if you're behind it#Standing in its aura grants:#{VAR:EFFECTLIST}#50% chance to ignore damage"

	[C_ID .. 652] = "Üzerine yüründüğünde odada kayan bir arkadaş#Yavaşlatır ve dokunma hasarıverir, öldürdüğü düşmanları buz yapar", -- Cube Baby
	-- English: "Can be kicked around by walking into it#{{Slow}} Slows and deals up to 17.5 contact damage depending on speed#{{Freezing}} Freezes enemies it kills"

	[C_ID .. 653] = "Elde iken, hayalet olmayan düşmanlar öldüğünde kırmızı hayalet çıkartır#Kullanıldığında, hayaletleri patlatır", -- Vade Retro
	-- English: "Holding the item causes non-ghost enemies to spawn small red ghosts on death#Using the item causes the ghosts to explode#Using the item also kills any ghost enemies (including bosses) that have less than 50% HP left"

	[C_ID .. 654] = "Diğer haplar kullanıldığında siyah kalp verir", -- False PHD
	-- Full old Desc: "Bütün hapların tespit eder#+1 Siyah kalp#Güzel hapları kötü haplara çevirir#↑ Özellik düşürme hapları hasar arttırır#Diğer haplar kullanıldığında siyah kalp verir"
	-- English: "{{Pill}} Identifies all pills#Converts all good pills into bad pills#↑ {{Damage}} Eating a stat down pill grants +0.6 damage#{{BlackHeart}} Eating other bad pills spawns a Black Heart"

	[C_ID .. 655] = "Düşman ateşlerini bloke eden topaç yörüngeci ekler#{VAR:ONUSEEFFECT}", -- Spin to Win
	-- Full old Desc: "Düşman ateşlerini bloke eden topaç yörüngeci ekler#Saniyede 10.5 dokunma hasarı verir#Kullanıldığında,↑ +0.5 hız ve yörüngeçlerin dönüş hızını çok arttırır"
	-- English: "Passively grants an orbital that blocks enemy shots and deals 10.5 contact damage per second#{VAR:ONUSEEFFECT}#{{IND}}Increases speed and damage of orbitals"

	[C_ID .. 656] = "<Item not obtainable>", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 657] = "Düşmanlar öldüğünde Isaac gözyaşlarının efeklerine sahip gözyaşlarına patlar", -- Vasculitis
	-- English: "Enemies explode into tears upon death, which inherit the effects of Isaac's tears"

	[C_ID .. 658] = "Hasar alındığında mikro-Isaacler çıkartır#Düşmanları kovalayıp ateş ederler", -- Giant Cell
	-- English: "Taking damage spawns a Minisaac#Minisaacs chase and shoot at nearby enemies"

	[C_ID .. 660] = "Her katın başlangıcında 2 portal oluşturur#Odadan çıkınca portallar yokolur#{{ColorRed}}Kırmızı: {{CR}}Boss Odası#{{ColorYellow}}Sarı: {{CR}}Hazine Odası#{{ColorBlue}}Mavi: {{CR}}Gizli Oda", -- Card Reading
	-- English: "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room"

	[C_ID .. 661] = "Düşmanın öldüğü noktada duran ve ateş eden bir arkadaş çıakrtır#5 Arkadaşa kadar", -- Quints
	-- English: "Killing an enemy spawns a stationary familiar in its place#Caps at 5 familiars"

	[C_ID .. 663] = "6 Sanıyede bir 1 saniyeliğine dokunulmaz yapar#Geçişten hemen önce yanıp söner", -- Tooth and Nail
	-- English: "1 second of invincibility every 6 seconds#Isaac flashes right before the effect triggers"

	[C_ID .. 664] = "Yemek itemi almak geçici +3.6 hasar artışı ve 2 küçük kalıcı özellik artışı verir", -- Binge Eater
	-- Full old Desc: "+1 kırmızı kalp konteynırı#Itemler kendisi ve rastgele bir yemek itemi arasında gidip gelir, biri seçilebilir#Yemek itemi almak geçici +3.6 hasar artışı ve 2 küçük kalıcı özellik artışı verir"
	-- English: "Item pedestals cycle between their item and a food item#Picking up a food item grants:#{{HealingRed}} Heal 2 hearts#↑ {{Damage}} Temporary +3.6 damage#↑ 2 permanent stat ups (depending on the food)#↓ {{Speed}} -0.03 speed"

	[C_ID .. 665] = "Kasaların, keselerin ve ateşlerin içindeki itemleri gösterir", -- Guppy's Eye
	-- English: "Reveals the contents of {{Chest}} chests, {{GrabBag}} sacks, shopkeepers, and fireplaces before they're opened or destroyed"

	[C_ID .. 668] = "Ev katına giden skansı başlatır#Öncesinde {{TreasureRoom}} Hazine veya {{BossRoom}} Boss odalarına bırakılan trinketlar {{Card78}} Cracked Key trinketına dönüşür", -- Dad's Note
	-- English: "Begins the Ascent#Trinkets left in previous {{TreasureRoom}} Treasure or {{BossRoom}} Boss Rooms turn into {{Card78}} Cracked Keys"

	[C_ID .. 670] = "Oda sonu ödülü verilirse, iki farklı ödül sunulur#Birini almak diğerinin kaybolmasına sebep olur", -- Options?
	-- English: "Allows Isaac to choose from two different room clear rewards"

	[C_ID .. 671] = "Kırmızı kalp ile iyileşirken rastgele özellik artışı verir", -- Candy Heart
	-- English: "↑ Healing with {{Heart}} Red Hearts grants random permanent stat ups#{{Heart}} Spawns a Red Heart"

	[C_ID .. 672] = "Şeytan anlaşmaları artık altın ile yapılır#Dükkan itemleri artık can ile ödenir#Kullanılabilirler artık dükkanda bedava olur fakat dikenler ile çevrilir", -- A Pound of Flesh
	-- English: "{{DevilRoom}} Devil Room items cost coins#{{Shop}} Shop items cost hearts#Consumables in Shops are surrounded by spikes"

	[C_ID .. 673] = "Şeytan odasına girip item alınmadığında 1 Ruh kalbi ve +1.0 hasar verir#{VAR:EFFECTLIST}", -- Redemption
	-- Full old Desc: "Şeytan odasına girip item alınmadığında 1 Ruh kalbi ve +1.0 hasar verir"
	-- English: "{{DevilRoom}} Entering a new floor after visiting a Devil Room and not taking any item/pickup grants:#{VAR:EFFECTLIST}"

	[C_ID .. 674] = "Ölünce Isaac'in hayaleti ölü vücuduna zincirlenir ve yarım kalp ile savaşmaya devam eder#10 Sanite sonra hayata döner#Mavi kalp alarak şarj olmalıdır", -- Spirit Shackles
	-- English: "Taking fatal damage transforms Isaac into a ghost chained to his dead body and allows him to continue to fight with half a heart#If the ghost survives, Isaac revives after 10 seconds#Must be recharged by picking up a Soul Heart"

	[C_ID .. 675] = "Hasar alındığında, katta rastgele bir odayı açığa çıkartır#Anahtar gerektiren odaları açar#Mega Satan odasını açar#Ultra gizli odayı açığa çıkartabilir", -- Cracked Orb
	-- English: "Taking damage:#Unlocks all locked doors in the room#Reveals a random room on the map#Destroys all tinted and crawlspace rocks"

	[C_ID .. 676] = "Kat başlangıcında boş kalp konteynırı var ise, yeni bir tane daha verir#kemik kalp sayılmaz", -- Empty Heart
	-- English: "{{EmptyHeart}} +1 Empty heart container when at 1 Red Heart or less at the start of a new floor"

	[C_ID .. 677] = "Hasar alındığında, 3 saniyeliğine zamanı durdurur#Isaac hayalete dönüşür ve vücudunu bırakır#Hayalet formunda uçuş, hayalet gözyaşları verir ve sıradakı hasar alımından kurtulur", -- Astral Projection
	-- English: "{{Timer}} Taking damage in an uncleared room grants for the fight:#Spectral tears#Flight#Negates the next damage taken#Stops time for 2 seconds#Greatly increases speed and fire rate for 2 seconds"

	[C_ID .. 678] = "Launch a baby attached via umbilical cord#Deals 3x dokunma hasarı#Baby shoots tears and walks when fire button is held#Returns when button is released", -- C Section
	-- English: "{{Chargeable}} Replaces Isaac's tears with a charge attack that shoots homing, spectral fetus tears#{{Damage}} Fetus tears deal about 2.8x Isaac's damage per second"

	[C_ID .. 679] = "Minik bir Maw of the Void {{Collectible399}} atan bir arkadaş", -- Lil Abaddon
	-- English: "{{Collectible399}} Familiar that charges and unleashes a Maw of the Void circle#It deals 52.5 damage over 1 second"

	[C_ID .. 680] = "Ateş ederken kısa menzilli bir brimstone atağı şarj eder#Arkana ateş et", -- Montezuma's Revenge
	-- English: "{{Chargeable}} Firing charges up a short-ranged high damage backwards beam#Does not replace Isaac's tears"

	[C_ID .. 681] = "Dokunma hasarı verir ve ileri doğru uçar#Yolundaki pickupları kullanır#Her biri boyunu, hasarını arttırır ve mavi sinek çıkartır#Her 4 pickupta, gidilmemiş bir odaya portal oluşturur", -- Lil Portal
	-- English: "Deals contact damage and flies forward#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming four pickups spawns a portal to an unexplored room"

	[C_ID .. 682] = "Yerden kol çıkmasını sağlar#Düşmanları tutup hasar verebilir", -- Worm Friend
	-- English: "Sometimes bursts out of the ground and grabs an enemy#Grabbed enemies take 8 damage per second, are slowed and cannot move"

	[C_ID .. 683] = "Düşmanlar ölünce uçan kemikler oluşturur#Kemikler düşman gözyaşlarını bloklar ve dokunma hasarı verir", -- Bone Spurs
	-- English: "Enemies spawn bone shards on death#Bones block projectiles and deal contact damage"

	[C_ID .. 684] = "Düşman öldürdüğünde hayalet çıkartma şansı#Hayaletler düşmanları kovalar ve dokunma hasarı verir#5 saniye sonrasında, hayalet patlar ve yakındaki düşmanlara 7 hasar verir#Bu patlamadan hasar almazsın", -- Hungry Soul
	-- English: "Killing an enemy has a chance to spawn a ghost#Ghosts chase enemies, deal contact damage and explode after 5 seconds#Isaac doesn't take damage from the explosion"

	[C_ID .. 685] = "Çeşitli gözyaşları atan, ateşleri bloklayan ve dokunma hasarı veren rastgele wispler#Wisps sayısı kullanıldıkça artar", -- Jar of Wisps
	-- English: "Spawns a random wisp#Spawns one additional wisp with each use, up to 12"

	[C_ID .. 686] = "Ruh kalbi alındığında kalıcı özellik arttırma verir", -- Soul Locket
	-- Full old Desc: "Ruh kalbi alındığında kalıcı özellik arttırma verir#Alındığında Ruh kalbi düşürür"
	-- English: "↑ Picking up {{SoulHeart}} Soul Hearts grants random permanent stat ups"

	[C_ID .. 687] = "Isaac'in hareketlerini ve ataklarını taklit eden rastgele bir arkadaş canlısı canavar çıkartır", -- Friend Finder
	-- English: "{{Friendly}} Spawns a random friendly monster that mimics Isaac's movements and attacks"

	[C_ID .. 688] = "Bulunduğun odada yarım kalp, çok küçülme ve +0.2 hız ile tekrar doğarsın", -- Inner Child
	-- Full old Desc: "+1 ekstra can#Bulunduğun odada yarım kalp, çok küçülme ve +0.2 hız ile tekrar doğarsın"
	-- English: "Upon death:#Respawns Isaac in the same room with half a heart#↑ {{Speed}} +0.2 Speed#↑ Massive size down"

	[C_ID .. 689] = "Alınacak itemler 5 rastgele item arasında döner, biri seçilebilir", -- Glitched Crown
	-- English: "Item pedestals quickly cycle between 5 random items"

	[C_ID .. 690] = "Düşmanların Isaac üzerinden zıplamasını sağlar#Engellerin üzerinden zıplatmak hasar verir#Düşman gözyaşlarını geri gönderme şansı", -- Belly Jelly
	-- English: "Enemies bounce off of Isaac#50% chance to negate contact damage#50% chance to deflect enemy projectiles"

	[C_ID .. 691] = "Düşük kalite itemlerin çıkmasını engeller#Çıkacak itemlerin kalitesini çok arttırır", -- Sacred Orb
	-- English: "Prevents Quality {{Quality0}}/{{Quality1}} items from spawning#Quality {{Quality2}} items have a 33% chance to be rerolled"

	[C_ID .. 692] = "Şeytan odasına özel bir dizi diken çıkartır#Bu dikenlerden hasar alındığında ödül verir:#35% 6 altın#15% +0.5 Hasar#5% 2 Siyah kalp#2% rastgele item#1% Leviathan transformasyonu", -- Sanguine Bond
	-- English: "Spawns a set of spikes in the {{DevilRoom}} Devil Room#Taking damage on the spikes grants:#35%: Nothing#33%: ↑ {{Damage}} +0.5 Damage#15%: 6 {{Coin}} pennies#10%: 2 {{BlackHeart}} Black Hearts#5%: {{DevilRoom}} Random Devil item#2%: Leviathan transformation"

	[C_ID .. 693] = "Her oda temizlendiğinde yeni bir sinek verir", -- The Swarm
	-- Full old Desc: "Ateş blokladıktan sonra mavi sineğe dönen 9 yörüngeç sinek verir#Her oda temizlendiğinde yeni bir sinek verir"
	-- English: "Clearing a room spawns a new fly#Flies turn into blue flies after blocking a shot"

	[C_ID .. 694] = "Her ölümcül hasar 2 kırık kalp daha ekler#12 Kırık kalpte ölürsün", -- Heartbreak
	-- Full old Desc: "3 kırık kalp verir# her kırık kalp için ↑ +0.25 hasar #Her ölümcül hasar 2 kırık kalp daha ekler#12 Kırık kalpte ölürsün"
	-- English: "↑ {{Damage}} +0.25 Damage for each Broken Heart#{{BrokenHeart}} Every fatal hit grants +2 Broken Hearts#Isaac dies at 12 Broken Hearts"

	[C_ID .. 695] = "Hasar alındığında, kat için hız ve gözyaşı kazan", -- Bloody Gust
	-- English: "When taking damage, receive for the floor:#↑ {{Speed}} Speed up#↑ {{Tears}} Fire rate up#Caps at +1.02 speed and +3 fire rate"

	[C_ID .. 696] = "İçindeki düşmanlara ışık hüzmeleri çıkartan bir hale verir#Hala katta daha çok hasar aldıkça daha da büyür", -- Salvation
	-- English: "Isaac is surrounded by a halo#Enemies that stand in the halo for too long are hit by a cross-shaped beam of light#Taking damage increases the size of the halo for the floor"

	[C_ID .. 697] = "Booss odasına girerken bossun kopyasına dönüşen arkadaş#Öldürüldüğünde ekstra item düşürür#Klon daha yavaş ve orjinal bossun 75% canına sahip olur", -- Vanishing Twin
	-- English: "Entering a boss room spawns a clone of the boss#Defeating the clone spawns an extra item#The clone is slower and has 75% health"

	[C_ID .. 698] = "Yanında duran iki arkadaş#Atılan gözyaşların seninkine eşit olur, ama sadece 37.5% hasar ile", -- Twisted Pair
	-- English: "Two familiars that shoot tears with the same stats and effects as Isaac#{{Damage}} They deal 37.5% of Isaac's damage"

	[C_ID .. 699] = "Her oda temizlendiğinde sinir artar#4 oda sonra, yeni odaya girildiğinde büyük bir Brimstone lazeri atar", -- Azazel's Rage
	-- English: "{{Collectible118}} Clearing 4 rooms fires a large Brimstone beam upon entering the next room"

	[C_ID .. 700] = "Isaac bir kart, hap, veya rune kullandığında,  Echo Chamber alındıktan sonra şimdiye kadar kullandığı her kart/hap/rune pickupının bir kopyasını da kullanır", -- Echo Chamber
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill also uses a copy of the last 3 runes/cards/pills used after picking up Echo Chamber"

	[C_ID .. 701] = "Her katın başında eski bir kasa çıkartır#Kasa Ruh Kalbi, trinketler veya Melek odası itemleri veya anne/baba temalı itemler barındırabilir", -- Isaac's Tomb
	-- English: "Spawns an {{DirtyChest}} Old Chest at the start of every floor#Old Chests require a key to unlock and can contain {{SoulHeart}} Soul Hearts, {{Trinket}} trinkets or Mom, Dad and Angel items"

	[C_ID .. 702] = "Hasar alındığında, kat boyunca duran yörüngeç wisp çıkartır#Maksimum 6#Ateş ederler fakat ateş bloklayamazlar", -- Vengeful Spirit
	-- English: "Taking damage spawns an orbital wisp#Wisps shoot tears, do not block shots and disappear on the next floor#Caps at 6 wisps"

	[C_ID .. 703] = "O ankı karakter ile Esau Jr. arasında değişir. Esau Jr. 3 Siyah kalp, +2 hasar ve uçuşa sahiptir#Karakterler bağımsız itemlere ve canlara sahip olurlar#{{Warning}} İki karakterden biri olarak ölmek oyunun bitmesine sebep olur", -- Esau Jr.
	-- English: "Swaps between the current character and Esau Jr.#Esau Jr. has {{BlackHeart}} 3 Black Hearts, {{Damage}} +2 Damage, flight, and random items equal to the number of items the player has the first time this item is used#Characters have independent items and health#{{Warning}} Dying as either character ends the run"

	[C_ID .. 705] = "{VAR:EFFECTLIST}#Her dokunulan düşman için hasarı 1 arttırır#Dokunulan düşmanlara senin hasarının 3x verir", -- Dark Arts
	-- Full old Desc: "Kullanıldığında, 1 saniyeliğine ↑ +1.0 speed ve düşmanların/ateşlerin içinden geçebilme edin.#Her dokunulan düşman için hasarı 1 arttırır#Dokunulan düşmanlara senin hasarının 3x verir"
	-- English: "{{Timer}} Receive for 1 second (or until shooting):#{VAR:EFFECTLIST}#Isaac can pass through enemies/projectiles and paralyzes them#When the effect ends, damages paralyzed enemies, removes paralyzed projectiles and creates a blast at Isaac's location#The attacks and blast are more powerful the more enemies/projectiles have been hit"

	[C_ID .. 706] = "Odadaki tüm itemleri yok eder ve her biri için atak sineği çıkartır#Sineğin efekti iteme göre değişirEffects of fly depends on the items", -- Abyss
	-- English: "Consumes all item pedestals in the room and spawns a locust familiar for each one#Locusts deal Isaac's damage 2-3 times an attack#Some items spawn a special locust when consumed"

	[C_ID .. 708] = "Isaacin tek gözünden gözyaşı atmasını engeller", -- Stapler
	-- Full old Desc: "↑ +1.0 hasar#Isaacin tek gözünden gözyaşı atmasını engeller"
	-- English: "All of Isaac's tears are shot from the right eye"

	[C_ID .. 709] = "Düşmanların ve bossların üzerine çok hızlı koşmanı ve onları yere yapıştırmanı sağlar#Yere yapıştırma kontrol edilebilir#50 hasar verir ve taş dalgaları çıkartır", -- Suplex!
	-- English: "Isaac dashes in the direction he moves#Dashing into an enemy or boss picks it up and slams it into the ground#Slam deals damage and spawns rock waves based on Isaac's size#You're invincible during the dash and slam"

	[C_ID .. 710] = "8 pickupa kadar toplar ve tutar#Item tuşunu basılı tutmak pickupların iteme dönüşmesine sebep olur#İtem kalitesi pickupların kalitesine göre depişir", -- Bag of Crafting
	-- English: "Collects up to 8 pickups which cannot be dropped#Using the item with 8 pickups in the bag crafts an item#Item quality is based on the quality of the pickups"

	[C_ID .. 711] = "Tainted Lazarus ile Ölü Tainted Lazarus arasında değiştirir", -- Flip
	-- English: "Entering a room with item pedestals displays a ghostly second item on the pedestals#Using the item flips the real and ghostly item#Using Flip after taking the first item allows Isaac to pick up the other item#{{Warning}} Ghostly items alone on pedestals disappear after leaving the room"

	[C_ID .. 712] = "Yok edilebilir hayalet item yörüngeci oluşturur#İtemin efekti kullanıcıya verilir#İtemler odanın bulunduğu havuzdan verilir", -- Lemegeton
	-- English: "Spawns an orbital that grants a random item's effect#The items have a 25% chance to be from the current room's item pool and 75% chance to be from the Treasure, Boss or Shop pools"

	[C_ID .. 713] = "Ateş tuşuna 2 saniye basılı tutmak yarım kalbi yok edilebilir arkadaşlara çevirir#Kalp tipi arkadaş davranışını değiştirir", -- Sumptorium
	-- English: "Removes half a heart and creates a clot#Clots copy Isaac's tears#Each type of heart generates a clot with different HP, damage and tear effect"

	[C_ID .. 714] = "Forgottenın vücudunu herhangi bir uzaklıkltan geri getirir", -- Recall
	-- English: "Retrieves the Forgotten's body from any distance#The Soul is invincible while the Forgotten is returning"

	[C_ID .. 715] = "İçinde sonra kullanılabilmek üzere bir bok bombası taşır", -- Hold
	-- English: "Using the item when empty stores the next poop inside#Using the item with a poop inside uses that poop"

	[C_ID .. 716] = "Alındığında 3 Altın ve 1 anahtar verir#{VAR:EFFECTLIST}", -- Keeper's Sack
	-- Full old Desc: "Dükkandan alışveriş yaparken menzil, hız veya hasar verir#Alındığında 3 Altın ve 1 anahtar verir"
	-- English: "{{Shop}} Spending 3 coins grants either:#{VAR:EFFECTLIST}"

	[C_ID .. 717] = "Taşlar ve engeller yok edildiğinde 2 mavi örümcek verir", -- Keeper's Kin
	-- English: "Rocks and other obstacles spawn 2 blue spiders when destroyed#Rocks can occasionally spawn blue spiders in hostile rooms"

	[C_ID .. 719] = "Rastgele bir dükkan itemi/pickupı çıkartır", -- Keeper's Box
	-- English: "{{Shop}} Spawns a random Shop item/pickup to be purchased"

	[C_ID .. 720] = "Şarj durumuna göre farklı pickuplar çıkartır#Şarj full ise, daha güçlü bir rastgele efekti olur#Şarj ödülleri: 1:Bok 2:{{Coin}} 3:{{Bomb}} 4:{{Key}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}", -- Everything Jar
	-- English: "Spawns pickups based on the number of charges#Charge Rewards:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} Triggers a powerful random effect at 12 charges"

	[C_ID .. 721] = "Sonraki tüm itemlerin 'bozuk' olmasını sağlar#Onlara tamamen rastgele efektler verir", -- TMTRAINER
	-- English: "Causes all future items to be glitched#Glitched items have completely random effects"

	[C_ID .. 722] = "En yakın düşmanı 5 saniye boyunca zincirler, hareketini engeller", -- Anima Sola
	-- English: "{{Chained}} Chains down the nearest enemy for 5 seconds#Chained enemies cannot move or attack"

	[C_ID .. 723] = "Odadaki her itemi item ID numarasını bir azaltarak değiştirir", -- Spindown Dice
	-- English: "Rerolls all items in the room by decreasing their internal ID by one"

	[C_ID .. 724] = "Düşman tarafından hasar alındığında, yarım veya tam kırmızı kalp çıkartır#:Çıkan kalpler 1.5 saniye sonra yok olur", -- Hypercoagulation
	-- English: "{{Heart}} Taking damage drops a half or full Red Heart depending on how much Isaac lost#The hearts launch out and despawn after 1.5 seconds"

	[C_ID .. 725] = "Hasar verildiğinde, efekt başlatma şansı:#Bok at#Güçlendiren havuz oluştur#Osur#5 canlı bomba düşür", -- IBS
	-- English: "Dealing enough damage causes Isaac to flash red#Releasing the fire button while Isaac is flashing either:#Throws a random poop#Creates buffing creep#{{Poison}} Farts a poison cloud#Spawns 5 live bombs"

	[C_ID .. 726] = "Ateş tuşuna çift basıldığında kan hapşırır#Hasarının 150%sini önündeki düşmana verir#1 saniye içinde tekrar kullanılabilir", -- Hemoptysis
	-- English: "Double-tapping a fire button makes Isaac sneeze blood#The sneeze deals 1.5x Isaac's damage#1 second cooldown#{{BrimstoneCurse}} Affected enemies take extra damage from Brimstone beams"

	[C_ID .. 727] = "bomba dokunma hasarı verip 10 saniye sonra patlayan hayalet çıkartır", -- Ghost Bombs
	-- Full old Desc: "+5 bomba#bomba dokunma hasarı verip 10 saniye sonra patlayan hayalet çıkartır"
	-- English: "Isaac's bombs spawn ghosts that chase enemies#Ghosts deal 2x Isaac's damage per second and explode after 10 seconds"

	[C_ID .. 728] = "Isace bağlı olan bir şeytan arkadaş çıkartır#Isaac'in gözyaşlarını, özelliklerini ve efektlerini taklit eder", -- Gello
	-- English: "A demon familiar bursts out of Isaac for the room#The demon shoots towards the nearest enemy, mimicing Isaac's tears, stats and effects#{{Damage}} Its tears deal 75% of Isaac's damage"

	[C_ID .. 729] = "Isaac'in kafasını atar, düştüğü yere ateş edebilir#İtemi tekrar aktive etmek ya da kafanın üstüne basmak kafayı tekrar takar", -- Decap Attack
	-- English: "Throws Isaac's head in a direction#The head deals contact damage and shoots tears from where it lands#Using the item again or stepping on the head reattaches it"

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 15] = "33% şans ile taş kırınca altın düşürür", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks has a 33% chance to spawn a coin"

	[T_ID .. 24] = "Altın toplarken osurur#Osuruklar düşmanı ittirip zehirler", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#{{Poison}} Picking up coins makes Isaac fart, which poisons and knocks back enemies and projectiles"

	[T_ID .. 32] = "Her odada rastgele mantar efekti", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room"

	[T_ID .. 33] = "Hasar alınca yüksek şans ile Gemini arkadaşını çıkartır", -- Umbilical Cord
	-- Full old Desc: "Odaya yarım kırmızı kalp veya daha azı ile girince, little Steven arkadaşı verir#Hasar alınca yüksek şans ile Gemini arkadaşını çıkartır"
	-- English: "{{HalfHeart}} Having half a Red Heart or less grants {{NameC100}}#{{Collectible318}} Taking damage has a high chance to spawn a Gemini familiar for the room"

	[T_ID .. 48] = "Hasar alındığında, odadaki tüm düşmanlara hasar verme şansı#Siyah kalp ve {{Collectible35}} Necronomicon-benzeri efektler iki katı hasar verir", -- A Missing Page
	-- English: "Taking damage has a 5% chance to deal 80 damage to all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[T_ID .. 49] = "25% şans ile altın toplarken yarım kalp düşürür", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 25% chance to spawn a half Red Heart#Higher chance from nickels and dimes"

	[T_ID .. 50] = "25% şans ile altın toplarken bomba düşürür", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 25% chance to spawn a bomb#Higher chance from nickels and dimes"

	[T_ID .. 51] = "25% şans ile altın toplarken anahtar düşürür", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 25% chance to spawn a key#Higher chance from nickels and dimes"

	[T_ID .. 69] = "Rastgele oyuncuya kamuflaj verir#Düşmanların kafasını karıştırır#\"Home\" katına giden kapıyı açmak için kullanılabilir", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies#Can be used to open the "Strange Door" in "Depths II""

	[T_ID .. 92] = "İtemlerinin ↑ Özellik artışı artık 20% daha efektif", -- Cracked Crown
	-- English: "↑ x1.33 Stat multiplier (except fire rate) for the stats that are above 1 {{Speed}} speed, 2.73 {{Tears}} tears, 3.5 {{Damage}} damage, 6.5 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 107] = "<MISSING>", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#{{Warning}} Taking Red Heart damage will reduce Devil/Angel Room chance"

	[T_ID .. 110] = "Dükkanlar artık {{Shop}} The Womb ve Corpse katlarında da çıkar", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb and Corpse"

	[T_ID .. 111] = "Hazine odaları {{TreasureRoom}} The Womb ve Corpse katında da çıkar", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb and Corpse"

	[T_ID .. 119] = "Sonraki kata girerken canını maximum kırmızı canının 50%sine ayarlar#Eğer canın bundan yüksek ise, yarım kırmızı kalp iyileştirir", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half of Isaac's empty Red/Bone Hearts#{{HealingRed}} Heals half a heart minimum"

	[T_ID .. 131] = "Altın toplarken yarım Ruh Kalbi düşürme şansı", -- Blessed Penny
	-- English: "{{HalfSoulHeart}} Picking up a coin has a 17% chance to spawn a half Soul Heart#Higher chance from nickels and dimes"

	[T_ID .. 132] = "Oda için rastgele şırınga efekti alma şansı", -- Broken Syringe
	-- English: "25% chance to get a random syringe effect each room"

	[T_ID .. 133] = "Bırakılan bombalar daha hızlı patlar", -- Short Fuse
	-- English: "Isaac's bombs explode faster"

	[T_ID .. 134] = "Osuruk boyutunu büyütür", -- Gigante Bean
	-- English: "Increases fart size"

	[T_ID .. 136] = "Kapılar, anahtar blokları ve altın kasalar patlamayla açılabilir#Home kapısını açabilir", -- Broken Padlock
	-- English: "Doors, key blocks and golden chests can be opened with explosions#Explosions can also open the "Strange Door" in "Depths II""

	[T_ID .. 137] = "Yeni kata girerken, diğer kattan 4e kadar alınmayan pickuplar başlangıç odasında belirir", -- Myosotis
	-- English: "Entering a new floor spawns up to 4 uncollected pickups from the previous floor in the starting room"

	[T_ID .. 138] = "Aktif itemi kullanmak değişmesine sebep olur", -- 'M
	-- English: "Using an active item rerolls it"

	[T_ID .. 139] = "Şans-bazlı gözyaşı efektleri daha fazla oluşur", -- Teardrop Charm
	-- English: "{{Luck}} +4 Luck towards luck-based tear effects"

	[T_ID .. 140] = "Kırmızı kalp toplamak onları mavi örümceğe çevirebilie#Full can iken bile çalışır#Efekt iyileşme için kullanılabilecek kalpleri kullanabilir", -- Apple of Sodom
	-- English: "Picking up Red Hearts can convert them into blue spiders#Works even while at full health#Effect may consume hearts needed for healing"

	[T_ID .. 141] = "Arkadaşların atış sıklığını arttırır", -- Forgotten Lullaby
	-- English: "2x Fire rate for familiars"

	[T_ID .. 142] = "Her katın başında, 4 Book of Virtues {{Collectible584}} wispi çıkartır", -- Beth's Faith
	-- English: "{{Collectible584}} Entering a new floor spawns 4 Book of Virtues wisps"

	[T_ID .. 144] = "Gözyaşkarı 90 derece döner ve ıskalanan düşmanları vurur", -- Brain Worm
	-- English: "Tears turn 90 degrees to target enemies that they may have missed"

	[T_ID .. 145] = "Hasar aldığında kendini yok eder", -- Perfection
	-- Full old Desc: "↑ +10 Şans#Hasar aldığında kendini yok eder"
	-- English: "Taking damage destroys the trinket"

	[T_ID .. 146] = "Hazine odaları {{TreasureRoom}} artık şeytan tekliflerine sahip olur", -- Devil's Crown
	-- English: "{{RedTreasureRoom}} Treasure Room items are replaced with devil deals"

	[T_ID .. 147] = "Altın toplamarken itemin şarjını doldurma şansı", -- Charged Penny
	-- English: "{{Battery}} Picking up a coin has a 17% chance to add 1 charge to the active item#Higher chance from nickels and dimes"

	[T_ID .. 148] = "Arkadaşların Isaac etrafında dönmesini sağlar", -- Friendship Necklace
	-- English: "All familiars orbit around Isaac"

	[T_ID .. 149] = "Hasar aldığında aktif itemini aktive eder", -- Panic Button
	-- English: "Right before taking damage, uses the active item if it is charged"

	[T_ID .. 150] = "Anahtar gerektiren bir odaya girmek seni Hush alanına benzer bir odaya götürür#Oda iki oda arası gibi davranır", -- Blue Key
	-- English: "Locked doors can be opened for free, but Isaac has to clear a room from the Hush floor before accessing the room behind them"

	[T_ID .. 151] = "Dikenlerin geri girmesini sağlar ve onları zararsız yapar#Lanet odası {{CursedRoom}} kapılarını, mimikleri ve herhangi diken engellerini de etkiler", -- Flat File
	-- English: "Retracts most spikes, rendering them harmless#Also affects {{CursedRoom}} Curse Room doors, mimics and any spike obstacle"

	[T_ID .. 152] = "Planetariumlar artık The Womb içinde de çıkabilir", -- Telescope Lens
	-- Full old Desc: "İkinci bir Planetarium odasının çıkmasını sağlar#Planetariumlar artık The Womb içinde de çıkabilir"
	-- English: "Additional +15% chance if a Planetarium hasn't been entered yet#Planetariums can spawn in the Womb and Corpse"

	[T_ID .. 153] = "Her oda, farklı bir Anne iteminin efektini sağlar", -- Mom's Lock
	-- English: "25% chance for a random Mom item effect each room"

	[T_ID .. 154] = "Yeni bir odaya girildiğinde, geçici bir zat kullanılabilir itemi verir#Çıkarken zar yok olur#2 kulllanılabilir itemin tutulabilmesini", -- Dice Bag
	-- English: "50% chance per new room to grant a single use die consumable item#The die disappears when leaving#The die does not take up a pill/card slot"

	[T_ID .. 155] = "Cathedral katında bir Hazine Odası {{TreasureRoom}} ve Dükkan {{Shop}} oluşmasını sağlar", -- Holy Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Cathedral"

	[T_ID .. 156] = "Bir kalp konteynırı verir#Keeper dahil", -- Mother's Kiss
	-- English: "{{Heart}} +1 Heart container while held"

	[T_ID .. 158] = "Hasar alındığında, Isaac bütün pickuplarını düşürür#(İstisna: Kalpler, Kartlar, Haplar, Runelar)", -- Torn Pocket
	-- English: "Taking damage makes Isaac drop 2 of his coins, keys or bombs#The pickups can be replaced with other variants, such as golden keys, nickels, dimes, etc."

	[T_ID .. 159] = "Bütün kilitli kasalar ekstradan kartlar, haplar veya trinketlar muhafaza eder", -- Gilded Key
	-- Full old Desc: "+1 anahtar#Bütün kasaları kilitli kasalarla depiştirir#Bütün kilitli kasalar ekstradan kartlar, haplar veya trinketlar muhafaza eder#İstisna: Mega Kasa, Eski Kasa"
	-- English: "{{GoldenChest}} Replaces all chests (except Old/Mega) with golden chests#{{GoldenChest}} Golden chests can contain extra cards, pills or trinkets"

	[T_ID .. 160] = "Yeni kata girerken Grab çantası", -- Lucky Sack
	-- English: "{{GrabBag}} Entering a new floor spawns a sack"

	[T_ID .. 161] = "Sheol katında Hazine Odası {{TreasureRoom}} ve Dükkan {{Shop}} çıkmasını sağlar", -- Wicked Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Sheol"

	[T_ID .. 162] = "Yeni odaya girdiğinde Azazele dönüşme şansı", -- Azazel's Stump
	-- English: "{{Player7}} Clearing a room has a 33% chance to turn the player into Azazel#{{Timer}} Effect lasts until clearing and leaving another room"

	[T_ID .. 163] = "Oda temizlendiğinde 2 arkadaş küçük bok yaratır", -- Dingle Berry
	-- English: "All Dip (small poop) enemies are friendly#Clearing a room spawns 1 random Dip"

	[T_ID .. 164] = "Her koyulan bomba için 2 ekstra bomba verir", -- Ring Cap
	-- English: "{{Bomb}} Spawns 1 extra bomb for each bomb placed"

	[T_ID .. 165] = "Womb ve ilerisinde, her düşen pickupı değiştirir#Bomba and Kalpler en yaygınıdır", -- Nuh Uh!
	-- English: "On Womb and beyond, replaces all coin and key spawns with a bomb, heart, pill, card, trinket, battery, or enemy fly"

	[T_ID .. 166] = "Her oda için rastgele pasıf item efekti verir", -- Modeling Clay
	-- English: "50% chance to grant the effect of a random passive item each room"

	[T_ID .. 167] = "Oda temizlendiğinde arkadaş Bony çıkarma şansı", -- Polished Bone
	-- English: "{{Friendly}} Clearing a room has a 25% chance to spawn a friendly Bony"

	[T_ID .. 168] = "Kata girerken +1 kemik kalp konteynırı", -- Hollow Heart
	-- English: "{{EmptyBoneHeart}} Entering a new floor grants +1 Bone Heart"

	[T_ID .. 169] = "Elde iken, Guppy transformasyonuna sayılır", -- Kid's Drawing
	-- English: "{{Guppy}} Counts as 1 item towards the Guppy transformation while held"

	[T_ID .. 170] = "Her oda temizlediğinde Red Key {{Collectible580}} odası oluşturma şansı", -- Crystal Key
	-- English: "{{Collectible580}} Clearing a room has a 33% chance to create a Red Key room#Lower chance to occur when in a red room"

	[T_ID .. 171] = "Şeytan anlaşmaları kalp yerine altın kullanır", -- Keeper's Bargain
	-- English: "{{DevilRoom}} 50% chance for devil deals to cost coins instead of hearts"

	[T_ID .. 172] = "Altın toplarken rastgele bir odaya ışınlan#Gizli odalara ışınlanabilir", -- Cursed Penny
	-- English: "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms"

	[T_ID .. 173] = "{{Warning}} TEK KULLANIM {{Warning}}#Kalp kaybetmeden şeytan anlaşması yapmak için kullanılabilir", -- Your Soul
	-- English: "{{DevilRoom}} Allows Isaac to take 1 Devil Room item for free#{{Warning}} The free Devil deal still affects Angel Room chance"

	[T_ID .. 175] = "Hush dövüşüne açılan yolu açma şansı, oyun süresine bakılmaksızın", -- Strange Key
	-- Full old Desc: "Hush dövüşüne açılan yolu açma şansı, oyun süresine bakılmaksızın#Pandora's Box {{Collectible297}} kullanılırken rastgele havuzlardan 6 item çıkartır"
	-- English: "Opens the door to the Hush floor regardless of the timer#Using {{NameC297}} consumes the key and spawns 6 items from random pools"

	[T_ID .. 176] = "Kan birikmesi arkadaşı çıkartır, Isaac'in hareketlerini ve atış yönünü taklit eder", -- Lil Clot
	-- English: "Spawns a blood clot that mimics Isaac's movement#Copies Isaac's stats, tear effects and 35% of his damage#Respawns each room"

	[T_ID .. 177] = "Challenge odası veya Boss challenge odası tamamlandığında ödül çıkartır", -- Temporary Tattoo
	-- English: "{{Chest}} Clearing a {{ChallengeRoom}} Challenge Room spawns a chest#Clearing a {{BossRushRoom}} Boss Challenge Room spawns an item"

	[T_ID .. 178] = "Oyuncu hasar aldığında patlar", -- Swallowed M80
	-- English: "Taking damage has a 50% chance for Isaac to explode#Doesn't destroy Blood Donation Machines or Confessionals, while spawning pickups as if it did"

	[T_ID .. 179] = "Arkadaşların hareketleri oyuncu tarafından kontrol edilir", -- RC Remote
	-- English: "Familiars mimic Isaac's movement#Hold the drop button ({{ButtonRT}}) to keep the familiars in place"

	[T_ID .. 180] = "Isaac'in hareketlerini takip edip hayalet gözayşı atan arkadaş#Aynı gözyaşı ve efektlere sahip olur", -- Found Soul
	-- English: "Follows Isaac's movement and shoots spectral tears#Copies Isaac's stats, tear effects and 50% of his damage#Uses most active items when Isaac does#Dies in one hit#Respawns each floor"

	[T_ID .. 181] = "Aktif item kullanıldığında rastgele başka bir aktif item efektini de taklit eder", -- Expansion Pack
	-- English: "Using an active item triggers the effect of an additional 1-2 charge active item"

	[T_ID .. 182] = "Katta bir, hasar alındığında wisp {{Collectible584}} yaratır ve dokunulmazlık verir#Melek odasında girildiğinde 5 wisp yaratır#Dılencilere ödeme yapılırken wisp oluşturur", -- Beth's Essence
	-- English: "Entering an {{AngelRoom}} Angel Room spawns 5 wisps#Donating to Beggars has a 25% chance to spawn a wisp"

	[T_ID .. 183] = "Her oda:", -- The Twins
	-- Full old Desc: "Her oda:#Arkadaş yokken: Brother Bobby {{Collectible8}} ve/veya Sister Maggy {{Collectible67}} verme şansı#Arkadaş varken: arkadaşı kopyalama şansı"
	-- English: "50% chance to duplicate a familiar each room#Grants {{NameC8}} or {{NameC67}} if Isaac has no familiars"

	[T_ID .. 184] = "Dükkanlar arkadaş satabilir#Arkadaşlar her zaman indirimde olur", -- Adoption Papers
	-- English: "{{Shop}} Shops sell familiars for 10 coins"

	[T_ID .. 185] = "Düşman öldürürken rastgele bir locust oluşturma şansı", -- Cricket Leg
	-- English: "Killing an enemy has a 17% chance to spawn a random locust"

	[T_ID .. 186] = "{{Throwable}} {{ColorOrange}}Atılabilir{{CR}} (ateş tuşuna çift bas)#Nişan alıp ateş edebileceğin bir atak sineği verir", -- Apollyon's Best Friend
	-- English: "{{Collectible706}} Grants 1 Abyss locust"

	[T_ID .. 187] = "33% şans ile item odalarına ekstra kör item ekler#Alternatif katlardaki kör itemleri gösterir", -- Broken Glasses
	-- English: "{{TreasureRoom}} 50% chance of adding an extra blind item in Treasure Rooms#50% chance to reveal the blind item in alt path Treasure Rooms"

	[T_ID .. 189] = "Düşman öldürüldüğünde 1 saniyelik kalkan aktive eder", -- Sigil of Baphomet
	-- English: "Killing an enemy makes Isaac invincible for 1 second#Invincibility stacks with successive enemy kills"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 18] = "<MISSING>", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room#{{Planetarium}} If there is a Planetarium, it teleports there instead"

	[Card_ID .. 21] = "<MISSING>", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#5% chance for it to be a Key Master, Bomb Bum, Battery Bum, or Rotten Beggar"

	[Card_ID .. 27] = "Bütün pickup, kasa, ve boss olmayan düşmanları bombaya çevirir", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups, chests and non-boss enemies into random bombs"

	[Card_ID .. 28] = "Bütün pickup, kasa, ve boss olmayan düşmanları altına çevirir", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups, chests and non-boss enemies into random coins"

	[Card_ID .. 29] = "Bütün pickup, kasa, ve boss olmayan düşmanları anahtara çevirir", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups, chests and non-boss enemies into random keys"

	[Card_ID .. 30] = "Bütün pickup, kasa, ve boss olmayan düşmanları kalbe çevirir", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups, chests and non-boss enemies into random hearts"

	[Card_ID .. 34] = "<MISSING>", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[Card_ID .. 42] = "<MISSING>", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium or the Beast)"

	[Card_ID .. 51] = "Holy Mantle efekti verir#(Sonrakı alınan hasar 0)#Efekt hasar alana kadar sürer", -- Holy Card
	-- English: "{{HolyMantle}} A one-use Holy Mantle shield (prevents damage once)"

	[Card_ID .. 55] = "Rastgele bir rune efekti aktive eder#Rune efekti daha zayıftır", -- Rune Shard
	-- English: "{{Rune}} Activates a random rune effect#The rune effect is weaker"

	[Card_ID .. 56] = "Bütün kalplerini ve pickuplarını yere bırakır#Sadece yarım kalp kalır#Pickuplar {{Collectible74}} {{Collectible19}} olarak tekrar değişir miktar yetersiz ise", -- 0 - The Fool?
	-- English: "Drops all of Isaac's hearts but one and all of his pickups on the floor#Coins and bombs are dropped as {{Collectible74}} The Quarter or {{Collectible19}} Boom! if possible"

	[Card_ID .. 57] = "Büyük bir ateş ve düşmanları iten bir aura verir#1 dakikalığına", -- I - The Magician?
	-- English: "{{Timer}} Grants an aura that repels enemies and projectiles for 60 seconds"

	[Card_ID .. 58] = "Annenin ayağı 1 dakikalığına sürekli iner", -- II - The High Priestess?
	-- English: "{{Timer}} Mom's Foot tries to stomp Isaac for 60 seconds"

	[Card_ID .. 60] = "Seni ekstra ödülleri olan ekstra bir Boss odasına ışınlar", -- IV - The Emperor?
	-- English: "Teleports Isaac to an extra Boss room that can be defeated for an item#The boss is chosen from two floors deeper than the current one"

	[Card_ID .. 62] = "Odanın havzuzundan rastgele 1 item çıkartır#1 kırmızı kalp konteynırı veya 2 Ruh Kalbini kırık kalbe çevirir", -- VI - The Lovers?
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Converts 1 heart container or 2 Soul Hearts into a Broken Heart"

	[Card_ID .. 63] = "{VAR:TIMEDEFFECT}", -- VII - The Chariot?
	-- Full old Desc: "10 saniyeliğine dokunulmaz bir heykele dönüş#Süre boyunca çok fazla atış sıklığı"
	-- English: "{VAR:TIMEDEFFECT}#Invincible but can't move"

	[Card_ID .. 64] = "2-4 altın kasa çıkartır", -- VIII - Justice?
	-- English: "{{GoldenChest}} Spawns 2-4 golden chests"

	[Card_ID .. 65] = "odadaki pickupları ve itemleri altına çevirir#Coin değerleri dükkan fiyatlarına eşdeğer olur", -- IX - The Hermit?
	-- English: "{{Coin}} Turns all pickups and items in the room into a number of coins equal to their Shop value#If there is nothing to turn, spawns a Penny instead"

	[Card_ID .. 66] = "Rastgele zar odası efekti", -- X - Wheel of Fortune?
	-- English: "{{DiceRoom}} Triggers a random Dice Room effect"

	[Card_ID .. 67] = "Odadaki düşmanlar zayıflar, yavaşlar ve iki katı hasar alır", -- XI - Strength?
	-- English: "{{Timer}} Enemies in the room are {{Slow}} slowed and take double damage for 30 seconds"

	[Card_ID .. 68] = "{VAR:TIMEDEFFECT}#Öldürülen düşmanlar rastgele altın verir", -- XII - The Hanged Man?
	-- Full old Desc: "Oyuncuyu 30 saniyeliğine Keepera dönüştürür#Üçlü atış verir ve hız eksilir#Öldürülen düşmanlar rastgele altın verir"
	-- English: "{VAR:TIMEDEFFECT}#Triple shot#{{Coin}} Killed enemies drop coins"

	[Card_ID .. 69] = "Book of the Dead {{Collectible545}} efekti verir#(her öldürülen düşman için kemik şeyleri çıkartır)", -- XIII - Death?
	-- English: "{{Collectible545}} Activates Book of the Dead#{{Friendly}} Spawns friendly Bone entities for each enemy killed in room"

	[Card_ID .. 70] = "5 rastgele hap efekti uygular", -- XIV - Temperance?
	-- English: "{{Pill}} Forces Isaac to eat 5 random pills"

	[Card_ID .. 71] = "İncil efekti verir {{Collectible33}}#Seraphim {{Collectible390}} arkadaşı verir# 30 Saniyeliğine", -- XV - The Devil?
	-- English: "{{Timer}} Receive for 60 seconds:#{{Collectible33}} Activates The Bible (flight)#{{Collectible390}} Seraphim familiar#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[Card_ID .. 72] = "6 grup rastgele taş ve engel çıkartır", -- XVI - The Tower?
	-- English: "Spawns 7 clusters of random rocks and obstacles#Clusters often contain Tinted Rocks"

	[Card_ID .. 73] = "En eski pasif itemi siler#Odanın havuzundan rastgele 2 item çıkartır", -- XVII - The Stars?
	-- English: "Removes Isaac's oldest collected passive item (ignoring starting items)#Spawns 2 random items from the current room's item pool"

	[Card_ID .. 74] = "Ultra gizli odaya ışınlar#Dönüş yolu kırmızı odalardan oluşacaktır", -- XVIII - The Moon?
	-- English: "{{UltraSecretRoom}} Teleports Isaac to the Ultra Secret Room#Pathway back will be made of red rooms"

	[Card_ID .. 75] = "Curse of Darkness uygular", -- XIX - The Sun?
	-- Full old Desc: "Spirit of the Night {{Collectible159}} efekti verir#↑ +1.5 Hasar# Bulunan kat için #Kırmızı kalpleri kemik kalplerine çevirir, efekt bittiğinde geri döner#Curse of Darkness uygular"
	-- English: "{{Timer}} Receive for the floor:#{VAR:EFFECTLIST}#{{BoneHeart}} Converts heart containers into Bone Hearts (reverts)#{{CurseDarkness}} Curse of Darkness"

	[Card_ID .. 76] = "Stok makinası çıkartır", -- XX - Judgement?
	-- English: "{{RestockMachine}} Spawns a Restock Machine"

	[Card_ID .. 77] = "Sürünme alanına tuzak kapısı çıkartır", -- XXI - The World?
	-- English: "{{LadderRoom}} Spawns a trapdoor to a crawlspace"

	[Card_ID .. 78] = "Tek kullanımlık Red Key {{Collectible580}}", -- Cracked Key
	-- English: "{{Collectible580}} Single-use Red Key"

	[Card_ID .. 80] = "Son kullanılan hap, kart, rune, Ruh taşı veya aktif itemin efektini kopyalar", -- Wild Card
	-- English: "Copies the effect of your most recently used pill, card, rune, soul stone or activated item"

	[Card_ID .. 81] = "Odadaki itemleri değiştirir#1 saniye sonra orjinal formuna döner#Efekt tekrar eder", -- Soul of Isaac
	-- English: "Makes all item pedestals in the room cycle between two different items"

	[Card_ID .. 82] = "Isaaci oda için boyu değişen kırmızı bir auraya sarar#Öldürülen düşmanlar 2 saniye içinde kaybolan kalpler düşürür", -- Soul of Magdalene
	-- English: "{{Timer}} Effect lasts for the room:#{{HalfHeart}} Enemies killed drop half Red Hearts that disappear after 2 seconds"

	[Card_ID .. 83] = "Red Key {{Collectible580}} ile mümkün olan her çıkış için kırmızı oda açar", -- Soul of Cain
	-- English: "Opens all doors in the room#{{Collectible580}} Creates red rooms on every wall possible"

	[Card_ID .. 84] = "Isaaci düşmanların içinden geçip komaya sokabilecek bir hayalete dönüştürür#Birkaç saniye sonra, hepsine saldırır, heder başına hasar bonusu alır", -- Soul of Judas
	-- English: "{{Collectible705}} Activates Dark Arts with a 3 second duration#Temporary ↑ {{Damage}} damage up for every enemy/projectile hit"

	[Card_ID .. 85] = "8 kahverengi havuz ile zehir osuruğu çıkartır#Ardından 7 göt bombası izi bırakır#{VAR:EFFECTLIST}", -- Soul of ???
	-- Full old Desc: "8 kahverengi havuz ile zehir osuruğu çıkartır#Ardından 7 göt bombası izi bırakır#Havuzda durmak ↑ +1.35 Gözyaşı ve ↑ +1 hasar verir"
	-- English: "{{Poison}} Causes 8 poison farts with brown creep, then quickly spawns 7 Butt Bombs#Standing on the creep grants:#{VAR:EFFECTLIST}"

	[Card_ID .. 86] = "14 Dead Bird familiars fly in and attack enemies# Lasts for current room", -- Soul of Eve
	-- English: "{{Timer}} 14 Dead Bird familiars fly in and attack enemies for the room"

	[Card_ID .. 87] = "Turn into a berserk Samson with melee attack for 10 seconds#↑ +0.4 Hız#↑ Gözyaşı#↑ +3 Hasar", -- Soul of Samson
	-- English: "{{Collectible704}} Activates Berserk! for 10 seconds#{{Timer}} Each kill increases the duration by 1 second"

	[Card_ID .. 88] = " 7.5 saniyeliğine Mega Blast {{Collectible441}} aktive eder", -- Soul of Azazel
	-- English: "{{Collectible441}} Fires a Mega Blast beam for 7.5 seconds"

	[Card_ID .. 89] = "Öl ve anında yarım kalp ve biraz dokunulşmazlık zamanı ile tekrar doğ#Ölümcül hasar alındığında item otomatik kullanılır(ekstra can gibi)", -- Soul of Lazarus
	-- English: "Isaac dies and immediately revives at half a heart#This item is automatically used upon taking fatal damage (acts as an extra life)"

	[Card_ID .. 90] = "D6 {{Collectible105}} ve D20 {{Collectible166}} efektlerini aktive eder#Değişen itemler rastgele havuzlardan gelir", -- Soul of Eden
	-- English: "Rerolls item pedestals and pickups in the room#The rerolled items come from random item pools"

	[Card_ID .. 91] = "Oda için öl ve The Lost olarak geri dön", -- Soul of the Lost
	-- English: "{{Player10}} Turns the player into The Lost for the room#Allows taking one {{DevilRoom}} Devil Room item for free#Allows entering the Mausoleum or Gehenna door for free"

	[Card_ID .. 92] = "Rastgele 1 arkadaş ekler", -- Soul of Lilith
	-- English: "Permanently grants a random familiar"

	[Card_ID .. 94] = "15 rastgele locust sineği çıkartır", -- Soul of Apollyon
	-- English: "Spawns 15 random locusts"

	[Card_ID .. 95] = "Oda için The Forgottenı geçici ikinci karakter olarak çıkartır", -- Soul of the Forgotten
	-- English: "{{Player16}} Spawns The Forgotten as a secondary character for the room"

	[Card_ID .. 96] = "Rastgele özelliklerle 6 Book of Virtues {{Collectible584}} wispi çıkar", -- Soul of Bethany
	-- English: "{{Collectible584}} Spawns 6 random Book of Virtues wisps"

	[Card_ID .. 97] = "Oda için Esauyu geçici ikinci karakter olarak çıkartır", -- Soul of Jacob and Esau
	-- English: "{{Player20}} Spawns Esau as a secondary character for the room#He spawns with as many passive items as the player"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 4] = "Bomba ve anahtar sayısını birbirleri ile değiştirir#Altın bomba ve anahtar da değişir", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Golden bombs and keys are also swapped"

	[Pill_ID .. 38] = "<MISSING>", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen for 30 seconds"

	[Pill_ID .. 42] = "Isaaci ve tüm düşmanları yavaşlatır", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. 43] = "Isaaci ve tüm düşmanları hızlandırır#30 ve 60 saniye sonra tekrar aktif olur", -- I'm Excited!!
	-- English: "{{Timer}} Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. 9999] = "Rastgele hap efekti#Birkaç kullanımdan sonra kendini yok eder", -- Golden Pill
	-- English: "Random pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Horse Pills ----------

local HorseID = PillColor.PILL_GIANT_FLAG
local additionalHorsePillInformations = {
	[Pill_ID .. (HorseID + 1)] = "Tüm odayı zehirler", -- Bad Gas
	-- English: "{{Poison}} Poisons the entire room"

	[Pill_ID .. (HorseID + 2)] = "Sana 2 kalp hasar verir", -- Bad Trip
	-- English: "{{Warning}} Deals 2 hearts of damage to Isaac#Becomes a Full Health horse pill (+3 Soul Hearts) at 1 heart or less"

	[Pill_ID .. (HorseID + 4)] = "Bomba ve anahtar sayısını birbirleri ile değiştirir#Anahtar ve bomba sayısını 50% arttırır#Altın bomba ve anahtar da değişir", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Increases bomb and key count by 50%#Golden bombs and keys are also swapped"

	[Pill_ID .. (HorseID + 5)] = "Bulunduğun yerde mega takip eden troll bomba çıkartır", -- Explosive Diarrhea
	-- English: "Spawns a few homing Mega Troll Bombs"

	[Pill_ID .. (HorseID + 11)] = "1 Büyük fan sinek {{Collectible279}} yörüngeci çıkartır#Üst limit yok", -- Pretty Fly
	-- English: "{{Collectible279}} Grants a Big Fan orbital#There is no limit on the number of Big Fans Isaac can have"

	[Pill_ID .. (HorseID + 21)] = "Aktif itemini şarj eder", -- 48 Hour Energy!
	-- Full old Desc: "Aktif itemini şarj eder#Pil düşürür"
	-- English: "{{Battery}} Fully recharges active items"

	[Pill_ID .. (HorseID + 22)] = "1 kalp konteynırı dışında hepsini boşaltır", -- Hematemesis
	-- Full old Desc: "1 kalp konteynırı dışında hepsini boşaltır#Kırmızı kalp çıkartır"
	-- English: "{{EmptyHeart}} Drains all but one heart container"

	[Pill_ID .. (HorseID + 23)] = "4 saniye hareket edemezsin", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 4 seconds"

	[Pill_ID .. (HorseID + 25)] = "Odadaki tüm düşmanları kalıcı arkadaşcıl yapar", -- Pheromones
	-- English: "{{Charm}} Turns every enemy in the room permanently friendly"

	[Pill_ID .. (HorseID + 27)] = "Odayı dolduran düşmanlara hasar veren sarı bir havuz çıkartır", -- Lemon Party
	-- English: "Spawns a puddle of creep the size of a room which damages enemies"

	[Pill_ID .. (HorseID + 28)] = "60 saniye boyunca çapraz ateş et", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 60 seconds"

	[Pill_ID .. (HorseID + 31)] = "4 saniye boyunca yürüyerek bok çıkart", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 10 seconds"

	[Pill_ID .. (HorseID + 32)] = "Kat için Curse of the maze efekti", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. (HorseID + 33)] = "Çok fazla büyürsün#Hitboxına etki etmez", -- One makes you larger
	-- English: "Greatly increases Isaac's size#Doesn't affect his hitbox"

	[Pill_ID .. (HorseID + 34)] = "Çok fazla küçülürsün#Hitboxın da küçülür", -- One makes you small
	-- English: "Greatly decreases Isaac's size#Also decreases his hitbox's size"

	[Pill_ID .. (HorseID + 35)] = "Odadaki her bok için 2 mavi sinek çıkartır", -- Infested!
	-- English: "Spawns 2 blue spiders for each poop in the room"

	[Pill_ID .. (HorseID + 36)] = "Odadaki her düşman için 2 mavi örümcek çıkartır#Odada düşman olmadığında 3-6 mavi sinek çıkartır", -- Infested?
	-- English: "Spawn 2 blue spiders for each enemy in the room#Spawns 2-6 blue spiders if there are no enemies in the room"

	[Pill_ID .. (HorseID + 38)] = "90 Saniyeliğine ekranı pikselleştirir", -- Retro Vision
	-- English: "Pixelates the screen for 90 seconds"

	[Pill_ID .. (HorseID + 40)] = "Uzun süreli kaygan bir havuz çıkartır", -- X-Lax
	-- English: "Spawns a pool of long lasting slippery creep"

	[Pill_ID .. (HorseID + 41)] = "Uzun süreli yavaşlatan bir havuz çıkartır", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of long lasting slowing creep"

	[Pill_ID .. (HorseID + 42)] = "Odadaki tüm düşmanları yavaşlar", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. (HorseID + 43)] = "Odadaki tüm düşmanları hızlandırır", -- I'm Excited!!
	-- English: "Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. (HorseID + 44)] = "Elindeki trinketi ye ve efektini kalıcı olarak kazan", -- Gulp!
	-- English: "Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. (HorseID + 45)] = "Ipecac gözyaşları atar", -- Horf!
	-- English: "{{Collectible149}} Shoots a cluster of Ipecac tears"

	[Pill_ID .. (HorseID + 47)] = "Son kullanılan hapı at hapı olarak çıkartır", -- Vurp!
	-- English: "Spawns the last pill Isaac used as a horse pill"

	[Pill_ID .. (HorseID + 50)] = "↑ Rastgele 1 özelliği iki kere arttır#↓ Rastgele 1 diğer özelliği iki kere azaltır#PHD ile azalmaz", -- Experimental Pill
	-- English: "↑ Increases 1 random stat twice#↓ Decreases 1 random stat twice"

	[Pill_ID .. (HorseID + 9999)] = "Rastgele bir at hapı efekti#Birkaç kullanımdan sonra kendini yok eder", -- Golden Pill
	-- English: "Random horse pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalHorsePillInformations, EID.descriptions[languageCode].AdditionalInformations)
