------------------------------------------------------------------
-----  Basic English descriptions based on Platinumgod.co.uk -----
-----          Translated to Turkish by Çağdaş Salur         -----
------------------------------------------------------------------

-- FORMAT: Item ID | Name| Description
-- '#' = starts new line of text

--Special character markup:
-- ↑ = Up Arrow   |  ↓ = Down Arrow    | ! = Warning
local newDescriptions = {
}

local repCollectibles={
	[5] = {"5", "My Reflection", "Bumerang efekti verır#↑ +1.5 Menzil#↑ +60% ekstra Menzil#↑ +0.6 Gözyaşı hızı#↑ +1 Gözyaşı yüksekliği"}, -- My Reflection
	[6] = {"6", "Number One", "↑ +1.5 Gözyaşı#↓ -1.5 Menzil eksilir#↓ -20% ekstra Menzil eksilir#↑ +0.76 Gözyaşı yüksekliği"}, -- Number One
	[12] = {"12", "Magic Mushroom", "↑ +1 HP#↑ +0.3 Hasar#↑ +50% Hasar çarpanı#↑ +1.5 Menzil#↑ +0.3 Hız#↑ +0.5 Gözyaşı yüksekliği#Full can!"},
	[13] = {"13", "The Virus", "Zehir dokunuşu#↑ +0.2 Hız"}, -- The Virus
	[14] = {"14", "Roid Rage", "↑ +0.3 Hız#↑ +1.5 Menzil#↑ +0.5 Gözyaşı yüksekliği"}, -- Roid Rage
	[18] = {"18", "A Dollar", "+100 Altın"}, -- A Dollar
	[22] = {"22", "Lunch", "↑ +1 HP#Bir kalp iyileştirir"}, -- Lunch
	[23] = {"23", "Dinner", "↑ +1 HP#Bir kalp iyileştirir"}, -- Dinner
	[24] = {"24", "Dessert", "↑ +1 HP#Bir kalp iyileştirir"}, -- Dessert
	[25] = {"25", "Breakfast", "↑ +1 HP#Bir kalp iyileştirir"}, -- Breakfast
	[26] = {"26", "Rotten Meat", "↑ +1 HP#Bir kalp iyileştirir"}, -- Rotten Meat
	[29] = {"29", "Moms Underwear", "↑ +1.5 Menzil#↑ +0.5 Gözyaşı yüksekliği#3-6 Mavi sinek"}, -- Moms Underwear
	[30] = {"30", "Mom's Heels", "↑ +1.5 Menzil#↑ +0.5 Gözyaşı yüksekliği#Dokunulan düşmanlar 12 hasar alır"}, -- Mom's Heels
	[31] = {"31", "Mom's Lipstick", "↑ +2.25 Menzil#↑ +0.5 Gözyaşı yüksekliği#1 Rastgele kalp oluşturur"}, -- Mom's Lipstick
	[40] = {"40", "Kamikaze!", "Oyuncunun bulunduğu yerde büyük bir patlamaya neden olur#185 hasar verır"}, -- Kamikaze!
	[42] = {"42", "Bob's Rotten Head", "Atılabilir zehir bombası#185 + senin hasarını verir#Zehir bulutu oluşturur"}, -- Bob's Rotten Head
	[44] = {"44", "Teleport", "I AM ERROR odası dışında bır odaya ışınlar#İstenilen yonde hareket ederek biraz yön verilebilir"}, -- Teleport
	[45] = {"45", "Yum Heart", "1 kırmızı kalp iyileştirir#Diğer oyuncuları da yarım kalp iyileştirir"}, -- Yum Heart
	[46] = {"46", "Lucky Foot", "↑ +1.0 Şans#Kumarda daha çok kazanma şansı#Oda ödülünü arttırır#Bazı kötü hapları iyiye çevirir"}, -- Lucky Foot
	[53] = {"53", "Magneto", "Pick-upları kendine çeker#Kasaları uzaktan açabilir, dikenli kasaları hasarsız açar"}, -- Magneto
	[55] = {"55", "Mom's Eye", "Arkaya gözyaşı atma şansı"}, -- Mom's Eye
	[62] = {"62", "Charm of the Vampire", "↑ +0.3 Hasar#Öldürülen her 13 düşman için yarım kalp iyileştirir"}, -- Charm of the Vampire
	[64] = {"64", "Steam Sale", "Dükkan itemlerinde -50%#Bu item tekrar alındığında fiyatlar daha da düşer"}, -- Steam Sale
	[67] = {"67", "Sister Maggy", "Normal gözyaşı arkadaşı#Gözyaşı başına 6 hasar verir"}, -- Sister Maggy
	[70] = {"70", "Growth Hormones", "↑ +1.0 Hasar#↑ +0.2 Hız"}, -- Growth Hormones
	[71] = {"71", "Mini Mush", "↑ +0.3 Hız#↑ +1.5 Menzil#↑ Küçülme"}, -- Mini Mush
	[72] = {"72", "Rosary", "+3 Ruh Kalbi#↑ 0.5 Gözyaşı#İncil daha yaygın"}, -- Rosary
	[77] = {"77", "My Little Unicorn", "Dokunulmazlık#20 dokunma hasarı"}, -- My Little Unicorn
	[79] = {"79", "The Mark", "↑ +1.0 Hasar#↑ +0.2 Hız#+1 Siyah kalp"}, -- The Mark
	[80] = {"80", "The Pact", "↑ +0.5 Hasar#↑ +0.7 Gözyaşı#+2 Siyah kalp"}, -- The Pact
	[83] = {"83", "The Nail", "+ Yarım Siyah kalp#↑ +2.0 Hasar#↓ -0.18 Hız eksilir#Dokunma hasarı#Taşları ezer"}, -- The Nail
	[98] = {"98", "The Relic", "Her 7-8 odada Ruh kalbi yaratır"}, -- The Relic
	[101] = {"101", "The Halo", "↑ +1 HP#↑ +0.3 Hasar#↑ +0.2 Gözyaşı#↑ +0.38 Menzil#↑ +0.3 Hız#↑ +0.5 Gözyaşı yüksekliği"}, -- The Halo
	[106] = {"106", "Mr. Mega", "↑ Bomba hasarı x1.85#+5 Bomba"}, -- Mr. Mega
	[110] = {"110", "Mom's Contacts", "Donduran gözyaşı atma şansı#↑ +0.38 Menzil#↑ +0.5 Gözyaşı yüksekliği"}, -- Mom's Contacts
	[121] = {"121", "Odd Mushroom (Large)", "↑ +1 Boş kalp konteynırı#↑ +1.0 Hasar#↑ +0.38 Menzil#↓ -0.2 Hız eksilir#↑ +0.5 Gözyaşı yüksekliği"}, -- Odd Mushroom (Large)
	[123] = {"123", "Monster Manual", "Rastgele bir arkadaş verir#Kat boyunca sürer"}, -- Monster Manual
	[129] = {"129", "Bucket of Lard", "↑ +2 kalp konteynırı#↓ -0.2 Hız eksilir#Yarım kalp iyileştirir"}, -- Bucket of Lard
	[138] = {"138", "Stigmata", "↑ +1 HP#↑ +0.3 Hasar#1 Kalp iyileştirir"}, -- Stigmata
	[139] = {"139", "Mom's Purse", "Artık 2 trinket tutabilirsin#1 rastgele trinket oluşturur"}, -- Mom's Purse
	[140] = {"140", "Bob's Curse", "Zehir bombası#+5 bomba#bombalar zehir bulutu bırakır"}, -- Bob's Curse
	[147] = {"147", "Notched Axe", "Taşları kırar ve kullanıldığında düşmana hasar verir#Baltayı kullandıkça sarjı azalır#Şarjı kat inerken tekrar dolar"}, -- Notched Axe
	[148] = {"148", "Infestation", "Hasar aldığında 2-6 sinek yaratır"}, -- Infestation
	[149] = {"149", "Ipecac", "Patlayan zehir gözyaşları#↑ +40 Hasar#↓ -0.2 Gözyaşı hızı eksilir#↓ Gözyaşı azalır"}, -- Ipecac
	[152] = {"152", "Technology 2", "Permanent laser attack!#Laser deals 13% of your hasar#↓ Gözyaşı azalır 33%"}, -- Technology 2
	[158] = {"158", "Crystal Ball", "Haritanın tamamını açar#Rastgele kart veya ruh kalbi yaratır#Elde iken:#↑ +15% Planetorium şansı#100% hazine odası atlanırsa"}, -- Crystal Ball
	[171] = {"171", "Spider Butt", "4 saniyeliğine düşmanlkarı yavaşlatır#Tüm düşmanlara 10 hasar#Bununla öldürülen düşmanlar mavi örümcek yaratır"}, -- Spider Butt
	[176] = {"176", "Stem Cells", "↑ +1 HP#↑ +0.16 Gözyaşı hızı#1 Kalp iyileştirir"}, -- Stem Cells
	[178] = {"178", "Holy Water", "{{Throwable}} {{ColorOrange}}Atılabilir{{CR}}#Atılan yerde havuz oluşturur"}, -- Holy Water
	[182] = {"182", "Sacred heart", "Balistik gözyaşı#↑ +1 HP#↑ 230% + 1 Hasar#↓ -0.4 Gözyaşı azalır#↓ -0.25 Atış hızı eksilir#↑ +0.5 Menzil"}, -- Sackırmızı kalp
	[184] = {"184", "Holy Grail", "Uçuş sağlar#↑ +1 HP#1 Kalp iyileştirir"}, -- Holy Grail
	[188] = {"188", "Abel", "Hareketini aynalar#Oyuncuya doğru ateş eder#Gözyaşı başına 3.5 hasar #7.5 Hasar Cain ile oynarken"}, -- Abel
	[192] = {"192", "Telepathy for Dummies", "Balistik gözyaşı oda için#↑ +3 Menzil"}, -- Telepathy for Dummies
	[193] = {"193", "MEAT!", "↑ +1 HP#↑ +0.3 Hasar#1 Kalp iyileştirir"}, -- MEAT!
	[194] = {"194", "Magic 8 Ball", "↑ +0.16 Gözyaşı hızı#+1 kart#+15% Planetarium şansı"}, -- Magic 8 Ball
	[197] = {"197", "Jesus Juice", "↑ +0.5 Hasar#↑ +0.38 Menzil.#↑ +0.5 Gözyaşı yüksekliği"}, -- Jesus Juice
	[203] = {"203", "Humbling Bundle", "pickupların çift olan versiyonunu düşürme şansı"}, -- Humbling Bundle
	[205] = {"205", "Sharp Plug", "- yarım kalp = kullanıldığında itemin sarjını 1 doldurur"}, -- Sharp Plug
	[206] = {"206", "Guillotine", "↑ +1 Hasar#↑ +0.33 Gözyaşı#Kafan artık etrafında döner#Kafadan ateş edersin#Kafa 105 dokunma hasarı verir"}, -- Guillotine
	[211] = {"211", "Spider Baby", "Hasar alınca 3-5 mavi örümcek yaratır"}, -- Spider Baby
	[214] = {"214", "Anemic", "↑ +1.5 Menzil#Can azaldığında yerde havuz bırakır"}, -- Anemic
	[218] = {"218", "Placenta", "↑ +1 HP#1 Kalp iyileştirir#Zamanla kalplerini doldurur"}, -- Placenta
	[224] = {"224", "Cricket's Body", "↓ -20% Menzil eksilir#Gözyaşları temasta 4e ayrılır#Ayrılan gözyaşları yarım hasar verir#↑ -1 gözyaşı gecikmesi maksimum limiti geçebilir"}, -- Cricket's Body
	[228] = {"228", "Mom's Perfume", "Korku gözyaşları atma şansı#↑ -1 gözyaşı gecikmesi maksimum limiti geçebilir"}, -- Moms Perfume
	[230] = {"230", "Abaddon", "↑ +1.5 Hasar#↑ +0.2 Hız#Korku gözyaşları#Bütün kalp konteynırlarını siyah kalbe çevirir#+2 Siyah kalp"}, -- Abaddon
	[232] = {"232", "Stop Watch", "Düşmanlar için kalıcı yavaşlatma efekti#↑ +0.3 Hız"}, -- Stop Watch
	[240] = {"240", "Experimental Treatment", "↑ 4 Rastgele özellik artışı ve ↓2 düşüşü"}, -- Experimental Treatment
	[245] = {"245", "20/20", "Gözyaşlarını ikiye katlar#↓ -25% Hasar"}, -- 20/20
	[248] = {"248", "Hive Mind", "Mavi örümcekler/sinekler iki katı hasar verir#Örümcek/Sinek bazlı arkadaşlar güçlenir"}, -- Hive Mind
	[253] = {"253", "Magic Scab", "↑ +1 Şans#↑ +1 HP#1 Kalp iyileştirir"}, -- Magic Scab
	[254] = {"254", "Blood Clot", "↑ +1 Hasar#↑ +1.5 Menzil#!!! Sadece sol gözü etkiler"}, -- Blood Clot
	[256] = {"256", "Hot Bomb", "Yanan bomba#+5 bomba##Ateşten artık hasar almazsın#bomba dokunma hasarı verir"}, -- Hot Bomb
	[261] = {"261", "Proptosis", "↑ +0.5 Hasar#↓ Hasar gözyaşı havada kaldıkça artar#Sıfır mesafede 300% Hasar"}, -- Proptosis
	[262] = {"262", "Missing Page 2", "+1 Siyah kalp#1 kalbe düştüğünde odadaki canavarlara hasar verır#Siyah kalp ve Necronomicon efekti iki katı hasar verir"}, -- Missing Page 2
	 
	[263] = {"263", "Clear Rune", "Eldeki rune ve ruh taşı efektini kopyalar#Alındığında 1 rune düşürür"}, -- Clear Rune   (REPENTANCE ITEM)
	 
	[273] = {"273", "Bob's Brain", "Atılabilir bomba arkadaşı#Patlama 100 hasar verir#Hasar kalkanı görmezden gelir"}, -- Bob's Brain
	[274] = {"274", "Best Bud", "Hasar alındığında, orta menzil yörünge arkadaşı verir#Yörünge arkadaşı saniyede 150 hasar verir"}, -- Best Bud
	[275] = {"275", "Lil Brimstone", "Brimstone lazeri atar#Tik başına 2 hasar verir, toplamda 20 hasar"}, -- Lil Brimston
	[276] = {"276", "Isaac's Heart", "Dokunulmaz vücut kazan#!!! Kalp arkadaşı hasar aldığında sen hasar alırsın#Arkadaş ateş ederken sarjı dolar ve gözyaşı grubu atar"}, -- Isaac's Heart
	[278] = {"278", "Dark Bum", "!!! Çevir:#1,5 kırmızı kalbı 1 Ruh/Siyah kalp, örümcek, hap, kart veya rune"}, -- Dark Bum
	[280] = {"280", "Sissy Longlegs", "Düşmanlı odalarda rastgele mavi örümcek yaratır#Temas ettiği düşmanları aşık eder"}, -- Sissy Longlegs
	[283] = {"283", "D100", "Bütün itemleri, statları, pickupları ve eldeki pasif itemleri değiştirir.#Odadaki rastgele 1 pickupı çift yapar#Odayı tekrar başlatır, düşmanları değiştirip tekrar yaratır.#Odadaki taşları değiştirir"}, -- D100
	[285] = {"285", "D10", "Odadaki düşmanları değiştirir#Benzer HP sahibi düşmanlarla değiştirmeye çalışır"}, -- D10
	[287] = {"287", "Book of Secrets", "Kullanıldığında kat için {{Collectible54}}Hazine harıtası, {{Collectible21}}Pusula or {{Collectible246}}Mavi harita efekti verir#Sadece elde olmayan harita efeklerini verir#Bütün efektler aktif ise, {{Collectible76}}X-Ray vizyonu verir"}, -- Book of Secrets
	[288] = {"288", "Box of Spiders", "4-8 mavi örümcek verir"}, -- Box of Spiders
	[289] = {"289", "Red Candle", "Kırmızı ateş atar#Ateş 5 defa 23 hasara verene veya 10 saniye sonra söner"}, -- Red Candle
	[291] = {"291", "Flush!", "!!! Bok düşmanlarını ve bosslarını anında öldürür!#Düşmanları boka çevirir#Ateşleri söndürür#Lava çukurlarını yürünebilen zemine çevirir"}, -- Flush!
	[292] = {"292", "Satanic Bible", "+1 Siyah kalp#Boss savaşından önce kullanıldığında, boss itemini şeytan anlaşmasına çevirir"}, -- Satanic Bible
	[294] = {"294", "Butter Bean", "Yakın düşman ve gözyaşlarını ittirir#Engele ittirilen düşmanlara 10 hasar verir"}, -- Butter Bean
	[295] = {"295", "Magic Fingers", "Bütün odaya oyuncu hasarı x 2 + 10 hasar verir. #Fiyat: 1 altın"}, -- Magic Fingers
	[296] = {"296", "Converter", "!!! Çevir:#1 Ruh/Siyah kalp -> 1 kırmızı kalp"}, -- Converter
	[297] = {"297", "Pandora's Box", "!!! TEK KULLANIM !#!!! Bulunan kata gore farklı şeyler düşürür:#B1: 2 Ruh Kalbi#B2: 2 anahtar ve bomba#C1: 1 Boss itemi#C2: B1+C1#D1: 4 Ruh Kalbi#D2: 20 Altın#W1: 2 Boss itemi#W2: İncil#Sheol: 1 Şeytan itemi + Siyah kalp#Cat: 1 Melek itemi + Ruh kalbi#Chest: 1 Altın#Home: Kırmızı anahtar"}, -- Pandora's box
	[300] = {"300", "Aries", "↑ +0.25 Hız#Dokunulan düşmanlar hasar görür#Yeterince hızlı koşmak dokunma hasarından korur"}, -- Aries
	[307] = {"307", "Capricorn", "↑ +1 Kalp / Anahtar / Bomba / Altın#↑ +0.5 Hasar#↑ +0.1 Hız#↑ +0.75 Menzil#↑ -1 gözyaşı gecikmesi maksimum limiti geçebilir"}, -- Capricorn
	[308] = {"308", "Aquarius", "Arkada akıntı bırakır#Akıntı saniyede hasarının 66%sını verir #Akıntı gözyaşı efekleri ile sinerji olur"}, -- Aquarius
	[314] = {"314", "Thunder Thighs", "↑ +1 HP#↓ -0.4 Hız eksilir#1 Kalp iyileştirir#Üzerinden yürürken taşları yok eder"}, -- Thunder Thighs
	[315] = {"315", "Strange Attractor", "Manyetik gözyaşları#Düşmanları, pickupları ve trinketleri etkiler#İtemler gözyaşının düştüğü yere çekilir"}, -- Strange Attractor
	[320] = {"320", "???'s Only Friend", "Kontrol edilebilen sinek#tik başına 3.5 dokunma hasarı verir"}, -- ???'s Only Friend
	[326] = {"326", "Breath of Life", "Dokunulmazlık için şarj barı bitene kadar boşluğa bas#Dokunulmaz iken dokunan düşmanlara ışık hüzmeleri iner#!!! Uzun süre basılı tutma!"}, -- Breath of Life
	[328] = {"328", "The Negative", "↑ +1.0 Hasar#:Yarım veya sıfır kırmızı kalp ile hasar alındığında odadaki bütün düşmanlara hasar verir"}, -- The Negative
	[330] = {"330", "Soy Milk", "↑ Çok fazla gözyaşı: (atış sıklığı x 5.5)#↓ -80% Hasar düşürür#Gözyaşı ittirmesini çok düşürür"}, -- Soy Milk
	[331] = {"331", "Godhead", "Balistik gözyaşı#↑ +0.5 Hasar#↑ +0.5 Menzil#↓ -0.3 Gözyaşı azalır#↓ -0.3 Atış hızı eksilir#↑ +0.8 Gözyaşı yüksekliği#Göz yaşları hasar veren auraya sahip olur"}, -- Godhead
	[336] = {"336", "Dead Onion", "Delici + hayalet gözyaşları#↓ -1.5 Menzil eksilir#↓ -0.4 Atış hızı eksilir#↑ +50% Gözyaşı boyu"}, -- Dead Onion
	[339] = {"339", "Safety Pin", "↑ +1.5 Menzil#↑ +0.16 Gözyaşı hızı#+1 Siyah kalp#↑ +0.5 Gözyaşı yüksekliği"}, -- Safety Pin
	[342] = {"342", "Blue Cap", "↑ +1 HP#↑ +0.7 Gözyaşı#↓ -16% Atış hızı eksilir#2 kırmızı kalp iyileştirir"}, -- Blue Cap
	[344] = {"344", "Match Book", "+1 Siyah kalp#2-3 Bomba pickupı yaratır#Kibrit {{Trinket41}} trinketi yaratır"}, -- Match Book
	[345] = {"345", "Synthoil", "↑ +1.0 Hasar#↑ +1.5 Menzil#↑ +0.5 Gözyaşı yüksekliği"}, -- Synthoil
	[346] = {"346", "A Snack", "↑ +1 HP#1 Kalp iyileştirir"}, -- A Snack
	[350] = {"350", "Toxic Shock", "Her odaya girildiğinde düşmanlar zehir efekti alır#Zehir bulutuna bağışıklık"}, -- Toxic Shock
	[352] = {"352", "Glass Canon", "Büyük bir delici gözyaşı atar. ((HASAR+1) X 10)#Hasar aldığında:#↓Alınan her hasar 2 tam kalğ götürür#↑+ 1.5 Menzil"}, -- Glass Canon
	[355] = {"355", "Mom's Pearl", "↑ +0.38 Menzil#↑ +1 Şans#+1 Ruh kalbi#↑ +0.5 Gözyaşı yüksekliği"}, -- Mom's Pearl
	[360] = {"360", "Incubus", "Özellik ve efekt olarak isaacin gözyaşlarının aynısını atar.#Lilith ile oynarken hasarının 100%ünü verir#Başka karakterle hasarının 75%ini verir"}, -- Incubus
	[366] = {"366", "Scatter bomba", "+5 bomba#Bombanın 4-5 küçük bombaya ayrılmasını sağlar"}, -- Scatter bomba
	[369] = {"369", "Continuum", "↑ +3.0 Menzil#↑ +1.5 Gözyaşı yüksekliği#Gözyaşları duvardan geçer ve karşı duvardan çıkar."}, -- Continuum
	[370] = {"370", "Mr. Dolly", "↑ +0.7 Gözyaşı#↑ +1.5 Menzil#↑ +0.5 Gözyaşı yüksekliği#Alındığında rastgele 3 kalp yaratır"}, -- Mr. Dolly
	[372] = {"372", "Charged Baby", "Mikro batarya düşürme ya da odadaki tüm düşmanları dondurma şansı#Aktif itemine 1 sarj ekleme şansı"}, -- Charged Baby
	[374] = {"374", "Holy Light", "Kutsal gözyaşı atma şansı, vurduğunda ışık hüzmesi oluşturur#Hüzme hasarının 3 katını verir"}, -- Holy Light
	[375] = {"375", "Host hat", "20% şansla gözyaşı bloklama#Patlama bağışıklığı verir"}, -- Host hat
	[376] = {"376", "Restock", "Dükkanlar alınan itemlerin stoğunu yeniler#İtemler tekrar geldiğinde fiyatları artar"}, -- Restock
	[382] = {"382", "Friendly Ball", "Düşmanları yakalamak için düşmanlara atılabilir#Sonraki kullanım yakalanan düşmanı dost olarak verir#Kullanıldıktan sonra topun üstüne yürümek itemin anında şarj olmasını sağlarW"}, -- Friendly Ball
	[384] = {"384", "Lil Gurdy", "Fırlar ve odada kayar#Dokunma başına şarj süresine bağlı olarak 5-20 dokunma hasarı verir"}, -- Lil Gurdy
	[389] = {"389", "Rune Bag", "Her 7-8 odada bir rastgele rune düşürür.#Ruh kalbi de düşürebilir"}, -- Rune Bag
	[393] = {"393", "Serpent`s Kiss", "Zehir gözyaşı atma şansı#Dokunulan düşmanları zehirler#Dokunma zehiri ile öldürülen düşmanlar 20% şans ile siyah kalp düşürür"}, -- Serpent`s Kiss
	[394] = {"394", "Marked", "Oyuncu tarafından kontrol edilen kırmızı hedefe doğru gözyaşları atar#↑ +0.7 Gözyaşı#↑ +3.0 Menzil#↑ +0.3 Gözyaşı yüksekliği#Arkadaşlar da hedefe doğru ateş eder"}, -- Marked
	[395] = {"395", "Tech X", "Şarj edip lazer halkası atma özelliği verir#Hasar şarj miktarina göre değişir#Full şarjda 100% hasar"}, -- Tech X
	[397] = {"397", "Tractor Beam", "Isaac'in gözyaşları tam karşısında oluşan ışık hüzmesinde hareket eder#↑ +0.5 Gözyaşı#↑ +1.5 Menzil#↑ +0.16 Gözyaşı hızı#↑ +0.5 Gözyaşı yüksekliği"},
	[399] = {"399", "Maw of the Void", "3 saniye boyunca gözyaşı attıktan sonra Isaac'in kafasında kırmızı çarpı oluşur. Ateş butonu bırakıldığında, siyah brimstone halkaı oluşturur"}, -- Maw of the Void
	[401] = {"401", "Explosivo", "Yapışkan bomba gözyaşları atma şansı#Yapışkan gözyaşları periyodik olarak hasar verir"}, -- Explosivo
	[404] = {"404", "Farting Baby", "Gözyaşlarını bloke eder#Vurulursa osurur, düşmanları aşık eder, zehirler veya ittirir#Osuruklar 5-6 hasar verir"}, -- Farting Baby
	[405] = {"405", "GB Bug", "{{Throwable}} {{ColorOrange}}Atılabilir{{CR}} (ateş tuşuna çift bas)#Temas ettiği düşmanları ve pickupları değiştirir.değiştirir"}, -- GB Bug
	[407] = {"407", "Purity", "↑ Etrafındaki auranın rengine göre bir özelliğini yükseltir#Hasar aldığında yeni aura gelir#{{ColorRed}}Kırmızı{{CR}} = +4.0 Hasar#{{ColorBlue}}Mavi{{CR}} = -4 Gözyaşı gecikmesi#{{ColorYellow}}Sarı{{CR}} = +0.5 Hız#{{ColorOrange}}Turuncu{{CR}} = +3.0 Menzil, +1 Gözyaşı yüksekliği"},
	[408] = {"408", "Athame", "Hasar aldığında etrafında siyah brimstone halkası oluşur."}, -- Athame
	[416] = {"416", "Deep Pockets", "Eğer oda ödül vermediyse 1-3 altın oluşturur.#Altın limitini 999a çıkartır"}, -- Deep Pockets
	[417] = {"417", "Succubus", "Hasar veren aura ile oda etrafında dolaşır, her saniye 7.5-10 hasar verir#↑ auranın içinde iken +50% hasar"}, -- Succubus
	[421] = {"421", "Kidney Bean", "Yakındaki düşmanları aşık eder"}, -- Kidney Bean
	[426] = {"426", "Obsessed Fan", "Hareketlerini 0.66 saniye gecikme ile takip eder#Saniyede 30 dokunma hasarı verir"}, -- Obsessed Fan
	[430] = {"430", "Papa Fly", "Hareketlerini 0.66 saniye gecikme ile takip eder#Yakındaki düşmanlara senin hasarına eşit güçte gözyaşı atar"}, -- papa Fly
	[431] = {"431", "Multidimensional Baby", "Hareketlerini 0.66 saniye gecikme ile takip eder#İçinden geçen gözyaşları parçalara ayrılıp hızlanır"},
	[437] = {"437", "D7", "Odadaki tüm düşmanları değiştir#Oda sonu ödüllerini tekrar tekrar almanı sağlayabilir"}, -- D7
	[440] = {"440", "Kidney Stone", "Ateş ederken rastgele olarak atmayı bırakıp gözyaşlarını grup halinde atar ve böbrek taşı atar."}, -- Kidney Stone
	[442] = {"442", "Dark Princes Crown", "!!! 1 full kırmızı kalpte iken:#↑ +1.5 Menzil#↑ +2.0 Gözyaşı#↑ +0.2 Gözyaşı hızı#(kırmızı kalp sahibi olamayan karakterlerde işe yaramaz)"}, -- Dark Princes Crown
	[444] = {"444", "Lead Pencil", "Atılan her 15 gözyaşında grup gözyaşı atar"}, -- Lead Pencil
	[448] = {"448", "Shard of Glass", "Kırmızı kalp hasarı alındığında, kırmızı gözyaşları tükür#Atış tuşları ile yönü kontrol et#Aktif iken, her 20 saniyede yarım kalp hasarı verir#Kanamayı durdurmak için kırmızı kalp doldur"}, -- Shard of Glass
	[451] = {"451", "Tarot Cloth", "Alındığında rastgele kart veya rune düşür#Bazı kartlara iki katı güç efekti verir"}, -- Tarot Cloth
	[453] = {"453", "Compound Fracture", "Kemik gözyaşları#Gözyaşları vurduğunda 1-3 küçük kemik parçalarına ayrılır#↑ +0.38 Menzil#↑ +1.0 Gözyaşı yüksekliği"}, -- Compound Fracture
	[455] = {"455", "Dad's Lost Coin", "↑ +0.38 Menzil#Şanslı penny düşürür"},
	[456] = {"456", "Midnight Snack", "↑ +1 HP#1 Kalp iyileştirir"}, -- Midnight Snack
	[464] = {"464", "Glyph of Balance", "+2 Ruh Kalbi#Şampiyon düşmanlar ve oda ödülleri daha yaygın olur#Düşen pickupların önceliği oyuncunun eksiklerine öncelikli olarak gelir"}, -- Glyph of Balance
	[472] = {"472", "King Baby", "Diğer arkadaşlar bunu takip eder ve otomatik olarak düşmana ateş eder.#Sen ateş ederken hareket etmeyi bırakır#Sen ateş etmeyi bıraktığında yanına ışınlanır"}, -- King Baby
	[474] = {"474", "broken Glass Canon", "Kullanıldığında glass cannon itemine dönüşür"}, -- broken Glass Canon
	[489] = {"489", "D Infinity", "Her kullanımda rastgele zar efekti#Düşürme tuşuyla zarlar arasında geçir yapar"}, -- D Infinity
	[491] = {"491", "Acid Baby", "Her 7 odada rastgele bir hap düşürür#Hap kullanmak odadaki tüm düşmanların zehirlenmesine neden olur"}, -- Acid Baby
	[493] = {"493", "Adrenaline", "Her boş kalp konteynırı için:#↑ Hasar hesabı ((2 * BoşYarımKalp) ^ 1.6) * 0.1"}, -- Adrenaline
	[494] = {"494", "Jacobs Ladder", "Gözyaşları çarptığında elektrik çıkartır#Elektrik hasarının yarısı kadar hasar verir#Elektrik düşmandan düşmana geçebilir"}, -- Jacobs Ladder
	[503] = {"503", "Little Horn", "Big Horn eli çıkartacak gözyaşı atma şansı#El düşmanları anında yok eder ve bosslara hasar verir#Düşmanların üzerine koşmak onlara 3.5 hasar verir"}, -- Little Horn
	[504] = {"504", "Brown Nugget", "Düşmanlara ateş eden bir sinek çıkartır#Her atış 3.5 hasar verir"}, -- Brown Nugget
	[509] = {"509", "Bloodshot Eye", "Orbital that shoots a tear every 1/3rd second when enemy is nearby#Gözyaşı başına 3.5 hasar verir#Saniyede 30 dokunma hasarı"}, -- Bloodshot Eye
	[523] = {"523", "Moving Box", "Kullanıldığında, odada 10 pickupa kadar içinde saklayabilir#Tekrar kullanıldığında hepsini yere çıkartır#Odalar arasında eşya taşımak için kullanılabilir"}, -- Moving Box
	[524] = {"524", "Technology Zero", "Gözyaşları elektrik ile bağlanır#Elektrik hasarı senin hasarının 1/3üne eşit olur"}, -- Technology Zero
	[531] = {"531", "Haemolacria", "Gözyaşları yüksekten uçar#Gözyaşları değdiğinde küçük parçalara ayrılır#↓ Gözyaşı azalır#↑ +50% Hasar#↑ +1 ekstra Hasar"}, -- Haemolacria
	[541] = {"541", "Marrow", "+1 Kemik kalp#3 kırmızı kalp oluşturur#Kemik kalp bittiğinde {{Trinket167}} Polished Bone trinketi oluşturma şansı"}, -- Marrow
	[543] = {"543", "Hallowed Ground", "Hasar aldığında beyaz bok düşürür#(Beyaz bok ↑ Gözyaşı ve Hasar aurası, Balistik gözyaşı ve hasar bloklama)"}, -- Hallowed Ground
	
	[553] = {"553", "Mucormycosis", "Yapışkan spor gözyaşları atma şansı#Sporlar 2.5 saniye sonra patlar, hasar verir, yakın düşmanları zehirler ve daha fazla spor salar"}, --  Mucormycosis
	[554] = {"554", "2Spooky", "Etrafındaki küçük çaptaki düşmanları korkutur"}, --  2Spooky
	[555] = {"555", "Golden Razor", "Oda için 5 Altını +1.2 Hasara çevirir"}, --  Golden Razor
	[556] = {"556", "Sulfur", "Oda için Brimstone {{Collectible118}} sağlar"}, --  Sulfur
	[557] = {"557", "Fortune Cookie", "Fal, Ruh kalbi, Tarot veya trinket verir"}, --  Fortune Cookie
	[558] = {"558", "Eye Sore", "Rastgele yönlerde 1-2 ekstra gözyaşı atma şansı"}, --  Eye Sore
	[559] = {"559", "120 Volt", "Yakın düşmanları sürekli çarpar#Elektrik hasarının 75%ini verir"}, --  120 Volt
	[560] = {"560", "It Hurts", "Hasar alınğında 10 gözyaşından bir çember oluşturur#↑ İlk hasar için +1.2 Gözyaşı#↑ Her ekstra hasar için +0.4 gözyaşı"}, --  It Hurts
	[561] = {"561", "Almond Milk", "↑ Atış sıklığı x 4#↓ hasar x 0.3#Gözyaşları rastgele solucan efektine sahip olur"}, --  Almond Milk
	[562] = {"562", "Rock Bottom", "Oyun boyunca özelliklerin azalmasına engel olur"}, --  Rock Bottom
	[563] = {"563", "Nancy Bomb", "+5 bomba#bomba rastgele bomba efektiyle patlar"}, --  Nancy Bomb
	[564] = {"564", "A Bar of Soap", "↑ +0.5 Gözyaşı#↑ +0.2 Gözyaşı hızı"}, --  A Bar of Soap
	[565] = {"565", "Blood Puppy", "Düşmanları kovalayan arkadaş#Yeterince düşman öldürdüğünde daha güçlenir fakat sana da zarar vermeye çalışır#Ona saldırmak normale dönmesine sebep olur"}, --  Blood Puppy
	[566] = {"566", "Dream Catcher", "Kata girerken +1 yarım ruh kalbi#İlerideki İtem odası ve boss itemini kat değişim kabusunda gösterir"}, --  Dream Catcher
	[567] = {"567", "Paschal Candle", "Hasar almadan temizlenen her oda için ↑ +0.4 Gözyaşı#5 defaya kadar üst üste biner"}, --  Paschal Candle
	[568] = {"568", "Divine Intervention", "Ateş tuşuna çift basmak kalkan yaratır#Kalkan 1 saniye dayanır, düşmanları uzağa iter, gözyaşlarını ve lazerleri  yansıtır"}, --  Divine Intervention
	[569] = {"569", "Blood Oath", "Her kat başlangıcında seni bıçaklar, yarım kırmızı kalp dışında bütün kırmızı kalpleri götürür#Kat için şu özellikleri arttırır:#↑ hasar + 0.15 * GidenKalp^2#↑ Speed + 0.05*GidenKalp"}, --  Blood Oath
	[570] = {"570", "Playdough Cookie", "Farklı efektlerle çeşitli renklerde gözyaşı sağlar"}, --  Playdough Cookie
	[571] = {"571", "Orphan Socks", "Yer sıvısı ve dikenlerinden koruma sağlar#↑ +0.3 Hız#↑ +2 Ruh Kalbi"}, --  Orphan Socks
	[572] = {"572", "Eye of the Occult", "Kontrol edilebilen gözyaşlar#↑ +1 Hasar#↑ +7.5 Menzil#↓ -0.16 Atış hızı eksilir"}, --  Eye of the Occult
	[573] = {"573", "Immaculate Heart", "+1 kırmızı kalp konteynırı#↑ +20% Hasar#Full can#Hayalet yörünge gözyaşları atma şansı"}, --  Immaculate Heart
	[574] = {"574", "Monstrance", "Düşmanlara hasar veren 2 dairsel aura verir#İç aura daha fazla hasar verir"}, --  Monstrance
	[575] = {"575", "The Intruder", "Kafanın içine gömülmüş bir arkadaş, 4 yavaşlatma gözyaşı atar#Hasar aldığında, kafandan dışarı çıkar"}, --  The Intruder
	[576] = {"576", "Dirty Mind", "Bok parçalamak 1-4 minik bok oluşturur"}, --  Dirty Mind
	[577] = {"577", "Damocles", "{{Warning}} TEK KULLANIM {{Warning}}#Kafanın üstünde bir kılıç oluşturur, İtem ve dilenci ödüllerini iki katına çıkartır#Hasar alınan rastgele bir zamanda seni öldürür"}, --  Damocles
	[578] = {"578", "Free Lemonade", "Büyük bir sarı havuz oluşturur"}, --  Free Lemonade
	[579] = {"579", "Spirit Sword", "Isaac gözyaşı atmak yerine kılıç sallar#Hasar 3x#Dönme atağı yapar + şarj olunca ateş eder#Can full ise her sallamada ateş de eder"}, --  Spirit Sword
	[580] = {"580", "Red Key", "Uygun bir duvarda yeni bir oda yaratır, kırmızı kapı çerçevesinden anlaşılabilir#Odalar özel oda olabilir# 13x13 kat haritası dışında yaratılan oda seni I AM ERROR odasına ışınlar"}, --  Red Key
	[581] = {"581", "Psy Fly", "Sinek yörünge arkadaşı#Düşman gözyaşlarını kovalar ve geri gönderir#Dokunma hasarı verir"}, --  Psy Fly
	[582] = {"582", "Wavy Cap", "↑ +0.75 Atış sıklığı#↓ -0.03 Hız eksilir# Gözyaşları rastgele solucan efektine sahip olur. Üstüse alınabilir"}, --  Wavy Cap
	[583] = {"583", "Rocket in a Jar", "+5 bomba#Yürürken bırakılan bombalar yürüme yönünde atılan bir füzeye dönüşür"}, --  Rocket in a Jar
	[584] = {"584", "Book of Virtues", "Hayalet gözyaşları atan ama yok edilebilen yörüngede dolaşan Wisp çıkartır#İkinci bir aktif item ile birleştiripi temalı wispler çıkartılabilir#İlk şeytan odasını melek odasına çevirir"}, --  Book of Virtues
	[585] = {"585", "Alabaster Box", "3 ruh kalbi ve 2 melek itemi çıartır# Ruh Kalpleri toplayarak şarj edilmelidir"}, --  Alabaster Box
	[586] = {"586", "The Stairway", "Her katın başlangıcında bir merdiven çıkartır, Merdiven melek odası dükkanına götürür"}, --  The Stairway
	[587] = {"587", "Menorah (Unused but skripted)", "<Item does not exist>"}, -- Menorah (Unused but skripted)
	[588] = {"588", "Sol", "Boss odasının {{BossRoom}} yerini gösterir#Boss yenildiğinde XIX - The Sun {{Card20}} kartını aktive eder#Bunun yanında aktif itemi tamamen şarj eder, kat boyunca +3 hasar ve +1 şans verir"}, --  Sol
	[589] = {"589", "Luna", "Her kata ekstra bir Gizli Oda{{SecretRoom}} ve Süper Gizli Oda{{SuperSecretRoom}} ekler#Gizli odalar dokununca kat boyu gözyaşı arttıran ve mavi kalp veren bir ışık hüzmesine sahip olur"}, --  Luna
	[590] = {"590", "Mercurius", "↑ +0.4 Hız#Odaya girildiğinde kapılar açık kalır"}, --  Mercurius
	[591] = {"591", "Venus", "+1 kırmızı kalp konteynırı#Full can#Yakın düşmanları aşık eder"}, --  Venus
	[592] = {"592", "Terra", "↑ +1.0 Hasar#Gözyaşlarını taşlar ile değiştirir#Değişken hasar verirler#Engelleri yok edebilir#Arttırılmış ittirme"}, --  Terra
	[593] = {"593", "Mars", "Hareket tuşuna çift basarak hızlı kaçma#Kaçarken dokunulmaz olup hasarının 4x katını verir#3 saniye içinde tekrar kullanılamaz"}, --  Mars
	[594] = {"594", "Jupiter", "+2 kırmızı kalp konteynırı#↓ -0.3 Hız#Sabit dururken şarjı dolar#Tekrar hareket edildiğinde zehir bulutu bırakır"}, --  Jupiter
	[595] = {"595", "Saturnus", "Etrafında bir çember oluşur#Odaya girildiğinde 7 gözyaşı çemberin etrafinda yörünge alır#Düşman gözyaşlarını yakalama şansı"}, --  Saturnus
	[596] = {"596", "Uranus", "Buz gözyaşları atar, düşmanları dondurup yavaşlatır#Düşmanlara dokunulduğunda düşmanlar kayar ve 6 buz parçalarına patla#Seherin"}, --  Uranus
	[597] = {"597", "Neptunus", "Ateş etmezken 3 saniye boyunca biriken büyük bir gözyaşı bonusu verir##Tekrar ateş etmek biriktirilen gözyaşlarını bırakır#Ateş ettikçe gözyaşi bonusu düşer"}, --  Neptunus
	[598] = {"598", "Pluto", "↑ +0.7 Gözyaşı#Isaaci çok fazla küçültür, objelerin arasından geçmesine izin verir#Düşman gözyaşları onun üstünden geçebilir"}, --  Pluto
	[599] = {"599", "Voodoo Head", "Her katta ekstra bir lanet odası {{CursedRoom}} oluşturur"}, --  Voodoo Head
	[600] = {"600", "Eye Drops", "↑ Sol gözdeki gözyaşı gecikmesini 28% azaltır"}, --  Eye Drops
	[601] = {"601", "Act of Contrition", "↑ 0.7 Gözyaşı#+1 Ebedi kalp#Şeytan teklifi alındıysa bile melek odalarının açılmasına izin verir"}, --  Act of Contrition
	[602] = {"602", "Member Card", "Her dükkana yeni ürünlerden oluşan ikinci dükkana açılan bir kapı ekler"}, --  Member Card
	[603] = {"603", "Battery Pack", "2-4 pil çıkartır#Aktif itemini tamamen şarj eder"}, --  Battery Pack
	[604] = {"604", "Mom's Bracelet", "Taş, TNT, bok, host ve diğer engellerin kaldırılıp atılmasına imkan sağlar#Odalar arasında taşınmasına izin verir"}, --  Mom's Bracelet
	[605] = {"605", "The Scooper", "Oda için arkasında kırmızı havuz bırakan Peeper arkadaşı verir"}, --  The Scooper
	[606] = {"606", "Ocular Rift", "Düştüğü yerde yarık açan gözyaşları atma şansı#Yakındaki düşmanları, pickupları ve düşman gözyaşlarını içine çeker"}, --  Ocular Rift
	[607] = {"607", "Boiled Baby", "Her yönde kaotik gözyaşı grupları atan arkadaş# 3.5 ya da 5.3 hasar verir"}, --  Boiled Baby
	[608] = {"608", "Freezer Baby", "Buz gözyaşları atan arkadaş#Öldürdüğü düşmanları buz yapar"}, --  Freezer Baby
	[609] = {"609", "Eternal D6", "Odadaki her itemi değiştirir#Itemlerin yok olma şansı vardır"}, --  Eternal D6
	[610] = {"610", "Bird Cage", "Odadaki ilk hasarda düşmana atlayan arkadaş#45 hasar verir ve taş dalgaları çıkartır#Ardından düşmanları kovalar"}, --  Bird Cage
	[611] = {"611", "Larynx", "Bağırmanı sağlar, yakındaki düşmanlara hasar verip ittirirsin#İtemin şarjına göre bağırma güçlenir"}, --  Larynx
	[612] = {"612", "Lost Soul", "Tek hasarda ölen ruh arkadaşı, yeni katta tekrar doğar#Bütün kat boyunca canlı kalırsa 3 Ruh kalbi, 2 Ebedi kalp veya itemler düşürür"}, --  Lost Ruh
	[613] = {"613", "", "<Item does not exist>"},
	[614] = {"614", "Blood Bomb", "+1 kırmızı kalp konteynırı#5 kalp iyileştirir#bombalar kırmızı havuz bırakır#Oyuncunun bombası kalmadığında yarım kalp karşılığında bomba bırakılabilir"}, --  Blood Bomb
	[615] = {"615", "Lil Dumpy", "Dumpy arkadaşı#Hasar aldığında yakındaki düşmanları ittirir, afallatır veya zehirler"}, --  Lil Dumpy
	[616] = {"616", "Bird's Eye", "Dokunma hasarı verir, Düşman ateşlerini bloklayan gözyaşı atma şansı#Maksimum hasar senin hasarın 4x"}, --  Bird's Eye
	[617] = {"617", "Lodestone", "Düşmanları magnetize eden gözyaşı atma şansı#Yakındaki pickupları, gçzyaşlarını ve düşmanları kendine çeker"}, --  Lodestone
	[618] = {"618", "Rotten Tomato", "Düşmanları işaretleyen gözyaşı atma şansı#İşaretlenen düşmana diğer düşmanlar saldırır"}, --  Rotten Tomato
	[619] = {"619", "Birthright", "Her karakter için farklı bir efekti vardır"}, --  Birthright
	[620] = {"620", "", "<Item does not exist>"},
	[621] = {"621", "Red Stew", "Full can#↑ +21.6 Hasar#3 dakika içinde hasar azalarak biter"}, --  Red Stew
	[622] = {"622", "Genesis", "{{Warning}} TEK KULLANIM {{Warning}}#Isaacin bütün itemlerini ve pickuplarını siler#Seni pickupların, kasaların ve alt kapının olduğu bir yatak odasına ışınlar#Kaybedilen her item için, Hazine Odası {{TreasureRoom}} seçmek üzere 3 item sunar"}, --  Genesis
	[623] = {"623", "Sharp Key", "+5 keys#Hasar vermek, engelleri kırmak ve kapı açmak için anahtar fırlat"}, --  Sharp Key
	[624] = {"624", "Booster Pack", "5 Rastgele kart çıkartır"}, --  Booster Pack
	[625] = {"625", "Mega Mush", "30 Saniyeliğine seni dev yapar#Hasarı ve menzili arttırır#Düşmanları ve engelleri ezme, dokunulmazlık verir#Odalar arasında efekt devam eder"}, --  Mega Mush
	[626] = {"626", "Knife Piece 1", "Bıçak arkadaşın ilk parçası"}, --  Knife Piece 1
	[627] = {"627", "Knife Piece 2", "Bıçak parçası 1 {{Collectible627}} ile birleştirildiğinde, bıçak arkadaşı yaratır#düşmanlara hasar verir#Et kapısını açar"}, --  Knife Piece 2
	[628] = {"628", "Death Certificate", "{{Warning}} TEK KULLANIM {{Warning}}#Oyundaki her itemin olduğu bir kata ışınlar#1 İtem aldıktan sonra geldiğin odaya ışınlar"}, --  Death Certificate
	[629] = {"629", "Bot Fly", "Yörünge sineği, kalkanlı gözyaşı atar"}, --  Bot Fly
	[630] = {"630", "", "<Item does not exist>"},
	[631] = {"631", "Meat Cleaver", "Odadaki düşmanları çok daha az canı olan 2 parçaya böler"}, --  Meat Cleaver
	[632] = {"632", "Evil Charm", "↑ +2 Şans#Yanma, kafa karışıklığı, korku, zehir ve zehir gazına bağışıklık"}, --  Evil Charm
	[633] = {"633", "Dogma", "Uçuş sağlar ve bır seferlik Holy Mantle {{Collectible313}} efekti#↑ +2.0 Hasar#↑ +0.1 Hız#Oyuncu 6 kalpten az ise kırmızı ve mavi kalp kombinasyonuyla iyileştirir"}, --  Dogma
	[634] = {"634", "Purgatory", "Düşmanların olduğu odadayken yerde çatlaklar oluşturur#Bu çatlakların üstüne yürümek patlayan hayaletler çıkartır"}, --  Purgatory
	[635] = {"635", "Stitches", "Isaacin ateş ettiği yönde hareket eden bir arkadaş çıkartır#Kullanıldığında, Isaac arkadaşın olduğu yere ışınlanır ve kısa süre dokunulmaz olur#Bir şeylerin üzerine ışınlanmak onlara hasar verebilir ya da yok edebilir."}, --  Stitches
	[636] = {"636", "R Key", "{{Warning}} TEK KULLANIM {{Warning}}#Yeni bir oyunun ilk katına ışınlar#İtemler ve pickuplar üzerinde kalır"}, --  R Key
	[637] = {"637", "Knockout Drops", "Çok fazla ittiren ve kafa karışıklığı yaratn yumruk gözyaşı atma şansı"}, --  Knockout Drops
	[638] = {"638", "Eraser", "Düşmanı anında öldüren bir silgi atar#Silinen düşmanın oyun boyunca tekrar çıkmasını engeller#Bosslara 15 hasar verir#Katta sadece bir kez kullanılabilir"}, --  Eraser
	[639] = {"639", "Yuck Heart", "Kullanıldığında çürük kalp verir"}, --  Yuck Heart
	[640] = {"640", "Urn of Souls", "Ateş akıntısı fırlatır#Her düşman öldüğünde şarjı dolar#Maksimum şarj 20"}, --  Urn of Souls
	[641] = {"641", "Akeldama", "Çatışmadayken arkanda gözyaşı zinciri oluşturur#Gözyaşları 3.5 hasar verir"}, --  Akeldama
	[642] = {"642", "Magic Skin", "1 kalp konteynırı veya 2 Ruh Kalbi alıp o odanın itemini çıkartır#Bunun yanında doldurulamayan kırık kalp konteynırı verir#{{Warning}} The Lost için tek kullanımlık item"}, --  Magic Skin
	[643] = {"643", "Revelation", "Uçuş sağlar ve 2 Ruh Kalbi verir#2.5 saniye ateş ettikten sonra ateş bırakıldığında kutsal lazer atar"}, --  Revelation
	[644] = {"644", "Consolation Prize", "En düşük özelliğini arttırır#En az hangisinden varsa 3 Altın, 1 bomba, veya 1 anahtar düşürür"}, --  Consolation Prize
	[645] = {"645", "Tinytoma", "Teratoma yörüngesi#Ateşleri bloklar#Dokunma hasarı verir#3 defa vurulduğunda daha küçük parçalara ayrılır#Küçük versiyonlar mavi örümceklere kırılır#Tamamen yok olduktan 5 saniye sonra tekrar doğar"}, --  Tinytoma
	[646] = {"646", "Brimstone Bomb", "+5 bomba#bomba dikey yönlerde 4 brimstone lazeri çıkartır"}, --  Brimstone Bomb
	[647] = {"647", "4.5 Volt", "Aktif itemler oda temizlendiğinde şarj olmaz#Düşmanlar hasar aldıkça dolar#60 hasar = 1 şarj"}, --  4.5 Volt
	[648] = {"648", "", "<Item does not exist>"},
	[649] = {"649", "Fruity Plum", "Minik bebek Plum arkadaşı#Odada çapraz yönde kendini atar, arkasından gözyaşı atar"}, --  Fruity Plum
	[650] = {"650", "Plum Flute", "Odada 10 saniyeliğine Bebek Plum çıkartır"}, --  Plum Flute
	[651] = {"651", "Star of Bethlehem", "Boss odasına doğru yavaşca giden arkadaş#+20% + 1 Hasar, Gözyaşı ve gözyaşı takibi veren bir aura verir"}, --  Star of Bethlehem
	[652] = {"652", "Cube Baby", "Üzerine yüründüğünde odada kayan bir arkadaş#Yavaşlatır ve dokunma hasarıverir, öldürdüğü düşmanları buz yapar"}, --  Cube Baby
	[653] = {"653", "Vade Retro", "Elde iken, hayalet olmayan düşmanlar öldüğünde kırmızı hayalet çıkartır#Kullanıldığında, hayaletleri patlatır"}, --  Vade Retro
	[654] = {"654", "False PHD", "Bütün hapların tespit eder#+1 Siyah kalp#Güzel hapları kötü haplara çevirir#↑ Özellik düşürme hapları hasar arttırır#Diğer haplar kullanıldığında siyah kalp verir"}, --  False PHD
	[655] = {"655", "Spin to Win", "Düşman ateşlerini bloke eden topaç yörüngeci ekler#Saniyede 10.5 dokunma hasarı verir#Kullanıldığında,↑ +0.5 hız ve yörüngeçlerin dönüş hızını çok arttırır"}, --  Spin to Win
	[656] = {"656", "Damocles", "<Item not obtainable>"}, -- Damocles
	[657] = {"657", "Vasculitis", "Düşmanlar öldüğünde Isaac gözyaşlarının efeklerine sahip gözyaşlarına patlar"}, --  Vasculitis
	[658] = {"658", "Giant Cell", "Hasar alındığında mikro-Isaacler çıkartır#Düşmanları kovalayıp ateş ederler"}, --  Giant Cell
	[659] = {"659", "Tropicamide", "↑ +1.5 Menzil#Gözyaşı boyunu arttırır"}, --  Tropicamide
	[660] = {"660", "Card Reading", "Her katın başlangıcında 2 portal oluşturur#Odadan çıkınca portallar yokolur#{{ColorRed}}Kırmızı: {{CR}}Boss Odası#{{ColorYellow}}Sarı: {{CR}}Hazine Odası#{{ColorBlue}}Mavi: {{CR}}Gizli Oda"}, --  Card Reading
	[661] = {"661", "Quints", "Düşmanın öldüğü noktada duran ve ateş eden bir arkadaş çıakrtır#5 Arkadaşa kadar"}, --  Quints
	[662] = {"662", "Pacifist (Cut item)", "<Item does not exist>"}, -- Pacifist (Cut item)
	[663] = {"663", "Tooth and Nail", "6 Sanıyede bir 1 saniyeliğine dokunulmaz yapar#Geçişten hemen önce yanıp söner"}, --  Tooth and Nail
	[664] = {"664", "Binge Eater", "+1 kırmızı kalp konteynırı#Itemler kendisi ve rastgele bir yemek itemi arasında gidip gelir, biri seçilebilir#Yemek itemi almak geçici +3.6 hasar artışı ve 2 küçük kalıcı özellik artışı verir"}, --  Binge Eater
	[665] = {"665", "Guppy's Eye", "Kasaların, keselerin ve ateşlerin içindeki itemleri gösterir"}, --  Guppy's Eye
	[666] = {"666", "", "<Item does not exist>"},
	[667] = {"667", "Strawman", "İkinci karakter olarak Keeperı çıkartır#Ölürse mavi örümcekler çıkartır#Sonrasına item silinir"}, --  Strawman
	[668] = {"668", "Dad's Note", "Ev katına giden skansı başlatır#Öncesinde {{TreasureRoom}} Hazine veya {{BossRoom}} Boss odalarına bırakılan trinketlar {{Card78}} Cracked Key trinketına dönüşür"}, --  Dad's Note
	[669] = {"669", "Sausage", "↑ +1 HP#↑ +1.33 Hasar#↑ +0.2 Hız#↑ +1.2 Gözyaşı hızı#↑ +0.16 Menzil#↑ +1 Şans"}, --  Sausage
	[670] = {"670", "Options?", "Oda sonu ödülü verilirse, iki farklı ödül sunulur#Birini almak diğerinin kaybolmasına sebep olur"}, --  Options?
	[671] = {"671", "Candy Heart", "Kırmızı kalp ile iyileşirken rastgele özellik artışı verir"}, --  Candy Heart
	[672] = {"672", "A Pound of Flesh", "Şeytan anlaşmaları artık altın ile yapılır#Dükkan itemleri artık can ile ödenir#Kullanılabilirler artık dükkanda bedava olur fakat dikenler ile çevrilir"}, --  A Pound of Flesh
	[673] = {"673", "Redemption", "Şeytan odasına girip item alınmadığında 1 Ruh kalbi ve +1.0 hasar verir"}, --  Redemption
	[674] = {"674", "Spirit Shackles", "Ölünce Isaac'in hayaleti ölü vücuduna zincirlenir ve yarım kalp ile savaşmaya devam eder#10 Sanite sonra hayata döner#Mavi kalp alarak şarj olmalıdır"}, --  Spirit Shackles
	[675] = {"675", "Cracked Orb", "Hasar alındığında, katta rastgele bir odayı açığa çıkartır#Anahtar gerektiren odaları açar#Mega Satan odasını açar#Ultra gizli odayı açığa çıkartabilir"}, --  Cracked Orb
	[676] = {"676", "Empty Heart", "Kat başlangıcında boş kalp konteynırı var ise, yeni bir tane daha verir#kemik kalp sayılmaz"}, --  Empty Heart
	[677] = {"677", "Astral Projection", "Hasar alındığında, 3 saniyeliğine zamanı durdurur#Isaac hayalete dönüşür ve vücudunu bırakır#Hayalet formunda uçuş, hayalet gözyaşları verir ve sıradakı hasar alımından kurtulur"}, --  Astral Projection
	[678] = {"678", "C Section", "Launch a baby attached via umbilical cord#Deals 3x dokunma hasarı#Baby shoots tears and walks when fire button is held#Returns when button is released"}, --  C Section
	[679] = {"679", "Lil Abaddon", "Minik bir Maw of the Void {{Collectible399}} atan bir arkadaş"}, --  Lil Abaddon
	[680] = {"680", "Montezuma's Revenge", "Ateş ederken kısa menzilli bir brimstone atağı şarj eder#Arkana ateş et"}, --  Montezuma's Revenge
	[681] = {"681", "Lil Portal", "Dokunma hasarı verir ve ileri doğru uçar#Yolundaki pickupları kullanır#Her biri boyunu, hasarını arttırır ve mavi sinek çıkartır#Her 4 pickupta, gidilmemiş bir odaya portal oluşturur"}, --  Lil Portal
	[682] = {"682", "Worm Friend", "Yerden kol çıkmasını sağlar#Düşmanları tutup hasar verebilir"}, --  Worm Friend
	[683] = {"683", "Bone Spurs", "Düşmanlar ölünce uçan kemikler oluşturur#Kemikler düşman gözyaşlarını bloklar ve dokunma hasarı verir"}, --  Bone Spurs
	[684] = {"684", "Hungry Ruh", "Düşman öldürdüğünde hayalet çıkartma şansı#Hayaletler düşmanları kovalar ve dokunma hasarı verir#5 saniye sonrasında, hayalet patlar ve yakındaki düşmanlara 7 hasar verir#Bu patlamadan hasar almazsın"}, --  Hungry Ruh
	[685] = {"685", "Jar of Wisps", "Çeşitli gözyaşları atan, ateşleri bloklayan ve dokunma hasarı veren rastgele wispler#Wisps sayısı kullanıldıkça artar"}, --  Jar of Wisps
	[686] = {"686", "Ruh Locket", "Ruh kalbi alındığında kalıcı özellik arttırma verir#Alındığında Ruh kalbi düşürür"}, --  Ruh Locket
	[687] = {"687", "Friend Finder", "Isaac'in hareketlerini ve ataklarını taklit eden rastgele bir arkadaş canlısı canavar çıkartır"}, --  Friend Finder
	[688] = {"688", "Inner Child", "+1 ekstra can#Bulunduğun odada yarım kalp, çok küçülme ve +0.2 hız ile tekrar doğarsın"}, --  Inner Child
	[689] = {"689", "Glitched Crown", "Alınacak itemler 5 rastgele item arasında döner, biri seçilebilir"}, --  Glitched Crown
	[690] = {"690", "Belly Jelly", "Düşmanların Isaac üzerinden zıplamasını sağlar#Engellerin üzerinden zıplatmak hasar verir#Düşman gözyaşlarını geri gönderme şansı"}, --  Belly Jelly
	[691] = {"691", "Sacred Orb", "Düşük kalite itemlerin çıkmasını engeller#Çıkacak itemlerin kalitesini çok arttırır"}, --  Sacred Orb
	[692] = {"692", "Sanguine Bond", "Şeytan odasına özel bir dizi diken çıkartır#Bu dikenlerden hasar alındığında ödül verir:#35% 6 altın#15% +0.5 Hasar#5% 2 Siyah kalp#2% rastgele item#1% Leviathan transformasyonu"}, --  Sanguine Bond
	[693] = {"693", "The Swarm", "Ateş blokladıktan sonra mavi sineğe dönen 9 yörüngeç sinek verir#Her oda temizlendiğinde yeni bir sinek verir"}, --  The Swarm
	[694] = {"694", "Heartbreak", "3 kırık kalp verir# her kırık kalp için ↑ +0.25 hasar #Her ölümcül hasar 2 kırık kalp daha ekler#12 Kırık kalpte ölürsün"}, --  Heartbreak
	[695] = {"695", "Bloody Gust", "Hasar alındığında, kat için hız ve gözyaşı kazan"}, --  Bloody Gust
	[696] = {"696", "Salvation", "İçindeki düşmanlara ışık hüzmeleri çıkartan bir hale verir#Hala katta daha çok hasar aldıkça daha da büyür"}, --  Salvation
	[697] = {"697", "Vanishing Twin", "Booss odasına girerken bossun kopyasına dönüşen arkadaş#Öldürüldüğünde ekstra item düşürür#Klon daha yavaş ve orjinal bossun 75% canına sahip olur"}, --  Vanishing Twin
	[698] = {"698", "Twisted Pair", "Yanında duran iki arkadaş#Atılan gözyaşların seninkine eşit olur, ama sadece 37.5% hasar ile"}, --  Twisted Pair
	[699] = {"699", "Azazel's Rage", "Her oda temizlendiğinde sinir artar#4 oda sonra, yeni odaya girildiğinde büyük bir Brimstone lazeri atar"}, --  Azazel's Rage
	[700] = {"700", "Echo Chamber", "Isaac bir kart, hap, veya rune kullandığında,  Echo Chamber alındıktan sonra şimdiye kadar kullandığı her kart/hap/rune pickupının bir kopyasını da kullanır"}, --  Echo Chamber
	[701] = {"701", "Isaac's Tomb", "Her katın başında eski bir kasa çıkartır#Kasa Ruh Kalbi, trinketler veya Melek odası itemleri veya anne/baba temalı itemler barındırabilir"}, --  Isaac's Tomb
	[702] = {"702", "Vengeful Spirit", "Hasar alındığında, kat boyunca duran yörüngeç wisp çıkartır#Maksimum 6#Ateş ederler fakat ateş bloklayamazlar"}, --  Vengeful Spirit
	[703] = {"703", "Esau Jr.", "O ankı karakter ile Esau Jr. arasında değişir. Esau Jr. 3 Siyah kalp, +2 hasar ve uçuşa sahiptir#Karakterler bağımsız itemlere ve canlara sahip olurlar#{{Warning}} İki karakterden biri olarak ölmek oyunun bitmesine sebep olur"}, --  Esau Jr.
	[704] = {"704", "Berserk!", "5 saniyeliğine Berserk modu:#↑ +0.4 Hız#↑ Gözyaşı#↑ +3.0 Hasar#Atakları yakın menzil silaha limitler"}, --  Berserk!
	[705] = {"705", "Dark Arts", "Kullanıldığında, 1 saniyeliğine ↑ +1.0 speed ve düşmanların/ateşlerin içinden geçebilme edin.#Her dokunulan düşman için hasarı 1 arttırır#Dokunulan düşmanlara senin hasarının 3x verir"}, --  Dark Arts
	[706] = {"706", "Abyss", "Odadaki tüm itemleri yok eder ve her biri için atak sineği çıkartır#Sineğin efekti iteme göre değişirEffects of fly depends on the items"}, --  Abyss
	[707] = {"707", "Supper", "+1 kırmızı kalp konteynırı#Bir kalp iyileştirir"}, --  Supper
	[708] = {"708", "Stapler", "↑ +1.0 hasar#Isaacin tek gözünden gözyaşı atmasını engeller"}, --  Stapler
	[709] = {"709", "Suplex!", "Düşmanların ve bossların üzerine çok hızlı koşmanı ve onları yere yapıştırmanı sağlar#Yere yapıştırma kontrol edilebilir#50 hasar verir ve taş dalgaları çıkartır"}, --  Suplex!
	[710] = {"710", "Bag of Crafting", "8 pickupa kadar toplar ve tutar#Item tuşunu basılı tutmak pickupların iteme dönüşmesine sebep olur#İtem kalitesi pickupların kalitesine göre depişir"}, --  Bag of Crafting
	[711] = {"711", "Flip", "Tainted Lazarus ile Ölü Tainted Lazarus arasında değiştirir"}, --  Flip
	[712] = {"712", "Lemegeton", "Yok edilebilir hayalet item yörüngeci oluşturur#İtemin efekti kullanıcıya verilir#İtemler odanın bulunduğu havuzdan verilir"}, --  Lemegeton
	[713] = {"713", "Sumptorium", "Ateş tuşuna 2 saniye basılı tutmak yarım kalbi yok edilebilir arkadaşlara çevirir#Kalp tipi arkadaş davranışını değiştirir"}, --  Sumptorium
	[714] = {"714", "Recall", "Forgottenın vücudunu herhangi bir uzaklıkltan geri getirir"}, --  Recall
	[715] = {"715", "Hold", "İçinde sonra kullanılabilmek üzere bir bok bombası taşır"}, --  Holad
	[716] = {"716", "Keeper's Sack", "Dükkandan alışveriş yaparken menzil, hız veya hasar verir#Alındığında 3 Altın ve 1 anahtar verir"}, --  Keeper's Sack
	[717] = {"717", "Keeper's Kin", "Taşlar ve engeller yok edildiğinde 2 mavi örümcek verir"}, --  Keeper's Kin
	[718] = {"718", "Keepers Robe (Cut item)", "<Item does not exist>"}, -- Keepers Robe (Cut item)
	[719] = {"719", "Keeper's Box", "Rastgele bir dükkan itemi/pickupı çıkartır"}, --  Keeper's Box
	[720] = {"720", "Everything Jar", "Şarj durumuna göre farklı pickuplar çıkartır#Şarj full ise, daha güçlü bir rastgele efekti olur#Şarj ödülleri: 1:Bok 2:{{Coin}} 3:{{Bomb}} 4:{{Key}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{RuhHeart}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}"}, --  Everything Jar
	[721] = {"721", "TMTRAINER", "Sonraki tüm itemlerin 'bozuk' olmasını sağlar#Onlara tamamen rastgele efektler verir"}, --  TMTRAINER
	[722] = {"722", "Anima Sola", "En yakın düşmanı 5 saniye boyunca zincirler, hareketini engeller"}, --  Anima Sola
	[723] = {"723", "Spindown Dice", "Odadaki her itemi item ID numarasını bir azaltarak değiştirir"}, --  Spindown Dice
	[724] = {"724", "Hypercoagulation", "Düşman tarafından hasar alındığında, yarım veya tam kırmızı kalp çıkartır#:Çıkan kalpler 1.5 saniye sonra yok olur"}, --  Hypercoagulation
	[725] = {"725", "IBS", "Hasar verildiğinde, efekt başlatma şansı:#Bok at#Güçlendiren havuz oluştur#Osur#5 canlı bomba düşür"}, --  IBS
	[726] = {"726", "Hemoptysis", "Ateş tuşuna çift basıldığında kan hapşırır#Hasarının 150%sini önündeki düşmana verir#1 saniye içinde tekrar kullanılabilir"}, --  Hemoptysis
	[727] = {"727", "Ghost Bomb", "+5 bomba#bomba dokunma hasarı verip 10 saniye sonra patlayan hayalet çıkartır"}, --  Ghost Bomb
	[728] = {"728", "Gello", "Isace bağlı olan bir şeytan arkadaş çıkartır#Isaac'in gözyaşlarını, özelliklerini ve efektlerini taklit eder"}, --  Gello
	[729] = {"729", "Decap Attack", "Isaac'in kafasını atar, düştüğü yere ateş edebilir#İtemi tekrar aktive etmek ya da kafanın üstüne basmak kafayı tekrar takar"}, --  Decap Attack
	
}
EID:updateDescriptionsViaTable(repCollectibles, EID.descriptions["tr_tr"].collectibles)

EID.descriptions["tr_tr"].birthright ={
	{"Isaac", "", "Alınacak tüm itemler iki seçenek arasında değişir"},
	{"Magdalene", "", "<No effect yet>"},
	{"Cain", "", "<No effect yet>"},
	{"Judas", "", "<No effect yet>"},
	{"???", "", "HP artışından gelen Ruh Kalpleri iki katına çıkar"},
	{"Eve", "", "Whore of Babylon candan bağımsız olarak aktif olur#Dead Bird hasar alınmadan aktif olur"},
	{"Samson", "", "Bloody Lust 4 daha hasar alır aynı +0.2 aralıkla, yeni maksimum +14.0"},
	{"Azazel", "", "Azazel'in Brimstonu lazeri çok daha fazla genişer, Mega Blast gibi#Hasara etkisi olmaz"},
	{"Lazarus", "", "Öldüğünde Lazarus Risen olarak gel#Lazarus Risen yavaşça azalan +21.6 hasar bonusu alır"},
	{"Eden", "", "3 rastgele item alır#Biri seçilebilir"},
	{"The Lost", "", "Losta faydası olmayacak itemlerin çıkmasını engeller#Örnek: Can verenler, uçuş, veya hayalet gözyaşları ya da hasar olunca aktif olan itemler"},
	{"Lazarus Risen", "", "Yavaşça azalan +21.6 hasar bonusu alır"},
	{"Black Judas", "", "<No effect yet>"},
	{"Lilith", "", "<No effect yet>"},
	{"Keeper", "", "<No effect yet>"},
	{"Apollyon", "", "<No effect yet>"},
	{"The Forgotten", "", "The Soul zincirsiz olur ve serbest hareket edebilir"},
	{"The Forgotten Ruh", "", "The Soul zincirsiz olur ve serbest hareket edebilir"},
	{"Bethany", "", "Ruh şarjı ile item aktive etmek bazen ücretsiz olur"},
	{"Jacob", "", "İtemi alan karakter diğer karakterin 3 iteminin kopyasına sahip olur"},
	{"Esau", "", "İtemi alan karakter diğer karakterin 3 iteminin kopyasına sahip olur"},
	{"Tainted Isaac", "", "4 ekstra pasif item slotu ekler"},
	{"Tainted Magdalene", "", "Azalmayan 1 kırmızı kalp daha ekler"},
	{"Tainted Cain", "", "İtem toplarken düşen pickuplar iki katına çıkar"},
	{"Tainted Judas", "", "<No effect yet>"},
	{"Tainted ???", "", "Maksimum taşınabilen bok sayısını 29a çıkartır"},
	{"Tainted Eve", "", "<No effect yet>"},
	{"Tainted Samson", "", "The berserk zamanlayıcısı düşman öldürüldüğünde 1 saniye yerine 3 saniye kazanır"},
	{"Tainted Azazel", "", "Tainted Azazel'in Hemoptysis {{Collectible726}} hapşırma atağının boyunu iki katına çıkartır"},
	{"Tainted Lazarus", "", "<No effect yet>"},
	{"Tainted Eden", "", "Birthright alınmadan önce alınan pasif itemler hasar alındığında değişmez"},
	{"Tainted Lost", "", "Tainted Lostu aynı odada canlandıran +1 ekstra can verip yakındaki düşmanlara 200 hasar verir#Aynı düşmana birden fazla çarpabilir"},
	{"Tainted Lilith", "", ""},
	{"Tainted Keeper", "", "Öldürülen düşmanlardan düşen altınları güçlü bir şekilde çeker#Diğer altınlara etki etmez"},
	{"Tainted Apollyon", "", "<No effect yet>"},
	{"Tainted Forgotten", "", "Tainted Soul Recall {{Collectible714}} abilitesine sahip olur, Tainted Forgottenı uzaktan getirebilir"},
	{"Tainted Bethany", "", "<No effect yet>"},
	{"Tainted Jacob", "", "<No effect yet>"},
	{"Dead Tainted Lazarus", "", "<No effect yet>"},
	{"Tainted Jacob 2", "", "<No effect yet>"},
	{"Tainted Forgotten Ruh", "", "Tainted Soul Recall {{Collectible714}} abilitesine sahip olur, Tainted Forgottenı uzaktan getirebilir"},
}

-- Buffs caused by Binge Eater
-- Note: "#" will be replaced with "#{{Collectible664}} " automatically, in order to add Binge eater icon infront of each buff-bulletpoint
EID.descriptions["tr_tr"].bingeEaterBuffs = {
	[22] = {"22", "", "↑+0.5 Gözyaşı#↑+1.5 Menzil"}, -- Lunch
	[23] = {"23", "", "↑+0.5 Gözyaşı#↑+0.2 Gözyaşı hızı"}, -- Dinner
	[24] = {"24", "", "↑+1.0 Hasar#↑+0.2 Hız"}, -- Dessert
	[25] = {"25", "", "↑+0.2 Hız#↑+1.5 Menzil"}, -- Breakfast
	[26] = {"26", "", "↑+1.0 Hasar#↑+1.5 Menzil"}, -- Rotten Meat
	[456] = {"456", "", "↑+1.0 Hasar#↑+1.0 Şans"}, -- Midnight Snack
	[346] = {"346", "", "↑+0.2 Gözyaşı hızı#↑+1.0 Şans"}, -- A Snack
	[707] = {"707", "", "↑+0.5 Gözyaşı#↑+1.0 Şans"}, -- Supper
}

EID.descriptions["tr_tr"].spindownError = "Item yok olur"

---------- Trinkets ----------
local repTrinkets={
	[1] = {"1", "Swallowed Penny", "Hasar aldığında 1 altın düşürür#Keeper ile oynarsan 0-1"}, -- Swallowed Penny
	[10] = {"10", "Wiggle Worm", "Gözyaşları dalgalar halinde ilerler#↑ +0.4 Gözyaşı#Hayalet gözyaşları verir"}, -- Wiggle Worm
	[11] = {"11", "Ring Worm", "Gözyaşları spiral halinde çok hızlı ilerler#Hayalet gözyaşları verir"}, -- Ring Worm
	[15] = {"15", "Lucky Rock", "33% şans ile taş kırınca altın düşürür"},-- Lucky Rock
	[24] = {"24", "Butt Penny", "Altın toplarken osurur#Osuruklar düşmanı ittirip zehirler"}, -- Butt Penny
	[26] = {"26", "Hook Worm", "Gözyaşları açısal hareketlerle ilerler#↑ +10 Menzil#Hayalet gözyaşları verir"}, -- Hook Worm
	[32] = {"32", "Liberty Cap", "Her odada rastgele mantar efekti"}, -- Liberty Cap
	[33] = {"33", "Umbilical Cord", "Odaya yarım kırmızı kalp veya daha azı ile girince, little Steven arkadaşı verir#Hasar alınca yüksek şans ile Gemini arkadaşını çıkartır"}, -- Umbilical Cord
	[48] = {"48", "A Missing Page", "Hasar alındığında, odadaki tüm düşmanlara hasar verme şansı#Siyah kalp ve {{Collectible35}} Necronomicon-benzeri efektler iki katı hasar verir"}, -- A Missing Page
	[49] = {"49", "Bloody Penny", "25% şans ile altın toplarken yarım kalp düşürür"}, -- Bloody Penny
	[50] = {"50", "Burnt Penny", "25% şans ile altın toplarken bomba düşürür"}, -- Burnt Penny
	[51] = {"51", "Flat Penny", "25% şans ile altın toplarken anahtar düşürür"}, -- Flat Penny
	[65] = {"65", "Tape Worm", "↑ +3 Menzil#-50% Gözyaşı yüksekliği"}, -- Tape Worm
	[66] = {"66", "Lazy Worm", "↓ -0.5 Atış hızı eksilir#↑ +2 Gözyaşı yüksekliği"}, -- Lazy Worm
	[69] = {"69", "Faded Polaroid", "Rastgele oyuncuya kamuflaj verir#Düşmanların kafasını karıştırır#\"Home\" katına giden kapıyı açmak için kullanılabilir"}, -- Faded Polaroid
	[80] = {"80", "Black Feather", "Tutulan her şeytan itemi için ↑ +0.5 Hasar"}, -- Black Feather
	[92] = {"92", "Cracked Crown", "İtemlerinin ↑ Özellik artışı artık 20% daha efektif"}, -- Cracked Crown
	[101] = {"101", "Dim Bulb", "!!! Şarjı boş bir aktif item tutartken:#↑ +1.5 hasar#↑ +0.5 Speed#↑ +1.5 Range#↑ +0.5 Tears#↑ +0.3 Shot Speed#↑ +2 Luck"},
	[110] = {"110", "Silver Dollar", "Dükkanlar artık {{Shop}} The Womb ve Corpse katlarında da çıkar"},
	[111] = {"111", "Bloody Crown", "Hazine odaları {{TreasureRoom}} The Womb ve Corpse katında da çıkar"}, -- Bloody Crown
	[119] = {"119", "Stem Cell", "Sonraki kata girerken canını maximum kırmızı canının 50%sine ayarlar#Eğer canın bundan yüksek ise, yarım kırmızı kalp iyileştirir"}, -- Stem Cell
	[128] = {"128", "Finger Bone", "5% şans ile hasar alınca kemik kalbi verir"}, -- Finger Bone
	
	[129] = {"129", "Jawbreaker", "Diş gözyaşı atma şansı"}, --  Jawbreaker
	[130] = {"130", "Chewed Pen", "Yavaşlatma gözyaşı atma şansı"}, --  Chewed Pen
	[131] = {"131", "Blessed Penny", "Altın toplarken yarım Ruh Kalbi düşürme şansı"}, --  Blessed Penny
	[132] = {"132", "Broken Syringe", "Oda için rastgele şırınga efekti alma şansı"}, --  Broken Syringe
	[133] = {"133", "Short Fuse", "Bırakılan bombalar daha hızlı patlar"}, --  Short Fuse
	[134] = {"134", "Gigante Bean", "Osuruk boyutunu büyütür"}, --  Gigante Bean
	[135] = {"135", "A Lighter", "Odaya girildiğinde düşmanları yakma şansı"}, --  A Lighter
	[136] = {"136", "Broken Padlock", "Kapılar, anahtar blokları ve altın kasalar patlamayla açılabilir#Home kapısını açabilir"}, --  Broken Padlock
	[137] = {"137", "Myosotis", "Yeni kata girerken, diğer kattan 4e kadar alınmayan pickuplar başlangıç odasında belirir"}, --  Myosotis
	[138] = {"138", "'M", "Aktif itemi kullanmak değişmesine sebep olur"}, --  'M
	[139] = {"139", "Teardrop Charm", "Şans-bazlı gözyaşı efektleri daha fazla oluşur"}, --  Teardrop Charm
	[140] = {"140", "Apple of Sodom", "Kırmızı kalp toplamak onları mavi örümceğe çevirebilie#Full can iken bile çalışır#Efekt iyileşme için kullanılabilecek kalpleri kullanabilir"}, --  Apple of Sodom
	[141] = {"141", "Forgotten Lullaby", "Arkadaşların atış sıklığını arttırır"}, --  Forgotten Lullaby
	[142] = {"142", "Beth's Faith", "Her katın başında, 4 Book of Virtues {{Collectible584}} wispi çıkartır"}, --  Beth's Faith
	[143] = {"143", "Old Capacitor", "Aktif itemin şarj olmasını engeller#Odayı temizlerken küçük pil çıkarma şansı"}, --  Old Capacitor
	[144] = {"144", "Brain Worm", "Gözyaşkarı 90 derece döner ve ıskalanan düşmanları vurur"}, --  Brain Worm
	[145] = {"145", "Perfection", "↑ +10 Şans#Hasar aldığında kendini yok eder"}, --  Perfection
	[146] = {"146", "Devil's Crown", "Hazine odaları {{TreasureRoom}} artık şeytan tekliflerine sahip olur"}, --  Devil's Crown
	[147] = {"147", "Charged Penny", "Altın toplamarken itemin şarjını doldurma şansı"}, --  Charged Penny
	[148] = {"148", "Friendship Necklace", "Arkadaşların Isaac etrafında dönmesini sağlar"}, --  Friendship Necklace
	[149] = {"149", "Panic Button", "Hasar aldığında aktif itemini aktive eder"}, --  Panic Button
	[150] = {"150", "Blue Key", "Anahtar gerektiren bir odaya girmek seni Hush alanına benzer bir odaya götürür#Oda iki oda arası gibi davranır"}, --  Blue Key
	[151] = {"151", "Flat File", "Dikenlerin geri girmesini sağlar ve onları zararsız yapar#Lanet odası {{CursedRoom}} kapılarını, mimikleri ve herhangi diken engellerini de etkiler"}, --  Flat File
	[152] = {"152", "Telescope Lens", "İkinci bir Planetarium odasının çıkmasını sağlar#Planetariumlar artık The Womb içinde de çıkabilir"}, --  Telescope Lens
	[153] = {"153", "Mom's Lock", "Her oda, farklı bir Anne iteminin efektini sağlar"}, --  Mom's Lock
	[154] = {"154", "Dice Bag", "Yeni bir odaya girildiğinde, geçici bir zat kullanılabilir itemi verir#Çıkarken zar yok olur#2 kulllanılabilir itemin tutulabilmesini"}, --  Dice Bag
	[155] = {"155", "Holy Crown", "Cathedral katında bir Hazine Odası {{TreasureRoom}} ve Dükkan {{Shop}} oluşmasını sağlar"}, --  Holy Crown
	[156] = {"156", "Mother's Kiss", "Bir kalp konteynırı verir#Keeper dahil"}, --  Mother's Kiss
	[157] = {"157", "Torn Card", "Her 15 atışta bir, Ipecac {{Collectible149}} + My Reflection {{Collectible5}} efekti ve çok yüksek bir menzil ile gözyaşı atar"}, --  Torn Card
	[158] = {"158", "Torn Pocket", "Hasar alındığında, Isaac bütün pickuplarını düşürür#(İstisna: Kalpler, Kartlar, Haplar, Runelar)"}, --  Torn Pocket
	[159] = {"159", "Gilded Key", "+1 anahtar#Bütün kasaları kilitli kasalarla depiştirir#Bütün kilitli kasalar ekstradan kartlar, haplar veya trinketlar muhafaza eder#İstisna: Mega Kasa, Eski Kasa"}, --  Gilded Key
	[160] = {"160", "Lucky Sack", "Yeni kata girerken Grab çantası"}, --  Lucky Sack
	[161] = {"161", "Wicked Crown", "Sheol katında Hazine Odası {{TreasureRoom}} ve Dükkan {{Shop}} çıkmasını sağlar"}, --  Wicked Crown
	[162] = {"162", "Azazel's Stump", "Yeni odaya girdiğinde Azazele dönüşme şansı"}, --  Azazel's Stump
	[163] = {"163", "Dingle Berry", "Oda temizlendiğinde 2 arkadaş küçük bok yaratır"}, --  Dingle Berry
	[164] = {"164", "Ring Cap", "Her koyulan bomba için 2 ekstra bomba verir"}, --  Ring Cap
	[165] = {"165", "Nuh Uh!", "Womb ve ilerisinde, her düşen pickupı değiştirir#Bomba and Kalpler en yaygınıdır"}, --  Nuh Uh!
	[166] = {"166", "Modeling Clay", "Her oda için rastgele pasıf item efekti verir"}, --  Modeling Clay
	[167] = {"167", "Polished Bone", "Oda temizlendiğinde arkadaş Bony çıkarma şansı"}, --  Polished Bone
	[168] = {"168", "Hollow Heart", "Kata girerken +1 kemik kalp konteynırı"}, --  Hollow Heart
	[169] = {"169", "Kid's Drawing", "Elde iken, Guppy transformasyonuna sayılır"}, --  Kid's Drawing
	[170] = {"170", "Crystal Key", "Her oda temizlediğinde Red Key {{Collectible580}} odası oluşturma şansı"}, --  Crystal Key
	[171] = {"171", "Keeper's Bargain", "Şeytan anlaşmaları kalp yerine altın kullanır"}, --  Keeper's Bargain
	[172] = {"172", "Cursed Penny", "Altın toplarken rastgele bir odaya ışınlan#Gizli odalara ışınlanabilir"}, --  Cursed Penny
	[173] = {"173", "Your Soul", "{{Warning}} TEK KULLANIM {{Warning}}#Kalp kaybetmeden şeytan anlaşması yapmak için kullanılabilir"}, --  Your Soul
	[174] = {"174", "Number Magnet", "+10% Şeytan anlaşması şansı"}, --  Number Magnet
	[175] = {"175", "Strange Key", "Hush dövüşüne açılan yolu açma şansı, oyun süresine bakılmaksızın#Pandora's Box {{Collectible297}} kullanılırken rastgele havuzlardan 6 item çıkartır"}, --  Strange Key
	[176] = {"176", "Lil Clot", "Kan birikmesi arkadaşı çıkartır, Isaac'in hareketlerini ve atış yönünü taklit eder"}, --  Lil Clot
	[177] = {"177", "Temporary Tattoo", "Challenge odası veya Boss challenge odası tamamlandığında ödül çıkartır"}, --  Temporary Tattoo
	[178] = {"178", "Swallowed M80", "Oyuncu hasar aldığında patlar"}, --  Swallowed M80
	[179] = {"179", "RC Remote", "Arkadaşların hareketleri oyuncu tarafından kontrol edilir"}, --  RC Remote
	[180] = {"180", "Found Soul", "Isaac'in hareketlerini takip edip hayalet gözayşı atan arkadaş#Aynı gözyaşı ve efektlere sahip olur"}, --  Found Soul
	[181] = {"181", "Expansion Pack", "Aktif item kullanıldığında rastgele başka bir aktif item efektini de taklit eder"}, --  Expansion Pack
	[182] = {"182", "Beth's Essence", "Katta bir, hasar alındığında wisp {{Collectible584}} yaratır ve dokunulmazlık verir#Melek odasında girildiğinde 5 wisp yaratır#Dılencilere ödeme yapılırken wisp oluşturur"}, --  Beth's Essence
	[183] = {"183", "The Twins", "Her oda:#Arkadaş yokken: Brother Bobby {{Collectible8}} ve/veya Sister Maggy {{Collectible67}} verme şansı#Arkadaş varken: arkadaşı kopyalama şansı"}, --  The Twins
	[184] = {"184", "Adoption Papers", "Dükkanlar arkadaş satabilir#Arkadaşlar her zaman indirimde olur"}, --  Adoption Papers
	[185] = {"185", "Cricket Leg", "Düşman öldürürken rastgele bir locust oluşturma şansı"}, --  Cricket Leg
	[186] = {"186", "Apollyon's Best Friend", "{{Throwable}} {{ColorOrange}}Atılabilir{{CR}} (ateş tuşuna çift bas)#Nişan alıp ateş edebileceğin bir atak sineği verir"}, --  Apollyon's Best Friend
	[187] = {"187", "Broken Glasses", "33% şans ile item odalarına ekstra kör item ekler#Alternatif katlardaki kör itemleri gösterir"}, --  Broken Glasses
	[188] = {"188", "Ice Cube", "Odaya girdiğinde düşmanı buz yapma şansı"}, --  Ice Cube
	[189] = {"189", "Sigil of Baphomet", "Düşman öldürüldüğünde 1 saniyelik kalkan aktive eder"}, --  Sigil of Baphomet
}
EID:updateDescriptionsViaTable(repTrinkets, EID.descriptions["tr_tr"].trinkets)



-- Card Buffs caused by Tarot Cloth
-- Note: "#" will be replaced with "#{{Collectible451}} " automatically, in order to add Tarot Cloth icon infront of each buff-bulletpoint
EID.descriptions["tr_tr"].tarotClothBuffs = {
	[2] = {"2", "", "{{Collectible34}} The Book of Belial efektini sağlar"}, -- I - The Magician
	[3] = {"3", "", "İlk ayaktan hemen sonra ikinci bir ayak iner"}, -- II - The High Priestess
	[4] = {"4", "", "Özellik artışlarını dört katına çıkartır"}, -- III - The Empress
	[5] = {"5", "", "Boss henüz yenilmedi ise, ışınlanmanın üzerine 1 Ruh kalbi verir"}, -- IV - The Emperor
	[6] = {"6", "", "3 Ruh Kalbi oluşturur"}, -- V - The Hierophant
	[7] = {"7", "", "3 kırmızı kalp oluşturur"}, -- VI - The Lovers
	[8] = {"8", "", "Süre iki katı"}, -- VII - The Chariot
	[9] = {"9", "", "Ödül iki katı"}, -- VIII - Justice
	[10] = {"10", "", "Greedin dükkanda çıkmasına engel olur#Greed ile savaşıldıysa dükkanı normal dükkana çevirir"}, -- IX - The Hermit
	[11] = {"11", "", "2 Slot Makinası çıkartır"}, -- X - Wheel of Fortune
	[12] = {"12", "", "İki katı özellik artışı, hasar yüzdesi hariç"}, -- XI - Strength
	[14] = {"14", "", "80 hasar verir"}, -- XIII - Death
	[15] = {"15", "", "2 Kan bankası makinası çıkartır"}, -- XIV - Temperance
	[16] = {"16", "", "Hasar artışı iki katına çıkar"}, -- XV - The Devil
	[17] = {"17", "", "12 troll bombası çıkartır"}, -- XVI - The Tower
	[18] = {"18", "", "Hazie odasına henüz girilmedi ise, seçilebilecek 2 item gösterilir"}, -- XVII - The Stars
	[21] = {"21", "", "2 dilenci çıkartır"}, -- XX - Judgement
	[56] = {"56", "", "Pickupların dışında tüm itemleri de düşürür, Tarot Cloth dahil"}, -- 0 - The Fool?
	[59] = {"59", "", "3 geçici kalp konteynırı verir"}, -- III - The Empress?
	[61] = {"61", "", "6 kemik kalpi çıkartır"}, -- V - The Hierophant?
	[62] = {"62", "", "4 kırık kalp ve 4 item çıkartır"}, -- VI - The Lovers?
	[64] = {"64", "", "4-14 altın kasa çıkartır"}, -- VIII - Justice?
	[70] = {"70", "", "20 hap iç"}, -- XIV - Temperance?
	[72] = {"72", "", "14 taş grubu çıkartır"}, -- XVI - The Tower?
	[73] = {"73", "", "2 item siler ve 4 çıkartır"}, -- XVII - The Stars?
	[76] = {"76", "", "2 stok makinası çıkartır"}, -- XX - Judgement?
}



EID.descriptions["tr_tr"].goldenTrinket = "ALTIN: Efekt iki katı!"

---------- Cards ----------
local repCards={
	[27] = {"27", "Ace of Clubs", "Bütün pickup, kasa, ve boss olmayan düşmanları bombaya çevirir"}, -- Ace of Clubs
	[28] = {"28", "Ace of Diamonds", "Bütün pickup, kasa, ve boss olmayan düşmanları altına çevirir"}, -- Ace of Diamonds
	[29] = {"29", "Ace of Spades", "Bütün pickup, kasa, ve boss olmayan düşmanları anahtara çevirir"}, -- Ace of Spades
	[30] = {"30", "Ace of Hearts", "Bütün pickup, kasa, ve boss olmayan düşmanları kalbe çevirir"}, -- Ace of Hearts
	[39] = {"39", "Algiz", "20 saniyeliğine dokunulmazlık"}, -- Algiz
	[51] = {"51", "Holy Card", "Holy Mantle efekti verir#(Sonrakı alınan hasar 0)#Efekt hasar alana kadar sürer"}, -- Holy card
	
	[55] = {"55", "Rune Shard", "Rastgele bir rune efekti aktive eder#Rune efekti daha zayıftır"}, -- Rune Shard
	[56] = {"56", "0 - The Fool?", "Bütün kalplerini ve pickuplarını yere bırakır#Sadece yarım kalp kalır#Pickuplar {{Collectible74}} {{Collectible19}} olarak tekrar değişir miktar yetersiz ise"}, -- 0 - The Fool?
	[57] = {"57", "I - The Magician?", "Büyük bir ateş ve düşmanları iten bir aura verir#1 dakikalığına"}, -- I - The Magician?
	[58] = {"58", "II - The High Priestess?", "Annenin ayağı 1 dakikalığına sürekli iner"}, -- II - The High Priestess?
	[59] = {"59", "III - The Empress?", "Geçici efekt:#↑ +2 kırmızı kalp#↑ +1.35 Gözyaşı"}, -- III - The Empress?
	[60] = {"60", "IV - The Emperor?", "Seni ekstra ödülleri olan ekstra bir Boss odasına ışınlar"}, -- IV - The Emperor?
	[61] = {"61", "V - The Hierophant?", "2 kemik kalpi çıkartır"}, -- V - The Hierophant?
	[62] = {"62", "VI - The Lovers?", "Odanın havzuzundan rastgele 1 item çıkartır#1 kırmızı kalp konteynırı veya 2 Ruh Kalbini kırık kalbe çevirir"}, -- VI - The Lovers?
	[63] = {"63", "VII - The Chariot?", "10 saniyeliğine dokunulmaz bir heykele dönüş#Süre boyunca çok fazla atış sıklığı"}, -- VII - The Chariot?
	[64] = {"64", "VIII - Justice?", "2-4 altın kasa çıkartır"}, -- VIII - Justice?
	[65] = {"65", "IX - The Hermit?", "odadaki pickupları ve itemleri altına çevirir#Coin değerleri dükkan fiyatlarına eşdeğer olur"}, -- IX - The Hermit?
	[66] = {"66", "X - Wheel of Fortune?", "Rastgele zar odası efekti"}, -- X - Wheel of Fortune?
	[67] = {"67", "XI - Strength?", "Odadaki düşmanlar zayıflar, yavaşlar ve iki katı hasar alır"}, -- XI - Strength?
	[68] = {"68", "XII - The Hanged Man?", "Oyuncuyu 30 saniyeliğine Keepera dönüştürür#Üçlü atış verir ve hız eksilir#Öldürülen düşmanlar rastgele altın verir"}, -- XII - The Hanged Man?
	[69] = {"69", "XIII - Death?", "Book of the Dead {{Collectible545}} efekti verir#(her öldürülen düşman için kemik şeyleri çıkartır)"}, -- XIII - Death?
	[70] = {"70", "XIV - Temperance?", "5 rastgele hap efekti uygular"}, -- XIV - Temperance?
	[71] = {"71", "XV - The Devil?", "İncil efekti verir {{Collectible33}}#Seraphim {{Collectible390}} arkadaşı verir# 30 Saniyeliğine"}, -- XV - The Devil?
	[72] = {"72", "XVI - The Tower?", "6 grup rastgele taş ve engel çıkartır"}, -- XVI - The Tower?
	[73] = {"73", "XVII - The Stars?", "En eski pasif itemi siler#Odanın havuzundan rastgele 2 item çıkartır"}, -- XVII - The Stars?
	[74] = {"74", "XVIII - The Moon?", "Ultra gizli odaya ışınlar#Dönüş yolu kırmızı odalardan oluşacaktır"}, -- XVIII - The Moon?
	[75] = {"75", "XIX - The Sun?", "Spirit of the Night {{Collectible159}} efekti verir#↑ +1.5 Hasar# Bulunan kat için #Kırmızı kalpleri kemik kalplerine çevirir, efekt bittiğinde geri döner#Curse of Darkness uygular"}, -- XIX - The Sun?
	[76] = {"76", "XX - Judgement?", "Stok makinası çıkartır"}, -- XX - Judgement?
	[77] = {"77", "XXI - The World?", "Sürünme alanına tuzak kapısı çıkartır"}, -- XXI - The World?
	[78] = {"78", "Cracked Key", "Tek kullanımlık Red Key {{Collectible580}}"}, -- Cracked Key
	[79] = {"79", "Queen of Hearts", "1-12 kırmızı kalp çıkartır"}, -- Queen of Hearts
	[80] = {"80", "Wild Card", "Son kullanılan hap, kart, rune, Ruh taşı veya aktif itemin efektini kopyalar"}, -- Wild Card
	[81] = {"81", "Soul of Isaac", "Odadaki itemleri değiştirir#1 saniye sonra orjinal formuna döner#Efekt tekrar eder"}, -- Soul of Isaac
	[82] = {"82", "Soul of Magdalene", "Isaaci oda için boyu değişen kırmızı bir auraya sarar#Öldürülen düşmanlar 2 saniye içinde kaybolan kalpler düşürür"}, -- Soul of Magdalene
	[83] = {"83", "Soul of Cain", "Red Key {{Collectible580}} ile mümkün olan her çıkış için kırmızı oda açar"}, -- Soul of Cain
	[84] = {"84", "Soul of Judas", "Isaaci düşmanların içinden geçip komaya sokabilecek bir hayalete dönüştürür#Birkaç saniye sonra, hepsine saldırır, heder başına hasar bonusu alır"}, -- Soul of Judas
	[85] = {"85", "Soul of ???", "8 kahverengi havuz ile zehir osuruğu çıkartır#Ardından 7 göt bombası izi bırakır#Havuzda durmak ↑ +1.35 Gözyaşı ve ↑ +1 hasar verir"}, -- Soul of ???
	[86] = {"86", "Soul of Eve", "14 Dead Bird familiars fly in and attack enemies# Lasts for current room"}, -- Soul of Eve
	[87] = {"87", "Soul of Samson", "Turn into a berserk Samson with melee attack for 10 seconds#↑ +0.4 Hız#↑ Gözyaşı#↑ +3 Hasar"}, -- Soul of Samson
	[88] = {"88", "Soul of Azazel", " 7.5 saniyeliğine Mega Blast {{Collectible441}} aktive eder"}, -- Soul of Azazel
	[89] = {"89", "Soul of Lazarus", "Öl ve anında yarım kalp ve biraz dokunulşmazlık zamanı ile tekrar doğ#Ölümcül hasar alındığında item otomatik kullanılır(ekstra can gibi)"}, -- Soul of Lazarus
	[90] = {"90", "Soul of Eden", "D6 {{Collectible105}} ve D20 {{Collectible166}} efektlerini aktive eder#Değişen itemler rastgele havuzlardan gelir"}, -- Soul of Eden
	[91] = {"91", "Soul of the Lost", "Oda için öl ve The Lost olarak geri dön"}, -- Soul of the Lost
	[92] = {"92", "Soul of Lilith", "Rastgele 1 arkadaş ekler"}, -- Soul of Lilith
	[93] = {"93", "Soul of the Keeper", "3-25 rastgele altın verir"}, -- Soul of the Keeper
	[94] = {"94", "Soul of Apollyon", "15 rastgele locust sineği çıkartır"}, -- oul of Apollyon
	[95] = {"95", "Soul of the Forgotten", "Oda için The Forgottenı geçici ikinci karakter olarak çıkartır"}, -- Soul of the Forgotten
	[96] = {"96", "Soul of Bethany", "Rastgele özelliklerle 6 Book of Virtues {{Collectible584}} wispi çıkar"}, -- Soul of Bethany
	[97] = {"97", "Soul of Jacob and Esau", "Oda için Esauyu geçici ikinci karakter olarak çıkartır"}, -- Soul of Jacob and Esau
}
EID:updateDescriptionsViaTable(repCards, EID.descriptions["tr_tr"].cards)

---------- Pills ----------

local repPills={
	[4] = {"3", "Bombs are Key", "Bomba ve anahtar sayısını birbirleri ile değiştirir#Altın bomba ve anahtar da değişir"}, -- Bombs are Key
	[12] = {"11", "Range down", "↓ -0.6 Menzil eksilir"}, -- Range down
	[13] = {"12", "Range up", "↑ +0.75 Menzil"}, -- Range up
	[42] = {"41", "I'm Drowsy...", "Isaaci ve tüm düşmanları yavaşlatır"}, -- I'm Drowsy...
	[43] = {"42", "I'm Excited!!!", "Isaaci ve tüm düşmanları hızlandırır#30 ve 60 saniye sonra tekrar aktif olur"}, -- I'm Excited!!!
	
	[48] = {"47", "Shot speed down", "↓ -0.15 Atış hızı eksilir"}, -- Shot speed down
	[49] = {"48", "Shot speed up", "↑ +0.15 Gözyaşı hızı"}, -- Shot speed up
	[50] = {"49", "Experimental Pill", "↑ Rastgele 1 özelliği arttır#↓ Rastgele 1 diğer özelliği azaltır#PHD ile azalmaz"}, -- Experimental Pill
	[9999] = {"", "Golden Pill", "Rastgele hap efekti#Birkaç kullanımdan sonra kendini yok eder"}, -- golden Pill
}
EID:updateDescriptionsViaTable(repPills, EID.descriptions["tr_tr"].pills)

EID.descriptions["tr_tr"].horsepills={
	{"0", "Bad Gas", "Tüm odayı zehirler"}, -- Bad Gas
	{"1", "Bad Trip", "Sana 2 kalp hasar verir"}, -- Bad Trip
	{"2", "Balls of Steel", "+4 Ruh Kalbi"}, -- Balls of Steel
	{"3", "Bombs are Key", "Bomba ve anahtar sayısını birbirleri ile değiştirir#Anahtar ve bomba sayısını 50% arttırır#Altın bomba ve anahtar da değişir"}, -- Bombs are Key
	{"4", "Explosive Diarrhea", "Bulunduğun yerde mega takip eden troll bomba çıkartır"}, -- Explosive Diarrhea
	{"5", "Full can", "Full can#+3 Ruh Kalbi"}, -- Full can
	{"6", "Health Down", "↓ -2 HP azalır"}, -- Health Down
	{"7", "HP", "↑ +2 boş kalp konteynırı"}, -- HP
	{"8", "I Found Pills", "Efekti yok"}, -- I Found Pills
	{"9", "Puberty", "Efekti yok"}, -- Puberty
	{"10", "Pretty Fly", "1 Büyük fan sinek {{Collectible279}} yörüngeci çıkartır#Üst limit yok"}, -- Pretty Fly
	{"11", "Range down", "↓ -1.2 Menzil eksilir"}, -- Range down
	{"12", "Range up", "↑ +0.9 Menzil"}, -- Range up
	{"13", "Speed down", "↓ -0.24 Hız eksilir"}, -- Speed down
	{"14", "Speed up", "↑ +0.3 Hız"}, -- Speed up
	{"15", "Tears down", "↓ -0.56 Gözyaşı azalır"}, -- Tears down
	{"16", "Tears up", "↑ +0.70 Gözyaşı"}, -- Tears down
	{"17", "Luck Down", "↓ -2 Luck down"}, -- Luck Down
	{"18", "Luck Up", "↑ +2 Şans"}, -- Luck Up
	{"19", "Telepills", "Rastgele bir odaya ışınla"}, -- Telepills
	{"20", "48 Hour Energy!", "Aktif itemini şarj eder#Pil düşürür"}, -- 48 Hour Energy!
	{"21", "Hematemesis", "1 kalp konteynırı dışında hepsini boşaltır#Kırmızı kalp çıkartır"}, -- Hematemesis
	{"22", "Paralysis", "4 saniye hareket edemezsin"}, -- Paralysis
	{"23", "I can see forever!", "Kattaki gizli oda girişlerini açar#Full haritalama sağlar"}, -- I can see forever!
	{"24", "Pheromones", "Odadaki tüm düşmanları kalıcı arkadaşcıl yapar"}, -- Pheromones
	{"25", "Amnesia", "Kat haritasını gizler"}, -- Amnesia
	{"26", "Lemon Party", "Odayı dolduran düşmanlara hasar veren sarı bir havuz çıkartır"}, -- Lemon Party
	{"27", "R U a Wizard?", "60 saniye boyunca çapraz ateş et"}, -- R U a Wizard?
	{"28", "Percs!", "Oda için sadece yarım kalp hasarı al"},  -- Percs!
	{"29", "Addicted!", "Oda için sadece tam kalp hasarı al"}, -- Addicted!
	{"30", "Re-Lax", "4 saniye boyunca yürüyerek bok çıkart"}, -- Re-Lax
	{"31", "???", "Kat için Curse of the maze efekti"}, -- ???
	{"32", "One makes you larger", "Çok fazla büyürsün#Hitboxına etki etmez"}, -- One makes you larger
	{"33", "One makes you small", "Çok fazla küçülürsün#Hitboxın da küçülür"}, -- One makes you small
	{"34", "Infested!", "Odadaki her bok için 2 mavi sinek çıkartır"}, -- Infested!
	{"35", "Infested?", "Odadaki her düşman için 2 mavi örümcek çıkartır#Odada düşman olmadığında 3-6 mavi sinek çıkartır"}, -- Infested?
	{"36", "Power Pill!", "Kısa dokunulmazlık efekti#↑ #7 Hasar#↑ +3 Menzil# oda boyunca sürer"}, -- Power Pill!
	{"37", "Retro Vision", "90 Saniyeliğine ekranı pikselleştirir"}, -- Retro Vision
	{"38", "Friends Till The End!", "6 Mavi sinek çıkartır"}, -- Friends Till The End!
	{"39", "X-Lax", "Uzun süreli kaygan bir havuz çıkartır"}, -- X-Lax
	{"40", "Something's wrong...", "Uzun süreli yavaşlatan bir havuz çıkartır"}, -- Something's wrong...
	{"41", "I'm Drowsy...", "Odadaki tüm düşmanları yavaşlar"}, -- I'm Drowsy...
	{"42", "I'm Excited!!!", "Odadaki tüm düşmanları hızlandırır"}, --I'm Excited!!!
	{"43", "Gulp!", "Elindeki trinketi ye ve efektini kalıcı olarak kazan"}, -- Gulp!
	{"44", "Horf!", "Ipecac gözyaşları atar"}, -- Horf!
	{"45", "Feels like I'm walking on sunshine!", "Kısa dokunulmazlık#Tüm düşmanları korkut#2 yenilen düşman yarım kalp iyileştirir"}, -- Feels like I'm walking on sunshine!
	{"46", "Vurp!", "Son kullanılan hapı at hapı olarak çıkartır"}, -- Vurp!
	{"47", "Shot speed down", "↓ -0.3 Atış hızı eksilir"}, -- Shot speed down
	{"48", "Shot speed up", "↑ +0.3 Gözyaşı hızı"}, -- Shot speed up
	{"49", "Experimental Pill", "↑ Rastgele 1 özelliği iki kere arttır#↓ Rastgele 1 diğer özelliği iki kere azaltır#PHD ile azalmaz"}, -- Experimental Pill
	[9999] = {"", "Golden Pill", "Rastgele bir at hapı efekti#Birkaç kullanımdan sonra kendini yok eder"}, -- golden Pill
}

EID.descriptions["tr_tr"].CraftingBagContent = "Çantadaki pickuplar:"
EID.descriptions["tr_tr"].CraftingRoomContent = "Odadaki pickuplar:"
EID.descriptions["tr_tr"].CraftingResults = "Sonuçlar:#(Kaydır: TAB(basılı tut) + Ateş △/▽)"
EID.descriptions["tr_tr"].CraftingBagModError = "!!! {{ColorRed}}HATA:#{{ColorRed}}Bu özellik şu anda modlu itemleri desteklemiyor"

