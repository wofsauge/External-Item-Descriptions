---------------------------------------
-----  Basic Vietnamese descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "vi"

-- init Vietnamese table
EID.descriptions[languageCode] = {}
EID.descriptions[languageCode].custom = {} -- table for custom entity descriptions
EID.descriptions[languageCode].languageName = "Vietnamese"
EID.descriptions[languageCode].alternativeLanguageCodes = {"vietnamese"}

-- Fonts to be used with this language pack
EID.descriptions[languageCode].fonts = {{name="vi_vn"}, {name="vi_vnborderless"}}

---------- Collectibles ----------

EID.descriptions[languageCode].collectibles={
	{"1", "The Sad Onion", "↑ {{Tears}} +0.7 Nước mắt"}, -- The Sad Onion
	{"2", "The Inner Eye", "↓ {{Tears}} x0.48 Hệ số nước mắt#↓ {{Tears}} +3 Độ trễ nước mắt#Isaac bắn 3 nước mắt cùng lúc"}, -- The Inner Eye
	{"3", "Spoon Bender", "Nước mắt tự dẫn đường"}, -- Spoon Bender
	{"4", "Cricket's Head", "↑ {{Damage}} +0.5 Damage#↑ {{Damage}} x1.5 Hệ số Damage"}, -- Cricket's Head
	{"5", "My Reflection", "↑ {{Range}} +1.5 Range#↑ +1 Tốc độ rơi nước mắt#↑ {{Shotspeed}} +0.6 Tốc độ đạn#Nước mắt có hiệu ứng boomerang"}, -- My Reflection
	{"6", "Number One", "↑ {{Tears}} +1.5 Nước mắt#↑ +0.76 Tốc độ rơi nước mắt#↓ {{Range}} -17.62 Range"}, -- Number One
	{"7", "Blood of the Martyr", "↑ {{Damage}} +1 Damage"}, -- Blood of the Martyr
	{"8", "Brother Bobby", "Bắn nước mắt thường#Gây 3.5 sát thương mỗi nước mắt"}, -- Brother Bobby
	{"9", "Skatole", "Tất cả kẻ địch là ruồi đều thân thiện"}, -- Skatole
	{"10", "Halo of Flies", "+2 vệ tinh ruồi#Chặn đạn của kẻ địch"}, -- Halo of Flies
	{"11", "1up!", "↑ +1 Mạng#Isaac hồi sinh với đầy máu khi chết"}, -- 1up!
	{"12", "Magic Mushroom", "↑ {{Heart}} +1 Máu#↑ {{Speed}} +0.3 Tốc độ#↑ {{Damage}} +0.3 Sát thương#↑ {{Damage}} x1.5 Hệ số sát thương#↑ {{Range}} +5.25 Tầm bắn#↑ +0.5 Tốc độ rơi nước mắt#Tăng kích thước#{{HealingRed}} Đầy máu"}, -- Magic Mushroom
	{"13", "The Virus", "↓ {{Speed}} -0.1 Tốc độ#{{Poison}} Chạm vào kẻ địch sẽ gây độc cho chúng#{{BlackHeart}} Kẻ địch bị trúng độc có thể thả Trái tim đen"}, -- The Virus
	{"14", "Roid Rage", "↑ {{Speed}} +0.6 Tốc độ#↑ {{Range}} +5.25 Tầm bắn#↑ +0.5 Tốc độ rơi nước mắt"}, -- Roid Rage
	{"15", "<3", "↑ {{Heart}} +1 Máu#{{HealingRed}} Đầy máu"}, -- <3
	{"16", "Raw Liver", "↑ {{Heart}} +2 Máu#{{HealingRed}} Đầy máu"}, -- Raw Liver
	{"17", "Skeleton Key", "{{Key}} +99 Chìa khóa"}, -- Skeleton Key
	{"18", "A Dollar", "{{Coin}} +99 Đồng xu"}, -- A Dollar
	{"19", "Boom!", "{{Bomb}} +10 Bom"}, -- Boom!
	{"20", "Transcendence", "Bay được"}, -- Transcendence
	{"21", "The Compass", "Hiển thị các biểu tượng trên bản đồ#Không hiển thị bố cục của bản đồ"}, -- The Compass
	{"22", "Lunch", "↑ {{Heart}} +1 Máu"}, -- Lunch
	{"23", "Dinner", "↑ {{Heart}} +1 Máu"}, -- Dinner
	{"24", "Dessert", "↑ {{Heart}} +1 Máu"}, -- Dessert
	{"25", "Breakfast", "↑ {{Heart}} +1 Máu"}, -- Breakfast
	{"26", "Rotten Meat", "↑ {{Heart}} +1 Máu"}, -- Rotten Meat
	{"27", "Wooden Spoon", "↑ {{Speed}} +0.3 Tốc độ"}, -- Wooden Spoon
	{"28", "The Belt", "↑ {{Speed}} +0.3 Tốc độ"}, -- The Belt
	{"29", "Mom's Underwear", "↑ {{Range}} +5.25 Tầm bắn#↑ +0.5 Tốc độ rơi nước mắt"}, -- Mom's Underwear
	{"30", "Mom's Heels", "↑ {{Range}} +5.25 Tầm bắn#↑ +0.5 Tốc độ rơi nước mắt"}, -- Mom's Heels
	{"31", "Mom's Lipstick", "↑ {{Range}} +5.25 Tầm bắn#↑ +0.5 Tốc độ rơi nước mắt"}, -- Mom's Lipstick
	{"32", "Wire Coat Hanger", "↑ {{Tears}} +0.7 Nước mắt"}, -- Wire Coat Hanger
	{"33", "The Bible", "{{Timer}} Bay được trong phòng#{{MomsHeart}} Tiêu diệt ngay lập tức Chân của Mom và Trái tim của Mom#{{Warning}} Giết Isaac khi sử dụng với Satan"}, -- The Bible
	{"34", "The Book of Belial", "{{AngelDevilChance}} +12.5% Cơ hội Phòng Quỷ/Thiên thần khi cầm#{{Timer}} Nhận trong phòng:#↑ {{Damage}} +2 Sát thương"}, -- The Book of Belial
	{"35", "The Necronomicon", "Gây 40 sát thương cho tất cả kẻ địch trong phòng"}, -- The Necronomicon
	{"36", "The Poop", "Tạo ra một phân và đẩy lùi kẻ địch#Có thể đặt cạnh hố và phá hủy bằng bom để tạo cầu"}, -- The Poop
	{"37", "Mr. Boom", "Thả một quả bom lớn bên dưới Isaac gây 110 sát thương"}, -- Mr. Boom
	{"38", "Tammy's Head", "Bắn 10 nước mắt theo vòng tròn quanh Isaac#Nước mắt sao chép hiệu ứng nước mắt của Isaac, cộng thêm 25 sát thương"}, -- Tammy's Head
	{"39", "Mom's Bra", "Làm hóa đá tất cả kẻ địch trong phòng trong 4 giây"}, -- Mom's Bra
	{"40", "Kamikaze!", "Gây một vụ nổ tại vị trí của Isaac#Nó gây 40 sát thương"}, -- Kamikaze!
	{"41", "Mom's Pad", "{{Fear}} Làm tất cả kẻ địch trong phòng sợ hãi trong 5 giây"}, -- Mom's Pad
	{"42", "Bob's Rotten Head", "Sử dụng vật phẩm và bắn theo một hướng sẽ ném đầu#{{Poison}} Đầu nổ khi va chạm và gây độc cho kẻ địch"}, -- Bob's Rotten Head
	{"43", "", "<vật phẩm không tồn tại>"},
	{"44", "Teleport!", "Dịch chuyển Isaac vào một phòng ngẫu nhiên, trừ phòng I AM ERROR"}, -- Teleport!
	{"45", "Yum Heart", "{{HealingRed}} Hồi 1 trái tim"}, -- Yum Heart
	{"46", "Lucky Foot", "↑ {{Luck}} +1 May mắn#+8% Cơ hội nhận thưởng khi dọn phòng#Cơ hội thắng cao hơn khi đánh bạc"}, -- Lucky Foot
	{"47", "Doctor's Remote", "{{Collectible168}} Khi sử dụng, bắt đầu ngắm với tâm ngắm#Một tên lửa hạ cánh xuống tâm ngắm sau 1.5 giây#Nó gây 20x sát thương của Isaac"}, -- Doctor's Remote
	{"48", "Cupid's Arrow", "Nước mắt xuyên thấu"}, -- Cupid's Arrow
	{"49", "Shoop da Whoop!", "Lần bắn tiếp theo được thay bằng một tia#Nó gây 26x sát thương của Isaac trong 0.9 giây"}, -- Shoop da Whoop!
	{"50", "Steven", "↑ {{Damage}} +1 Sát thương"}, -- Steven
	{"51", "Pentagram", "↑ {{Damage}} +1 Sát thương#{{AngelDevilChance}} +10% Cơ hội Phòng Quỷ/Thiên thần"}, -- Pentagram
	{"52", "Dr. Fetus", "↓ {{Tears}} x0.4 Hệ số nước mắt#{{Bomb}} Isaac bắn bom thay vì nước mắt#{{Damage}} Những quả bom đó gây 5x sát thương của Isaac + 30"}, -- Dr. Fetus
	{"53", "Magneto", "Các vật phẩm nhặt được bị hút về phía Isaac"}, -- Magneto
	{"54", "Treasure Map", "Hiển thị bố cục tầng#Không hiển thị biểu tượng phòng"}, -- Treasure Map
	{"55", "Mom's Eye", "50% cơ hội bắn thêm một nước mắt ngược lại phía sau#{{Luck}} 100% cơ hội ở 2 may mắn"}, -- Mom's Eye
	{"56", "Lemon Mishap", "Tạo một vũng chất lỏng#Chất lỏng gây 24 sát thương mỗi giây"}, -- Lemon Mishap
	{"57", "Distant Admiration", "Vệ tinh ruồi tầm trung#Gây 75 sát thương tiếp xúc mỗi giây"}, -- Distant Admiration
	{"58", "Book of Shadows", "{{Timer}} Bất tử trong 10 giây"}, -- Book of Shadows
	{"59", "", "<vật phẩm không tồn tại>"},
	{"60", "The Ladder", "Cho phép Isaac vượt qua các khoảng trống 1 ô"}, -- The Ladder
	{"61", "", "<vật phẩm không tồn tại>"},
	{"62", "Charm of the Vampire", "{{HealingRed}} Giết 13 kẻ địch hồi nửa trái tim"}, -- Charm of the Vampire
	{"63", "The Battery", "{{Battery}} Vật phẩm kích hoạt có thể được sạc quá mức đến hai lần sạc đầy"}, -- The Battery
	{"64", "Steam Sale", "{{Shop}} Vật phẩm trong Cửa hàng giảm giá 50%"}, -- Steam Sale
	{"65", "Anarchist Cookbook", "Tạo 6 Bom Quỷ gần trung tâm phòng"}, -- Anarchist Cookbook
	{"66", "The Hourglass", "{{Slow}} Làm chậm kẻ địch trong 8 giây"}, -- The Hourglass
	{"67", "Sister Maggy", "Bắn nước mắt thường#Gây 3.5 sát thương mỗi nước mắt"}, -- Sister Maggy
	{"68", "Technology", "Isaac bắn tia laze thay vì nước mắt"}, -- Technology
	{"69", "Chocolate Milk", "{{Chargeable}} Nước mắt có thể sạc#{{Damage}} Sát thương tăng theo thời gian sạc, tối đa 4x#{{Tears}} Thời gian sạc tối đa là 2.5x độ trễ nước mắt"}, -- Chocolate Milk
	{"70", "Growth Hormones", "↑ {{Speed}} +0.4 Tốc độ#↑ {{Damage}} +1 Sát thương"}, -- Growth Hormones
	{"71", "Mini Mush", "↑ {{Speed}} +0.3 Tốc độ#↑ +1.5 Tốc độ rơi nước mắt#↑ Giảm kích thước#↓ {{Range}} -4.25 Tầm bắn#Tốc độ rơi nước mắt tăng và tầm bắn giảm = tăng nhẹ tầm bắn"}, -- Mini Mush
	{"72", "Rosary", "{{SoulHeart}} +3 Trái tim Linh hồn#{{Collectible33}} Kinh Thánh được thêm vào tất cả các nhóm vật phẩm"}, -- Rosary
	{"73", "Cube of Meat", "Cấp 1: Vệ tinh#Cấp 2: Vệ tinh bắn#Cấp 3: Meat Boy#Cấp 4: Super Meat Boy"}, -- Cube of Meat
	{"74", "A Quarter", "{{Coin}} +25 Đồng xu"}, -- A Quarter
	{"75", "PHD", "{{HealingRed}} Hồi 2 trái tim#{{Pill}} Tạo 1 viên thuốc#{{Pill}} Biến thuốc xấu thành thuốc tốt#{{BloodDonationMachine}} Máy Hiến Máu cho nhiều {{Coin}} đồng xu hơn"}, -- PHD
	{"76", "X-Ray Vision", "{{SecretRoom}} Mở tất cả lối vào phòng bí mật"}, -- X-Ray Vision
	{"77", "My Little Unicorn", "{{Timer}} Nhận trong 6 giây:#↑ {{Speed}} +0.28 Tốc độ#Bất tử#Isaac không thể bắn nhưng gây 40 sát thương tiếp xúc mỗi giây"}, -- My Little Unicorn
	{"78", "Book of Revelations", "{{SoulHeart}} +1 Trái tim Linh hồn#{{AngelDevilChance}} +17.5% Cơ hội Phòng Quỷ/Thiên thần khi cầm#Sử dụng vật phẩm có cơ hội cao thay thế trùm tầng bằng một kỵ sĩ"}, -- Book of Revelations
	{"79", "The Mark", "↑ {{Speed}} +0.2 Tốc độ#↑ {{Damage}} +1 Sát thương#{{SoulHeart}} +1 Trái tim Linh hồn"}, -- The Mark
	{"80", "The Pact", "↑ {{Tears}} +0.7 Nước mắt#↑ {{Damage}} +0.5 Sát thương#{{SoulHeart}} +2 Trái tim Linh hồn"}, -- The Pact
	{"81", "Dead Cat", "↑ +9 Mạng#Isaac hồi sinh với 1 hộp tim khi chết#{{Warning}} Đặt hộp tim của Isaac thành 1 khi nhặt lên"}, -- Dead Cat
	{"82", "Lord of the Pit", "↑ {{Speed}} +0.3 Tốc độ#Bay được"}, -- Lord of the Pit
	{"83", "The Nail", "Khi sử dụng:#{{SoulHeart}} +1 Trái tim Linh hồn#{{Timer}} Nhận trong phòng:#↑ {{Damage}} +0.7 Sát thương#↓ {{Speed}} -0.18 Tốc độ#Isaac gây 40 sát thương tiếp xúc mỗi giây#Cho phép Isaac phá đá bằng cách đi vào chúng"}, -- The Nail
	{"84", "We Need To Go Deeper!", "Mở cửa sập xuống tầng tiếp theo#{{LadderRoom}} 10% cơ hội mở cửa sập không gian bò"}, -- We Need To Go Deeper!
	{"85", "Deck of Cards", "{{Card}} Tạo 1 lá bài"}, -- Deck of Cards
	{"86", "Monstro's Tooth", "Monstro rơi xuống một kẻ địch và gây 120 sát thương#{{Warning}} Monstro rơi xuống Isaac nếu phòng không có kẻ địch"}, -- Monstro's Tooth
	{"87", "Loki's Horns", "25% cơ hội bắn theo 4 hướng#{{Luck}} 100% cơ hội ở 7 may mắn"}, -- Loki's Horns
	{"88", "Little Chubby", "Lao về phía trước theo hướng Isaac đang bắn#Gây 52.5 sát thương tiếp xúc mỗi giây"}, -- Little Chubby
	{"89", "Spider Bite", "{{Slow}} 25% cơ hội bắn nước mắt làm chậm#{{Luck}} 100% cơ hội ở 15 may mắn"}, -- Spider Bite
	{"90", "The Small Rock", "↑ {{Tears}} +0.2 Nước mắt#↑ {{Damage}} +1 Sát thương#↓ {{Speed}} -0.2 Tốc độ"}, -- The Small Rock
	{"91", "Spelunker Hat", "Hiển thị loại phòng của các phòng liền kề#{{SecretRoom}} Có thể hiển thị Phòng Bí mật và Phòng Bí mật Siêu cấp"}, -- Spelunker Hat
	{"92", "Super Bandage", "↑ {{Heart}} +1 Máu#{{HealingRed}} Hồi 1 trái tim#{{SoulHeart}} +2 Trái tim Linh hồn"}, -- Super Bandage
	{"93", "The Gamekid", "{{Timer}} Nhận trong 6.5 giây:#Bất tử#Isaac không thể bắn nhưng gây 40 sát thương tiếp xúc mỗi giây#{{HealingRed}} Giết 2 kẻ địch hồi nửa trái tim#{{Fear}} Làm tất cả kẻ địch trong phòng sợ hãi"}, -- The Gamekid
	{"94", "Sack of Pennies", "{{Coin}} Tạo một đồng xu ngẫu nhiên mỗi 2 phòng"}, -- Sack of Pennies
	{"95", "Robo-Baby", "Bắn tia laze#Gây 3.5 sát thương mỗi phát"}, -- Robo-Baby
	{"96", "Little C.H.A.D.", "{{HalfHeart}} Tạo một nửa Trái tim Đỏ mỗi 3 phòng"}, -- Little C.H.A.D.
	{"97", "The Book of Sin", "Tạo một vật phẩm nhặt ngẫu nhiên"}, -- The Book of Sin
	{"98", "The Relic", "{{SoulHeart}} Tạo 1 Trái tim Linh hồn mỗi 5-6 phòng"}, -- The Relic
	{"99", "Little Gish", "{{Slow}} Bắn nước mắt làm chậm#Gây 3.5 sát thương mỗi nước mắt"}, -- Little Gish
	{"100", "Little Steven", "Bắn nước mắt tự dẫn đường#Gây 3.5 sát thương mỗi nước mắt"}, -- Little Steven
	{"101", "The Halo", "↑ {{Heart}} +1 Máu#↑ {{Speed}} +0.3 Tốc độ#↑ {{Tears}} +0.2 Nước mắt#↑ {{Damage}} +0.3 Sát thương#↑ {{Range}} +0.25 Tầm bắn#↑ +0.5 Tốc độ rơi nước mắt"}, -- The Halo
	{"102", "Mom's Bottle of Pills", "{{Pill}} Tạo 1 viên thuốc"}, -- Mom's Bottle of Pills
	{"103", "The Common Cold", "{{Poison}} 25% cơ hội bắn nước mắt độc#{{Luck}} 100% cơ hội ở 12 may mắn"}, -- The Common Cold
	{"104", "The Parasite", "Nước mắt tách đôi khi va chạm#Nước mắt tách ra gây nửa sát thương"}, -- The Parasite
	{"105", "The D6", "Đổi lại các vật phẩm trên bệ trong phòng"}, -- The D6
	{"106", "Mr. Mega", "↑ {{Bomb}} x1.83 Sát thương bom#{{Bomb}} +5 Bom"}, -- Mr. Mega
	{"107", "The Pinking Shears", "{{Timer}} Nhận trong phòng:#Bay được#Cơ thể Isaac tách khỏi đầu và tấn công kẻ địch với 82.5 sát thương tiếp xúc mỗi giây"}, -- The Pinking Shears
	{"108", "The Wafer", "Giảm hầu hết sát thương nhận được xuống nửa trái tim"}, -- The Wafer
	{"109", "Money = Power", "↑ {{Damage}} +0.04 Sát thương cho mỗi {{Coin}} đồng xu Isaac có"}, -- Money = Power
	{"110", "Mom's Contacts", "↑ {{Range}} +0.25 Tầm bắn#↑ +0.5 Tốc độ rơi nước mắt#20% cơ hội bắn nước mắt hóa đá#{{Luck}} 50% cơ hội ở 20 may mắn"}, -- Mom's Contacts
	{"111", "The Bean", "{{Poison}} Gây 5 sát thương cho kẻ địch gần đó và gây độc cho chúng#Độc gây sát thương của Isaac 6 lần"}, -- The Bean
	{"112", "Guardian Angel", "Vệ tinh#Tăng tốc tất cả các vệ tinh khác#Chặn đạn#Gây 105 sát thương tiếp xúc mỗi giây"}, -- Guardian Angel
	{"113", "Demon Baby", "Bắn kẻ địch đến gần Isaac#Gây 3 sát thương mỗi nước mắt"}, -- Demon Baby
	{"114", "Mom's Knife", "Nước mắt của Isaac được thay bằng một con dao ném được#{{Damage}} Con dao gây 2x sát thương của Isaac khi cầm và 6x ở khoảng cách xa nhất"}, -- Mom's Knife
	{"115", "Ouija Board", "Nước mắt xuyên tường"}, -- Ouija Board
	{"116", "9 Volt", "{{Battery}} Tự động sạc thanh đầu tiên của vật phẩm kích hoạt#{{Battery}} Sạc đầy vật phẩm kích hoạt khi nhặt lên"}, -- 9 Volt
	{"117", "Dead Bird", "Nhận sát thương tạo ra một con chim tấn công kẻ địch#Con chim gây 4.3 sát thương tiếp xúc mỗi giây"}, -- Dead Bird
	{"118", "Brimstone", "↓ {{Tears}} x0.33 Hệ số nước mắt#{{Chargeable}} Nước mắt của Isaac được thay bằng một tia máu có thể sạc#{{Damage}} Nó gây 13x sát thương của Isaac trong 0.9 giây"}, -- Brimstone
	{"119", "Blood Bag", "↑ {{Heart}} +1 Máu#↑ {{Speed}} +0.3 Tốc độ#{{HealingRed}} Hồi 4 trái tim"}, -- Blood Bag
	{"120", "Odd Mushroom (Thin)", "↑ {{Speed}} +0.3 Tốc độ#↑ {{Tears}} +1.7 Nước mắt#↓ {{Damage}} x0.9 Hệ số sát thương#↓ {{Damage}} -0.4 Sát thương"}, -- Odd Mushroom (Thin)
	{"121", "Odd Mushroom (Large)", "↑ {{EmptyHeart}} +1 Hộp tim trống#↑ {{Damage}} +0.3 Sát thương#↑ {{Range}} +0.25 Tầm bắn#↑ +0.5 Tốc độ rơi nước mắt#↓ {{Speed}} -0.1 Tốc độ"}, -- Odd Mushroom (Large)
	{"122", "Whore of Babylon", "Khi còn nửa Trái tim Đỏ hoặc ít hơn:#↑ {{Speed}} +0.3 Tốc độ#↑ {{Damage}} +1.5 Sát thương"}, -- Whore of Babylon
	{"123", "Monster Manual", "{{Timer}} Tạo một bạn đồng hành ngẫu nhiên trong phòng"}, -- Monster Manual
	{"124", "Dead Sea Scrolls", "Kích hoạt hiệu ứng vật phẩm kích hoạt ngẫu nhiên#Chọn hiệu ứng từ danh sách vật phẩm cố định"}, -- Dead Sea Scrolls
	{"125", "Bobby-Bomb", "{{Bomb}} +5 Bom#Bom tự dẫn đường"}, -- Bobby-Bomb
	{"126", "Razor Blade", "↑ {{Damage}} +1.2 Sát thương trong phòng#{{Warning}} Gây 1 trái tim sát thương cho Isaac#{{Heart}} Ưu tiên loại bỏ Trái tim Đỏ trước"}, -- Razor Blade
	{"127", "Forget Me Now", "Đổi lại và khởi động lại toàn bộ tầng"}, -- Forget Me Now
	{"128", "Forever Alone", "Vệ tinh ruồi tầm xa#Gây 30 sát thương tiếp xúc mỗi giây"}, -- Forever Alone
	{"129", "Bucket of Lard", "↑ {{EmptyHeart}} +2 Hộp tim trống#↓ {{Speed}} -0.2 Tốc độ#{{HealingRed}} Hồi nửa trái tim"}, -- Bucket of Lard
	{"130", "A Pony", "Khi cầm:#{{Speed}} Đặt Tốc độ của bạn ít nhất là 1.5#Bay được#Khi sử dụng, lao theo hướng di chuyển của Isaac"}, -- A Pony
	{"131", "Bomb Bag", "{{Bomb}} Tạo 1 vật phẩm bom mỗi 3 phòng"}, -- Bomb Bag
	{"132", "A Lump of Coal", "{{Damage}} Nước mắt gây sát thương nhiều hơn khi đi xa hơn"}, -- A Lump of Coal
	{"133", "Guppy's Paw", "{{SoulHeart}} Chuyển 1 hộp tim thành 3 Trái tim Linh hồn"}, -- Guppy's Paw
	{"134", "Guppy's Tail", "{{Chest}} 33% cơ hội thay phần thưởng dọn phòng bằng rương#33% cơ hội không tạo phần thưởng dọn phòng"}, -- Guppy's Tail
	{"135", "IV Bag", "{{Coin}} Làm tổn thương Isaac nửa trái tim và tạo 1-2 đồng xu#{{Heart}} Ưu tiên loại bỏ Trái tim Đỏ trước"}, -- IV Bag
	{"136", "Best Friend", "Tạo một Isaac giả làm mồi nhử kẻ địch và nổ sau 5 giây"}, -- Best Friend
	{"137", "Remote Detonator", "{{Bomb}} +5 Bom#Bom của Isaac không tự động nổ nữa#Khi sử dụng, kích nổ tất cả bom của Isaac cùng lúc"}, -- Remote Detonator
	{"138", "Stigmata", "↑ {{Heart}} +1 Máu#↑ {{Damage}} +0.3 Sát thương"}, -- Stigmata
	{"139", "Mom's Purse", "{{Trinket}} Isaac có thể giữ 2 món trang sức"}, -- Mom's Purse
	{"140", "Bob's Curse", "{{Bomb}} +5 Bom#{{Poison}} Bom của Isaac gây độc cho kẻ địch bị dính vụ nổ"}, -- Bob's Curse
	{"141", "Pageant Boy", "{{Coin}} Tạo 7 đồng xu ngẫu nhiên"}, -- Pageant Boy
	{"142", "Scapular", "{{SoulHeart}} Isaac nhận 1 Trái tim Linh hồn khi bị tổn thương xuống còn nửa trái tim#Chỉ xảy ra một lần mỗi phòng#Rời đi và vào lại phòng cho phép hiệu ứng kích hoạt lại"}, -- Scapular
	{"143", "Speed Ball", "↑ {{Speed}} +0.3 Tốc độ#↑ {{Shotspeed}} +0.2 Tốc độ đạn"}, -- Speed Ball
	{"144", "Bum Friend", "{{Coin}} Nhặt đồng xu gần đó#Tạo vật phẩm nhặt ngẫu nhiên mỗi 3-4 đồng xu"}, -- Bum Friend
	{"145", "Guppy's Head", "Tạo 2-4 con ruồi xanh"}, -- Guppy's Head
	{"146", "Prayer Card", "{{EternalHeart}} +1 Trái tim Vĩnh cửu"}, -- Prayer Card
	{"147", "Notched Axe", "{{Timer}} Trong phòng, Isaac có thể phá đá và tường Phòng Bí mật bằng cách đi vào chúng"}, -- Notched Axe
	{"148", "Infestation", "Nhận sát thương tạo 1-3 con ruồi xanh"}, -- Infestation
	{"149", "Ipecac", "↑ {{Damage}} +40 Sát thương#↓ {{Tears}} x0.5 Hệ số nước mắt#↓ {{Tears}} +10 Độ trễ nước mắt#Nước mắt của Isaac được bắn theo hình vòng cung#{{Poison}} Nước mắt nổ và gây độc cho kẻ địch nơi chúng đáp xuống"}, -- Ipecac
	{"150", "Tough Love", "{{Damage}} 10% cơ hội bắn răng gây 3.2x sát thương của Isaac#{{Luck}} 100% cơ hội ở 9 may mắn"}, -- Tough Love
	{"151", "The Mulligan", "Nước mắt có 1/6 cơ hội tạo một con ruồi xanh khi trúng kẻ địch"}, -- The Mulligan
	{"152", "Technology 2", "↓ {{Tears}} x0.5 Hệ số nước mắt#↓ {{Damage}} x0.65 Hệ số sát thương#Thay nước mắt mắt phải của Isaac bằng một tia laze liên tục#{{Damage}} Nó gây 3x sát thương của Isaac mỗi giây"}, -- Technology 2
	{"153", "Mutant Spider", "↓ {{Tears}} x0.48 Hệ số nước mắt#↓ {{Tears}} +3 Độ trễ nước mắt#Isaac bắn 4 nước mắt cùng lúc"}, -- Mutant Spider
	{"154", "Chemical Peel", "↑ {{Damage}} +2 Sát thương cho mắt trái"}, -- Chemical Peel
	{"155", "The Peeper", "Bay lơ lửng trong phòng#Gây 17 sát thương tiếp xúc mỗi giây"}, -- The Peeper
	{"156", "Habit", "{{Battery}} Nhận sát thương thêm 1 lần sạc cho vật phẩm kích hoạt"}, -- Habit
	{"157", "Bloody Lust", "↑ {{Damage}} Nhận sát thương tăng sát thương#Áp dụng tối đa 6 lần mỗi tầng#Kéo dài cả tầng"}, -- Bloody Lust
	{"158", "Crystal Ball", "Tạo một {{SoulHeart}} Trái tim Linh hồn, {{Rune}} rune hoặc {{Card}} lá bài#{{Timer}} Hiệu ứng bản đồ đầy đủ cho tầng (trừ {{SuperSecretRoom}} Phòng Bí mật Siêu cấp)"}, -- Crystal Ball
	{"159", "Spirit of the Night", "Nước mắt xuyên tường#Bay được"}, -- Spirit of the Night
	{"160", "Crack the Sky", "Tạo 5 tia sáng gần kẻ địch#Mỗi tia gây 8x sát thương của Isaac + 160 trong 0.8 giây"}, -- Crack the Sky
	{"161", "Ankh", "{{Player4}} Hồi sinh thành ??? (Blue Baby) khi chết"}, -- Ankh
	{"162", "Celtic Cross", "Nhận sát thương có 20% cơ hội khiến Isaac tạm thời bất tử#{{Luck}} 100% cơ hội ở 27 may mắn"}, -- Celtic Cross
	{"163", "Ghost Baby", "Bắn nước mắt xuyên tường#Gây 3.5 sát thương mỗi nước mắt"}, -- Ghost Baby
	{"164", "The Candle", "Ném một ngọn lửa xanh#Nó gây sát thương tiếp xúc, chặn nước mắt kẻ địch, và biến mất sau 2 giây"}, -- The Candle
	{"165", "Cat-o-nine-tails", "↑ {{Damage}} +1 Sát thương#↑ {{Shotspeed}} +0.23 Tốc độ đạn"}, -- Cat-o-nine-tails
	{"166", "D20", "Đổi lại tất cả vật phẩm nhặt trong phòng"}, -- D20
	{"167", "Harlequin Baby", "Bắn hai nước mắt theo hình chữ V#Gây 4 sát thương mỗi nước mắt"}, -- Harlequin Baby
	{"168", "Epic Fetus", "Thay vì bắn nước mắt, ngắm với tâm ngắm#Một tên lửa hạ cánh xuống tâm ngắm sau 1.5 giây#{{Damage}} Tên lửa gây 20x sát thương của Isaac"}, -- Epic Fetus
	{"169", "Polyphemus", "↑ {{Damage}} +4 Sát thương#↑ {{Damage}} x2 Hệ số sát thương#↓ {{Tears}} x0.48 Hệ số nước mắt#↓ {{Tears}} +3 Độ trễ nước mắt#Nước mắt xuyên qua kẻ địch bị giết nếu còn dư sát thương"}, -- Polyphemus
	{"170", "Daddy Longlegs", "Dậm chân lên một kẻ địch gần đó mỗi 4 giây#Gây 40 sát thương mỗi giây"}, -- Daddy Longlegs
	{"171", "Spider Butt", "{{Slow}} Làm chậm kẻ địch trong 4 giây#Gây 10 sát thương cho tất cả kẻ địch"}, -- Spider Butt
	{"172", "Sacrificial Dagger", "Vệ tinh#Chặn đạn kẻ địch#Gây 225 sát thương tiếp xúc mỗi giây"}, -- Sacrificial Dagger
	{"173", "Mitre", "{{SoulHeart}} 50% cơ hội Trái tim Đỏ xuất hiện dưới dạng Trái tim Linh hồn"}, -- Mitre
	{"174", "Rainbow Baby", "Bắn nước mắt ngẫu nhiên#Gây 3-5 sát thương mỗi nước mắt"}, -- Rainbow Baby
	{"175", "Dad's Key", "Mở tất cả cửa trong phòng, bao gồm {{SecretRoom}}{{SuperSecretRoom}}Phòng Bí mật, {{ChallengeRoom}}{{BossRushRoom}}Phòng Thử thách, và cửa Mega Satan"}, -- Dad's Key
	{"176", "Stem Cells", "↑ {{Heart}} +1 Máu#↑ {{Shotspeed}} +0.16 Tốc độ đạn"}, -- Stem Cells
	{"177", "Portable Slot", "{{Coin}} Dùng 1 đồng xu để có cơ hội tạo vật phẩm nhặt"}, -- Portable Slot
	{"178", "Holy Water", "Nhận sát thương tạo một vũng chất lỏng#Chất lỏng gây 24 sát thương mỗi giây"}, -- Holy Water
	{"179", "Fate", "{{EternalHeart}} +1 Trái tim Vĩnh cửu#Bay được"}, -- Fate
	{"180", "The Black Bean", "Isaac đánh rắm khi nhận sát thương#{{Poison}} Cái rắm gây độc cho kẻ địch"}, -- The Black Bean
	{"181", "White Pony", "{{Speed}} Đặt Tốc độ của bạn ít nhất là 1.5#Bay được khi cầm#Sử dụng vật phẩm lao theo hướng di chuyển của Isaac, để lại các tia sáng"}, -- White Pony
	{"182", "Sacred Heart", "↑ {{Heart}} +1 Máu#↑ {{Damage}} x2.3 Hệ số sát thương#↑ {{Damage}} +1 Sát thương#↑ {{Range}} +0.38 Tầm bắn#↑ +0.75 Tốc độ rơi nước mắt#↓ {{Tears}} -0.4 Nước mắt#↓ {{Shotspeed}} -0.25 Tốc độ đạn#{{HealingRed}} Đầy máu#Nước mắt tự dẫn đường"}, -- Sacred Heart
	{"183", "Tooth Picks", "↑ {{Tears}} +0.7 Nước mắt#↑ {{Shotspeed}} +0.16 Tốc độ đạn"}, -- Tooth Picks
	{"184", "Holy Grail", "↑ {{Heart}} +1 Máu#Bay được"}, -- Holy Grail
	{"185", "Dead Dove", "Nước mắt xuyên tường#Bay được"}, -- Dead Dove
	{"186", "Blood Rights", "Gây 40 sát thương cho mọi kẻ địch#{{Warning}} Gây 1 trái tim sát thương cho Isaac#{{Heart}} Ưu tiên loại bỏ Trái tim Đỏ trước"}, -- Blood Rights
	{"187", "Guppy's Hairball", "Di chuyển làm quả bóng tóc xoay quanh#Quả bóng lớn lên khi giết kẻ địch#Nó gây sát thương nhiều hơn khi lớn hơn"}, -- Guppy's Hairball
	{"188", "Abel", "Bắt chước chuyển động của Isaac#Bắn về phía Isaac#Gây 3.5 sát thương mỗi nước mắt"}, -- Abel
	{"189", "SMB Super Fan", "↑ {{Heart}} +1 Máu#↑ {{Speed}} +0.2 Tốc độ#↑ {{Tears}} +0.2 Nước mắt#↑ {{Damage}} +0.3 Sát thương#↑ {{Range}} +0.5 Tầm bắn#↑ +1 Tốc độ rơi nước mắt#{{HealingRed}} Đầy máu"}, -- SMB Super Fan
	{"190", "Pyro", "{{Bomb}} +99 Bom"}, -- Pyro
	{"191", "3 Dollar Bill", "Nước mắt của Isaac nhận hiệu ứng ngẫu nhiên mỗi 2-3 giây"}, -- 3 Dollar Bill
	{"192", "Telepathy For Dummies", "{{Timer}} Nước mắt tự dẫn đường trong phòng"}, -- Telepathy For Dummies
	{"193", "MEAT!", "↑ {{Heart}} +1 Máu#↑ {{Damage}} +0.3 Sát thương"}, -- MEAT!
	{"194", "Magic 8 Ball", "↑ {{Shotspeed}} +0.16 Tốc độ đạn#{{Card}} Tạo một lá bài"}, -- Magic 8 Ball
	{"195", "Mom's Coin Purse", "{{Pill}} Tạo 4 viên thuốc"}, -- Mom's Coin Purse
	{"196", "Squeezy", "↑ {{Tears}} +0.4 Nước mắt#{{SoulHeart}} Tạo 2 Trái tim Linh hồn"}, -- Squeezy
	{"197", "Jesus Juice", "↑ {{Damage}} +0.5 Sát thương#↑ {{Range}} +0.25 Tầm bắn#↑ +0.5 Tốc độ rơi nước mắt"}, -- Jesus Juice
	{"198", "Box", "Tạo 1 vật phẩm nhặt của mỗi loại"}, -- Box
	{"199", "Mom's Key", "{{Key}} +2 Chìa khóa#Rương chứa nhiều vật phẩm nhặt hơn"}, -- Mom's Key
	{"200", "Mom's Eyeshadow", "{{Charm}} 10% cơ hội bắn nước mắt mê hoặc#{{Luck}} 100% cơ hội ở 27 may mắn"}, -- Mom's Eyeshadow
	{"201", "Iron Bar", "↑ {{Damage}} +0.3 Sát thương#{{Confusion}} 10% cơ hội bắn nước mắt gây choáng#{{Luck}} 100% cơ hội ở 27 may mắn"}, -- Iron Bar
	{"202", "Midas' Touch", "Chạm vào kẻ địch làm chúng hóa đá và biến thành vàng#Isaac gây sát thương tiếp xúc dựa trên số đồng xu#{{Coin}} Giết kẻ địch vàng tạo đồng xu#Phân do Isaac tạo có cơ hội cao là phân vàng"}, -- Midas' Touch
	{"203", "Humbleing Bundle", "Vật phẩm nhặt được sinh ra được nhân đôi nếu có thể"}, -- Humbleing Bundle
	{"204", "Fanny Pack", "Nhận sát thương có 50% cơ hội tạo vật phẩm nhặt ngẫu nhiên"}, -- Fanny Pack
	{"205", "Sharp Plug", "{{Battery}} Sử dụng vật phẩm kích hoạt chưa sạc sẽ sạc đầy nó với giá 2 trái tim#Chỉ hoạt động khi vật phẩm không có lần sạc nào"}, -- Sharp Plug
	{"206", "Guillotine", "↑ {{Tears}} -1 Độ trễ nước mắt#↑ {{Damage}} +1 Sát thương#Đầu của Isaac trở thành vệ tinh bắn, không nhận sát thương và gây 105 sát thương tiếp xúc mỗi giây"}, -- Guillotine
	{"207", "Ball of Bandages", "Cấp 1: Vệ tinh#{{Charm}} Cấp 2: Vệ tinh bắn nước mắt mê hoặc#{{Charm}} Cấp 3: Bandage Girl#{{Charm}} Cấp 4: Super Bandage Girl"}, -- Ball of Bandages
	{"208", "Champion Belt", "↑ {{Damage}} +1 Sát thương#Tỷ lệ kẻ địch dạng Quán quân tăng từ 5% lên 20%#Không tăng cơ hội trùm Quán quân"}, -- Champion Belt
	{"209", "Butt Bombs", "{{Bomb}} +5 Bom#{{Confusion}} Vụ nổ gây choáng và sát thương cho mọi kẻ địch trong phòng"}, -- Butt Bombs
	{"210", "Gnawed Leaf", "Sau 1 giây không hoạt động, Isaac trở nên bất tử"}, -- Gnawed Leaf
	{"211", "Spiderbaby", "Nhận sát thương tạo 1-2 con nhện xanh"}, -- Spiderbaby
	{"212", "Guppy's Collar", "50% cơ hội hồi sinh với nửa trái tim khi chết"}, -- Guppy's Collar
	{"213", "Lost Contact", "↓ {{Shotspeed}} -0.15 Tốc độ đạn#Nước mắt của Isaac phá hủy đạn kẻ địch"}, -- Lost Contact
	{"214", "Anemic", "↑ {{Range}} +5 Tầm bắn#{{Timer}} Khi nhận sát thương, Isaac để lại vệt chất lỏng máu trong phòng#Chất lỏng gây 6 sát thương mỗi giây"}, -- Anemic
	{"215", "Goat Head", "{{AngelDevilChance}} 100% Cơ hội Phòng Quỷ/Thiên thần"}, -- Goat Head
	{"216", "Ceremonial Robes", "↑ {{Damage}} +1 Sát thương#{{BlackHeart}} +3 Trái tim Đen"}, -- Ceremonial Robes
	{"217", "Mom's Wig", "{{HealingRed}} Hồi 1 trái tim#5% cơ hội tạo con nhện xanh khi bắn nước mắt#{{Luck}} 100% cơ hội ở 10 may mắn"}, -- Mom's Wig
	{"218", "Placenta", "↑ {{Heart}} +1 Máu#{{HealingRed}} 50% cơ hội hồi nửa trái tim mỗi phút"}, -- Placenta
	{"219", "Old Bandage", "↑ {{EmptyHeart}} +1 Hộp tim trống#{{Heart}} Nhận sát thương có 10% cơ hội tạo Trái tim Đỏ"}, -- Old Bandage
	{"220", "Sad Bombs", "{{Bomb}} +5 Bom#Bom của Isaac bắn 10 nước mắt theo vòng tròn khi nổ"}, -- Sad Bombs
	{"221", "Rubber Cement", "Nước mắt của Isaac nảy khỏi kẻ địch và chướng ngại vật"}, -- Rubber Cement
	{"222", "Anti-Gravity", "↑ {{Tears}} -2 Độ trễ nước mắt#Giữ nút bắn làm nước mắt lơ lửng giữa không trung#Thả nút bắn sẽ bắn chúng theo hướng đã bắn"}, -- Anti-Gravity
	{"223", "Pyromaniac", "{{Bomb}} +5 Bom#Miễn nhiễm với vụ nổ, sóng đá, và đòn dậm#{{HealingRed}} Bị trúng vụ nổ hồi 1 trái tim"}, -- Pyromaniac
	{"224", "Cricket's Body", "↑ {{Tears}} -1 Độ trễ nước mắt#↑ {{Tearsize}} x1.2 Kích thước nước mắt#↓ {{Range}} -10 Tầm bắn#Nước mắt tách thành 4 khi trúng#Nước mắt tách ra gây nửa sát thương"}, -- Cricket's Body
	{"225", "Gimpy", "{{SoulHeart}} Nhận sát thương có cơ hội tạo Trái tim Linh hồn#{{HalfHeart}} Kẻ địch có cơ hội thả nửa Trái tim Đỏ khi chết"}, -- Gimpy
	{"226", "Black Lotus", "↑ {{Heart}} +1 Máu#{{SoulHeart}} +1 Trái tim Linh hồn#{{BlackHeart}} +1 Trái tim Đen"}, -- Black Lotus
	{"227", "Piggy Bank", "{{Coin}} +3 Đồng xu#{{Coin}} Nhận sát thương tạo 1-2 đồng xu"}, -- Piggy Bank
	{"228", "Mom's Perfume", "↑ {{Tears}} -1 Độ trễ nước mắt#{{Fear}} 15% cơ hội bắn nước mắt gây sợ"}, -- Mom's Perfume
	{"229", "Monstro's Lung", "↓ {{Tears}} x0.23 Hệ số nước mắt#{{Chargeable}} Nước mắt được sạc và thả ra theo kiểu tấn công súng ngắn"}, -- Monstro's Lung
	{"230", "Abaddon", "↑ {{Speed}} +0.2 Tốc độ#↑ {{Damage}} +1.5 Sát thương#↓ {{EmptyHeart}} Loại bỏ tất cả hộp tim#{{BlackHeart}} +6 Trái tim Đen#{{Fear}} 15% cơ hội bắn nước mắt gây sợ"}, -- Abaddon
	{"231", "Ball of Tar", "{{Slow}} 10% cơ hội bắn nước mắt làm chậm#{{Luck}} 100% cơ hội ở 18 may mắn#{{Slow}} Isaac để lại vệt chất lỏng làm chậm"}, -- Ball of Tar
	{"232", "Stop Watch", "↑ {{Speed}} +0.3 Tốc độ#{{Slow}} Nhận sát thương làm chậm tất cả kẻ địch trong phòng vĩnh viễn"}, -- Stop Watch
	{"233", "Tiny Planet", "↑ +7 Tốc độ rơi nước mắt#Nước mắt xuyên tường#Nước mắt của Isaac xoay quanh Isaac"}, -- Tiny Planet
	{"234", "Infestation 2", "Giết kẻ địch tạo một con nhện xanh"}, -- Infestation 2
	{"235", "", "<vật phẩm không tồn tại>"},
	{"236", "E. Coli", "Chạm vào kẻ địch biến nó thành phân"}, -- E. Coli
	{"237", "Death's Touch", "↑ {{Damage}} +1.5 Sát thương#↑ {{Tearsize}} x2 Kích thước nước mắt#↓ {{Tears}} -0.3 Nước mắt#Nước mắt xuyên thấu"}, -- Death's Touch
	{"238", "Key Piece 1", "{{Warning}} Nhận cả hai phần chìa khóa mở một cánh cửa vàng lớn#{{AngelChance}} +25% Cơ hội Phòng Thiên thần#{{EternalHeart}} +2% cơ hội cho Trái tim Vĩnh cửu"}, -- Key Piece 1
	{"239", "Key Piece 2", "{{Warning}} Nhận cả hai phần chìa khóa mở một cánh cửa vàng lớn#{{AngelChance}} +25% Cơ hội Phòng Thiên thần#{{EternalHeart}} +2% cơ hội cho Trái tim Vĩnh cửu"}, -- Key Piece 2
	{"240", "Experimental Treatment", "↑ Tăng 4 chỉ số ngẫu nhiên#↓ Giảm 2 chỉ số ngẫu nhiên"}, -- Experimental Treatment
	{"241", "Contract from Below", "Nhân đôi tất cả phần thưởng dọn phòng#33% cơ hội không có phần thưởng dọn phòng"}, -- Contract from Below
	{"242", "Infamy", "50% cơ hội chặn đạn kẻ địch"}, -- Infamy
	{"243", "Trinity Shield", "Chặn đạn kẻ địch từ hướng Isaac đang bắn"}, -- Trinity Shield
	{"244", "Tech.5", "Thỉnh thoảng bắn tia laze cùng với nước mắt của Isaac"}, -- Tech.5
	{"245", "20/20", "Isaac bắn 2 nước mắt cùng lúc"}, -- 20/20
	{"246", "Blue Map", "{{SecretRoom}} Hiển thị vị trí phòng bí mật trên bản đồ"}, -- Blue Map
	{"247", "BFFS!", "bạn đồng hành gây sát thương gấp đôi"}, -- BFFS!
	{"248", "Hive Mind", "Nhện xanh và ruồi xanh gây sát thương gấp đôi"}, -- Hive Mind
	{"249", "There's Options", "Cho phép Isaac chọn giữa 2 vật phẩm sau khi đánh bại trùm"}, -- There's Options
	{"250", "Bogo Bombs", "{{Bomb}} Tất cả bom rơi ra trở thành bom đôi"}, -- Bogo Bombs
	{"251", "Starter Deck", "{{Card}} Tạo 1 lá bài khi nhặt#Isaac có thể mang 2 lá bài#Biến tất cả viên thuốc thành lá bài"}, -- Starter Deck
	{"252", "Little Baggy", "{{Pill}} Tạo 1 viên thuốc khi nhặt#Isaac có thể mang 2 viên thuốc#Biến tất cả lá bài thành viên thuốc"}, -- Little Baggy
	{"253", "Magic Scab", "↑ {{Heart}} +1 Máu#↑ {{Luck}} +1 May mắn"}, -- Magic Scab
	{"254", "Blood Clot", "↑ {{Damage}} +1 Sát thương cho mắt trái#↑ {{Range}} +5 Tầm bắn cho mắt trái#↑ +0.5 Tốc độ rơi nước mắt"}, -- Blood Clot
	{"255", "Screw", "↑ {{Tears}} +0.5 Nước mắt#↑ {{Shotspeed}} +0.2 Tốc độ đạn"}, -- Screw
	{"256", "Hot Bombs", "{{Bomb}} +5 Bom#{{Burning}} Bom của Isaac để lại ngọn lửa nơi chúng nổ"}, -- Hot Bombs
	{"257", "Fire Mind", "{{Burning}} Nước mắt của Isaac đốt cháy kẻ địch#10% cơ hội nước mắt nổ khi trúng kẻ địch#{{Luck}} 100% cơ hội ở 13 may mắn#{{Warning}} Vụ nổ có thể làm tổn thương Isaac"}, -- Fire Mind
	{"258", "Missing No.", "Đổi lại tất cả vật phẩm và chỉ số của Isaac khi nhặt và ở mỗi tầng mới"}, -- Missing No.
	{"259", "Dark Matter", "↑ {{Damage}} +1 Sát thương#{{Fear}} 33% cơ hội bắn nước mắt gây sợ#{{Luck}} 100% cơ hội ở 20 may mắn"}, -- Dark Matter
	{"260", "Black Candle", "{{CurseBlind}} Miễn nhiễm với lời nguyền#{{BlackHeart}} +1 Trái tim Đen#{{AngelDevilChance}} +15% Cơ hội Phòng Quỷ/Thiên thần"}, -- Black Candle
	{"261", "Proptosis", "↑ {{Damage}} x2 Hệ số sát thương#↓ Nước mắt gây ít sát thương hơn khi đi xa hơn"}, -- Proptosis
	{"262", "Missing Page 2", "{{BlackHeart}} +1 Trái tim Đen#Nhận sát thương xuống còn 1 trái tim gây sát thương cho tất cả kẻ địch trong phòng"}, -- Missing Page 2
	{"263", "", "<vật phẩm không tồn tại>"},
	{"264", "Smart Fly", "Vệ tinh#Tấn công kẻ địch khi Isaac nhận sát thương#Gây 22.5 sát thương tiếp xúc mỗi giây"}, -- Smart Fly
	{"265", "Dry Baby", "10% cơ hội gây sát thương cho tất cả kẻ địch trong phòng khi bị trúng nước mắt kẻ địch"}, -- Dry Baby
	{"266", "Juicy Sack", "{{Slow}} Để lại chất lỏng làm chậm#Tạo 1-2 con nhện thân thiện sau khi dọn phòng"}, -- Juicy Sack
	{"267", "Robo-Baby 2.0", "Bắn tia laze#Gây 3.5 sát thương mỗi phát#Di chuyển theo hướng Isaac đang bắn"}, -- Robo-Baby 2.0
	{"268", "Rotten Baby", "Tạo ruồi xanh khi Isaac bắn"}, -- Rotten Baby
	{"269", "Headless Baby", "Để lại chất lỏng gây 6 sát thương mỗi giây"}, -- Headless Baby
	{"270", "Leech", "Đuổi theo kẻ địch#{{HealingRed}} Hồi Isaac nửa trái tim khi giết kẻ địch#Gây 3.2 sát thương mỗi giây"}, -- Leech
	{"271", "Mystery Sack", "Tạo một vật phẩm nhặt ngẫu nhiên mỗi 5-6 phòng"}, -- Mystery Sack
	{"272", "BBF", "Ruồi nổ thân thiện#Vụ nổ gây 60 sát thương#{{Warning}} Vụ nổ có thể làm tổn thương Isaac"}, -- BBF
	{"273", "Bob's Brain", "Lao theo hướng Isaac đang bắn#Nổ khi trúng kẻ địch#{{Poison}} Vụ nổ gây 60 sát thương và gây độc cho kẻ địch#{{Warning}} Vụ nổ có thể làm tổn thương Isaac"}, -- Bob's Brain
	{"274", "Best Bud", "Nhận sát thương tạo một vệ tinh tầm trung trong phòng#Nó gây 75 sát thương tiếp xúc mỗi giây"}, -- Best Bud
	{"275", "Lil Brimstone", "{{Chargeable}} bạn đồng hành sạc và bắn tia máu {{Collectible118}}#Nó gây 31.5 sát thương trong 0.63 giây"}, -- Lil Brimstone
	{"276", "Isaac's Heart", "Isaac trở nên bất tử#Tạo một bạn đồng hành trái tim đi theo Isaac#{{Warning}} Nếu bạn đồng hành trái tim bị trúng, Isaac nhận sát thương"}, -- Isaac's Heart
	{"277", "Lil Haunt", "{{Fear}} Đuổi theo và làm kẻ địch sợ hãi#Gây 4 sát thương tiếp xúc mỗi giây"}, -- Lil Haunt
	{"278", "Dark Bum", "{{Heart}} Nhặt Trái tim Đỏ gần đó#{{SoulHeart}} Tạo một Trái tim Linh hồn hoặc nhện cho mỗi 1.5 Trái tim Đỏ nhặt được"}, -- Dark Bum
	{"279", "Big Fan", "Vệ tinh lớn#Gây 30 sát thương tiếp xúc mỗi giây"}, -- Big Fan
	{"280", "Sissy Longlegs", "Ngẫu nhiên tạo nhện xanh trong phòng có kẻ địch"}, -- Sissy Longlegs
	{"281", "Punching Bag", "bạn đồng hành giả#Kẻ địch nhắm vào nó thay vì Isaac"}, -- Punching Bag
	{"282", "How to Jump", "Cho phép Isaac nhảy qua khoảng trống và chướng ngại vật"}, -- How to Jump
	{"283", "D100", "Đổi lại tất cả vật phẩm nhặt và vật phẩm trên bệ trong phòng, và tất cả vật phẩm bị động của Isaac"}, -- D100
	{"284", "D4", "Đổi lại tất cả vật phẩm bị động của Isaac"}, -- D4
	{"285", "D10", "Đổi lại tất cả kẻ địch trong phòng"}, -- D10
	{"286", "Blank Card", "Kích hoạt hiệu ứng của rune hoặc lá bài Isaac đang giữ mà không sử dụng nó"}, -- Blank Card
	{"287", "Book of Secrets", "{{Timer}} Cấp một trong các hiệu ứng sau cho tầng:#{{Collectible54}} Bản đồ Kho báu#{{Collectible21}} La bàn#{{Collectible246}} Bản đồ Xanh"}, -- Book of Secrets
	{"288", "Box of Spiders", "Tạo 1-4 con nhện xanh"}, -- Box of Spiders
	{"289", "Red Candle", "Ném một ngọn lửa đỏ#Nó gây sát thương tiếp xúc, chặn nước mắt kẻ địch, và biến mất khi đã gây sát thương hoặc chặn đạn 5 lần"}, -- Red Candle
	{"290", "The Jar", "{{Heart}} Nhặt Trái tim Đỏ khi đầy máu lưu trữ tối đa 4 trái tim trong Lọ#Sử dụng vật phẩm thả tất cả trái tim đã lưu trữ xuống sàn"}, -- The Jar
	{"291", "Flush!", "Biến tất cả kẻ địch không phải trùm thành phân#Tiêu diệt ngay lập tức kẻ địch phân và trùm phân"}, -- Flush!
	{"292", "Satanic Bible", "{{BlackHeart}} +1 Trái tim Đen"}, -- Satanic Bible
	{"293", "Head of Krampus", "{{Collectible118}} Bắn tia máu 4 hướng#Mỗi tia gây 440 sát thương trong 1.33 giây"}, -- Head of Krampus
	{"294", "Butter Bean", "Đẩy lùi kẻ địch và đạn gần đó#10% cơ hội biến thành {{Collectible484}} Wait What? mạnh hơn khi đổi với vật phẩm kích hoạt khác và nhặt lại"}, -- Butter Bean
	{"295", "Magic Fingers", "Gây 2x sát thương của Isaac cho tất cả kẻ địch#{{Coin}} Tốn 1 đồng xu"}, -- Magic Fingers
	{"296", "Converter", "{{Heart}} Chuyển 2 Trái tim Linh hồn/Đen thành 1 hộp tim"}, -- Converter
	-- NOTE FOR LOCALIZERS: There is code to highlight the text of your current floor
	-- FOR it to work, only use line breaks or semicolons to separate floor details, and use the same order as English
	{"297", "Pandora's Box", "{{NoLB}}Tạo phần thưởng dựa trên tầng:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#{{NoLB}}C1: Vật phẩm trùm; C2: C1 + 2{{SoulHeart}}#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Vật phẩm trùm#W2: {{Collectible33}} Kinh Thánh#???/Void: Không có gì#Sheol: Vật phẩm Quỷ + 1{{BlackHeart}}#Cathe: Vật phẩm Thiên thần + 1{{EternalHeart}}#{{NoLB}}Dark Room: Mở khóa {{Collectible523}} Moving Box#Chest: 1{{Coin}}"}, -- Pandora's Box
	{"298", "Unicorn Stump", "{{Timer}} Nhận trong 6 giây:#↑ {{Speed}} +0.28 Tốc độ#Bất tử#Isaac không thể bắn (Không có sát thương tiếp xúc)"}, -- Unicorn Stump
	{"299", "Taurus", "↓ {{Speed}} -0.3 Tốc độ#↑ {{Speed}} Từ từ tăng tốc độ trong phòng có kẻ địch#Ở tốc độ 2, Isaac trở nên bất tử và gây sát thương tiếp xúc#Sau đó, mất tăng tốc của Taurus trong phòng"}, -- Taurus
	{"300", "Aries", "↑ {{Speed}} +0.25 Tốc độ#Chạm vào kẻ địch gây sát thương tiếp xúc"}, -- Aries
	{"301", "Cancer", "{{SoulHeart}} +3 Trái tim Linh hồn#Nhận sát thương giảm tất cả sát thương tiếp theo trong phòng xuống nửa trái tim"}, -- Cancer
	{"302", "Leo", "Tăng kích thước#Isaac có thể phá đá bằng cách đi vào chúng"}, -- Leo
	{"303", "Virgo", "Nhận sát thương có thể khiến Isaac tạm thời bất tử#{{Luck}} 100% cơ hội ở 10 may mắn#{{Pill}} Biến thuốc tiêu cực thành thuốc tích cực"}, -- Virgo
	{"304", "Libra", "+6 {{Coin}} đồng xu, {{Bomb}} bom và {{Key}} chìa khóa#Cân bằng chỉ số của Isaac#Các thay đổi chỉ số sau này sẽ được phân bổ đều cho tất cả chỉ số"}, -- Libra
	{"305", "Scorpio", "{{Poison}} Nước mắt độc"}, -- Scorpio
	{"306", "Sagittarius", "↑ {{Speed}} +0.2 Tốc độ#Nước mắt xuyên thấu"}, -- Sagittarius
	{"307", "Capricorn", "↑ {{Heart}} +1 Máu#↑ {{Speed}} +0.1 Tốc độ#↑ {{Tears}} -1 Độ trễ nước mắt#↑ {{Damage}} +0.5 Sát thương#↑ {{Range}} +1.5 Tầm bắn#+1 {{Coin}} đồng xu, {{Bomb}} bom và {{Key}} chìa khóa"}, -- Capricorn
	{"308", "Aquarius", "Isaac để lại vệt chất lỏng#Chất lỏng gây 6 sát thương mỗi giây"}, -- Aquarius
	{"309", "Pisces", "↑ {{Tears}} -1 Độ trễ nước mắt#↑ {{Tearsize}} x1.25 Kích thước nước mắt#Tăng độ đẩy lùi của nước mắt"}, -- Pisces
	{"310", "Eve's Mascara", "↑ {{Damage}} x2 Hệ số sát thương#↓ {{Tears}} x0.5 Hệ số nước mắt#↓ {{Shotspeed}} -0.5 Tốc độ đạn"}, -- Eve's Mascara
	{"311", "Judas' Shadow", "{{Player12}} Khi chết, hồi sinh thành Dark Judas với hệ số sát thương x2"}, -- Judas' Shadow
	{"312", "Maggy's Bow", "↑ {{Heart}} +1 Máu#{{HealingRed}} Hồi 1 trái tim#Tất cả Trái tim Đỏ hồi gấp đôi giá trị của chúng"}, -- Maggy's Bow
	{"313", "Holy Mantle", "Vô hiệu hóa đòn đánh đầu tiên nhận được mỗi phòng"}, -- Holy Mantle
	{"314", "Thunder Thighs", "↑ {{Heart}} +1 Máu#↓ {{Speed}} -0.4 Tốc độ#Isaac có thể phá đá bằng cách đi vào chúng"}, -- Thunder Thighs
	{"315", "Strange Attractor", "Nước mắt của Isaac thu hút kẻ địch, vật phẩm nhặt và trang sức"}, -- Strange Attractor
	{"316", "Cursed Eye", "Sóng nước mắt sạc#{{Warning}} Nhận sát thương khi đang sạc một phần sẽ dịch chuyển Isaac đến phòng ngẫu nhiên"}, -- Cursed Eye
	{"317", "Mysterious Liquid", "Nước mắt của Isaac để lại chất lỏng#Chất lỏng gây 30 sát thương mỗi giây"}, -- Mysterious Liquid
	{"318", "Gemini", "bạn đồng hành cận chiến#Gây 6 sát thương tiếp xúc mỗi giây"}, -- Gemini
	{"319", "Cain's Other Eye", "Nảy quanh phòng#Nước mắt chính xác thấp gây sát thương của Isaac"}, -- Cain's Other Eye
	{"320", "???'s Only Friend", "Ruồi điều khiển được#Gây 37.5 sát thương tiếp xúc mỗi giây"}, -- ???'s Only Friend
	{"321", "Samson's Chains", "Quả bóng có thể kéo phá đá#Gây 10.7 sát thương tiếp xúc mỗi giây"}, -- Samson's Chains
	{"322", "Mongo Baby", "Bắt chước nước mắt của các bé đồng hành của bạn#Nếu không có, bắn nước mắt thường gây 3.5 sát thương"}, -- Mongo Baby
	{"323", "Isaac's Tears", "Bắn 8 nước mắt theo mọi hướng#Nước mắt sao chép hiệu ứng nước mắt của Isaac#Sạc lại bằng cách bắn nước mắt"}, -- Isaac's Tears
	{"324", "Undefined", "Dịch chuyển Isaac đến {{TreasureRoom}} Phòng Kho báu, {{SecretRoom}} Phòng Bí mật, {{SuperSecretRoom}} Phòng Bí mật Siêu cấp hoặc {{ErrorRoom}} Phòng I AM ERROR"}, -- Undefined
	{"325", "Scissors", "{{Timer}} Đầu của Isaac biến thành bạn đồng hành cố định trong phòng#Đầu bắn nước mắt gây 3.5 sát thương#Cơ thể được điều khiển riêng và vẫn bắn nước mắt của Isaac"}, -- Scissors
	{"326", "Breath of Life", "Giữ nút SỬ DỤNG làm trống thanh sạc#Isaac tạm thời bất tử khi thanh sạc trống#{{Warning}} Giữ quá lâu gây sát thương cho Isaac"}, -- Breath of Life
	{"327", "The Polaroid", "Nhận sát thương ở nửa Trái tim Đỏ hoặc không có khiến Isaac tạm thời bất tử"}, -- The Polaroid
	{"328", "The Negative", "Nhận sát thương ở nửa Trái tim Đỏ hoặc không có gây sát thương cho tất cả kẻ địch trong phòng"}, -- The Negative
	{"329", "The Ludovico Technique", "Thay nước mắt của Isaac bằng một nước mắt lớn điều khiển được"}, -- The Ludovico Technique
	{"330", "Soy Milk", "↑ {{Tears}} x4 Hệ số nước mắt#↑ {{Tears}} -2 Độ trễ nước mắt#↓ {{Damage}} x0.2 Hệ số sát thương#↓ {{Tearsize}} x0.5 Kích thước nước mắt"}, -- Soy Milk
	{"331", "Godhead", "↑ {{Damage}} +0.5 Sát thương#↑ {{Range}} +1.2 Tầm bắn#↑ +0.8 Tốc độ rơi nước mắt#↓ {{Tears}} -0.3 Nước mắt#↓ {{Shotspeed}} -0.3 Tốc độ đạn#Nước mắt tự dẫn đường#{{Damage}} Nước mắt có hào quang gây 4.5x sát thương của Isaac mỗi giây"}, -- Godhead
	{"332", "Lazarus' Rags", "{{Player11}} Khi chết, hồi sinh thành Lazarus (Risen)"}, -- Lazarus' Rags
	{"333", "The Mind", "Hiệu ứng bản đồ đầy đủ"}, -- The Mind
	{"334", "The Body", "↑ {{Heart}} +3 Máu"}, -- The Body
	{"335", "The Soul", "{{SoulHeart}} +2 Trái tim Linh hồn#Tạo hào quang đẩy lùi kẻ địch và đạn"}, -- The Soul
	{"336", "Dead Onion", "↑ {{Range}} +0.25 Tầm bắn#↑ {{Tearsize}} x1.5 Kích thước nước mắt#↓ -0.5 Tốc độ rơi nước mắt#↓ {{Shotspeed}} -0.4 Tốc độ đạn#Nước mắt xuyên thấu + xuyên tường"}, -- Dead Onion
	{"337", "Broken Watch", "{{Slow}} Làm chậm mỗi phòng thứ 4#13% cơ hội tăng tốc phòng thay vì làm chậm"}, -- Broken Watch
	{"338", "The Boomerang", "Boomerang ném được#Hóa đá kẻ địch và gây 2x sát thương của Isaac#Có thể nhặt và mang vật phẩm về"}, -- The Boomerang
	{"339", "Safety Pin", "↑ {{Range}} +5.25 Tầm bắn#↑ +0.5 Tốc độ rơi nước mắt#↑ {{Shotspeed}} +0.16 Tốc độ đạn#{{BlackHeart}} +1 Trái tim Đen"}, -- Safety Pin
	{"340", "Caffeine Pill", "↑ {{Speed}} +0.3 Tốc độ#↑ Giảm kích thước#{{Pill}} Tạo một viên thuốc ngẫu nhiên"}, -- Caffeine Pill
	{"341", "Torn Photo", "↑ {{Tears}} +0.7 Nước mắt#↑ {{Shotspeed}} +0.16 Tốc độ đạn"}, -- Torn Photo
	{"342", "Blue Cap", "↑ {{Heart}} +1 Máu#↑ {{Tears}} +0.7 Nước mắt#↓ {{Shotspeed}} -0.16 Tốc độ đạn"}, -- Blue Cap
	{"343", "Latch Key", "↑ {{Luck}} +1 May mắn#{{SoulHeart}} +1 Trái tim Linh hồn#{{Key}} Tạo 2 chìa khóa"}, -- Latch Key
	{"344", "Match Book", "{{BlackHeart}} +1 Trái tim Đen#{{Bomb}} Tạo 3 bom"}, -- Match Book
	{"345", "Synthoil", "↑ {{Damage}} +1 Sát thương#↑ {{Range}} +5.25 Tầm bắn#↑ +0.5 Tốc độ rơi nước mắt"}, -- Synthoil
	{"346", "A Snack", "↑ {{Heart}} +1 Máu"}, -- A Snack
	{"347", "Diplopia", "Nhân đôi tất cả bệ vật phẩm và vật phẩm nhặt trong phòng"}, -- Diplopia
	{"348", "Placebo", "{{Pill}} Kích hoạt hiệu ứng của viên thuốc Isaac đang giữ mà không sử dụng nó"}, -- Placebo
	{"349", "Wooden Nickel", "{{Coin}} 56% cơ hội tạo một đồng xu ngẫu nhiên"}, -- Wooden Nickel
	{"350", "Toxic Shock", "{{Poison}} Vào phòng gây độc cho tất cả kẻ địch#Kẻ địch bị giết để lại vũng chất lỏng#Chất lỏng gây 30 sát thương mỗi giây"}, -- Toxic Shock
	{"351", "Mega Bean", "Hóa đá tất cả kẻ địch trong phòng#{{Poison}} Gây 5 sát thương và gây độc cho kẻ địch gần đó#Tạo sóng đá theo hướng Isaac di chuyển#Sóng đá có thể mở phòng bí mật và phá đá"}, -- Mega Bean
	{"352", "Glass Cannon", "{{Warning}} Bắn pháo giảm máu của Isaac xuống còn nửa trái tim#Bắn một nước mắt xuyên thấu + xuyên tường lớn gây 10x sát thương của Isaac"}, -- Glass Cannon
	{"353", "Bomber Boy", "{{Bomb}} +5 Bom#Bom nổ theo hình chữ thập"}, -- Bomber Boy
	{"354", "Crack Jacks", "↑ {{Heart}} +1 Máu#{{Trinket}} Tạo một món trang sức"}, -- Crack Jacks
	{"355", "Mom's Pearls", "↑ {{Range}} +1.25 Tầm bắn#↑ +0.5 Tốc độ rơi nước mắt#↑ {{Luck}} +1 May mắn"}, -- Mom's Pearls
	{"356", "Car Battery", "{{Battery}} Sử dụng vật phẩm kích hoạt kích hoạt hiệu ứng của nó hai lần"}, -- Car Battery
	{"357", "Box of Friends", "{{Timer}} Nhân đôi tất cả bạn đồng hành của bạn trong phòng#{{Collectible113}} Cấp một Demon Baby trong phòng nếu Isaac không có bạn đồng hành"}, -- Box of Friends
	{"358", "The Wiz", "Nước mắt xuyên tường#Isaac bắn 2 nước mắt cùng lúc theo đường chéo"}, -- The Wiz
	{"359", "8 Inch Nails", "↑ {{Damage}} +1.5 Sát thương#Tăng độ đẩy lùi"}, -- 8 Inch Nails
	{"360", "Incubus", "Bắn nước mắt với cùng Tốc độ đạn, sát thương và hiệu ứng như Isaac"}, -- Incubus
	{"361", "Fate's Reward", "Bắn nước mắt với cùng sát thương và hiệu ứng như Isaac#Bắn với tốc độ bằng nửa so với các bạn đồng hành khác"}, -- Fate's Reward
	{"362", "Lil Chest", "35% cơ hội tạo vật phẩm nhặt mỗi phòng"}, -- Lil Chest
	{"363", "Sworn Protector", "Vệ tinh#Gây 105 sát thương tiếp xúc mỗi giây#Chặn và thu hút đạn kẻ địch#{{EternalHeart}} Chặn 10 phát bắn trong một phòng tạo một Trái tim Vĩnh cửu"}, -- Sworn Protector
	{"364", "Friend Zone", "Vệ tinh ruồi tầm trung#Gây 45 sát thương tiếp xúc mỗi giây"}, -- Friend Zone
	{"365", "Lost Fly", "Di chuyển dọc theo tường/chướng ngại vật#Gây 105 sát thương tiếp xúc mỗi giây"}, -- Lost Fly
	{"366", "Scatter Bombs", "{{Bomb}} +5 Bom#Bom của Isaac phân tán thành 2-4 bom nhỏ"}, -- Scatter Bombs
	{"367", "Sticky Bombs", "{{Bomb}} +5 Bom#Bom của Isaac dính vào kẻ địch#Giết kẻ địch bằng bom tạo nhện xanh"}, -- Sticky Bombs
	{"368", "Epiphora", "↑ {{Tears}} Bắn liên tục theo một hướng dần giảm độ trễ nước mắt tối đa 200% và giảm độ chính xác"}, -- Epiphora
	{"369", "Continuum", "↑ {{Range}} +2.25 Tầm bắn#↑ +1.5 Tốc độ rơi nước mắt#Nước mắt xuyên tường#Nước mắt có thể đi qua một bên màn hình và xuất hiện ở bên kia"}, -- Continuum
	{"370", "Mr. Dolly", "↑ {{Tears}} +0.7 Nước mắt#↑ {{Range}} +5.25 Tầm bắn#↑ +0.5 Tốc độ rơi nước mắt#{{UnknownHeart}} Tạo 3 trái tim ngẫu nhiên"}, -- Mr. Dolly
	{"371", "Curse of the Tower", "{{Warning}} Nhận sát thương tạo 6 Bom Quỷ#Bom Quỷ thừa hưởng hiệu ứng bom của Isaac"}, -- Curse of the Tower
	{"372", "Charged Baby", "Mỗi 30 giây trong phòng chưa dọn, bạn đồng hành có thể:#{{Battery}} Tạo một Pin (tối đa 2 mỗi phòng)#{{Battery}} Thêm một lần sạc cho vật phẩm kích hoạt (tối đa 2 mỗi phòng)#Hóa đá tất cả kẻ địch trong phòng"}, -- Charged Baby
	{"373", "Dead Eye", "↑ {{Damage}} Liên tiếp trúng nước mắt vào kẻ địch tăng +25% sát thương (tối đa +100%)#Trượt có cơ hội đặt lại hệ số"}, -- Dead Eye
	{"374", "Holy Light", "10% cơ hội bắn nước mắt thánh, tạo tia sáng khi trúng#{{Luck}} 50% cơ hội ở 9 may mắn#{{Damage}} Tia sáng gây 4x sát thương của Isaac"}, -- Holy Light
	{"375", "Host Hat", "Miễn nhiễm với vụ nổ, tấn công sóng đá và đòn dậm của Mom và Satan#25% cơ hội phản đạn kẻ địch"}, -- Host Hat
	{"376", "Restock", "Tạo 3 vật phẩm nhặt ngẫu nhiên#Mua vật phẩm từ Cửa hàng sẽ làm cửa hàng tái nhập hàng ngay lập tức"}, -- Restock
	{"377", "Bursting Sack", "Kẻ địch nhện không còn nhắm mục tiêu hoặc gây sát thương tiếp xúc cho Isaac"}, -- Bursting Sack
	{"378", "No. 2", "Giữ nút bắn trong 2.35 giây tạo một Bom Mông đã thắp sáng"}, -- No. 2
	{"379", "Pupula Duplex", "↑ {{Tearsize}} x2 Kích thước nước mắt#Nước mắt xuyên tường"}, -- Pupula Duplex
	{"380", "Pay To Play", "{{Coin}} +5 Đồng xu#{{Coin}} Cửa chỉ cần một chìa phải mở bằng đồng xu thay vì chìa khóa"}, -- Pay To Play
	{"381", "Eden's Blessing", "↑ {{Tears}} +0.7 Nước mắt#Cấp một vật phẩm ngẫu nhiên ở đầu lần chạy tiếp theo"}, -- Eden's Blessing
	{"382", "Friendly Ball", "Có thể ném vào kẻ địch để bắt chúng#Sử dụng vật phẩm sau khi bắt kẻ địch tạo ra chúng như một bạn đồng hành thân thiện"}, -- Friendly Ball
	{"383", "Tear Detonator", "Tách tất cả nước mắt hiện tại của Isaac trên màn hình thành vòng tròn 6 nước mắt"}, -- Tear Detonator
	{"384", "Lil Gurdy", "{{Chargeable}} Lao và nảy quanh phòng với tốc độ dựa trên mức sạc#Gây 5-90 sát thương tiếp xúc mỗi giây tùy vào tốc độ"}, -- Lil Gurdy
	{"385", "Bumbo", "{{Coin}} Nhặt đồng xu gần đó#Tăng cấp sau khi nhận 6, 12, và 24 đồng xu#Cấp 2: Cơ hội tạo vật phẩm sau khi dọn phòng#Cấp 3: Bắn nước mắt có thể tạo đồng xu khi trúng#Cấp 4: Đuổi theo kẻ địch, thỉnh thoảng thả bom, có thể tạo vật phẩm khi nhặt đồng xu"}, -- Bumbo
	{"386", "D12", "Đổi lại bất kỳ chướng ngại vật nào thành chướng ngại vật ngẫu nhiên khác (ví dụ: phân, chậu, TNT, phân đỏ, khối đá, v.v.)"}, -- D12
	{"387", "Censer", "{{Slow}} bạn đồng hành được bao quanh bởi hào quang lớn làm chậm kẻ địch và đạn trong đó"}, -- Censer
	{"388", "Key Bum", "{{Key}} Nhặt chìa khóa gần đó#{{Chest}} Tạo rương ngẫu nhiên để đổi lại"}, -- Key Bum
	{"389", "Rune Bag", "{{Rune}} Tạo một rune ngẫu nhiên mỗi 5-6 phòng"}, -- Rune Bag
	{"390", "Seraphim", "Bắn nước mắt Sacred Heart#Gây 10 sát thương mỗi nước mắt"}, -- Seraphim
	{"391", "Betrayal", "{{Charm}} Nhận sát thương mê hoặc tất cả kẻ địch trong phòng"}, -- Betrayal
	{"392", "Zodiac", "Cấp hiệu ứng vật phẩm hoàng đạo ngẫu nhiên mỗi tầng"}, -- Zodiac
	{"393", "Serpent's Kiss", "{{Poison}} 15% cơ hội bắn nước mắt độc#{{Poison}} Gây độc cho kẻ địch khi tiếp xúc#{{BlackHeart}} Kẻ địch bị trúng độc có cơ hội thả Trái tim Đen khi chết"}, -- Serpent's Kiss
	{"394", "Marked", "↑ {{Tears}} +0.7 Nước mắt#↑ {{Range}} +3.15 Tầm bắn#↑ +0.3 Tốc độ rơi nước mắt#Isaac tự động bắn nước mắt vào một mục tiêu đỏ di động trên mặt đất"}, -- Marked
	{"395", "Tech X", "{{Chargeable}} Nước mắt của Isaac được thay bằng một vòng laze có thể sạc#Kích thước vòng tăng theo mức sạc"}, -- Tech X
	{"396", "Ventricle Razor", "Tạo tối đa hai cổng để di chuyển giữa chúng#Có thể đặt ở các phòng khác nhau"}, -- Ventricle Razor
	{"397", "Tractor Beam", "↑ {{Tears}} +0.5 Nước mắt#↑ {{Range}} +5.25 Tầm bắn#↑ +0.5 Tốc độ rơi nước mắt#↑ {{Shotspeed}} +0.16 Tốc độ đạn#Nước mắt của Isaac luôn di chuyển dọc theo một tia sáng phía trước Isaac"}, -- Tractor Beam
	{"398", "God's Flesh", "Nước mắt có thể thu nhỏ kẻ địch#Kẻ địch bị thu nhỏ có thể bị nghiền nát và giết bằng cách đi qua chúng"}, -- God's Flesh
	{"399", "Maw of the Void", "↑ {{Damage}} +1 Sát thương#{{Chargeable}} Bắn nước mắt trong 2.35 giây và thả nút bắn tạo một vòng brimstone đen quanh Isaac#Nó gây 30x sát thương của Isaac trong 2 giây#{{BlackHeart}} Kẻ địch bị giết bởi vòng đen có 5% cơ hội thả Trái tim Đen"}, -- Maw of the Void
	{"400", "Spear of Destiny", "Isaac cầm một ngọn giáo phía trước#{{Fear}} Ngọn giáo gây gấp đôi sát thương của Isaac và có thể làm kẻ địch sợ hãi khi tiếp xúc"}, -- Spear of Destiny
	{"401", "Explosivo", "25% cơ hội bắn nước mắt bom dính#Nước mắt bom dính không gây sát thương khi trúng và nổ sau vài giây"}, -- Explosivo
	{"402", "Chaos", "Tất cả vật phẩm được chọn từ nhóm vật phẩm ngẫu nhiên#Tạo 1-6 vật phẩm nhặt ngẫu nhiên"}, -- Chaos
	{"403", "Spider Mod", "Hiển thị sát thương nước mắt và thanh máu của tất cả kẻ địch#Gây hiệu ứng trạng thái ngẫu nhiên cho kẻ địch khi tiếp xúc#Ngẫu nhiên tạo pin"}, -- Spider Mod
	{"404", "Farting Baby", "Chặn đạn#Khi bị trúng, 10% cơ hội đánh rắm và {{Charm}} mê hoặc, {{Poison}} gây độc hoặc đẩy lùi kẻ địch"}, -- Farting Baby
	{"405", "GB Bug", "Nảy quanh phòng#Gây 120 sát thương mỗi giây và áp dụng hiệu ứng trạng thái ngẫu nhiên cho kẻ địch khi tiếp xúc"}, -- GB Bug
	{"406", "D8", "Nhân các chỉ số sát thương, nước mắt, tầm bắn và tốc độ của Isaac từ x0.5 đến x2#Hệ số được đổi lại mỗi lần sử dụng"}, -- D8
	{"407", "Purity", "↑ Tăng một chỉ số của Isaac tùy thuộc vào màu sắc của hào quang#Nhận sát thương loại bỏ hiệu ứng, và cho Isaac hiệu ứng mới ở phòng tiếp theo#{{ColorYellow}}Vàng{{CR}} = ↑ {{Speed}} +0.5 Tốc độ#{{ColorBlue}}Xanh dương{{CR}} = ↑ {{Tears}} -4 Độ trễ nước mắt#{{ColorRed}}Đỏ{{CR}} = ↑ {{Damage}} +4 Sát thương#{{ColorOrange}}Cam{{CR}} = ↑ {{Range}} +7.5 Tầm bắn, ↑ +1 Tốc độ rơi nước mắt"}, -- Purity
	{"408", "Athame", "Nhận sát thương tạo một vòng brimstone đen quanh Isaac#Nó gây 30x sát thương của Isaac trong 2 giây#{{BlackHeart}} Kẻ địch bị giết bởi vòng có 15% cơ hội thả Trái tim Đen"}, -- Athame
	{"409", "Empty Vessel", "{{BlackHeart}} +2 Trái tim Đen#{{EmptyHeart}} Khi Isaac không có Trái tim Đỏ:#Bay được#Cứ 40 giây trong phòng có kẻ địch, nhận lá chắn trong 10 giây"}, -- Empty Vessel
	{"410", "Evil Eye", "3.33% cơ hội bắn một con mắt#{{Luck}} 10% cơ hội ở 20 may mắn#Con mắt di chuyển thẳng và bắn nước mắt cùng hướng với Isaac"}, -- Evil Eye
	{"411", "Lusty Blood", "↑ {{Damage}} +0.5 Sát thương cho mỗi kẻ địch giết trong phòng#Tối đa +5 Sát thương sau 10 lần giết"}, -- Lusty Blood
	{"412", "Cambion Conception", "Nhận sát thương 15 lần tạo một bạn đồng hành quỷ vĩnh viễn#Sau hai bạn đồng hành, cần 30 lần thay vì 15#Tối đa 4 bạn đồng hành"}, -- Cambion Conception
	{"413", "Immaculate Conception", "Nhặt 15 trái tim tạo một bạn đồng hành thiên thần vĩnh viễn#Tối đa 5 bạn đồng hành#{{SoulHeart}} Nếu đã có tất cả bạn đồng hành, tạo một Trái tim Linh hồn thay thế"}, -- Immaculate Conception
	{"414", "More Options", "{{TreasureRoom}} Cho phép Isaac chọn giữa 2 vật phẩm trong phòng kho báu"}, -- More Options
	{"415", "Crown Of Light", "{{SoulHeart}} +2 Trái tim Linh hồn#Nếu Isaac không có hộp tim bị tổn thương:#↑ {{Damage}} x2 Hệ số sát thương#↑ {{Range}} +5.25 Tầm bắn#↑ +0.5 Tốc độ rơi nước mắt#↓ {{Shotspeed}} -0.3 Tốc độ đạn#Nhận bất kỳ sát thương nào loại bỏ hiệu ứng trong phòng"}, -- Crown Of Light
	{"416", "Deep Pockets", "Cho phép Isaac mang hai rune/lá bài/viên thuốc"}, -- Deep Pockets
	{"417", "Succubus", "Nảy quanh phòng bao quanh bởi hào quang gây sát thương gây 1.29x sát thương của Isaac mỗi giây#↑ {{Damage}} x1.5 Hệ số sát thương khi đứng trong hào quang"}, -- Succubus
	{"418", "Fruit Cake", "Mỗi nước mắt của Isaac nhận một hiệu ứng khác nhau"}, -- Fruit Cake
	{"419", "Teleport 2.0", "Dịch chuyển Isaac đến một phòng chưa được dọn#Thứ tự ưu tiên: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"}, -- Teleport 2.0
	{"420", "Black Powder", "Đi theo vòng tròn vẽ một ngôi sao năm cánh trên sàn, gây 130 sát thương trong 4 giây"}, -- Black Powder
	{"421", "Kidney Bean", "{{Charm}} Mê hoặc và gây 5 sát thương cho tất cả kẻ địch ở gần"}, -- Kidney Bean
	{"422", "Glowing Hour Glass", "Đưa Isaac trở lại phòng trước đó và đảo ngược tất cả hành động đã thực hiện trong phòng sử dụng vật phẩm"}, -- Glowing Hour Glass
	{"423", "Circle of Protection", "Bao quanh Isaac bằng một vầng hào quang lớn gây sát thương của Isaac khi tiếp xúc mỗi giây#Cơ hội phản đạn kẻ địch"}, -- Circle of Protection
	{"424", "Sack Head", "Vật phẩm nhặt có cơ hội bị thay bằng {{GrabBag}}túi:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Tạo một túi"}, -- Sack Head
	{"425", "Night Light", "{{Slow}} Tạo một hình nón ánh sáng làm chậm phía trước Isaac"}, -- Night Light
	{"426", "Obsessed Fan", "Bắt chước chuyển động chính xác của Isaac sau 3 giây#Gây 30 sát thương tiếp xúc mỗi giây"}, -- Obsessed Fan
	{"427", "Mine Crafter", "Tạo một thùng TNT có thể đẩy#Sử dụng vật phẩm lần thứ hai trong cùng phòng kích nổ thùng từ xa"}, -- Mine Crafter
	{"428", "PJs", "{{HealingRed}} Đầy máu#{{SoulHeart}} +4 Trái tim Linh hồn"}, -- PJs
	{"429", "Head of the Keeper", "{{Coin}} Trúng kẻ địch bằng nước mắt có 5% cơ hội tạo một Penny"}, -- Head of the Keeper
	{"430", "Papa Fly", "Bắt chước chuyển động của Isaac sau 1 giây#Bắn nước mắt vào kẻ địch gần đó gây sát thương của Isaac"}, -- Papa Fly
	{"431", "Multidimensional Baby", "Bắt chước chuyển động của Isaac sau 2 giây#Nước mắt đi qua nó được nhân đôi và tăng tầm bắn + Tốc độ đạn"}, -- Multidimensional Baby
	{"432", "Glitter Bombs", "{{Bomb}} +5 Bom#{{Charm}} Bom của Isaac có 25% cơ hội thả vật phẩm nhặt ngẫu nhiên và 15% cơ hội mê hoặc kẻ địch khi nổ"}, -- Glitter Bombs
	{"433", "My Shadow", "{{Fear}} Nhận sát thương làm tất cả kẻ địch trong phòng sợ hãi và tạo một con sạc đen thân thiện#Con sạc gây 5 sát thương mỗi giây"}, -- My Shadow
	{"434", "Jar of Flies", "Giết kẻ địch thêm một con ruồi xanh vào lọ, tối đa 20 con ruồi#Sử dụng vật phẩm thả tất cả con ruồi"}, -- Jar of Flies
	{"435", "Lil Loki", "Bắn 4 nước mắt theo hình chữ thập#Gây 3.5 sát thương mỗi nước mắt"}, -- Lil Loki
	{"436", "Milk!", "{{Tears}} Nhận sát thương tăng Nước mắt trong suốt thời gian trong phòng"}, -- Milk!
	{"437", "D7", "Khởi động lại phòng và làm kẻ địch hồi sinh#Có thể dùng để nhận nhiều phần thưởng dọn phòng từ một phòng#Nếu dùng sau trận đấu với Greed, đổi phòng thành Cửa hàng/Phòng Bí mật thông thường"}, -- D7
	{"438", "Binky", "↑ {{Tears}} +0.75 Nước mắt#↑ Giảm kích thước#{{SoulHeart}} +1 Trái tim Linh hồn"}, -- Binky
	{"439", "Mom's Box", "{{Trinket}} Tạo một món trang sức ngẫu nhiên#Khi cầm:#↑ {{Luck}} +1 May mắn#{{Trinket}} Nhân đôi hiệu ứng trang sức"}, -- Mom's Box
	{"440", "Kidney Stone", "↑ +2 Tốc độ rơi nước mắt#↓ {{Speed}} -0.2 Tốc độ#↓ {{Range}} -17 Tầm bắn#Isaac thỉnh thoảng ngừng bắn và sạc một đòn tấn công thả ra một loạt nước mắt và một viên sỏi thận"}, -- Kidney Stone
	{"441", "Mega Blast", "{{Timer}} Bắn một tia máu Mega Satan khổng lồ trong 15 giây#Tia kéo dài giữa các phòng và tầng"}, -- Mega Blast
	{"442", "Dark Prince's Crown", "Khi ở 1 Trái tim Đỏ đầy:#↑ {{Tears}} +0.75 Nước mắt#↑ {{Range}} +1.5 Tầm bắn#↑ +1 Tốc độ rơi nước mắt#↑ {{Shotspeed}} +0.2 Tốc độ đạn"}, -- Dark Princes Crown (apostrophe added to the name in Repentance) -- Dark Prince's Crown
	{"443", "Apple!", "↑ {{Tears}} +0.3 Nước mắt#{{Damage}} 6.66% cơ hội bắn lưỡi dao gây 4x sát thương của Isaac#{{Luck}} 100% cơ hội ở 14 may mắn"}, -- Apple!
	{"444", "Lead Pencil", "Isaac bắn một loạt nước mắt mỗi 15 nước mắt#Nước mắt trong loạt gây gấp đôi sát thương"}, -- Lead Pencil
	{"445", "Dog Tooth", "↑ {{Speed}} +0.1 Tốc độ#↑ {{Damage}} +0.3 Sát thương#{{SecretRoom}}{{SuperSecretRoom}} Một con sói tru trong phòng liền kề với Phòng Bí mật/Phòng Bí mật Siêu cấp#{{LadderRoom}} Một con chó sủa trong phòng có không gian bò dưới đá"}, -- Dog Tooth
	{"446", "Dead Tooth", "{{Poison}} Khi bắn, Isaac được bao quanh bởi hào quang xanh gây độc cho kẻ địch"}, -- Dead Tooth
	{"447", "Linger Bean", "Bắn không ngừng trong 7.5 giây tạo một đám mây phân#Đám mây gây sát thương của Isaac 5 lần mỗi giây#Đám mây kéo dài 15 giây và có thể di chuyển bằng cách bắn vào nó"}, -- Linger Bean
	{"448", "Shard of Glass", "Khi nhận sát thương:#{{Heart}} 25% cơ hội tạo Trái tim Đỏ#{{Collectible214}} 10% cơ hội nhận ↑ {{Range}} +5 Tầm bắn và để lại vệt chất lỏng máu trong phòng"}, -- Shard of Glass
	{"449", "Metal Plate", "{{SoulHeart}} +1 Trái tim Linh hồn#{{Confusion}} Đạn kẻ địch có 25% cơ hội bị phản lại thành nước mắt gây choáng"}, -- Metal Plate
	{"450", "Eye of Greed", "Mỗi 20 nước mắt, Isaac bắn một nước mắt đồng xu gây gấp đôi sát thương#Kẻ địch trúng đồng xu bị hóa đá và biến thành vàng#{{Coin}} Giết kẻ địch vàng thả 1-4 đồng xu#{{Warning}} Bắn nước mắt đồng xu tốn 1 đồng xu"}, -- Eye of Greed
	{"451", "Tarot Cloth", "{{Card}} Tạo một lá bài#{{Card}} Hiệu ứng lá bài được nhân đôi hoặc tăng cường"}, -- Tarot Cloth
	{"452", "Varicose Veins", "Nhận sát thương bắn 10 nước mắt theo vòng tròn quanh Isaac#Nước mắt gây sát thương của Isaac + 25"}, -- Varicose Veins
	{"453", "Compound Fracture", "↑ {{Range}} +1.5 Tầm bắn#↑ +1 Tốc độ rơi nước mắt#Nước mắt vỡ thành 1-3 mảnh xương nhỏ khi va chạm bất cứ thứ gì"}, -- Compound Fracture
	{"454", "Polydactyly", "Tạo một {{Rune}} rune, {{Card}} lá bài hoặc {{Pill}} viên thuốc khi nhặt#Cho phép Isaac mang 2 rune/lá bài/viên thuốc"}, -- Polydactyly
	{"455", "Dad's Lost Coin", "↑ {{Range}} +1.5 Tầm bắn#↑ +1 Tốc độ rơi nước mắt#{{Luck}} Tạo một Đồng xu May mắn"}, -- Dad's Lost Coin
	{"456", "Moldy Bread", "↑ {{Heart}} +1 Máu"}, -- Moldy Bread
	{"457", "Cone Head", "{{SoulHeart}} +1 Trái tim Linh hồn#20% cơ hội vô hiệu hóa sát thương nhận được"}, -- Cone Head
	{"458", "Belly Button", "{{Trinket}} Cho phép Isaac mang 2 món trang sức#{{Trinket}} Tạo một món trang sức ngẫu nhiên"}, -- Belly Button
	{"459", "Sinus Infection", "20% cơ hội bắn một cục nước mũi dính#{{Damage}} Nước mũi gây sát thương của Isaac mỗi giây và dính trong 60 giây#{{Luck}} Không bị ảnh hưởng bởi may mắn"}, -- Sinus Infection
	{"460", "Glaucoma", "{{Confusion}} 5% cơ hội bắn nước mắt gây choáng#Làm màn hình tối hơn một chút"}, -- Glaucoma
	{"461", "Parasitoid", "15% cơ hội bắn túi trứng#{{Luck}} 50% cơ hội ở 5 may mắn#{{Slow}} Túi trứng tạo chất lỏng làm chậm và một con nhện hoặc ruồi xanh khi trúng"}, -- Parasitoid
	{"462", "Eye of Belial", "↑ {{Range}} +1.5 Tầm bắn#↑ +1 Tốc độ rơi nước mắt#Nước mắt xuyên thấu#Trúng kẻ địch làm nước mắt tự dẫn đường và tăng gấp đôi sát thương"}, -- Eye of Belial
	{"463", "Sulfuric Acid", "↑ {{Damage}} +0.3 Sát thương#Nước mắt của Isaac có thể phá đá và mở cửa"}, -- Sulfuric Acid
	{"464", "Glyph of Balance", "{{SoulHeart}} +2 Trái tim Linh hồn#Kẻ địch Quán quân thả vật phẩm nhặt mà Isaac cần nhất"}, -- Glyph of Balance
	{"465", "Analog Stick", "↑ {{Tears}} +0.3 Nước mắt#Cho phép Isaac bắn nước mắt theo bất kỳ hướng nào"}, -- Analog Stick
	{"466", "Contagion", "{{Poison}} Kẻ địch đầu tiên bị giết trong phòng nổ và gây độc cho kẻ địch gần đó#Kẻ địch chết khi bị trúng độc cũng nổ và gây độc cho kẻ địch gần đó"}, -- Contagion
	{"467", "Finger!", "{{Damage}} Liên tục gây 10% sát thương của Isaac theo hướng nó chỉ"}, -- Finger!
	{"468", "Shade", "Đi theo chuyển động của Isaac sau 1 giây#Gây 30 sát thương tiếp xúc mỗi giây#Sau khi gây 600 sát thương, nó được Isaac hấp thụ, tăng sát thương tiếp xúc của Isaac"}, -- Shade
	{"469", "Depression", "Để lại vệt chất lỏng#Chất lỏng gây 6 sát thương mỗi giây#Kẻ địch chạm vào đám mây có thể bị trúng tia sáng thánh"}, -- Depression
	{"470", "Hushy", "Nảy quanh phòng#Gây 30 sát thương tiếp xúc mỗi giây#Dừng di chuyển khi Isaac bắn#Chặn đạn khi dừng lại"}, -- Hushy
	{"471", "Lil Monstro", "{{Chargeable}} Sạc một đòn tấn công súng ngắn tương tự {{Collectible229}} Phổi của Monstro#Mỗi nước mắt gây 3.5 sát thương"}, -- Lil Monstro
	{"472", "King Baby", "Các bạn đồng hành khác đi theo nó#Dừng di chuyển khi Isaac bắn#Dịch chuyển về Isaac khi Isaac ngừng bắn"}, -- King Baby
	{"473", "Big Chubby", "Từ từ lao về phía trước#Chặn đạn#Gây 40.5 sát thương tiếp xúc mỗi giây"}, -- Big Chubby
	{"474", "Tonsil", "Chặn đạn kẻ địch"}, -- Tonsil
	{"475", "Plan C", "Gây 9,999,999 sát thương cho tất cả kẻ địch#{{Warning}} Giết Isaac 3 giây sau đó"}, -- Plan C
	{"476", "D1", "Nhân đôi một vật phẩm nhặt ngẫu nhiên trong phòng"}, -- D1
	{"477", "Void", "Tiêu thụ tất cả vật phẩm trên bệ trong phòng#Vật phẩm kích hoạt: Hiệu ứng của chúng kích hoạt, và sẽ kích hoạt với mỗi lần sử dụng Void sau này#↑ Vật phẩm bị động cấp hai chỉ số ngẫu nhiên tăng"}, -- Void
	{"478", "Pause", "Tạm dừng tất cả kẻ địch trong phòng cho đến khi Isaac bắn#Chạm vào kẻ địch bị tạm dừng vẫn gây sát thương cho Isaac#Kẻ địch hết tạm dừng sau 30 giây"}, -- Pause
	{"479", "Smelter", "{{Trinket}} Tiêu thụ món trang sức Isaac đang giữ và cấp hiệu ứng của chúng vĩnh viễn#Tăng tỷ lệ xuất hiện của món trang sức"}, -- Smelter
	{"480", "Compost", "Chuyển vật phẩm nhặt thành ruồi hoặc nhện xanh#Nhân đôi tất cả ruồi và nhện xanh#Tạo 1 ruồi hoặc nhện xanh nếu Isaac không có"}, -- Compost
	{"481", "Dataminer", "↑ Tăng chỉ số ngẫu nhiên#↓ Giảm chỉ số ngẫu nhiên#{{Timer}} Hiệu ứng nước mắt ngẫu nhiên trong phòng#{{Blank}} Làm hỏng tất cả hình ảnh và âm nhạc trong phòng"}, -- Dataminer
	{"482", "Clicker", "Thay đổi nhân vật của bạn thành nhân vật ngẫu nhiên#Loại bỏ vật phẩm gần đây nhất thu thập được"}, -- Clicker
	{"483", "Mama Mega!", "Ảnh hưởng toàn bộ tầng#Làm nổ tất cả vật thể#Gây 200 sát thương cho tất cả kẻ địch#Mở phòng bí mật#Mở Boss Rush và Hush bất kể thời gian"}, -- Mama Mega!
	{"484", "Wait What?", "Khi sử dụng, đẩy kẻ địch ra xa và tạo sóng đá quanh Isaac#Sóng đá có thể mở phòng và phá đá"}, -- Wait What?
	{"485", "Crooked Penny", "50% cơ hội nhân đôi tất cả vật phẩm, vật phẩm nhặt và rương trong phòng#50% cơ hội loại bỏ vật phẩm/vật phẩm nhặt trong phòng và tạo 1 đồng xu"}, -- Crooked Penny
	{"486", "Dull Razor", "Làm tổn thương Isaac mà không giảm máu#Kích hoạt bất kỳ hiệu ứng vật phẩm khi bị trúng"}, -- Dull Razor
	{"487", "Potato Peeler", "{{EmptyHeart}} Loại bỏ 1 hộp tim để:#↑ {{Damage}} +0.2 Sát thương#{{Collectible73}} Một Khối Thịt#{{Timer}} Nhận trong phòng:#↑ {{Range}} +5 Tầm bắn#{{Collectible214}} Để lại vệt chất lỏng máu"}, -- Potato Peeler
	{"488", "Metronome", "Cấp hiệu ứng vật phẩm ngẫu nhiên trong phòng"}, -- Metronome
	{"489", "D Infinity", "Kích hoạt hiệu ứng xúc xắc ngẫu nhiên mỗi lần sử dụng"}, -- D Infinity
	{"490", "Eden's Soul", "Tạo 2 vật phẩm ngẫu nhiên tùy thuộc vào nhóm vật phẩm của phòng hiện tại#Bắt đầu không có lần sạc"}, -- Eden's Soul
	{"491", "Acid Baby", "{{Pill}} Tạo một viên thuốc ngẫu nhiên mỗi 3 phòng#{{Poison}} Sử dụng viên thuốc gây độc cho tất cả kẻ địch trong phòng"}, -- Acid Baby
	{"492", "YO LISTEN!", "↑ {{Luck}} +1 May mắn#Đánh dấu vị trí của {{SecretRoom}} phòng bí mật, đá nhuộm và {{LadderRoom}} không gian bò"}, -- YO LISTEN!
	{"493", "Adrenaline", "Mỗi hộp tim trống:#↑ {{Damage}} +0.2 Sát thương"}, -- Adrenaline
	{"494", "Jacob's Ladder", "Nước mắt tạo 1-2 tia điện khi va chạm#Tia điện gây nửa sát thương của Isaac"}, -- Jacob's Ladder
	{"495", "Ghost Pepper", "Cơ hội bắn ngọn lửa đỏ chặn đạn kẻ địch và gây sát thương tiếp xúc#Ngọn lửa biến mất sau khi gây sát thương hoặc chặn đạn 5 lần"}, -- Ghost Pepper
	{"496", "Euthanasia", "3.33% cơ hội bắn kim#{{Luck}} 100% cơ hội ở 15 may mắn#Kim giết kẻ địch thường ngay lập tức, làm chúng vỡ thành 10 nước mắt#{{Damage}} Kim gây 3x sát thương của Isaac với trùm"}, -- Euthanasia
	{"497", "Camo Undies", "{{Confusion}} Vào phòng làm tất cả kẻ địch bị choáng cho đến khi Isaac bắt đầu bắn"}, -- Camo Undies
	{"498", "Duality", "{{AngelDevilChance}} Tạo cả Phòng Quỷ và Phòng Thiên thần nếu một trong hai sẽ xuất hiện#Vào một phòng sẽ làm phòng kia biến mất"}, -- Duality
	{"499", "Eucharist", "{{AngelChance}} 100% cơ hội cho Phòng Thiên thần xuất hiện"}, -- Eucharist
	{"500", "Sack of Sacks", "Tạo một túi mỗi 5-6 phòng"}, -- Sack of Sacks
	{"501", "Greed's Gullet", "{{Heart}} +1 Hộp tim cho mỗi 25 đồng xu nhận được sau khi có Greed's Gullet"}, -- Greed's Gullet
	{"502", "Large Zit", "{{Slow}} Bắn thỉnh thoảng tạo nước mắt chất lỏng trắng gây gấp đôi sát thương và làm chậm kẻ địch#Nhận sát thương bắn một nước mắt chất lỏng trắng"}, -- Large Zit
	{"503", "Little Horn", "5% cơ hội bắn nước mắt giết kẻ địch ngay lập tức#{{Luck}} 20% cơ hội ở 15 may mắn#Isaac gây 3.5 sát thương tiếp xúc"}, -- Little Horn
	{"504", "Brown Nugget", "Tạo một tháp pháo ruồi bắn kẻ địch#Mỗi phát bắn gây 2 sát thương"}, -- Brown Nugget
	{"505", "Poke Go", "Vào phòng có kẻ địch có cơ hội tạo một kẻ địch bị mê hoặc"}, -- Poke Go
	{"506", "Backstabber", "{{BleedingOut}} Trúng kẻ địch từ phía sau gây gấp đôi sát thương và gây chảy máu, gây 10% sát thương tối đa của kẻ địch mỗi 5 giây"}, -- Backstabber
	{"507", "Sharp Straw", "{{Damage}} Gây sát thương của Isaac + 10% máu tối đa của kẻ địch cho tất cả kẻ địch#{{HalfHeart}} Gây sát thương bằng Ống Hút có thể tạo nửa trái tim#{{HalfSoulHeart}} Không có hộp tim thả Trái tim Linh hồn thay thế"}, -- Sharp Straw
	{"508", "Mom's Razor", "{{BleedingOut}} Vệ tinh gây chảy máu, gây 10% sát thương tối đa của kẻ địch mỗi 5 giây#{{Damage}} Gây 3x sát thương của Isaac mỗi giây#Không chặn đạn"}, -- Mom's Razor
	{"509", "Bloodshot Eye", "Vệ tinh bắn một nước mắt theo hướng ngẫu nhiên mỗi 2 giây#Gây 3.5 sát thương mỗi nước mắt#Gây 30 sát thương tiếp xúc mỗi giây#Không chặn đạn"}, -- Bloodshot Eye
	{"510", "Delirious", "{{Timer}} Tạo một phiên bản delirium thân thiện của trùm trong phòng"}, -- Delirious
	{"511", "Angry Fly", "Xoay quanh một kẻ địch ngẫu nhiên cho đến khi kẻ địch đó chết#Gây 30 sát thương tiếp xúc mỗi giây cho các kẻ địch khác"}, -- Angry Fly
	{"512", "Black Hole", "Ném hố đen, hút mọi thứ vào#Gây 6 sát thương mỗi giây#Phá hủy đá gần đó#Kéo dài 6 giây"}, -- Black Hole
	{"513", "Bozo", "↑ {{Damage}} +0.1 Sát thương#{{SoulHeart}} +1 Trái tim Linh hồn#{{Charm}} Ngẫu nhiên mê hoặc/làm sợ kẻ địch#Nhận sát thương có cơ hội ngẫu nhiên tạo Phân Cầu vồng"}, -- Bozo
	{"514", "Broken Modem", "Làm một số kẻ địch và đạn tạm dừng ngẫu nhiên#25% cơ hội nhân đôi phần thưởng dọn phòng"}, -- Broken Modem
	{"515", "Mystery Gift", "Tạo một vật phẩm ngẫu nhiên từ nhóm vật phẩm của phòng hiện tại#Cơ hội tạo Lump of Coal hoặc The Poop thay thế"}, -- Mystery Gift
	{"516", "Sprinkler", "Tạo một Vòi Phun bắn nước mắt giống Isaac theo vòng tròn quanh nó"}, -- Sprinkler
	{"517", "Fast Bombs", "{{Bomb}} +7 Bom#Loại bỏ độ trễ giữa các lần đặt bom"}, -- Fast Bombs
	{"518", "Buddy in a Box", "bạn đồng hành trông giống một bé đồng hành ngẫu nhiên#Có hiệu ứng nước mắt ngẫu nhiên#Hiệu ứng thay đổi mỗi tầng"}, -- Buddy in a Box
	{"519", "Lil Delirium", "Biến thành một bạn đồng hành ngẫu nhiên mỗi 10 giây"}, -- Lil Delirium
	{"520", "Jumper Cables", "Giết 15 kẻ địch thêm 1 lần sạc cho vật phẩm kích hoạt"}, -- Jumper Cables
	{"521", "Coupon", "Làm một vật phẩm ngẫu nhiên trong {{Shop}} Cửa hàng hoặc {{DevilRoom}} Phòng Quỷ miễn phí#Cầm vật phẩm đảm bảo một vật phẩm Cửa hàng giảm giá"}, -- Coupon
	{"522", "Telekinesis", "Dừng tất cả đạn kẻ địch đến gần Isaac trong 3 giây và đẩy chúng ra xa sau đó"}, -- Telekinesis
	{"523", "Moving Box", "Lưu trữ tất cả vật phẩm nhặt và vật phẩm trong phòng hiện tại#Sử dụng vật phẩm lần nữa thả mọi thứ trở lại sàn#Cho phép Isaac di chuyển đồ giữa các phòng"}, -- Moving Box
	{"524", "Technology Zero", "Nước mắt của Isaac được nối với nhau bằng tia điện#Tia gây sát thương của Isaac"}, -- Technology Zero
	{"525", "Leprosy", "Nhận sát thương tạo một vệ tinh chặn đạn#Tối đa 3 vệ tinh#Chúng gây 35 sát thương tiếp xúc mỗi giây#Vệ tinh bị phá hủy nếu nhận quá nhiều sát thương"}, -- Leprosy
	{"526", "7 Seals", "Tạo một bạn đồng hành kỵ sĩ nhỏ tạo ra châu chấu#Kỵ sĩ và châu chấu thay đổi mỗi 10 giây"}, -- 7 Seals
	{"527", "Mr. ME!", "Hiển thị con trỏ di động trong vài giây, sau đó triệu hồi một con ma sẽ, tùy vào vị trí con trỏ:#Mở cửa hoặc rương#Lấy một vật phẩm#50% cơ hội ăn cắp từ Cửa hàng/Quỷ#Tấn công kẻ địch cho đến khi nó chết#Làm nổ tường, đá, người giữ cửa hàng, tượng thiên thần, máy, người ăn xin"}, -- Mr. ME!
	{"528", "Angelic Prism", "Lăng kính vệ tinh#Nước mắt thân thiện trúng nó tách thành 4"}, -- Angelic Prism
	{"529", "Pop!", "Nước mắt của Isaac nảy vào nhau và biến mất khi ngừng di chuyển"}, -- Pop!
	{"530", "Death's List", "Giết kẻ địch theo thứ tự được đánh dấu {{DeathMark}} phía trên chúng cấp một vật phẩm nhặt hoặc tăng chỉ số ngẫu nhiên"}, -- Death's List
	{"531", "Haemolacria", "↑ {{Damage}} x1.31 Hệ số sát thương#↓ {{Tears}} x0.5 Hệ số nước mắt#↓ {{Tears}} +10 Độ trễ nước mắt#Nước mắt của Isaac bay theo hình vòng cung và vỡ thành nước mắt nhỏ hơn khi va chạm"}, -- Haemolacria
	{"532", "Lachryphagy", "Nước mắt của Isaac dần chậm lại, dừng, sau đó nổ thành 8 nước mắt nhỏ hơn#Nước mắt có thể hợp nhất và trở nên lớn hơn"}, -- Lachryphagy
	{"533", "Trisagion", "Thay nước mắt của Isaac bằng tia sáng xuyên thấu#Tia gây 33% sát thương nhưng có thể trúng kẻ địch nhiều lần"}, -- Trisagion
	{"534", "Schoolbag", "Cho phép Isaac giữ 2 vật phẩm kích hoạt#Các vật phẩm có thể được đổi bằng nút Thả ({{ButtonRT}})"}, -- Schoolbag
	{"535", "Blanket", "{{HealingRed}} Hồi 1 trái tim#{{SoulHeart}} +1 Trái tim Linh hồn#{{HolyMantle}} Vào phòng trùm cấp một lá chắn Holy Mantle (ngăn sát thương một lần)"}, -- Blanket
	{"536", "Sacrificial Altar", "Hy sinh tối đa 2 bạn đồng hành và tạo một vật phẩm quỷ cho mỗi lần hy sinh#{{Coin}} Biến nhện/ruồi xanh thành đồng xu"}, -- Sacrificial Altar
	{"537", "Lil Spewer", "{{Pill}} Tạo một viên thuốc ngẫu nhiên khi nhặt#Bắn một vệt chất lỏng#Loại chất lỏng thay đổi với mỗi lần sử dụng viên thuốc"}, -- Lil Spewer
	{"538", "Marbles", "{{Trinket}} Tạo 3 món trang sức ngẫu nhiên#{{Collectible479}} Nhận sát thương có 10% cơ hội tiêu thụ món trang sức đang giữ của Isaac và cấp hiệu ứng của nó vĩnh viễn"}, -- Marbles
	{"539", "Mystery Egg", "Nhận sát thương tạo một kẻ địch bị mê hoặc#Tạo bạn bè mạnh hơn khi dọn nhiều phòng mà không nhận sát thương"}, -- Mystery Egg
	{"540", "Flat Stone", "Nước mắt của Isaac nảy trên sàn và gây sát thương văng mỗi lần nảy"}, -- Flat Stone
	{"541", "Marrow", "{{Heart}} Tạo 3 Trái tim Đỏ#{{EmptyBoneHeart}} +1 Trái tim Xương"}, -- Marrow
	{"542", "Slipped Rib", "Vệ tinh#Phản đạn kẻ địch"}, -- Slipped Rib
	{"543", "Hallowed Ground", "Nhận sát thương tạo một phân trắng#Khi ở trong hào quang của phân:#↑ {{Tears}} x2 Hệ số nước mắt#Cơ hội chặn sát thương"}, -- Hallowed Ground
	{"544", "Pointy Rib", "Bay lơ lửng phía trước Isaac#Gây 6x sát thương của Isaac mỗi giây"}, -- Pointy Rib
	{"545", "Book of the Dead", "Tạo một vệ tinh xương hoặc xương bị mê hoặc cho mỗi kẻ địch giết trong phòng (tối đa 8)"}, -- Book of the Dead
	{"546", "Dad's Ring", "Cấp một hào quang hóa đá kẻ địch"}, -- Dad's Ring
	{"547", "Divorce Papers", "↑ {{Tears}} +0.7 Nước mắt#{{EmptyBoneHeart}} +1 Trái tim Xương#{{Trinket21}} Tạo món trang sức Mysterious Paper"}, -- Divorce Papers
	{"548", "Jaw Bone", "bạn đồng hành giống boomerang#Gây 7 sát thương tiếp xúc#Có thể nhặt và mang vật phẩm nhặt về"}, -- Jaw Bone
	{"549", "Brittle Bones", "{{EmptyBoneHeart}} Thay tất cả hộp Trái tim Đỏ của Isaac bằng 6 Trái tim Xương trống#Khi mất một Trái tim Xương:#↑ {{Tears}} +0.5 Nước mắt#Bắn 8 nước mắt xương theo mọi hướng"}, -- Brittle Bones
	{"550", "Broken Shovel", "Chân của Mom liên tục cố gắng dậm Isaac#Sử dụng vật phẩm dừng việc dậm trong phòng (hoặc một đợt Boss Rush)#{{Warning}} (Hãy thử đánh bại Boss Rush với nó!)"}, -- Broken Shovel
	{"551", "Broken Shovel", "Hoàn thành Xẻng của Mom#{{Warning}} Sử dụng xẻng trên đống đất trong \"Dark Room\""}, -- Broken Shovel
	{"552", "Mom's Shovel", "Tạo một cửa sập xuống tầng tiếp theo#10% cơ hội cho cửa sập {{LadderRoom}} không gian bò#{{Warning}} Sử dụng xẻng trên đống đất trong \"Dark Room\""}, -- Mom's Shovel
}

---------- Modifiers ----------

-- Effect of Car Battery on Active Items
EID.descriptions[languageCode].carBattery = {
	["No Effect"] = "Không có hiệu ứng",
	[35] = {40, 80}, -- The Necronomicon
	[37] = { " a ", " 2 ", "bomb", "{{CR}}bombs" }, -- Mr. Boom
	[38] = {10, 20}, -- Tammy's Head
	[45] = {1, 2, "heart", "{{CR}}hearts"}, -- Yum Heart
	[58] = {10, 20}, -- Book of Shadows
	[65] = {6, 12}, -- Anarchist's Cookbook
	[66] = {8, 16}, -- The Hourglass
	[77] = {6, 12}, -- My Little Unicorn
	[78] = {1, 2}, -- Book of Revelations
	[83] = {1, 2}, -- The Nail
	[85] = {1, 2, "card", "{{CR}}cards"}, -- Deck of Cards
	[86] = {120, 240}, -- Monstro's Tooth
	[93] = {6.5, 13}, -- The Gamekid
	[97] = {" a ", " 2 ", "pickup", "{{CR}}pickups"}, -- The Book of Sin
	[102] = {1, 2, "pill", "{{CR}}pills"}, -- Mom's Bottle of Pills
	[105] = "Đổi mới hai lần, làm cạn kiệt kho vật phẩm nhanh hơn", -- The D6
	[107] = "Sinh ra hai cơ thể", -- The Pinking Shears
	[111] = {5, 10}, -- The Bean
	[123] = {" a ", " 2 ", "familiar", "{{CR}}familiars"}, -- Monster Manual
	[124] = {" a ", " 2 ", "effect", "{{CR}}effects"}, -- Dead Sea Scrolls
	[136] = {" a ", " 2 ", "Isaac", "{{CR}}Isaacs"}, -- Best Friend
	[145] = {"2-4", "4-8"}, -- Guppy's Head
	[146] = {1, 2, " Heart", " {{CR}}Hearts"}, -- Prayer Card (should this just say +1 health...)
	[158] = {" a ", " 2 ", " Heart", " {{CR}}Hearts", "rune", "{{CR}}runes", "card", "{{CR}}cards"}, -- Crystal Ball
	[160] = {5, 10}, -- Crack the Sky
	[171] = {10, 20}, -- Spider Butt
	[283] = "Đổi mới hai lần, giúp tiến trình biến hình nhưng làm cạn kiệt kho vật phẩm nhanh hơn", -- D100
	[284] = "Đổi mới hai lần, giúp tiến trình biến hình nhưng làm cạn kiệt kho vật phẩm nhanh hơn", -- D4
	[286] = "Kích hoạt hai lần", -- Blank Card
	[287] = {"one", "two"}, -- Book of Secrets
	[288] = {"1-4", "2-8"}, -- Box of Spiders
	[292] = {1, 2}, -- Satanic Bible
	[293] = {440, 880}, -- Head of Krampus
	[294] = "Tăng độ đẩy lùi", -- Butter Bean
	[298] = {6, 12}, -- Unicorn Stump
	[348] = "Kích hoạt hai lần", -- Placebo
	[349] = "Kích hoạt cơ hội hai lần", -- Wooden Nickel
	[351] = {5, 10}, -- Mega Bean
	[357] = {"Nhân đôi", "Nhân ba"}, -- Box of Friends
	[383] = {6, 36}, -- Tear Detonator
	[421] = {5, 10}, -- Kidney Bean
	[427] = {" a ", " 2 ", "barrel", "{{CR}}barrels", "barrel", "{{CR}}barrels"}, -- Mine Crafter
	[439] = {" a ", " 2 ", "trinket", "{{CR}}trinkets"}, -- Mom's Box
	[476] = {" a ", " 2 ", "pickup", "{{CR}}pickups"}, -- D1
	[477] = "Kích hoạt mỗi vật phẩm kích hoạt đã hấp thụ hai lần", -- Void
	[480] = {"Gấp đôi", "Nhân bốn"}, -- Compost
	[481] = "Hai lần tăng chỉ số và giảm chỉ số", -- Dataminer
	[482] = "Thay đổi nhân vật của bạn hai lần và loại bỏ hai vật phẩm", -- Clicker
	[485] = "25% cơ hội nhân bốn, 25% cơ hội nhân đôi và loại bỏ bản gốc, 50% cơ hội loại bỏ", -- Crooked Penny
	[486] = {"effects", "{{CR}}effects {{BlinkYellowGreen}}twice"}, -- Dull Razor
	[488] = "Kích hoạt hai lần, nhưng chỉ hiệu ứng thứ hai được giữ lại", -- Metronome
	[489] = {" a ", " 2 ", "effect", "{{CR}}effects"}, -- D Infinity
	[504] = {" a ", " 2 ", "turret", "{{CR}}turrets"}, -- Brown Nugget
	[507] = "Kích hoạt hai lần", -- Sharp Straw
	[510] = {" a ", " 2 ", "version", "{{CR}}versions"}, -- Delirious
	[516] = {" a ", " 2 ", "Sprinkler", "{{CR}}Sprinklers"}, -- Sprinkler
	[521] = {"one", "two", "item", "{{CR}}items"}, -- Coupon
	[523] = "Hoán đổi nội dung hộp với vật phẩm nhặt được trong phòng", -- Moving Box
	[545] = {8, 16}, -- Book of the Dead
	[550] = "Ngăn chặn giẫm đạp trong hai phòng (hoặc các đợt Boss Rush)", -- Broken Shovel
}

-- Effect of BFFS! on Familiars
EID.descriptions[languageCode].BFFSSynergies = {
	["No Effect"] = "Không có hiệu ứng từ {1}",
	["5.100.8"] = {3.5, 7}, -- Brother Bobby
	["5.100.57"] = {75, 150}, -- Distant Admiration
	["5.100.67"] = {3.5, 7}, -- Sister Maggy
	["5.100.73"] = "Sát thương tăng gấp đôi", -- Cube of Meat
	["5.100.88"] = {52.5, 105}, -- Little Chubby
	["5.100.94"] = {"2", "1-2"}, -- Sack of Pennies
	["5.100.95"] = {3.5, 7}, -- Robo-Baby
	["5.100.96"] = {"3", "2-3"}, -- Little C.H.A.D.
	["5.100.98"] = {"5-6", "4-5"}, -- The Relic
	["5.100.99"] = {3.5, 7}, -- Little Gish
	["5.100.100"] = {3.5, 7}, -- Little Steven
	["5.100.107"] = {82.5, 165}, -- The Pinking Shears
	["5.100.112"] = {105, 210}, -- Guardian Angel
	["5.100.113"] = {3, 6}, -- Demon Baby
	["5.100.117"] = {4.3, 8.6}, -- Dead Bird
	["5.100.128"] = {30, 60}, -- Forever Alone
	["5.100.131"] = {"3", "2-3"}, -- Bomb Bag
	["5.100.144"] = {"3-4", "3"}, -- Bum Friend
	["5.100.155"] = {17, 34}, -- The Peeper
	["5.100.163"] = {3.5, 7}, -- Ghost Baby
	["5.100.167"] = {4, 8}, -- Harlequin Baby
	["5.100.170"] = {40, 80}, -- Daddy Longlegs
	["5.100.172"] = {225, 450}, -- Sacrificial Dagger
	["5.100.174"] = {"3-5", "6-10"}, -- Rainbow Baby
	["5.100.187"] = "Sát thương tăng gấp đôi", -- Guppy's Hairball
	["5.100.188"] = {3.5, 7, 7.5, 15}, -- Abel (includes Cain's Rep synergy)
	["5.100.206"] = {105, 210}, -- Guillotine
	["5.100.207"] = "DSát thương tăng gấp đôi", -- Ball of Bandages
	["5.100.264"] = {22.5, 45}, -- Smart Fly
	["5.100.266"] = "Sinh ra thêm một Nhện Xanh", -- Juicy Sack
	["5.100.267"] = {3.5, 7}, -- Robo-Baby 2.0
	["5.100.270"] = {3.2, 6.4}, -- Leech
	["5.100.271"] = {"5-6", "4-5"}, -- Mystery Sack
	["5.100.272"] = {60, 85}, -- BBF
	["5.100.273"] = {60, 85}, -- Bob's Brain
	["5.100.274"] = {75, 150}, -- Best Bud
	["5.100.275"] = {31.5, 63}, -- Lil Brimstone
	["5.100.277"] = {4, 8}, -- Lil Haunt
	["5.100.279"] = {30, 60}, -- Big Fan
	["5.100.318"] = {6, 12}, -- Gemini
	["5.100.319"] = {"Sát thương của Isaac", "gấp đôi {{CR}}sát thương của Isaac"}, -- Cain's Other Eye
	["5.100.320"] = {37.5, 75}, -- ???'s Only Friend
	["5.100.321"] = {10.7, 21.4}, -- Samson's Chains
	["5.100.322"] = {3.5, 7}, -- Mongo Baby
	["5.100.325"] = {3.5, 7}, -- Scissors
	["5.100.360"] = "Sát thương tăng gấp đôi", -- Incubus
	["5.100.361"] = "Sát thương tăng gấp đôi", -- Fate's Reward
	["5.100.362"] = {35, 44}, -- Lil Chest
	["5.100.363"] = {105, 210}, -- Sworn Protector
	["5.100.364"] = {45, 90}, -- Friend Zone
	["5.100.365"] = {105, 210}, -- Lost Fly
	["5.100.372"] = "Cơ hội sinh ra pin cao hơn", -- Charged Baby
	["5.100.384"] = {"5-90", "10-180"}, -- Lil Gurdy
	["5.100.385"] = "Sát thương tăng gấp đôi", -- Bumbo
	["5.100.388"] = "Sinh ra rương thường xuyên hơn", -- Key Bum
	["5.100.389"] = {"5-6", "4-5"}, -- Rune Bag
	["5.100.390"] = {10, 20}, -- Seraphim
	["5.100.403"] = "Cơ hội sinh ra pin cao hơn", -- Spider Mod
	["5.100.405"] = {120, 240}, -- GB Bug
	["5.100.417"] = "Vùng sát thương lớn hơn, nhưng vùng tăng sát thương không thay đổi", -- Succubus
	["5.100.426"] = {30, 60}, -- Obsessed Fan
	["5.100.430"] = {"Sát thương của Isaac", "gấp đôi {{CR}}sát thương của Isaac"}, -- Papa Fly
	["5.100.435"] = {3.5, 7}, -- Lil Loki
	["5.100.468"] = {30, 60}, -- Shade
	["5.100.470"] = {30, 60}, -- Hushy
	["5.100.471"] = {3.5, 7}, -- Lil Monstro
	["5.100.473"] = {40.5, 81}, -- Big Chubby
	["5.100.491"] = {"3", "2-3"}, -- Acid Baby
	["5.100.500"] = {"5-6", "4-5"}, -- Sack of Sacks
	["5.100.508"] = {3, 6}, -- Mom's Razor
	["5.100.509"] = {3.5, 7, 30, 60}, -- Bloodshot Eye
	["5.100.511"] = {30, 60}, -- Angry Fly
	["5.100.518"] = "Sát thương tăng gấp đôi", -- Buddy in a Box
	["5.100.519"] = "Sát thương tăng gấp đôi", -- Lil Delirium
	["5.100.525"] = {35, 70}, -- Leprosy
	["5.100.526"] = "Sát thương tiếp xúc của Kỵ Sĩ tăng gấp đôi", -- 7 Seals
	["5.100.537"] = "Tăng kích thước chất lỏng, nhưng không tăng sát thương", -- Lil Spewer
	["5.100.539"] = "Sinh ra một biến thể vô địch của kẻ địch", -- Mystery Egg
	["5.100.544"] = {6, 12}, -- Pointy Rib
	["5.100.545"] = "Sát thương tiếp xúc của quỹ đạo xương tăng gấp đôi", -- Book of the Dead
	["5.100.548"] = {7, 14}, -- Jaw Bone
	
	["5.350.54"] = {3.5, 7}, --- Isaac's Head
	["5.350.57"] = {3.5, 7}, --- ???'s Soul
	["Lilith"] = "Sát thương của Incubus tăng gấp đôi", -- Incubus (for BFFS pedestal)
}

---------- Trinkets ----------

EID.descriptions[languageCode].trinkets={
	{"1", "Swallowed Penny", "{{Coin}} Nhận sát thương sinh ra 1 đồng xu"}, -- Swallowed Penny
	{"2", "Petrified Poop", "50% cơ hội nhận vật phẩm từ phân"}, -- Petrified Poop
	{"3", "AAA Battery", "{{Battery}} -1 năng lượng cần cho vật phẩm kích hoạt"}, -- AAA Battery
	{"4", "Broken Remote", "{{Collectible44}} Sử dụng vật phẩm kích hoạt dịch chuyển Isaac đến một phòng ngẫu nhiên"}, -- Broken Remote
	{"5", "Purple Heart", "2x cơ hội gặp kẻ địch dạng vô địch"}, -- Purple Heart
	{"6", "Broken Magnet", "{{Coin}} Thu hút đồng xu về phía Isaac"}, -- Broken Magnet
	{"7", "Rosary Bead", "{{AngelChance}} 50% cơ hội cao hơn để vào Phòng Thiên Thần#{{Collectible33}} Cơ hội cao hơn để tìm The Bible trong {{Shop}} Cửa hàng và {{Library}} Thư viện"}, -- Rosary Bead
	{"8", "Cartridge", "{{Timer}} 5% cơ hội khi nhận sát thương nhận được trong 6,5 giây:#Bất tử#Isaac không thể bắn nhưng gây 40 sát thương tiếp xúc mỗi giây#{{HealingRed}} Giết 2 kẻ địch hồi nửa trái tim#{{Fear}} Làm tất cả kẻ địch trong phòng sợ hãi"}, -- Cartridge
	{"9", "Pulse Worm", "Nước mắt của Isaac dao động#Ảnh hưởng đến hitbox của nước mắt"}, -- Pulse Worm
	{"10", "Wiggle Worm", "↑ {{Tears}} +0.3 Nước mắt#Nước mắt của Isaac di chuyển theo dạng sóng"}, -- Wiggle Worm
	{"11", "Ring Worm", "Nước mắt của Isaac di chuyển theo hình xoắn ốc với tốc độ cao"}, -- Ring Worm
	{"12", "Flat Worm", "Nước mắt rộng hơn 50%#Tăng độ đẩy lùi"}, -- Flat Worm
	{"13", "Store Credit", "{{Shop}} Cho phép Isaac lấy 1 vật phẩm trong cửa hàng miễn phí"}, -- Store Credit
	{"14", "Callus", "Miễn nhiễm với chất lỏng trên sàn và gai trên sàn"}, -- Callus
	{"15", "Lucky Rock", "{{Coin}} Phá đá sinh ra đồng xu"}, -- Lucky Rock
	{"16", "Mom's Toenail", "Chân của Mom giẫm lên một điểm ngẫu nhiên trong phòng mỗi 60 giây"}, -- Mom's Toenail
	{"17", "Black Lipstick", "{{BlackHeart}} +5% cơ hội để Trái Tim Linh Hồn ngẫu nhiên xuất hiện dưới dạng Trái Tim Đen"}, -- Black Lipstick
	{"18", "Bible Tract", "{{EternalHeart}} +3% cơ hội cho Trái Tim Vĩnh Cửu"}, -- Bible Tract
	{"19", "Paper Clip", "{{GoldenChest}} Rương vàng có thể mở miễn phí"}, -- Paper Clip
	{"20", "Monkey Paw", "{{BlackHeart}} Sinh ra 1 Trái Tim Đen khi máu của Isaac giảm xuống còn nửa trái tim#{{Warning}} Biến mất sau khi sinh ra 3 Trái Tim Đen"}, -- Monkey Paw
	{"21", "Mysterious Paper", "Ngẫu nhiên nhận hiệu ứng của: #{{Collectible327}} The Polaroid#{{Collectible328}} The Negative#{{Trinket48}} A Missing Page#{{Trinket23}} Missing Poster"}, -- Mysterious Paper
	{"22", "Daemon's Tail", "{{Heart}} Giảm tỷ lệ xuất hiện của trái tim xuống 20%#{{BlackHeart}} Tất cả vật phẩm trái tim biến thành Trái Tim Đen#{{Key}} Tăng cơ hội rơi chìa khóa"}, -- Daemon's Tail
	{"23", "Missing Poster", "{{Player10}} Hồi sinh thành The Lost khi chết"}, -- Missing Poster
	{"24", "Butt Penny", "{{Coin}} 20% cơ hội cao hơn để đồng xu xuất hiện từ phân#Nhặt đồng xu khiến Isaac đánh rắm"}, -- Butt Penny
	{"25", "Mysterious Candy", "Isaac đánh rắm hoặc sinh ra phân mỗi 30 giây"}, -- Mysterious Candy
	{"26", "Hook Worm", "↑ {{Range}} +10 Tầm bắn#Nước mắt của Isaac di chuyển theo hình góc cạnh"}, -- Hook Worm
	{"27", "Whip Worm", "↑ {{Shotspeed}} +0.5 Tốc độ đạn"}, -- Whip Worm
	{"28", "Broken Ankh", "{{Player4}} 22% cơ hội hồi sinh thành ??? (Blue Baby) khi chết"}, -- Broken Ankh
	{"29", "Fish Head", "Nhận sát thương sinh ra 1 ruồi xanh"}, -- Fish Head
	{"30", "Pinky Eye", "{{Poison}} 10% cơ hội bắn nước mắt độc#{{Luck}} 100% cơ hội ở 18 may mắn"}, -- Pinky Eye
	{"31", "Push Pin", "10% cơ hội bắn nước mắt xuyên thấu + xuyên quang phổ#{{Luck}} 100% cơ hội ở 18 may mắn"}, -- Push Pin
	{"32", "Liberty Cap", "25% cơ hội nhận hiệu ứng nấm ngẫu nhiên mỗi phòng#Có thể hiển thị phòng đặc biệt trên bản đồ nhỏ"}, -- Liberty Cap
	{"33", "Umbilical Cord", "{{Timer}} Sinh ra {{Collectible100}} Little Steven cho phòng khi máu của Isaac giảm xuống còn nửa trái tim"}, -- Umbilical Cord
	{"34", "Child's Heart", "{{UnknownHeart}} 10% cơ hội phần thưởng khi dọn phòng là một trái tim ngẫu nhiên#{{Heart}} 33% cơ hội nhận thêm một trái tim từ rương, đá nhuộm màu, và máy bị phá hủy"}, -- Child's Heart
	{"35", "Curved Horn", "↑ {{Damage}} +2 Sát thương"}, -- Curved Horn
	{"36", "Rusted Key", "{{Key}} 10% cơ hội phần thưởng khi dọn phòng là một chìa khóa#{{Key}} 33% cơ hội nhận thêm một chìa khóa từ rương, đá nhuộm màu, và máy bị phá hủy"}, -- Rusted Key
	{"37", "Goat Hoof", "↑ {{Speed}} +0.15 Tốc độ"}, -- Goat Hoof
	{"38", "Mom's Pearl", "+10% cơ hội trái tim rơi ra là {{SoulHeart}} Trái Tim Linh Hồn, {{BlackHeart}} Trái Tim Đen hoặc {{EmptyBoneHeart}} Trái Tim Xương"}, -- Mom's Pearl
	{"39", "Cancer", "↑ {{Tears}} -2 Độ trễ nước mắt"}, -- Cancer
	{"40", "Red Patch", "{{Timer}} Nhận sát thương có 20% cơ hội nhận ↑ {{Damage}} +1.8 sát thương cho phòng#{{Luck}} 100% cơ hội ở 8 may mắn"}, -- Red Patch
	{"41", "Match Stick", "{{Bomb}} 10% cơ hội phần thưởng khi dọn phòng là một bom#{{Bomb}} 33% cơ hội nhận thêm một bom từ rương, đá nhuộm màu, và máy bị phá hủy#{{Warning}} Loại bỏ {{Trinket53}} Tick"}, -- Match Stick
	{"42", "Lucky Toe", "↑ {{Luck}} +1 May mắn#+8% cơ hội phần thưởng khi dọn phòng#33% cơ hội nhận thêm một vật phẩm từ rương, đá nhuộm màu, và máy bị phá hủy"}, -- Lucky Toe
	{"43", "Cursed Skull", "Khi bị giảm xuống còn nửa trái tim hoặc ít hơn, Isaac được dịch chuyển đến một phòng ngẫu nhiên"}, -- Cursed Skull
	{"44", "Safety Cap", "{{Pill}} 10% cơ hội phần thưởng khi dọn phòng là một viên thuốc#{{Pill}} 33% cơ hội nhận thêm một viên thuốc từ rương, đá nhuộm màu, và máy bị phá hủy"}, -- Safety Cap
	{"45", "Ace of Spades", "{{Card}} 10% cơ hội phần thưởng khi dọn phòng là một lá bài#{{Card}} 33% cơ hội nhận thêm một lá bài từ rương, đá nhuộm màu, và máy bị phá hủy"}, -- Ace of Spades
	{"46", "Isaac's Fork", "{{HealingRed}} Dọn phòng có 10% cơ hội hồi nửa trái tim#{{Luck}} 100% cơ hội ở 18 may mắn"}, -- Isaac's Fork
	{"47", "", "<Vật phẩm không tồn tại>"},
	{"48", "A Missing Page", "Nhận sát thương có 5% cơ hội gây 40 sát thương lên tất cả kẻ địch trong phòng"}, -- A Missing Page
	{"49", "Bloody Penny", "{{HalfHeart}} Nhặt một đồng xu có 50% cơ hội sinh ra nửa Trái Tim Đỏ"}, -- Bloody Penny
	{"50", "Burnt Penny", "{{Bomb}} Nhặt một đồng xu có 50% cơ hội sinh ra một bom"}, -- Burnt Penny
	{"51", "Flat Penny", "{{Key}} Nhặt một đồng xu có 50% cơ hội sinh ra một chìa khóa"}, -- Flat Penny
	{"52", "Counterfeit Penny", "{{Coin}} Nhặt một đồng xu có 50% cơ hội thêm một đồng xu vào bộ đếm"}, -- Counterfeit Penny
	{"53", "Tick", "{{HealingRed}} Hồi 1 trái tim khi vào {{BossRoom}} Phòng Trùm#-15% máu trùm#{{Warning}} Một khi nhặt lên, không thể bỏ được#Chỉ có thể bỏ bằng {{Trinket41}} Match Stick hoặc nuốt chửng"}, -- Tick
	{"54", "Isaac's Head", "bạn đồng hành có nước mắt xuyên thấu#Gây 3.5 sát thương mỗi nước mắt"}, -- Isaac's Head
	{"55", "Maggy's Faith", "{{EternalHeart}} Vào tầng mới nhận +1 Trái Tim Vĩnh Cửu"}, -- Maggy's Faith
	{"56", "Judas' Tongue", "{{DevilRoom}} Giảm giá tất cả giao dịch quỷ xuống còn 1 ô tim#Không giảm giá 3 Trái Tim Linh Hồn"}, -- Judas' Tongue
	{"57", "???'s Soul", "bạn đồng hành nảy quanh phòng#Bắn cùng hướng với Isaac#Gây 3.5 sát thương mỗi nước mắt"}, -- ???'s Soul
	{"58", "Samson's Lock", "{{Timer}} Giết một kẻ địch có 1/15 cơ hội nhận ↑ {{Damage}} +0.5 sát thương cho phòng#{{Luck}} 100% cơ hội ở 10 may mắn"}, -- Samson's Lock
	{"59", "Cain's Eye", "Vào tầng mới có 25% cơ hội hiển thị biểu tượng bản đồ#{{Luck}} 100% cơ hội ở 3 may mắn"}, -- Cain's Eye
	{"60", "Eve's Bird Foot", "{{Collectible117}} Giết một kẻ địch có 5% cơ hội sinh ra một Dead Bird#{{Luck}} 100% cơ hội ở 8 may mắn"}, -- Eve's Bird Foot
	{"61", "The Left Hand", "{{RedChest}} Biến tất cả rương thành Rương Đỏ"}, -- The Left Hand
	{"62", "Shiny Rock", "Đá không gian và đá nhuộm màu nhấp nháy mỗi 10 giây"}, -- Shiny Rock
	{"63", "Safety Scissors", "{{Bomb}} Biến Bom Quỷ thành vật phẩm bom"}, -- Safety Scissors
	{"64", "Rainbow Worm", "Cấp hiệu ứng sâu ngẫu nhiên mỗi 3 giây"}, -- Rainbow Worm
	{"65", "Tape Worm", "↑ {{Range}} x2 Hệ số tầm bắn#↓ x0.5 Tốc độ rơi nước mắt"}, -- Tape Worm
	{"66", "Lazy Worm", "↑ {{Range}} +4 Tầm bắn#↑ +2 Tốc độ rơi nước mắt#↓ {{Shotspeed}} -0.4 Tốc độ đạn"}, -- Lazy Worm
	{"67", "Cracked Dice", "Nhận sát thương có 50% cơ hội kích hoạt một trong các hiệu ứng sau:#{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible386}} D12 #{{Collectible166}} D20"}, -- Cracked Dice
	{"68", "Super Magnet", "Isaac thu hút vật phẩm và kẻ địch"}, -- Super Magnet
	{"69", "Faded Polaroid", "Ngẫu nhiên ngụy trang Isaac#{{Confusion}} Làm kẻ địch hoang mang"}, -- Faded Polaroid
	{"70", "Louse", "Thỉnh thoảng sinh ra một nhện xanh trong phòng thù địch"}, -- Louse
	{"71", "Bob's Bladder", "Bom của Isaac để lại chất lỏng gây sát thương"}, -- Bob's Bladder
	{"72", "Watch Battery", "{{Battery}} 6.66% cơ hội phần thưởng khi dọn phòng là một pin#{{Battery}} +10% cơ hội vật phẩm ngẫu nhiên là một pin#{{Battery}} 5% cơ hội thêm 1 năng lượng cho vật phẩm kích hoạt đang cầm khi dọn phòng"}, -- Watch Battery
	{"73", "Blasting Cap", "{{Bomb}} 10% cơ hội bom nổ rơi ra một vật phẩm bom"}, -- Blasting Cap
	{"74", "Stud Finder", "{{LadderRoom}} +0.5% cơ hội hiển thị một không gian ẩn khi phá đá"}, -- Stud Finder
	{"75", "Error", "Cấp hiệu ứng trang sức ngẫu nhiên mỗi phòng"}, -- Error
	{"76", "Poker Chip", "↑ 50% cơ hội rương sinh thêm vật phẩm#↓ 50% cơ hội rương chỉ chứa một con ruồi"}, -- Poker Chip
	{"77", "Blister", "Tăng độ đẩy lùi"}, -- Blister
	{"78", "Second Hand", "Hiệu ứng trạng thái áp dụng lên kẻ địch kéo dài gấp đôi"}, -- Second Hand
	{"79", "Endless Nameless", "Sử dụng một {{Rune}} rune, {{Card}} lá bài hoặc {{Pill}} viên thuốc có 25% cơ hội sinh ra một bản sao của rune, lá bài hoặc viên thuốc đó"}, -- Endless Nameless
	{"80", "Black Feather", "↑ {{Damage}} +0.2 Sát thương cho mỗi vật phẩm \"Evil up\" đang cầm"}, -- Black Feather
	{"81", "Blind Rage", "Khung bất tử sau khi nhận sát thương kéo dài gấp đôi"}, -- Blind Rage
	{"82", "Golden Horse Shoe", "{{TreasureRoom}} Các Phòng Kho Báu trong tương lai có +15% cơ hội cho Isaac chọn giữa hai vật phẩm"}, -- Golden Horse Shoe
	{"83", "Store Key", "{{Shop}} Cho phép Isaac mở Cửa hàng miễn phí"}, -- Store Key
	{"84", "Rib of Greed", "{{Coin}} 5% thêm đồng xu và ít trái tim hơn từ phần thưởng dọn phòng#Greed và Super Greed không còn xuất hiện trong {{Shop}} Cửa hàng hoặc {{SecretRoom}} Phòng Bí Mật"}, -- Rib of Greed
	{"85", "Karma", "{{DonationMachine}} Sử dụng Máy Quyên Góp có 33% cơ hội:#{{HealingRed}} Hồi 1 trái tim (40%)#{{Coin}} Cho 1 đồng xu (40%)#{{Luck}} Cấp +1 may mắn (15%)#{{Beggar}} Sinh ra một Người Ăn Xin (5%)"}, -- Karma
	{"86", "Lil Larva", "Phá phân sinh ra 1 ruồi xanh"}, -- Lil Larva
	{"87", "Mom's Locket", "{{HealingRed}} Sử dụng chìa khóa hồi nửa trái tim#{{Heart}} Biến nửa trái tim thành trái tim đầy đủ"}, -- Mom's Locket
	{"88", "NO!", "Ngăn vật phẩm kích hoạt xuất hiện"}, -- NO!
	{"89", "Child Leash", "bạn đồng hành ở gần Isaac hơn"}, -- Child Leash
	{"90", "Brown Cap", "Phân nổ gây 100 sát thương khi bị phá hủy"}, -- Brown Cap
	{"91", "Meconium", "33% cơ hội sinh ra Phân Đen#{{BlackHeart}} Phá Phân Đen có 5% cơ hội sinh ra một Trái Tim Đen"}, -- Meconium
	{"92", "Cracked Crown", "↑ {{Tears}} x0.8 Độ trễ nước mắt#↑ x1.33 Hệ số chỉ số cho các chỉ số trên 1 {{Speed}} tốc độ, 3.5 {{Damage}} sát thương, 23.75 {{Range}} tầm bắn, 1 {{Shotspeed}} Tốc độ đạn"}, -- Cracked Crown
	{"93", "Used Diaper", "15% cơ hội mỗi phòng để tất cả kẻ địch ruồi trở nên thân thiện"}, -- Used Diaper
	{"94", "Fish Tail", "Gấp đôi số lượng ruồi xanh / nhện xanh sinh ra"}, -- Fish Tail
	{"95", "Black Tooth", "{{Poison}} 3% cơ hội bắn nước mắt răng độc#Răng gây sát thương gấp 2 lần sát thương của Isaac"}, -- Black Tooth
	{"96", "Ouroboros Worm", "↑ {{Range}} +4 Tầm bắn#↑ +2 Tốc độ rơi nước mắt#Nước mắt xuyên quang phổ#Cơ hội bắn nước mắt tự dẫn#{{Luck}} 100% cơ hội ở 9 may mắn#Nước mắt của Isaac di chuyển nhanh theo hình xoắn ốc"}, -- Ouroboros Worm
	{"97", "Tonsil", "Nhận sát thương 12-20 lần sinh ra một bạn đồng hành chặn đạn#Giới hạn ở 2 bạn đồng hành"}, -- Tonsil
	{"98", "Nose Goblin", "10% cơ hội bắn nước mắt dính tự dẫn#{{Damage}} Mụn nhọt gây sát thương bằng sát thương của Isaac một lần mỗi giây#Mụn nhọt dính trong 60 giây"}, -- Nose Goblin
	{"99", "Super Ball", "10% cơ hội bắn nước mắt nảy"}, -- Super Ball
	{"100", "Vibrant Bulb", "Giữ một vật phẩm kích hoạt đầy năng lượng cấp:#↑ {{Speed}} +0.25 Tốc độ#↑ {{Tears}} +0.2 Nước mắt#↑ {{Damage}} +0.5 Sát thương#↑ {{Range}} +0.75 Tầm bắn#↑ {{Shotspeed}} +0.1 Tốc độ đạn#↑ {{Luck}} +1 May mắn"}, -- Vibrant Bulb
	{"101", "Dim Bulb", "Giữ một vật phẩm kích hoạt hết năng lượng cấp:#↑ {{Speed}} +0.5 Tốc độ#↑ {{Tears}} +0.4 Nước mắt#↑ {{Damage}} +1.5 Sát thương#↑ {{Range}} +1.5 Tầm bắn#↑ {{Shotspeed}} +0.3 Tốc độ đạn#↑ {{Luck}} +2 May mắn"}, -- Dim Bulb
	{"102", "Fragmented Card", "{{SecretRoom}} +1 Phòng Bí Mật thêm mỗi tầng khi cầm"}, -- Fragmented Card
	{"103", "Equality!", "Biến vật phẩm đơn thành vật phẩm đôi khi số {{Coin}} đồng xu, {{Bomb}} bom và {{Key}} chìa khóa của Isaac bằng nhau"}, -- Equality!
	{"104", "Wish Bone", "2% cơ hội bị phá hủy và sinh ra một vật phẩm trên bệ khi bị đánh"}, -- Wish Bone
	{"105", "Bag Lunch", "{{Collectible22}} 2% cơ hội bị phá hủy và sinh ra Lunch khi bị đánh"}, -- Bag Lunch
	{"106", "Lost Cork", "Tăng bán kính của chất lỏng thân thiện"}, -- Lost Cork
	{"107", "Crow Heart", "Nhận sát thương làm cạn Trái Tim Đỏ trước Trái Tim Linh Hồn/Đen#Sát thương trái tim đỏ này không giảm cơ hội vào Phòng Quỷ/Thiên Thần"}, -- Crow Heart
	{"108", "Walnut", "Bị trúng 1-9 vụ nổ phá hủy trang sức và rơi ra một {{UnknownHeart}} trái tim, {{Coin}} đồng xu, {{Key}} chìa khóa và {{Trinket}} trang sức ngẫu nhiên#Không cần nhận sát thương"}, -- Walnut
	{"109", "Duct Tape", "bạn đồng hành bị kẹt ở một chỗ và không thể di chuyển"}, -- Duct Tape
	{"110", "Silver Dollar", "{{Shop}} Cửa hàng xuất hiện trong Tử Cung"}, -- Silver Dollar
	{"111", "Bloody Crown", "{{TreasureRoom}} Phòng Kho Báu xuất hiện trong Tử Cung"}, -- Bloody Crown
	{"112", "Pay To Win", "{{RestockMachine}} Hộp tái cung cấp luôn xuất hiện trong {{TreasureRoom}} Phòng Kho Báu"}, -- Pay To Win
	{"113", "Locust of War", "Vào phòng thù địch sinh ra một ruồi tấn công nổ#Ruồi gây sát thương gấp 2 lần sát thương của Isaac + sát thương nổ"}, -- Locust of War
	{"114", "Locust of Pestilence", "{{Poison}} Vào phòng thù địch sinh ra một ruồi tấn công độc#Ruồi gây sát thương gấp 2 lần sát thương của Isaac"}, -- Locust of Pestilence
	{"115", "Locust of Famine", "{{Slow}} Vào phòng thù địch sinh ra một ruồi tấn công làm chậm#Ruồi gây sát thương gấp 2 lần sát thương của Isaac"}, -- Locust of Famine
	{"116", "Locust of Death", "Vào phòng thù địch sinh ra một ruồi tấn công#Ruồi gây sát thương gấp 4 lần sát thương của Isaac"}, -- Locust of Death
	{"117", "Locust of Conquest", "Vào phòng thù địch sinh ra 1-4 ruồi tấn công#Mỗi ruồi gây sát thương gấp 2 lần sát thương của Isaac"}, -- Locust of Conquest
	{"118", "Bat Wing", "{{Timer}} Giết một kẻ địch có 5% cơ hội cấp khả năng bay cho phòng"}, -- Bat Wing
	{"119", "Stem Cell", "{{HealingRed}} Vào tầng mới hồi nửa trái tim"}, -- Stem Cell
	{"120", "Hairpin", "{{Battery}} Vào phòng trùm chưa dọn sạch nạp đầy năng lượng cho vật phẩm kích hoạt"}, -- Hairpin
	{"121", "Wooden Cross", "{{Collectible313}} Vô hiệu hóa sát thương đầu tiên nhận được trên tầng"}, -- Wooden Cross
	{"122", "Butter!", "Sử dụng vật phẩm kích hoạt làm rơi nó xuống bệ trên sàn#Nhận sát thương có 2% cơ hội làm rơi một trong các vật phẩm thụ động của Isaac"}, -- Butter!
	{"123", "Filigree Feather", "Trùm thiên thần rơi vật phẩm thiên thần thay vì Mảnh Chìa Khóa"}, -- Filigree Feather
	{"124", "Door Stop", "Cửa cuối cùng sử dụng vẫn mở"}, -- Door Stop
	{"125", "Extension Cord", "Kết nối tất cả bạn đồng hành bằng tia điện#Tia gây 6 sát thương"}, -- Extension Cord
	{"126", "Rotten Penny", "Nhặt một đồng xu sinh ra một ruồi xanh"}, -- Rotten Penny
	{"127", "Baby-Bender", "Cấp cho tất cả bạn đồng hành khả năng bắn tự dẫn"}, -- Baby-Bender
	{"128", "Finger Bone", "{{EmptyBoneHeart}} Nhận sát thương có 2% cơ hội nhận một Trái Tim Xương"}, -- Finger Bone
}

---------- Cards ----------

EID.descriptions[languageCode].cards={
	{"1", "0 - The Fool", "Dịch chuyển Isaac đến phòng đầu tiên của tầng"}, -- 0 - The Fool
	{"2", "I - The Magician", "{{Timer}} Nước mắt tự dẫn cho phòng"}, -- I - The Magician
	{"3", "II - The High Priestess", "Chân của Mom giẫm lên một kẻ địch#Chân của Mom giẫm lên Isaac nếu không có kẻ địch"}, -- II - The High Priestess
	{"4", "III - The Empress", "{{Timer}} Nhận cho phòng:#↑ {{Speed}} +0.3 Tốc độ#↑ {{Damage}} +1.5 Sát thương"}, -- III - The Empress
	{"5", "IV - The Emperor", "{{BossRoom}} Dịch chuyển Isaac đến Phòng Trùm"}, -- IV - The Emperor
	{"6", "V - The Hierophant", "{{SoulHeart}} Sinh ra 2 Trái Tim Linh Hồn"}, -- V - The Hierophant
	{"7", "VI - The Lovers", "{{Heart}} Sinh ra 2 Trái Tim Đỏ"}, -- VI - The Lovers
	{"8", "VII - The Chariot", "{{Timer}} Nhận trong 6 giây:#↑ {{Speed}} +0.28 Tốc độ#Bất tử#Isaac không thể bắn nhưng gây 40 sát thương tiếp xúc mỗi giây"}, -- VII - The Chariot
	{"9", "VIII - Justice", "Sinh ra một {{UnknownHeart}} trái tim, {{Coin}} đồng xu, {{Bomb}} bom và {{Key}} chìa khóa ngẫu nhiên"}, -- VIII - Justice
	{"10", "IX - The Hermit", "{{Shop}} Dịch chuyển Isaac đến Cửa hàng"}, -- IX - The Hermit
	{"11", "X - Wheel of Fortune", "Sinh ra một {{Slotmachine}} Máy Đánh Bạc hoặc {{FortuneTeller}} Máy Bói Toán"}, -- X - Wheel of Fortune
	{"12", "XI - Strength", "{{Timer}} Nhận cho phòng:#↑ {{Heart}} +1 Máu#↑ {{Speed}} +0.3 Tốc độ#↑ {{Damage}} +0.3 Sát thương#↑ {{Damage}} x1.5 Hệ số sát thương#↑ {{Range}} +5.25 Tầm bắn#↑ +0.5 Tốc độ rơi nước mắt"}, -- XI - Strength
	{"13", "XII - The Hanged Man", "{{Timer}} Bay trong phòng"}, -- XII - The Hanged Man
	{"14", "XIII - Death", "Gây 40 sát thương lên tất cả kẻ địch trong phòng"}, -- XIII - Death
	{"15", "XIV - Temperance", "{{DonationMachine}} Sinh ra một Máy Hiến Máu"}, -- XIV - Temperance
	{"16", "XV - The Devil", "{{Timer}} Nhận cho phòng:#↑ {{Damage}} +2 Sát thương"}, -- XV - The Devil
	{"17", "XVI - The Tower", "Sinh ra 6 Bom Quỷ"}, -- XVI - The Tower
	{"18", "XVII - The Stars", "{{TreasureRoom}} Dịch chuyển Isaac đến Phòng Kho Báu"}, -- XVII - The Stars
	{"19", "XVIII - The Moon", "{{SecretRoom}} Dịch chuyển Isaac đến Phòng Bí Mật"}, -- XVIII - The Moon
	{"20", "XIX - The Sun", "{{HealingRed}} Hồi đầy máu#Gây 100 sát thương lên tất cả kẻ địch#{{Timer}} Hiệu ứng bản đồ đầy đủ cho tầng (trừ {{SuperSecretRoom}} Phòng Siêu Bí Mật)"}, -- XIX - The Sun
	{"21", "XX - Judgement", "Sinh ra một Người Ăn Xin hoặc Người Ăn Xin Quỷ#2% cơ hội sinh ra một Người Ăn Xin đặc biệt"}, -- XX - Judgement
	{"22", "XXI - The World", "{{Timer}} Hiệu ứng bản đồ đầy đủ cho tầng (trừ {{SuperSecretRoom}} Phòng Siêu Bí Mật)"}, -- XXI - The World
	{"23", "2 of Clubs", "{{Bomb}} Gấp đôi số bom của Isaac"}, -- 2 of Clubs
	{"24", "2 of Diamonds", "{{Coin}} Gấp đôi số đồng xu của Isaac"}, -- 2 of Diamonds
	{"25", "2 of Spades", "{{Key}} Gấp đôi số chìa khóa của Isaac"}, -- 2 of Spades
	{"26", "2 of Hearts", "{{HealingRed}} Gấp đôi số Trái Tim Đỏ của Isaac {{ColorSilver}}(không phải ô tim){{CR}}"}, -- 2 of Hearts
	{"27", "Ace of Clubs", "{{Bomb}} Biến tất cả vật phẩm thành bom ngẫu nhiên"}, -- Ace of Clubs
	{"28", "Ace of Diamonds", "{{Coin}} Biến tất cả vật phẩm thành đồng xu ngẫu nhiên"}, -- Ace of Diamonds
	{"29", "Ace of Spades", "{{Key}} Biến tất cả vật phẩm thành chìa khóa ngẫu nhiên"}, -- Ace of Spades
	{"30", "Ace of Hearts", "{{UnknownHeart}} Biến tất cả vật phẩm thành trái tim ngẫu nhiên"}, -- Ace of Hearts
	{"31", "Joker", "{{AngelDevilChance}} Dịch chuyển Isaac đến Phòng Quỷ hoặc Phòng Thiên Thần"}, -- Joker
	{"32", "Hagalaz", "Phá hủy tất cả đá trong phòng"}, -- Hagalaz
	{"33", "Jera", "Nhân đôi tất cả vật phẩm trong phòng"}, -- Jera
	{"34", "Ehwaz", "Sinh ra một cửa sập xuống tầng tiếp theo#{{LadderRoom}} 8% cơ hội cho cửa sập không gian ẩn"}, -- Ehwaz
	{"35", "Dagaz", "{{SoulHeart}} +1 Trái Tim Linh Hồn#{{CurseCursed}} Xóa tất cả lời nguyền cho tầng"}, -- Dagaz
	{"36", "Ansuz", "{{Timer}} Hiệu ứng bản đồ đầy đủ cho tầng"}, -- Ansuz
	{"37", "Perthro", "Đổi mới tất cả vật phẩm trên bệ trong phòng"}, -- Perthro
	{"38", "Berkano", "Triệu hồi 3 nhện xanh và 3 ruồi xanh"}, -- Berkano
	{"39", "Algiz", "{{Timer}} Làm Isaac bất tử trong 30 giây"}, -- Algiz
	{"40", "Blank Rune", "Kích hoạt hiệu ứng rune ngẫu nhiên#25% cơ hội nhân đôi chính nó khi sử dụng"}, -- Blank Rune
	{"41", "Black Rune", "Gây 40 sát thương lên tất cả kẻ địch#Biến tất cả vật phẩm trên bệ trong phòng thành tăng chỉ số ngẫu nhiên#Biến tất cả vật phẩm trong phòng thành ruồi xanh"}, -- Black Rune
	{"42", "Chaos Card", "Sử dụng lá bài ném nó theo hướng Isaac đang di chuyển#Giết chết BẤT KỲ kẻ địch nào nó chạm vào ngay lập tức (trừ Delirium)"}, -- Chaos Card
	{"43", "Credit Card", "Làm tất cả vật phẩm và vật phẩm nhặt được trong {{Shop}} Cửa hàng hoặc {{DevilRoom}} Phòng Quỷ miễn phí"}, -- Credit Card
	{"44", "Rules Card", "Hiển thị các mẹo \"hữu ích\" khi sử dụng"}, -- Rules Card
	{"45", "A Card Against Humanity", "Lấp đầy toàn bộ phòng bằng phân"}, -- A Card Against Humanity
	{"46", "Suicide King", "Giết chết Isaac ngay lập tức và sinh ra 10 vật phẩm hoặc vật phẩm nhặt được trên sàn#Vật phẩm sinh ra sẽ sử dụng kho vật phẩm của phòng hiện tại"}, -- Suicide King
	{"47", "Get Out Of Jail Free Card", "Mở tất cả cửa trong phòng"}, -- Get Out Of Jail Free Card
	{"48", "? Card", "Sử dụng vật phẩm kích hoạt của Isaac miễn phí"}, -- ? Card
	{"49", "Dice Shard", "Đổi mới tất cả bệ vật phẩm và vật phẩm nhặt được trong phòng"}, -- Dice Shard
	{"50", "Emergency Contact", "Hai Tay của Mom hạ xuống và bắt lấy mỗi kẻ địch"}, -- Emergency Contact
	{"51", "Holy Card", "{{HolyMantle}} Khiên Holy Mantle cho phòng (ngăn sát thương một lần)#25% cơ hội sinh ra một Lá Bài Thánh khác"}, -- Holy Card
	{"52", "Huge Growth", "{{Timer}} Nhận cho phòng:#↑ {{Damage}} +7 Sát thương#↑ {{Range}} +30 Tầm bắn#Tăng kích thước#Cho phép Isaac phá đá bằng cách đi vào chúng"}, -- Huge Growth
	{"53", "Ancient Recall", "{{Card}} Sinh ra 3 lá bài ngẫu nhiên"}, -- Ancient Recall
	{"54", "Era Walk", "{{Timer}} Nhận cho phòng:#↑ {{Speed}} +0.5 Tốc độ#↓ {{Shotspeed}} -1 Tốc độ đạn#{{Slow}} Làm chậm kẻ địch"}, -- Era Walk
}

--[[ Card Buffs caused by Tarot Cloth (separate table from Rep due to how different they are)
-- Strings will be appended to the original description (with line breaks replaced with a Tarot Cloth icon)
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs (the new text will be colored Shiny Purple) ]]
EID.descriptions[languageCode].tarotClothBuffsAB = {
	[4] = {0.3, 0.6, 1.5, 3}, -- III - The Empress
	[6] = {2, 4}, -- V - The Hierophant
	[7] = {2, 4}, -- VI - The Lovers
	[8] = {6, 12}, -- VII - The Chariot
	[9] = {"Sinh ra {{ColorShinyPurple}}2{{CR}} {{UnknownHeart}} trái tim, {{Coin}} đồng xu, {{Bomb}} bom và {{Key}} chìa khóa ngẫu nhiên"}, -- VIII - Justice
	[11] = {" a ", " 2 ", "Slot Machine", "{{CR}}Slot Machines", "Fortune Machine", "{{CR}}Fortune Machines"}, -- X - Wheel of Fortune
	[12] = {1, 2, 0.3, 0.6, 0.3, 0.6, 5.25, 10.5}, -- XI - Strength
	[14] = {40, 80}, -- XIII - Death
	[15] = {" a ", " 2 ", " Máy Đánh Bạc", "{{CR}}Máy Đánh Bạc", "Máy Bói Toán", "{{CR}}Máy Bói Toán"}, -- XIV - Temperance (+ Greed version)
	[17] = {6, 12}, -- XVI - The Tower
	[20] = {100, 200}, -- XIX - The Sun
	[21] = {" a ", " 2 ", "Người Ăn Xin ", "{{CR}}Người Ăn Xin ", "Người Ăn Xin Quỷ", "{{CR}Người Ăn Xin Quỷ"}, -- XX - Judgement
	[23] = {"Gấp đôi", "Gấp bốn"}, -- 2 of Clubs
	[24] = {"Gấp đôi", "Gấp bốn"}, -- 2 of Diamonds
	[25] = {"Gấp đôi", "Gấp bốn"}, -- 2 of Spades
	[26] = {"Gấp đôi", "Gấp bốn"}, -- 2 of Hearts
	[33] = {"Gấp đôi", "Gấp bốn"}, -- Jera
	[35] = {1, 2}, -- Dagaz
	[37] = "Đổi mới hai lần", -- Perthro
	[38] = {3, 6, 3, 6}, -- Berkano
	[39] = {30, 60}, -- Algiz
	[40] = "Kích hoạt 2 hiệu ứng rune và cố gắng nhân đôi chính nó hai lần", -- Blank Rune
	[41] = {40, 80}, -- Black Rune
	[46] = {10, 20}, -- Suicide King
	[48] = "Sử dụng nó hai lần", -- ? Card
	[53] = {3, 6}, -- Ancient Recall
}

---------- Pills ----------

EID.descriptions[languageCode].unidentifiedPill = "Viên thuốc không xác định"

EID.descriptions[languageCode].pills={
	{"0", "Bad Gas", "{{Poison}} Isaac đánh rắm và làm độc kẻ địch gần đó"}, -- Bad Gas
	{"1", "Bad Trip", "{{Warning}} Gây 1 ô tim sát thương lên Isaac#Trở thành viên thuốc Hồi Đầy Máu khi còn 1 trái tim hoặc ít hơn"}, -- Bad Trip
	{"2", "Balls of Steel", "{{SoulHeart}} +2 Trái Tim Linh Hồn"}, -- Balls of Steel
	{"3", "Bombs are Key", "Hoán đổi số {{Bomb}} bom và {{Key}} chìa khóa của Isaac"}, -- Bombs are Key
	{"4", "Explosive Diarrhea", "Isaac nhanh chóng sinh ra 5 quả bom đã thắp sáng"}, -- Explosive Diarrhea
	{"5", "Full Health", "{{HealingRed}} Hồi đầy tất cả ô tim"}, -- Full Health
	{"6", "Health Down", "↓ {{EmptyHeart}} -1 Máu#Trở thành viên thuốc Tăng Máu khi còn 0 hoặc 1 ô tim"}, -- Health Down
	{"7", "Health Up", "↑ {{EmptyHeart}} +1 Ô tim trống"}, -- Health Up
	{"8", "I Found Pills", "Không có hiệu ứng"}, -- I Found Pills
	{"9", "Puberty", "Không có hiệu ứng#Ăn 3 viên cấp biến hình Người Lớn:#↑ {{Heart}} +1 Máu"}, -- Puberty
	{"10", "Pretty Fly", "+1 Ruồi quay quanh"}, -- Pretty Fly
	{"11", "Range Down", "↓ {{Range}} -2 Tầm bắn"}, -- Range Down
	{"12", "Range Up", "↑ {{Range}} +2.5 Tầm bắn"}, -- Range Up
	{"13", "Speed Down", "↓ {{Speed}} -0.12 Tốc độ"}, -- Speed Down
	{"14", "Speed Up", "↑ {{Speed}} +0.15 Tốc độ"}, -- Speed Up
	{"15", "Tears Down", "↓ {{Tears}} -0.28 Nước mắt"}, -- Tears Down
	{"16", "Tears Up", "↑ {{Tears}} +0.35 Nước mắt"}, -- Tears Up
	{"17", "Luck Down", "↓ {{Luck}} -1 May mắn"}, -- Luck Down
	{"18", "Luck Up", "↑ {{Luck}} +1 May mắn"}, -- Luck Up
	{"19", "Telepills", "Dịch chuyển Isaac đến một phòng ngẫu nhiên#{{ErrorRoom}} Cơ hội nhỏ dịch chuyển Isaac đến phòng I AM ERROR"}, -- Telepills
	{"20", "48 Hour Energy!", "{{Battery}} Nạp đầy năng lượng cho vật phẩm kích hoạt#{{Battery}} Sinh ra 1-2 pin"}, -- 48 Hour Energy!
	{"21", "Hematemesis", "{{Warning}} Rút hết chỉ còn một ô tim#{{Heart}} Sinh ra 1-4 Trái Tim Đỏ"}, -- Hematemesis
	{"22", "Paralysis", "Ngăn Isaac di chuyển và bắn trong 2 giây"}, -- Paralysis
	{"23", "I can see forever!", "{{SecretRoom}} Mở tất cả lối vào phòng bí mật trên tầng"}, -- I can see forever!
	{"24", "Pheromones", "{{Charm}} Mê hoặc tất cả kẻ địch trong phòng"}, -- Pheromones
	{"25", "Amnesia", "{{CurseLost}} Ẩn bản đồ cho tầng"}, -- Amnesia
	{"26", "Lemon Party", "Sinh ra một vũng nước lớn trên sàn gây sát thương cho kẻ địch"}, -- Lemon Party
	{"27", "R U A Wizard?", "{{Timer}} Isaac bắn chéo trong 30 giây"}, -- R U A Wizard?
	{"28", "Percs!", "{{Timer}} Giảm tất cả sát thương nhận được xuống còn nửa trái tim cho phòng"}, -- Percs!
	{"29", "Addicted!", "{{Timer}} Tăng tất cả sát thương nhận được lên một trái tim đầy đủ cho phòng"}, -- Addicted!
	{"30", "Re-Lax", "Isaac sinh ra phân phía sau trong 2 giây"}, -- Re-Lax
	{"31", "???", "{{CurseMaze}} Hiệu ứng Lời Nguyền Mê Cung cho tầng"}, -- ???
	{"32", "One makes you larger", "Tăng kích thước của Isaac#Không ảnh hưởng đến hitbox của anh ấy"}, -- One makes you larger
	{"33", "One makes you small", "Giảm kích thước của Isaac#Cũng giảm hitbox của anh ấy"}, -- One makes you small
	{"34", "Infested!", "Sinh ra 1 nhện xanh cho mỗi đống phân trong phòng"}, -- Infested!
	{"35", "Infested?", "Sinh ra 1 nhện xanh cho mỗi kẻ địch trong phòng#Sinh ra 1-3 nhện xanh nếu không có kẻ địch trong phòng"}, -- Infested?
	{"36", "Power Pill!", "{{Timer}} Nhận trong 6,5 giây:#Bất tử#Isaac không thể bắn nhưng gây 40 sát thương tiếp xúc mỗi giây#{{HealingRed}} Giết 2 kẻ địch hồi nửa trái tim#{{Fear}} Làm tất cả kẻ địch trong phòng sợ hãi"}, -- Power Pill!
	{"37", "Retro Vision", "{{Timer}} Làm màn hình nhòe 3 lần trong 30 giây"}, -- Retro Vision
	{"38", "Friends Till The End!", "Sinh ra 3 ruồi xanh"}, -- Friends Till The End!
	{"39", "X-Lax", "Sinh ra một vũng chất lỏng trơn trượt"}, -- X-Lax
	{"40", "Something's wrong...", "{{Slow}} Sinh ra một vũng chất lỏng làm chậm"}, -- Something's wrong...
	{"41", "I'm Drowsy...", "{{Slow}} Làm chậm tất cả kẻ địch trong phòng"}, -- I'm Drowsy...
	{"42", "I'm Excited!!", "Tăng tốc tất cả kẻ địch trong phòng"}, -- I'm Excited!!
	{"43", "Gulp!", "{{Trinket}} Tiêu thụ trang sức của Isaac và cấp hiệu ứng của nó vĩnh viễn"}, -- Gulp!
	{"44", "Horf!", "{{Collectible149}} Bắn một nước mắt Ipecac"}, -- Horf!
	{"45", "Feels like I'm walking on sunshine!", "{{Timer}} Nhận trong 6 giây:#Bất tử#Isaac không thể bắn (Không có sát thương tiếp xúc)"}, -- Feels like I'm walking on sunshine!
	{"46", "Vurp!", "Sinh ra viên thuốc cuối cùng sử dụng trước Vurp!"}, -- Vurp!	
}

---------- Character Info ----------
-- These descriptions are shown in the Item Reminder
-- The character names here are also used in getPlayerName to provide localized character names
-- The numbers are provided to make this a quick reference for Player IDs
EID.descriptions[languageCode].CharacterInfo = {
	[0] = {"Isaac", ""},
	[1] = {"Magdalene", ""},
	[2] = {"Cain", ""},
	[3] = {"Judas", ""},
	[4] = {"???", "Không thể có Trái Tim Đỏ#{{SoulHeart}} Tăng máu cấp Trái Tim Linh Hồn"},
	[5] = {"Eve", ""},
	[6] = {"Samson", ""},
	[7] = {"Azazel", "Bay#{{Collectible118}} Brimstone tầm ngắn thay vì nước mắt"},
	[8] = {"Lazarus", "Khi bạn chết, hồi sinh thành Lazarus Risen với 1 ô Trái Tim Đỏ"},
	[9] = {"Eden", "Bắt đầu với chỉ số và vật phẩm ngẫu nhiên mỗi lần chơi"},
	[10] = {"The Lost", "Bay#Nước mắt xuyên quang phổ#{{Warning}} Không có máu#{{DevilRoom}} Một giao dịch quỷ mỗi phòng có thể lấy miễn phí"},
	[11] = {"Lazarus Risen", "Tăng chỉ số và hệ số sát thương x1.2"},
	[12] = {"Dark Judas", "{{Damage}} Hệ số sát thương x2#{{Player3}} Được tính là Judas cho các dấu hoàn thành"},
	[13] = {"Lilith", "Không thể bắn nước mắt#{{Collectible360}} Incubus của cô ấy bắn thay cô ấy"},
	[14] = {"Keeper", "{{CoinHeart}} Hồi máu bằng cách nhặt đồng xu#Tối đa 2 Trái Tim Đồng Xu#Trái tim nhặt được biến thành Ruồi Xanh"},
	[15] = {"Apollyon", ""},
	[16] = {"The Forgotten", "Bạn có một đòn đánh cận chiến có thể được sạc và ném#{{BoneHeart}} Có thể có tối đa 6 Trái Tim Xương#{{Player17}} Nhấn {{ButtonRT}} để chuyển sang The Soul#{{SoulHeart}} The Soul có thể có tối đa 6 Trái Tim Linh Hồn/Đen và có khả năng bay cùng nước mắt xuyên quang phổ#The Soul bị xích trong một bán kính nhỏ quanh The Forgotten"},
	[17] = {"The Forgotten Soul", "Bạn có một đòn đánh cận chiến có thể được sạc và ném#{{BoneHeart}} Có thể có tối đa 6 Trái Tim Xương#{{Player17}} Nhấn {{ButtonRT}} để chuyển sang The Soul#{{SoulHeart}} The Soul có thể có tối đa 6 Trái Tim Linh Hồn/Đen và có khả năng bay cùng nước mắt xuyên quang phổ#The Soul bị xích trong một bán kính nhỏ quanh The Forgotten"},
}

---------- Sacrifice Room ----------

EID.descriptions[languageCode].sacrificeHeader = "[Phần thưởng tiếp theo của Phòng Hiến Tế]"

EID.descriptions[languageCode].sacrifice={
	{"1", "", "{{Coin}} 50% cơ hội nhận 1 đồng xu#{{Bomb}} 100% cơ hội nhận 1 bom, khi ở B1 và giết trùm dưới 1 phút"},
	{"2", "", "{{Coin}} 50% cơ hội nhận 1 đồng xu#{{Bomb}} 100% cơ hội nhận 1 bom, khi ở B1 và giết trùm dưới 1 phút"},
	{"3", "", "{{AngelChance}} 67% cơ hội tăng khả năng vào Phòng Thiên Thần"},
	{"4", "", "{{Chest}} 50% cơ hội nhận 1 rương ngẫu nhiên"},
	{"5", "", "{{Coin}} 33% cơ hội nhận 3 đồng xu#{{AngelChance}} 67% cơ hội tăng khả năng vào Phòng Thiên Thần"},
	{"6", "", "{{AngelRoom}} 33% cơ hội dịch chuyển đến Phòng Thiên Thần#{{DevilRoom}} Dịch chuyển đến Phòng Quỷ nếu cửa của nó đã xuất hiện trên tầng hiện tại#{{Chest}} 67% cơ hội nhận rương ngẫu nhiên"},
	{"7", "", "{{AngelRoom}} 33% cơ hội nhận 1 vật phẩm ngẫu nhiên từ Phòng Thiên Thần#{{SoulHeart}} 67% cơ hội nhận 1 Trái Tim Linh Hồn"},
	{"8", "", "100% cơ hội nhận 7 Bom Quỷ"},
	{"9", "", "100% cơ hội sinh ra \"Uriel\""},
	{"10", "", "{{SoulHeart}} 50% cơ hội nhận 7 Trái Tim Linh Hồn#{{Coin}} 50% cơ hội nhận 30 đồng xu"},
	{"11", "", "100% cơ hội sinh ra \"Gabriel\""},
	{"12", "", "50% cơ hội dịch chuyển đến \"Dark Room\""},
	
}

---------- Dice Room ----------

EID.descriptions[languageCode].diceHeader = "[Hiệu ứng của Phòng Xúc Xắc]"

EID.descriptions[languageCode].dice={
	{"1", "", "Đổi mới tất cả vật phẩm của Isaac thành vật phẩm ngẫu nhiên từ kho phòng mà chúng được nhặt"},
	{"2", "", "Đổi mới tất cả vật phẩm nhặt được trong phòng"},
	{"3", "", "Đổi mới tất cả vật phẩm nhặt được và trang sức trên toàn tầng#Không ảnh hưởng đến {{AngelDevilChance}} Phòng Quỷ/Thiên Thần hoặc {{LadderRoom}} không gian ẩn"},
	{"4", "", "Đổi mới tất cả vật phẩm trên bệ trên tầng#Không ảnh hưởng đến {{AngelDevilChance}} Phòng Quỷ/Thiên Thần hoặc {{LadderRoom}} không gian ẩn"},
	{"5", "", "Đổi mới và khởi động lại tầng hiện tại"},
	{"6", "", "Đổi mới tất cả vật phẩm của Isaac#Đổi mới tất cả vật phẩm nhặt được, trang sức và vật phẩm trên bệ trên tầng"},
}

---------- Transformations ----------

EID.descriptions[languageCode].transformations={
	"",					-- 0 = none
	"Guppy",			-- 1
	"Fun Guy",			-- 2
	"Beelzebub",		-- 3
	"Conjoined",		-- 4
	"Spun",				-- 5
	"Yes Mother?",		-- 6
	"Oh Crap",			-- 7
	"Bob",				-- 8
	"Leviathan",		-- 9
	"Seraphim",			-- 10
	"Super Bum",		-- 11
	"Bookworm",			-- 12
	"Spider Baby",		-- 13
	"Adult",			-- 14
	"Stompy"			-- 15
}

---------- MISC ----------

-- This string will be appended to certain words (like pickup names in glitched item descriptions) to pluralize them, make it "" to not pluralize
EID.descriptions[languageCode].Pluralize = "s"

EID.descriptions[languageCode].VoidText = "Nếu hấp thụ, nhận được:"
-- {1} will become the number text (like "{1} Tears" -> "+0.5 Tears")
EID.descriptions[languageCode].VoidNames = {"{1} Tốc độ", "{1} Nước mắt", "{1} Sát thương", "{1} Tầm bắn", "{1} Tốc độ đạn", "{1} May mắn"}

EID.descriptions[languageCode].PurityBoosts = {[0] = "↑ {{Damage}} +4 Sát thương", "↑ {{Tears}} -4 Độ trễ nước mắt", "↑ {{Speed}} +0.5 Tốc độ", "↑ {{Range}} +7.5 Tầm bắn#↑ +1 Tốc độ rơi nước mắt"}

EID.descriptions[languageCode].CrookedPennyHeads = "Mặt ngửa"
EID.descriptions[languageCode].CrookedPennyTails = "Mặt sấp"

EID.descriptions[languageCode].LuckModifier = "{1}% cơ hội tại {2} may mắn"

EID.descriptions[languageCode].CollectionPageInfo = "Vật phẩm này cần được nhặt để hiển thị trên trang sưu tầm!"

EID.descriptions[languageCode].BlackFeatherInformation = "{{ColorLime}}{1}{{CR}} vật phẩm hiện đang sở hữu (+{2} Sát thương)"

EID.descriptions[languageCode].SingleUseInfo = "{{Warning}} CHỈ DÙNG MỘT LẦN {{Warning}}"

-- Find/replace pairs for changing "+1 Health" to "+1 Soul Heart" for soul health characters, or nothing at all for The Lost
-- {1} = number of hearts, {2} = plural character
-- If having a simple plural character doesn't work for your language, you could just include an extra string pair to catch plural lines
EID.descriptions[languageCode].RedToX = {
	-- These change "+1 Health" to just "+1 Soul Heart" and etc.
	["Red to Soul"] = {"↑ {{Heart}} +{1} Máu", "{{SoulHeart}} +{1} Trái Tim Linh Hồn{2}",
	"↑ {{EmptyHeart}} +{1} Ô trái tim trống{2}", "{{SoulHeart}} +{1} Trái Tim Linh Hồn{2}",
	"↓ {{EmptyHeart}} {1} Máu", "↓ {{SoulHeart}} {1} Trái Tim Linh Hồn{2}"},
	
	["Red to Black"] = {"↑ {{Heart}} +{1} Máu", "{{BlackHeart}} +{1} Trái Tim Đen{2}",
	"↑ {{EmptyHeart}} +{1} Ô trái tim trống{2}", "{{BlackHeart}} +{1} Trái Tim Đen{2}",
	"↓ {{EmptyHeart}} {1} Máu", "↓ {{BlackHeart}} {1} Trái Tim Đen{2}"},
	
	["Red to Bone"] = {"↑ {{Heart}} +{1} Máu", "{{BoneHeart}} +{1} Trái Tim Xương{2}",
	"↑ {{EmptyHeart}} +{1} Ô trái tim trống{2}", "{{EmptyBoneHeart}} +{1} Ô Trái Tim Xương trống{2}", "{{HealingRed}}", "{{HealingBone}}",
	"↓ {{EmptyHeart}} {1} Máu", "↓ {{EmptyBoneHeart}} {1} Trái Tim Xương{2}"}, -- Red HP to Bone Hearts
	
	["Red to Coin"] = {"↑ {{Heart}} +{1} Máu", "{{CoinHeart}} +{1} Trái Tim Đồng Xu{2}",
	"↑ {{EmptyHeart}} +{1} Ô trái tim trống{2}", "{{EmptyCoinHeart}} +{1} Ô Trái Tim Đồng Xu trống{2}",
	"{{HealingRed}} Hồi {1} trái tim{2}", "{{HealingCoin}} Hồi {1} Đồng xu{2}", "{{HealingRed}} Hồi nửa trái tim", "{{HealingCoin}} Hồi 1 đồng xu", "{{HealingRed}}", "{{HealingCoin}}", "↓ {{EmptyHeart}} {1} Máu", "↓ {{EmptyCoinHeart}} {1} Trái Tim Đồng Xu{2}"}, -- Red HP to Coin Hearts
	
	["Red to None"] = {"↑ {{Heart}} +{1} Máu", "", "↑ {{EmptyHeart}} +{1} Ô trái tim trống{2}", "", "↓ {{EmptyHeart}} {1} Máu", ""}, -- Red HP to None (The Lost)
}

EID.descriptions[languageCode].MCM = {
	DemoObjectName = "Tên Đối Tượng Thử Nghiệm",
	DemoObjectTransformation = "DBiến Hình Thử Nghiệm",
	DemoObjectText = "This text is in english#A very cool and long description to simulate linebreaks caused by EID textbox width!#{{Collectible4}} This is also a cool line#{{Heart}} This line loves you#{{AngelDevilChance}} This line can be your angel or your devil#\1 {{Damage}} +1 Stat Change up",
}

-- the ItemReminder description will predict the abilities of items with a header like "Item Name Result"
EID.descriptions[languageCode].ItemReminder = {
	ResultHeader = "{1} Kết quả",
	InventoryEmpty = "(Người chơi không có vật phẩm)",
	CategoryNames = {
		Overview = "Tổng quan Kho đồ",
		Wisps = "Lemegeton Wisps",
		Special = "Đặc biệt",
		Actives = "Vật phẩm Kích hoạt Đang Cầm",
		Pockets = "Vật phẩm Túi Đang Cầm",
		Trinkets = "Trang sức Đang Cầm",
		Passives = "Vật phẩm Thụ động Đang Cầm",
		Character = "Thông tin Nhân vật",
	}
}

-- https://wofsauge.github.io/IsaacDocs/rep/enums/RoomType.html
-- Includes Repentance room types for localization convenience
EID.descriptions[languageCode].RoomTypeNames = { "Normal Room", "Shop", "I AM ERROR Room", "Treasure Room", "Boss Room", "Miniboss Room", "Secret Room", "Super Secret Room", "Arcade Room", "Curse Room", "Challenge Room", "Library", "Sacrifice Room", "Devil Room", "Angel Room", "Crawlspace Room", "Boss Rush Room", "Isaac's Room", "Barren Room", "Chest Room", "Dice Room", "Black Market", "Exit Room", "Planetarium", "Teleporter Entrance", "Teleporter Exit", "Alt Path Trapdoor", "Blue Key Room", "Ultra Secret Room",
-- Not technically room types but still potentially useful to have localized
[666] = "Devil/Angel Room", [1024] = "Red Room", [1025] = "Special Red Room" }

-- currently used for D1 and Glyph of Balance; contains Rep pickups for ease of localization
EID.descriptions[languageCode].PickupNames = {
	["5.0"] = "None",

	["5.10"] = "{{Heart}} Heart",
	["5.10.1"] = "{{Heart}} Heart", ["5.10.2"] = "{{HalfHeart}} Half Heart", ["5.10.3"] = "{{SoulHeart}} Soul Heart", ["5.10.4"] = "{{EternalHeart}} Eternal Heart", ["5.10.5"] = "{{Heart}} Double Heart", ["5.10.6"] = "{{BlackHeart}} Black Heart", ["5.10.7"] = "{{GoldHeart}} Gold Heart", ["5.10.8"] = "{{HalfSoulHeart}} Half Soul Heart", ["5.10.9"] = "{{Heart}} Scared Heart", ["5.10.10"] = "{{BlendedHeart}} Blended Heart", ["5.10.11"] = "{{EmptyBoneHeart}} Bone Heart", ["5.10.12"] = "{{RottenHeart}} Rotten Heart",

	["5.20"] = "{{Coin}} Coin",
	["5.20.1"] = "{{Crafting8}} Penny", ["5.20.2"] = "{{Crafting9}} Nickel", ["5.20.3"] = "{{Crafting10}} Dime", ["5.20.4"] = "{{Crafting8}} Double Penny", ["5.20.5"] = "{{Crafting11}} Lucky Penny", ["5.20.6"] = "{{Crafting9}} Sticky Nickel", ["5.20.7"] = "{{Crafting26}} Golden Penny",

	["5.30"] = "{{Key}} Key",
	["5.30.1"] = "{{Crafting12}} Key", ["5.30.2"] = "{{Crafting13}} Golden Key", ["5.30.3"] = "{{Crafting12}} Key Ring", ["5.30.4"] = "{{Crafting14}} Charged Key",

	["5.40"] = "{{Bomb}} Bomb",
	["5.40.1"] = "{{Crafting15}} Bomb", ["5.40.2"] = "{{Crafting15}} Double Bomb", ["5.40.3"] = "{{Crafting15}} Troll Bomb", ["5.40.4"] = "{{Crafting16}} Golden Bomb", ["5.40.5"] = "{{Crafting15}} Mega Troll Bomb", ["5.40.7"] = "{{Crafting17}} Giga Bomb",
	
	["5.42"] = "{{Crafting29}} Poop Nugget", ["5.42.1"] = "{{Crafting29}} Big Poop Nugget",

	["5.90"] = "{{Battery}} Battery",
	["5.90.0"] = "{{Crafting19}} Lil' Battery", --AB+ didn't have subtypes for batteries
	["5.90.1"] = "{{Crafting19}} Lil' Battery", ["5.90.2"] = "{{Crafting18}} Micro Battery", ["5.90.3"] = "{{Crafting20}} Mega Battery", ["5.90.4"] = "{{Crafting28}} Golden Battery",

	["5.50"] = "{{Chest}} Chest", ["5.51"] = "{{BombChest}} Bomb Chest", ["5.52"] = "{{SpikedChest}} Spiked Chest", ["5.53"] = "{{EternalChest}} Eternal Chest", ["5.54"] = "{{MimicChest}} Mimic Chest", ["5.55"] = "{{OldChest}} Old Chest", ["5.56"] = "{{WoodenChest}} Wooden Chest", ["5.57"] = "{{MegaChest}} Mega Chest", ["5.58"] = "{{HauntedChest}} Haunted Chest", ["5.60"] = "{{GoldenChest}} Golden Chest", ["5.360"] = "{{RedChest}} Red Chest",

	["5.69"] = "{{GrabBag}} Grab Bag", ["5.69.1"] = "{{GrabBag}} Grab Bag", ["5.69.2"] = "{{BlackSack}} Black Sack",

	["5.70"] = "{{Pill}} Pill",
	["5.300"] = "{{Card}} Card",
	["5.301"] = "{{Rune}} Rune", -- not a real id
	["5.350"] = "{{Trinket}} Trinket",

}

-- Conditional descriptions - DO NOT TRANSLATE THE FIRST PART IN ["BRACKETS"]
-- Strings will be appended to the original description
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs (if there's an odd number of entries, the last entry is appended)
-- For collectible/player conditionals, lines will automatically have their bulletpoint, and {1} is replaced with their name
EID.descriptions[languageCode].ConditionalDescs = {
	------ GENERAL STRINGS ------
	["Overridden"] = "Bị ghi đè bởi {1}",
	["Overrides"] = "Ghi đè {1}",
	["Almost No Effect"] = "Hầu như không có hiệu ứng với {1}",
	["No Effect"] = "Không có hiệu ứng với {1}",
	["No Effect Replace"] = {"Không có hiệu ứng với {1}"},
	["No Effect From"] = "Không có hiệu ứng từ {1}",
	["Can't Charge"] = "Không thể nạp năng lượng cho {1}",
	["Can't Be Charged"] = "Không thể được nạp năng lượng bởi {1}",
	["Can't Be Duplicated"] = "Không thể nhân đôi",
	["No Effect (Greed)"] = "{{GreedMode}} Không có hiệu ứng trong Chế độ Tham Lam",
	["No Effect (Copies)"] = "Không có hiệu ứng bổ sung từ nhiều bản sao", -- Having the item already, or having Diplopia while looking at a pedestal
	["No Effect (Familiars)"] = "Không có hiệu ứng bổ sung lên bạn đồng hành", -- probably just for Hive Mind + BFFS!
	["Different Effect"] = "{{ColorSilver}}Hiệu ứng khác với {1}{{CR}}",
	["Dies on Use"] = "{{Warning}} {1} chết khi sử dụng", -- for Razor Blade and such as The Lost	

	
	
	------ GREED MODE ------
	["Room to Wave"] = {"room", "wave", "room", "wave"}, -- convert room clear effects to wave clear effects
	["No Champion Drops"] = "!!! Nhà vô địch không làm rơi vật phẩm nhặt được trong Chế độ Tham Lam!", -- Champion Belt / Purple Heart
["5.300.15"] = {"{{DemonBeggar}} Sinh ra một Người Ăn Xin Quỷ"}, -- Temperance (Greed)
["5.300.19"] = {"Dịch chuyển Isaac đến phòng đầu tiên của tầng"}, -- The Moon (Greed)
["5.300.20"] = {"{{HealingRed}} Hồi đầy máu#Gây 100 sát thương lên tất cả kẻ địch"}, -- XIX - The Sun (Greed)
["5.100.483 (Greed)"] = "{{GreedMode}} Không kích hoạt mỗi đợt, chỉ một lần mỗi phòng", -- Mama Mega (Greed)
["5.100.535"] = "{{GreedMode}} Không có khiên trong Đợt Trùm, chỉ có với Ultra Greed", -- Blanket (Greed)
["5.350.120"] = "{{GreedMode}} Không nạp năng lượng trong Đợt Trùm, chỉ có với Ultra Greed", -- Hairpin (Greed)
["5.100.246"] = {"{{SuperSecretRoom}} Hiển thị vị trí Phòng Siêu Bí Mật trên bản đồ"}, -- Blue Map (Greed)
["5.100.333"] = {"{{SuperSecretRoom}} Hiển thị vị trí Phòng Siêu Bí Mật trên bản đồ"}, -- The Mind (Greed)
["5.100.514"] = {"Khiến một số kẻ địch và đạn tạm dừng ngẫu nhiên trong khoảng thời gian ngắn"}, -- Broken Modem (Greed)
["5.350.34"] = {"{{Heart}} 33% cơ hội nhận thêm một trái tim từ rương, đá nhuộm màu và máy bị phá hủy"}, -- Child's Heart
["5.350.36"] = {"{{Key}} 33% cơ hội nhận thêm một chìa khóa từ rương, đá nhuộm màu và máy bị phá hủy"}, -- Rusted Key
["5.350.41"] = {"{{Bomb}} 33% cơ hội nhận thêm một bom từ rương, đá nhuộm màu và máy bị phá hủy#{{Warning}} Loại bỏ {{Trinket53}} Tick"}, -- Match Stick
["5.350.44"] = {"{{Pill}} 33% cơ hội nhận thêm một viên thuốc từ rương, đá nhuộm màu và máy bị phá hủy"}, -- Safety Cap
["5.350.45"] = {"{{Card}} 33% cơ hội nhận thêm một lá bài từ rương, đá nhuộm màu và máy bị phá hủy"}, -- Ace of Spades
["5.350.72"] = {"{{Battery}} +10% cơ hội vật phẩm ngẫu nhiên là pin#{{Battery}} 5% cơ hội thêm 1 năng lượng cho vật phẩm kích hoạt đang cầm khi dọn một đợt"}, -- Watch Battery
["5.100.297 (Greed)"] = {"Sinh ra phần thưởng dựa trên tầng:#Basement: 2{{Bomb}} + 2{{Key}}#Caves: Vật phẩm trùm + 2{{SoulHeart}}#Depths: 20{{Coin}}#Womb: 2 vật phẩm trùm#Sheol: Vật phẩm quỷ + 1{{BlackHeart}}#The Shop/Ultra Greed: 1{{Coin}}"}, -- Pandora's Box
	
	
	------ ACHIEVEMENT CHECKS ------
	["5.350.23"] = "{{Warning}} Chết trong {{SacrificeRoom}} Phòng Hiến Tế khi đang cầm trang sức này sẽ mở khóa The Lost", -- Missing Poster (Unlock The Lost)
	["5.100.297"] = {"Mở khóa {{Collectible523}} Moving Box", "Không có gì"}, -- Pandora's Box unlocking Moving Box
	
	
	------ SPECIFIC CHARACTER SYNERGIES/CHANGES ------
	-- NO RED HEALTH CHARS
	["Super Bandage Soul"] = {"{{SoulHeart}} +3 Trái Tim Linh Hồn"}, -- for Soul Heart chars
	["Super Bandage Black"] = {"{{SoulHeart}} +2 Trái Tim Linh Hồn#{{BlackHeart}} +1 Trái Tim Đen"}, -- for Black Heart chars
	["Black Lotus Soul"] = {"{{SoulHeart}} +2 Trái Tim Linh Hồn#{{BlackHeart}} +1 Trái Tim Đen"}, -- for Soul Heart chars
	["Black Lotus Black"] = {"{{SoulHeart}} +1 Trái Tim Linh Hồn#{{BlackHeart}} +2 Trái Tim Đen"}, -- for Black Heart chars	
	
	
	["5.100.135 (PHD)"] = "Sinh ra 2-3 đồng xu nếu bạn có {1}", -- IV Bag PHD
	["Keeper 0-1"] = "Sinh ra 0-1 đồng xu dưới dạng {1}", -- IV Bag/Piggy Bank Keeper
	["5.100.549"] = "{1} chỉ nhận ↑ {{Tears}} +0.4 Nước mắt khi nhặt", -- Brittle Bones (Keeper+Lost)
	["5.100.501"] = "{1} có thể nhận thêm ô chứa đồng xu", -- Greed's Gullet
	["5.100.230 (Keeper)"] = "{{Warning}} {1} chỉ chết", -- Abaddon
	

	------ DUPLICATE COPIES OF ITEMS ------
	["5.100.2 (Copies)"] = "Isaac bắn thêm 3 nước mắt#Không giảm chỉ số bổ sung", -- The Inner Eye
	["5.100.153 (Copies)"] = "Isaac bắn thêm 4 nước mắt#Không giảm chỉ số bổ sung", -- Mutant Spider
	["5.100.245 (Copies)"] = "Isaac bắn thêm 2 nước mắt", -- 20/20
	["5.100.358 (Copies)"] = "Isaac bắn thêm 2 nước mắt gần trung tâm hơn", -- The Wiz
	["5.100.64 (Copies)"] = "Sở hữu vật phẩm này lần thứ hai khiến tất cả vật phẩm trong Cửa hàng miễn phí", -- Steam Sale
	["5.100.118 (Copies)"] = "Isaac bắn thêm một tia", -- Brimstone
	["5.100.224 (Copies)"] = "Các bản sao bổ sung chỉ giảm -0.2 tốc độ", -- Kidney Stone	
	
	
	----- MISC. ITEM CONDITIONS ------
	["Sacrificial Nugget"] = "Tháp pháo Brown Nugget được tính là bạn đồng hành",
	["Sacrificial Conception"] = "bạn đồng hành được cấp bởi {1} có thể bị hiến tế và sẽ hồi sinh",
	["Sacrificial Angels"] = "{1} sinh ra 2 Trái Tim Đen nếu bị hiến tế",
	["Sacrificial Void"] = "Có thể sử dụng nhiều lần nếu được hấp thụ bởi Void",
	
	["5.100.116 (1 Room)"] = "Nạp lại 1 phòng trở thành nạp lại 15 giây khi ở trong phòng chưa dọn sạch", -- 9 Volt
	["5.100.116 (Timed)"] = "Nạp lại theo thời gian bắt đầu đầy một nửa", -- 9 Volt
	["9 Volt 1 Room"] = "Nạp lại 15 giây khi ở trong phòng chưa dọn sạch", -- Actives + 9 Volt
	["9 Volt Timed"] = "Năng lượng bắt đầu đầy một nửa sau khi sử dụng", -- Actives + 9 Volt
	["5.100.205 (Wafer)"] = "Giảm chi phí xuống còn nửa trái tim", -- Sharp Plug + Wafer
	
	["Suicide 1"] = "{1} không thể ngăn cái chết", -- Plan C, Damocles, Suicide King
	["Suicide 2"] = "Không ngăn cái chết bởi {1}", -- Plan C, Damocles, Suicide King
	
	["5.100.7"] = "Hệ số sát thương x1.5 khi hiệu ứng {1} đang hoạt động", -- Blood of the Martyr
	["5.100.34"] = "Hệ số sát thương x1.5", -- Book of Belial
	["5.300.16"] = "Hệ số sát thương x1.5", -- XV - The Devil
	
	["5.100.81"] = "Nhân vật không thể có Trái Tim Đỏ bị đặt về 1 Trái Tim Linh Hồn/Đen", -- Dead Cat
	["5.100.316"] = "{1} loại bỏ hiệu ứng dịch chuyển", -- Cursed Eye
	["5.100.260"] = "Loại bỏ hiệu ứng dịch chuyển của {1}", -- Black Candle
	["Void Single Use"] = "Vật phẩm dùng một lần chỉ được kích hoạt một lần", -- Single Use Actives + Void
	["? Card Single Use"] = "Vật phẩm dùng một lần sẽ biến mất sau khi dùng ? Card", -- Single Use Actives + ? Card
	["5.300.48"] = "Dịch chuyển đến Phòng I AM ERROR#Blank Card và ? Card sẽ bị phá hủy", -- Blank Card + ? Card
	["? + Blank Pedestal"] = "Dùng ? Card với Blank Card dịch chuyển bạn đến phòng I AM ERROR và phá hủy cả hai lá bài", -- Looking at Blank Card with ? Card
	
	["5.100.521"] = "{{Collectible376}} Vật phẩm miễn phí sẽ không được tái cung cấp", -- Coupon + Restock/Greed
	["Black Feather"] = "↑ {{Damage}} +0.2 Sát thương", -- Black Feather items
	
	["Bulb Multiple"] = "Chỉ kiểm tra vật phẩm kích hoạt chính", -- Vibrant/Dim Bulb + Schoolbag/Pocket Actives
	["Bulb Zero"] = "Vật phẩm kích hoạt có 0 năng lượng tối đa sẽ kích hoạt bóng đèn", -- Vibrant/Dim Bulb + zero charge actives
	["5.350.101 (Timed)"] = "Hầu như vô dụng với nạp lại theo thời gian", -- Dim Bulb + Timed Recharges
	["5.100.122"] = "Kích hoạt ở 1 Trái Tim Đỏ dưới dạng {1}", -- Whore of Babylon + Eve
	
	["5.70.28"] = "Isaac bắn về phía trước và sang hai bên thay vì bình thường", -- R U A Wizard + The Wiz
	["5.100.523"] = "Được tính là vật phẩm thụ động với {1}", -- Moving Box + Void
	["Mongo Babies"] = "Có thể được sao chép bởi {1}", -- Mongo Baby + Baby Familiars
	["Technology 2 One Eye"] = "Với {1}, tia laser thay thế hoàn toàn nước mắt của bạn",
	["Brimstone Proptosis"] = "Tia gây thêm sát thương gấp 2 lần ở cự ly gần, giảm dần theo khoảng cách",
	["Brimstone Ipecac"] = "Nước mắt Ipecac được bắn trong lúc sạc#Sát thương +40 áp dụng cho tia laser",
	["Proptosis Anti-Gravity"] = "Nước mắt không mất sát thương cho đến khi bắt đầu di chuyển",
	["Epic Fetus Soy Milk"] = "Thời gian ngắm không bị rút ngắn, nhưng sát thương tên lửa giảm mạnh",
	["Eye of Belial Dr. Fetus"] = "Bom xuyên thấu, nhưng không tự dẫn hoặc gây thêm sát thương",
	["Epic Fetus Brimstone"] = "{1} được ưu tiên#Tên lửa bắn ra 10 tia",
	["Epic Fetus Mom's Knife"] = "{1} được ưu tiên#Tên lửa bắn ra 10 dao",
	["Haemolacria Brimstone"] = "{1} được ưu tiên#Nước mắt Ascendant bắn ra 10 dao",
	["Brimstone Mom's Knife"] = "{1} được ưu tiên#Nước mắt chia thành 4-7 tia",
	["Ludovico Ipecac"] = "Nước mắt nhận +4 sát thương nhưng không nổ hoặc gây độc",
	["Technology Ipecac"] = "Tia laser nhận +4 sát thương và làm độc mục tiêu",
	["Chocolate Milk Overrides"] = "↑ {{Tears}} Hệ số nước mắt x1.25",
	["Chocolate Milk Marked"] = "Isaac tự động sạc dựa trên khoảng cách từ tâm ngắm",
	["Ghost Pepper Fart"] = "Đánh rắm khiến một ngọn lửa bắn ra phía sau Isaac",
	["Damage Multiplier Stack"] = "Hệ số sát thương không cộng dồn",
	["White Poop"] = "Sinh ra Phân Trắng thay vì bình thường",
	["White Poop Chance"] = "Cơ hội sinh ra Phân Trắng",
	["Golden Poop Chance"] = "Cơ hội sinh ra Phân Vàng",
	["5.100.483"] = "{{GoldenBomb}} Có một quả bom vàng khi sử dụng vật phẩm sẽ tiêu thụ nó và cho phép sử dụng Mama Mega thêm lần nữa",
	
	["5.300.5"] = {"{{BossRoom}} Dịch chuyển Isaac đến một Phòng Trùm ngẫu nhiên"}, -- IV - The Emperor (in The Void)
	["5.300.18"] = "Dịch chuyển Isaac đến một phòng ngẫu nhiên nếu không có Phòng Kho Báu", -- XVII - The Stars (Womb and below)
	["5.300.18 (Greed)"] = {"{{TreasureRoom}} Dịch chuyển Isaac đến một Phòng Kho Báu ngẫu nhiên"}, -- XVII - The Stars (Greed)
	["5.300.18 (Late Greed)"] = {"Dịch chuyển Isaac đến phòng đầu tiên của tầng"}, -- XVII - The Stars (Greed Last Floors)
	["5.300.10"] = "Dịch chuyển Isaac đến một phòng ngẫu nhiên nếu không có Cửa hàng", -- IX - The Hermit (Womb and below)	
	
}



