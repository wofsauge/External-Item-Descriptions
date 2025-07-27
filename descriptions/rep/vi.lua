---------------------------------------
-----  Basic Vietnamese descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "vi"

---------- Collectibles ----------

local repCollectibles={
	[2] = {"2", "The Inner Eye", "↓ {{Tears}} x0.51 Hệ số tốc độ bắn#Isaac bắn 3 nước mắt cùng lúc"}, -- The Inner Eye
	[5] = {"5", "My Reflection", "↑ {{Damage}} +1.5 Sát thương#↑ {{Range}} +1.5 Tầm bắn#↑ {{Range}} x2 Hệ số tầm bắn#↑ {{Shotspeed}} x1.6 Hệ số tốc độ đạn#↓ {{Luck}} -1 May mắn#Nước mắt có hiệu ứng boomerang"}, -- My Reflection
	[6] = {"6", "Number One", "↑ {{Tears}} +1.5 Nước mắt#↓ {{Range}} -1.5 Tầm bắn#↓ {{Range}} x0.8 Hệ số tầm bắn"}, -- Number One
	[12] = {"12", "Magic Mushroom", "↑ {{Heart}} +1 Máu#↑ {{Speed}} +0.3 Tốc độ#↑ {{Damage}} +0.3 Sát thương#↑ {{Damage}} x1.5 Hệ số sát thương#↑ {{Range}} +2.5 Tầm bắn#Tăng kích thước#{{HealingRed}} Đầy máu"}, -- Magic Mushroom
	[13] = {"13", "The Virus", "↑ {{Speed}} +0.2 Tốc độ#{{Poison}} Chạm vào kẻ địch sẽ gây độc cho chúng#Isaac gây 48 sát thương tiếp xúc mỗi giây"}, -- The Virus
	[14] = {"14", "Roid Rage", "↑ {{Speed}} +0.3 Tốc độ#↑ {{Range}} +2.5 Tầm bắn"}, -- Roid Rage
	[18] = {"18", "A Dollar", "{{Coin}} +100 Đồng xu"}, -- A Dollar
	[22] = {"22", "Lunch", "↑ {{Heart}} +1 Máu#{{HealingRed}} Hồi 1 trái tim"}, -- Lunch
	[23] = {"23", "Dinner", "↑ {{Heart}} +1 Máu#{{HealingRed}} Hồi 1 trái tim"}, -- Dinner
	[24] = {"24", "Dessert", "↑ {{Heart}} +1 Máu#{{HealingRed}} Hồi 1 trái tim"}, -- Dessert
	[25] = {"25", "Breakfast", "↑ {{Heart}} +1 Máu#{{HealingRed}} Hồi 1 trái tim"}, -- Breakfast
	[26] = {"26", "Rotten Meat", "↑ {{Heart}} +1 Máu#{{HealingRed}} Hồi 1 trái tim"}, -- Rotten Meat
	[29] = {"29", "Mom's Underwear", "↑ {{Range}} +2.5 Tầm bắn#Tạo 3-6 con ruồi xanh"}, -- Mom's Underwear
	[30] = {"30", "Mom's Heels", "↑ {{Range}} +2.5 Tầm bắn#Isaac gây 24 sát thương tiếp xúc mỗi giây"}, -- Mom's Heels
	[31] = {"31", "Mom's Lipstick", "↑ {{Range}} +3.75 Tầm bắn#{{UnknownHeart}} Tạo 1 trái tim ngẫu nhiên"}, -- Mom's Lipstick
	[37] = {"37", "Mr. Boom", "Thả một quả bom lớn bên dưới Isaac gây 185 sát thương"}, -- Mr. Boom
	[40] = {"40", "Kamikaze!", "Gây một vụ nổ lớn tại vị trí của Isaac#Gây 185 sát thương"}, -- Kamikaze!
	[41] = {"41", "Mom's Pad", "{{Fear}} Làm tất cả kẻ địch trong phòng sợ hãi trong 5 giây#Tạo một con ruồi xanh"}, -- Mom's Pad
	[42] = {"42", "Bob's Rotten Head", "Sử dụng vật phẩm và bắn theo một hướng sẽ ném đầu#{{Poison}} Đầu nổ tại nơi nó hạ cánh và tạo một đám mây độc#Gây sát thương của Isaac + 185"}, -- Bob's Rotten Head
	[46] = {"46", "Lucky Foot", "↑ {{Luck}} +1 May mắn#Tăng cơ hội thắng khi đánh bạc#Tăng cơ hội nhận thưởng khi dọn phòng#Biến thuốc xấu thành thuốc tốt"}, -- Lucky Foot
	[49] = {"49", "Shoop da Whoop!", "Lần bắn tiếp theo được thay bằng một tia#Tia gây 24x sát thương của Isaac trong 0.83 giây"}, -- Shoop da Whoop!
	[52] = {"52", "Dr. Fetus", "↓ {{Tears}} x0.4 Hệ số tốc độ bắn#{{Bomb}} Isaac bắn bom thay vì nước mắt#{{Damage}} Những quả bom đó gây 10x sát thương nước mắt của Isaac#Nếu sát thương vượt quá 60, thay vào đó gây 5x sát thương +30"}, -- Dr. Fetus
	[53] = {"53", "Magneto", "Các vật phẩm nhặt được bị hút về phía Isaac#Mở rương từ khoảng cách 2 ô, bỏ qua sát thương từ Rương Gai"}, -- Magneto
	[55] = {"55", "Mom's Eye", "50% cơ hội bắn thêm một nước mắt ngược lại phía sau#{{Luck}} 100% cơ hội ở 5 may mắn"}, -- Mom's Eye
	[59] = {"59", "The Book of Belial", "{{AngelDevilChance}} +12.5% Cơ hội Phòng Quỷ/Thiên thần khi cầm#{{Timer}} Nhận trong phòng:#↑ {{Damage}} +2 Sát thương"}, -- The Book of Belial (Judas' Birthright)
	[62] = {"62", "Charm of the Vampire", "↑ {{Damage}} +0.3 Sát thương#{{HealingRed}} Giết 13 kẻ địch hồi nửa trái tim"}, -- Charm of the Vampire
	[67] = {"67", "Sister Maggy", "Bắn nước mắt thường#Gây 6 sát thương mỗi nước mắt"}, -- Sister Maggy
	[69] = {"69", "Chocolate Milk", "{{Chargeable}} Nước mắt có thể sạc#{{Damage}} Sát thương tăng theo thời gian sạc, tối đa 4x"}, -- Chocolate Milk
	[70] = {"70", "Growth Hormones", "↑ {{Speed}} +0.2 Tốc độ#↑ {{Damage}} +1 Sát thương"}, -- Growth Hormones
	[71] = {"71", "Mini Mush", "↑ {{Speed}} +0.3 Tốc độ#↑ {{Range}} +2.5 Tầm bắn#↑ Giảm kích thước"}, -- Mini Mush
	[72] = {"72", "Rosary", "↑ {{Tears}} +0.5 Nước mắt#{{SoulHeart}} +3 Trái tim Linh hồn#{{Collectible33}} Kinh Thánh được thêm vào tất cả các nhóm vật phẩm"}, -- Rosary
	[78] = {"78", "Book of Revelations", "{{SoulHeart}} +1 Trái tim Linh hồn#{{AngelDevilChance}} +17.5% Cơ hội Phòng Quỷ/Thiên thần khi cầm#Sử dụng vật phẩm thay thế Boss tầng bằng một kỵ sĩ"}, -- Book of Revelations
	[79] = {"79", "The Mark", "↑ {{Speed}} +0.2 Tốc độ#↑ {{Damage}} +1 Sát thương#{{BlackHeart}} +1 Trái tim Đen"}, -- The Mark
	[80] = {"80", "The Pact", "↑ {{Tears}} +0.7 Nước mắt#↑ {{Damage}} +0.5 Sát thương#{{BlackHeart}} +2 Trái tim Đen"}, -- The Pact
	[83] = {"83", "The Nail", "Sử dụng vật phẩm:#{{HalfBlackHeart}} + Nửa Trái tim Đen#{{Timer}} Nhận trong phòng:#↑ {{Damage}} +2 Sát thương#↓ {{Speed}} -0.18 Tốc độ#Isaac gây 40 sát thương tiếp xúc mỗi giây#Cho phép Isaac phá đá bằng cách đi vào chúng"}, -- The Nail
	[84] = {"84", "We Need To Go Deeper!", "Mở cửa sập xuống tầng tiếp theo#{{LadderRoom}} Mở không gian bò nếu sử dụng trên ô trang trí (cỏ, đá nhỏ, giấy, đá quý, v.v.)"}, -- We Need To Go Deeper!
	[87] = {"87", "Loki's Horns", "25% cơ hội bắn theo 4 hướng#{{Luck}} 100% cơ hội ở 15 may mắn"}, -- Loki's Horns
	[91] = {"91", "Spelunker Hat", "Các phòng trên bản đồ được tiết lộ từ xa hơn#{{SecretRoom}} Cũng có thể tiết lộ Phòng Bí mật và Phòng Bí mật Siêu cấp#Ngăn sát thương từ vật thể rơi"}, -- Spelunker Hat
	[98] = {"98", "The Relic", "{{SoulHeart}} Tạo 1 Trái tim Linh hồn mỗi 7-8 phòng"}, -- The Relic
	[101] = {"101", "The Halo", "↑ {{Heart}} +1 Máu#↑ {{Speed}} +0.3 Tốc độ#↑ {{Tears}} +0.2 Nước mắt#↑ {{Damage}} +0.3 Sát thương#↑ {{Range}} +1.5 Tầm bắn#{{HealingRed}} Hồi 1 trái tim"}, -- The Halo
	[106] = {"106", "Mr. Mega", "↑ x1.85 Sát thương bom#{{Bomb}} +5 Bom"}, -- Mr. Mega
	[107] = {"107", "The Pinking Shears", "{{Timer}} Nhận trong phòng:#Bay được#Cơ thể Isaac tách khỏi đầu và tấn công kẻ địch với 23.5 sát thương tiếp xúc mỗi giây"}, -- The Pinking Shears
	[110] = {"110", "Mom's Contacts", "↑ {{Range}} +1.5 Tầm bắn#20% cơ hội bắn nước mắt hóa đá#{{Luck}} 50% cơ hội ở 20 may mắn"}, -- Mom's Contacts
	[114] = {"114", "Mom's Knife", "Nước mắt của Isaac được thay bằng một con dao ném được#{{Damage}} Con dao gây 2x sát thương của Isaac khi cầm và tối đa 6x sát thương ở 1/3 mức sạc#Sạc thêm chỉ tăng tầm ném#Sát thương giảm xuống 2x khi dao quay lại Isaac"}, -- Mom's Knife
	[115] = {"115", "Ouija Board", "↑ {{Tears}} +0.5 Nước mắt#Nước mắt xuyên tường"}, -- Ouija Board
	[118] = {"118", "Brimstone", "↓ {{Tears}} x0.33 Hệ số tốc độ bắn#{{Chargeable}} Nước mắt của Isaac được thay bằng một tia máu có thể sạc#{{Damage}} Tia gây 9x sát thương của Isaac trong 0.63 giây"}, -- Brimstone
	[121] = {"121", "Odd Mushroom (Large)", "↑ {{Heart}} +1 Máu#↑ {{Damage}} +1 Sát thương#↑ {{Range}} +1.5 Tầm bắn#↓ {{Speed}} -0.2 Tốc độ"}, -- Odd Mushroom (Large)
	[123] = {"123", "Monster Manual", "{{Timer}} Tạo một bạn đồng hành ngẫu nhiên trong tầng"}, -- Monster Manual
	[126] = {"126", "Razor Blade", "↑ {{Damage}} +1.2 Sát thương trong phòng#{{Warning}} Gây 1 trái tim sát thương cho Isaac#Sau lần sử dụng đầu tiên trong phòng, gây nửa trái tim#{{Heart}} Ưu tiên loại bỏ Trái tim Đỏ trước"}, -- Razor Blade
	[129] = {"129", "Bucket of Lard", "↑ {{Heart}} +2 Máu#↓ {{Speed}} -0.2 Tốc độ"}, -- Bucket of Lard
	[138] = {"138", "Stigmata", "↑ {{Heart}} +1 Máu#↑ {{Damage}} +0.3 Sát thương#{{HealingRed}} Hồi 1 trái tim"}, -- Stigmata
	[139] = {"139", "Mom's Purse", "{{Trinket}} Tạo 1 món trang sức ngẫu nhiên#{{Trinket}} Isaac có thể giữ 2 món trang sức"}, -- Mom's Purse
	[140] = {"140", "Bob's Curse", "{{Bomb}} +5 Bom#{{Poison}} Bom của Isaac tạo một đám mây độc#{{Poison}} Miễn nhiễm với độc"}, -- Bob's Curse
	[142] = {"142", "Scapular", "{{SoulHeart}} Isaac nhận 1 Trái tim Linh hồn khi bị tổn thương xuống còn nửa trái tim#Chỉ xảy ra một lần mỗi phòng#Rời đi và vào lại phòng cho phép hiệu ứng kích hoạt lại#{{Warning}} Không kích hoạt khi hiến máu"}, -- Scapular
	[147] = {"147", "Notched Axe", "Sử dụng vật phẩm khiến Isaac cầm rìu#Cầm rìu cho phép Isaac phá đá, lối vào phòng bí mật và gây sát thương cho kẻ địch#Đánh trúng bằng rìu giảm lần sạc#Lên tầng mới sẽ sạc đầy rìu"}, -- Notched Axe
	[148] = {"148", "Infestation", "Nhận sát thương tạo 2-6 con ruồi xanh"}, -- Infestation
	[149] = {"149", "Ipecac", "↑ {{Damage}} +40 Sát thương#↓ {{Tears}} x0.33 Hệ số tốc độ bắn#↓ {{Range}} x0.8 Hệ số tầm bắn#↓ {{Shotspeed}} -0.2 Tốc độ đạn#Nước mắt của Isaac được bắn theo hình vòng cung#{{Poison}} Nước mắt nổ và gây độc cho kẻ địch nơi chúng hạ cánh"}, -- Ipecac
	[152] = {"152", "Technology 2", "↓ {{Tears}} x0.67 Hệ số tốc độ bắn#Thay nước mắt mắt phải của Isaac bằng một tia laze liên tục#{{Damage}} Tia gây 2x sát thương của Isaac mỗi giây"}, -- Technology 2
	[153] = {"153", "Mutant Spider", "↓ {{Tears}} x0.42 Hệ số tốc độ bắn#Isaac bắn 4 nước mắt cùng lúc"}, -- Mutant Spider
	[155] = {"155", "The Peeper", "↑ {{Damage}} x1.35 Hệ số sát thương cho mắt trái#Bay lơ lửng trong phòng#Gây 17.1 sát thương tiếp xúc mỗi giây"}, -- The Peeper
	[158] = {"158", "Crystal Ball", "Tạo một {{SoulHeart}} Trái tim Linh hồn, {{Rune}} rune hoặc {{Card}} lá bài#{{Timer}} Hiệu ứng bản đồ đầy đủ cho tầng (trừ {{SuperSecretRoom}}{{UltraSecretRoom}} Phòng Bí mật Siêu cấp/Phòng Bí mật Cực cấp)#Khi cầm:#{{PlanetariumChance}} +15% Cơ hội Phòng Hành tinh#{{PlanetariumChance}} +100% nếu bỏ qua {{TreasureRoom}} Phòng Kho báu"}, -- Crystal Ball
	[169] = {"169", "Polyphemus", "↑ {{Damage}} +4 Sát thương#↑ {{Damage}} x2 Hệ số sát thương#↓ {{Tears}} x0.42 Hệ số tốc độ bắn#Nước mắt xuyên qua kẻ địch bị giết nếu còn dư sát thương"}, -- Polyphemus
	[171] = {"171", "Spider Butt", "{{Slow}} Làm chậm kẻ địch trong 4 giây#Gây 10 sát thương cho tất cả kẻ địch#Kẻ địch bị giết bởi vật phẩm tạo nhện xanh"}, -- Spider Butt
	[172] = {"172", "Sacrificial Dagger", "Vệ tinh#Chặn đạn kẻ địch#Gây 112.5 sát thương tiếp xúc mỗi giây"}, -- Sacrificial Dagger
	[173] = {"173", "Mitre", "{{SoulHeart}} 33% cơ hội Trái tim Đỏ xuất hiện dưới dạng Trái tim Linh hồn"}, -- Mitre
	[176] = {"176", "Stem Cells", "↑ {{Heart}} +1 Máu#↑ {{Shotspeed}} +0.16 Tốc độ đạn#{{HealingRed}} Hồi 1 trái tim"}, -- Stem Cells
	[178] = {"178", "Holy Water", "{{Throwable}} La mình theo hướng Isaac bắn#Vỡ và gây 7 sát thương khi trúng kẻ địch#Để lại một vũng chất lỏng hóa đá + gây sát thương"}, -- Holy Water
	[180] = {"180", "The Black Bean", "Isaac đánh rắm nhiều lần khi nhận sát thương#{{Poison}} Những cái rắm để lại đám mây độc và đẩy lùi đạn"}, -- The Black Bean
	[182] = {"182", "Sacred Heart", "↑ {{Heart}} +1 Máu#↑ {{Damage}} x2.3 Hệ số sát thương#↑ {{Damage}} +1 Sát thương#↓ {{Tears}} -0.4 Nước mắt#↓ {{Shotspeed}} -0.25 Tốc độ đạn#{{HealingRed}} Đầy máu#Nước mắt tự dẫn đường"}, -- Sacred Heart
	[184] = {"184", "Holy Grail", "↑ {{Heart}} +1 Máu#{{HealingRed}} Hồi 1 trái tim#Bay được"}, -- Holy Grail
	[186] = {"186", "Blood Rights", "Gây 40 sát thương cho mọi kẻ địch#{{Warning}} Gây 1 trái tim sát thương cho Isaac#Sau lần sử dụng đầu tiên trong phòng, gây nửa trái tim#{{Heart}} Ưu tiên loại bỏ Trái tim Đỏ trước"}, -- Blood Rights
	[189] = {"189", "SMB Super Fan", "↑ {{Heart}} +1 Máu#↑ {{Speed}} +0.2 Tốc độ#↑ {{Tears}} +0.2 Nước mắt#↑ {{Damage}} +0.3 Sát thương#↑ {{Range}} +2.5 Tầm bắn#{{HealingRed}} Đầy máu"}, -- SMB Super Fan
	[192] = {"192", "Telepathy for Dummies", "{{Timer}} Nhận trong phòng:#↑ {{Range}} +3 Tầm bắn#Nước mắt tự dẫn đường"}, -- Telepathy for Dummies
	[193] = {"193", "MEAT!", "↑ {{Heart}} +1 Máu#↑ {{Damage}} +0.3 Sát thương#{{HealingRed}} Hồi 1 trái tim"}, -- MEAT!
	[194] = {"194", "Magic 8 Ball", "↑ {{Shotspeed}} +0.16 Tốc độ đạn#{{Card}} Tạo một lá bài#{{PlanetariumChance}} +15% Cơ hội Phòng Hành tinh"}, -- Magic 8 Ball
	[197] = {"197", "Jesus Juice", "↑ {{Damage}} +0.5 Sát thương#↑ {{Range}} +1.5 Tầm bắn"}, -- Jesus Juice
	[203] = {"203", "Humbleing Bundle", "Các vật phẩm nhặt được có 50% cơ hội được nhân đôi"}, -- Humbleing Bundle
	[205] = {"205", "Sharp Plug", "{{Battery}} Sử dụng vật phẩm kích hoạt chưa sạc sẽ sạc đầy nó với giá nửa trái tim cho mỗi lần sạc còn thiếu#{{Heart}} Ưu tiên loại bỏ Trái tim Đỏ trước"}, -- Sharp Plug
	[206] = {"206", "Guillotine", "↑ {{Tears}} +0.5 Tốc độ bắn#↑ {{Damage}} +1 Sát thương#Đầu của Isaac trở thành vệ tinh bắn, không nhận sát thương và gây 56 sát thương tiếp xúc mỗi giây"}, -- Guillotine
	[211] = {"211", "Spiderbaby", "Nhận sát thương tạo 3-5 con nhện xanh"}, -- Spiderbaby
	[214] = {"214", "Anemic", "↑ {{Range}} +1.5 Tầm bắn#{{Timer}} Khi nhận sát thương, Isaac để lại vệt chất lỏng máu trong phòng#Chất lỏng gây 6 sát thương mỗi giây"}, -- Anemic
	[218] = {"218", "Placenta", "↑ {{Heart}} +1 Máu#{{HealingRed}} 50% cơ hội hồi nửa trái tim mỗi phút"}, -- Placenta
	[219] = {"219", "Old Bandage", "↑ {{EmptyHeart}} +1 Hộp tim trống#{{Heart}} Nhận sát thương có 20% cơ hội tạo Trái tim Đỏ"}, -- Old Bandage
	[222] = {"222", "Anti-Gravity", "↑ {{Tears}} +1 Tốc độ bắn#Giữ nút bắn làm nước mắt lơ lửng giữa không trung#Thả nút bắn sẽ bắn chúng theo hướng đã bắn"}, -- Anti-Gravity
	[223] = {"223", "Pyromaniac", "{{Bomb}} +5 Bom#Miễn nhiễm với vụ nổ và lửa#{{HealingRed}} Bị trúng vụ nổ hồi nửa trái tim"}, -- Pyromaniac
	[224] = {"224", "Cricket's Body", "↑ {{Tears}} +0.5 Tốc độ bắn#↓ {{Range}} x0.8 Hệ số tầm bắn#Nước mắt tách thành 4 khi trúng#Nước mắt tách ra gây nửa sát thương"}, -- Cricket's Body
	[225] = {"225", "Gimpy", "{{SoulHeart}} Nhận sát thương có 8% cơ hội tạo Trái tim Linh hồn#{{Luck}} +2% cơ hội mỗi may mắn#{{HalfHeart}} Kẻ địch có cơ hội thả nửa Trái tim Đỏ khi chết"}, -- Gimpy
	[226] = {"226", "Black Lotus", "↑ {{Heart}} +1 Máu#{{HealingRed}} Hồi 1 trái tim#{{SoulHeart}} +1 Trái tim Linh hồn#{{BlackHeart}} +1 Trái tim Đen"}, -- Black Lotus
	[228] = {"228", "Mom's Perfume", "↑ {{Tears}} +0.5 Tốc độ bắn#{{Fear}} 15% cơ hội bắn nước mắt gây sợ"}, -- Mom's Perfume
	[229] = {"229", "Monstro's Lung", "↓ {{Tears}} x0.23 Hệ số tốc độ bắn#{{Chargeable}} Nước mắt được sạc và thả ra theo kiểu tấn công súng ngắn"}, -- Monstro's Lung
	[230] = {"230", "Abaddon", "↑ {{Speed}} +0.2 Tốc độ#↑ {{Damage}} +1.5 Sát thương#{{BlackHeart}} Chuyển tất cả hộp tim thành Trái tim Đen#{{BlackHeart}} +2 Trái tim Đen#{{Fear}} 15% cơ hội bắn nước mắt gây sợ"}, -- Abaddon
	[232] = {"232", "Stop Watch", "↑ {{Speed}} +0.3 Tốc độ#{{Slow}} Kẻ địch bị chậm vĩnh viễn xuống 80% tốc độ tấn công và di chuyển"}, -- Stop Watch
	[233] = {"233", "Tiny Planet", "↑ {{Range}} +6.5 Tầm bắn#Nước mắt xuyên tường#Nước mắt của Isaac xoay quanh Isaac"}, -- Tiny Planet
	[245] = {"245", "20/20", "↓ {{Damage}} x0.8 Hệ số sát thương#Isaac bắn 2 nước mắt cùng lúc"}, -- 20/20
	[248] = {"248", "Hive Mind", "Nhện xanh và ruồi xanh gây sát thương gấp đôi#bạn đồng hành nhện và ruồi trở nên mạnh hơn"}, -- Hive Mind
	[253] = {"253", "Magic Scab", "↑ {{Heart}} +1 Máu#↑ {{Luck}} +1 May mắn#{{HealingRed}} Hồi 1 trái tim"}, -- Magic Scab
	[254] = {"254", "Blood Clot", "↑ {{Damage}} +1 Sát thương cho mắt trái#↑ {{Range}} +2.75 Tầm bắn cho mắt trái"}, -- Blood Clot
	[256] = {"256", "Hot Bombs", "{{Bomb}} +5 Bom#{{Burning}} Bom của Isaac gây sát thương tiếp xúc#{{Burning}} Bom của Isaac để lại ngọn lửa nơi chúng nổ#{{Burning}} Miễn nhiễm với lửa (trừ đạn lửa)"}, -- Hot Bombs
	[261] = {"261", "Proptosis", "↑ {{Damage}} +0.5 Sát thương#↓ Nước mắt gây ít sát thương hơn khi bay xa hơn#Nước mắt gây 3x sát thương ở cự ly gần và không có sát thương sau 0.8 giây"}, -- Proptosis
	[262] = {"262", "Missing Page 2", "{{BlackHeart}} +1 Trái tim Đen#Nhận sát thương xuống còn 1 trái tim gây sát thương cho tất cả kẻ địch trong phòng#{{Collectible35}} Trái tim Đen và hiệu ứng kiểu Necronomicon gây gấp đôi sát thương"}, -- Missing Page 2
	[263] = {"263", "Clear Rune", "{{Rune}} Tạo 1 rune khi nhặt#{{Rune}} Kích hoạt hiệu ứng của rune Isaac đang giữ mà không sử dụng nó"}, -- Clear Rune (Repentance item)
	[264] = {"264", "Smart Fly", "Vệ tinh#Tấn công kẻ địch khi Isaac nhận sát thương#Gây 6.5 sát thương tiếp xúc mỗi giây"}, -- Smart Fly
	[272] = {"272", "BBF", "Tạo ruồi nổ thân thiện#Vụ nổ gây 100 sát thương#{{Warning}} Vụ nổ có thể làm tổn thương Isaac"}, -- BBF
	[273] = {"273", "Bob's Brain", "Lao theo hướng Isaac đang bắn#Nổ khi trúng kẻ địch#{{Poison}} Vụ nổ gây 100 sát thương và gây độc cho kẻ địch#{{Warning}} Vụ nổ có thể làm tổn thương Isaac"}, -- Bob's Brain
	[274] = {"274", "Best Bud", "Nhận sát thương tạo một vệ tinh tầm trung trong phòng#Nó gây 150 sát thương tiếp xúc mỗi giây"}, -- Best Bud
	[275] = {"275", "Lil Brimstone", "{{Chargeable}} bạn đồng hành sạc và bắn một tia máu {{Collectible118}}#Tia gây 24 sát thương trong 0.63 giây"}, -- Lil Brimstone
	[276] = {"276", "Isaac's Heart", "Isaac trở nên bất tử#Tạo một bạn đồng hành trái tim đi theo Isaac#Trái tim sạc khi Isaac bắn và thả một loạt nước mắt khi dừng bắn#{{Warning}} Nếu bạn đồng hành trái tim bị trúng, Isaac nhận sát thương"}, -- Isaac's Heart
	[278] = {"278", "Dark Bum", "{{Heart}} Nhặt Trái tim Đỏ gần đó#Tạo Trái tim Đen, rune, lá bài, viên thuốc hoặc nhện cho mỗi 1.5 Trái tim Đỏ nhặt được"}, -- Dark Bum
	[280] = {"280", "Sissy Longlegs", "Ngẫu nhiên tạo nhện xanh trong phòng có kẻ địch#{{Charm}} Mê hoặc kẻ địch khi tiếp xúc"}, -- Sissy Longlegs
	[283] = {"283", "D100", "Nhân đôi 1 vật phẩm nhặt trong phòng#Đổi lại tốc độ, nước mắt, sát thương, tầm bắn và vật phẩm bị động của Isaac#Đổi lại tất cả vật phẩm trên bệ, vật phẩm nhặt và đá trong phòng#Khởi động lại phòng, hồi sinh tất cả kẻ địch và làm chúng thoái hóa"}, -- D100
	[285] = {"285", "D10", "Làm thoái hóa tất cả kẻ địch trong phòng#Ví dụ, tất cả Ruồi Đỏ trở thành Ruồi Đen"}, -- D10
	[286] = {"286", "Blank Card", "Kích hoạt hiệu ứng của lá bài Isaac đang giữ mà không sử dụng nó"}, -- Blank Card
	[287] = {"287", "Book of Secrets", "Đánh dấu đá nhuộm và không gian bò trong phòng#{{Timer}} Nhận một trong các hiệu ứng sau cho tầng:#{{Collectible54}} Bản đồ Kho báu#{{Collectible21}} La bàn#{{Collectible246}} Bản đồ Xanh#Chỉ cấp hiệu ứng chưa có#{{Collectible76}} Nếu đã có tất cả hiệu ứng, cấp Tầm nhìn X-quang"}, -- Book of Secrets
	[288] = {"288", "Box of Spiders", "Tạo 4-8 con nhện xanh"}, -- Box of Spiders
	[289] = {"289", "Red Candle", "Ném một ngọn lửa đỏ#Nó gây sát thương tiếp xúc, chặn nước mắt kẻ địch, và biến mất khi đã gây sát thương hoặc chặn đạn 4 lần hoặc sau 10 giây"}, -- Red Candle
	[291] = {"291", "Flush!", "Biến tất cả kẻ địch không phải Boss thành phân#Tiêu diệt ngay lập tức kẻ địch phân và Boss phân#Dập tắt lò sưởi và lấp đầy phòng bằng nước#Biến hố dung nham thành mặt đất có thể đi lại"}, -- Flush!
	[292] = {"292", "Satanic Bible", "{{BlackHeart}} +1 Trái tim Đen#{{DevilRoom}} Sử dụng vật phẩm trước trận đấu Boss khiến phần thưởng Boss trở thành giao dịch quỷ#Mua các giao dịch quỷ này có hậu quả tương tự như trong Phòng Quỷ#Không ảnh hưởng đến vật phẩm trên bệ ở tầng The Void"}, -- Satanic Bible
	[293] = {"293", "Head of Krampus", "{{Collectible118}} Bắn tia máu 4 hướng#Mỗi tia gây 200 sát thương trong 1.33 giây"}, -- Head of Krampus
	[294] = {"294", "Butter Bean", "Đẩy lùi kẻ địch và đạn gần đó#Kẻ địch bị đẩy vào chướng ngại vật nhận 10 sát thương"}, -- Butter Bean
	[295] = {"295", "Magic Fingers", "Gây 2x sát thương của Isaac + 10 cho tất cả kẻ địch trong phòng#{{Coin}} Tốn 1 đồng xu"}, -- Magic Fingers
	[296] = {"296", "Converter", "{{Heart}} Chuyển 1 Trái tim Linh hồn hoặc Đen thành 1 hộp tim"}, -- Converter
	-- NOTE FOR LOCALIZERS: There is code to highlight the text of your current floor
	-- FOR it to work, only use line breaks or semicolons to separate floor details, and use the same order as English
	[297] = {"297", "Pandora's Box", "{{NoLB}} Tạo phần thưởng dựa trên tầng:#B1: 2{{SoulHeart}}; B2: 2{{Bom}} + 2{{Key}}#{{NoLB}}C1: Vật phẩm Boss; C2: C1 + 2{{SoulHeart}}#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Vật phẩm Boss#W2: {{Collectible33}} Kinh Thánh#???/Void: Không có gì#Sheol: Vật phẩm Quỷ + 1{{BlackHeart}}#Cathe: Vật phẩm Thiên thần + 1{{EternalHeart}}#{{NoLB}}Dark Room: Mở khóa {{Collectible523}} Moving Box#Chest: 1{{Coin}}#Home: {{Collectible580}} Chìa khóa Đỏ"}, -- Pandora's Box
	[300] = {"300", "Aries", "↑ {{Speed}} +0.25 Tốc độ#Di chuyển trên 0.85 tốc độ khiến Isaac miễn nhiễm sát thương tiếp xúc và gây 25 sát thương cho kẻ địch"}, -- Aries
	[307] = {"307", "Capricorn", "↑ {{Heart}} +1 Máu#↑ {{Speed}} +0.1 Tốc độ#↑ {{Tears}} +0.5 Tốc độ bắn#↑ {{Damage}} +0.5 Sát thương#↑ {{Range}} +0.75 Tầm bắn#+1 {{Coin}} đồng xu, {{Bomb}} bom và {{Key}} chìa khóa#{{HealingRed}} Hồi 1 trái tim"}, -- Capricorn
	[308] = {"308", "Aquarius", "Isaac để lại vệt chất lỏng#{{Damage}} Chất lỏng gây 66% sát thương của Isaac mỗi giây và thừa hưởng hiệu ứng nước mắt của Isaac"}, -- Aquarius
	[309] = {"309", "Pisces", "↑ {{Tears}} +0.5 Tốc độ bắn#↑ {{Tearsize}} +0.12 Kích thước nước mắt#Tăng độ đẩy lùi của nước mắt"}, -- Pisces
	[310] = {"310", "Eve's Mascara", "↑ {{Damage}} x2 Hệ số sát thương#↓ {{Tears}} x0.66 Hệ số nước mắt#↓ {{Shotspeed}} -0.5 Tốc độ đạn"}, -- Eve's Mascara
	[314] = {"314", "Thunder Thighs", "↑ {{Heart}} +1 Máu#↓ {{Speed}} -0.4 Tốc độ#{{HealingRed}} Hồi 1 trái tim#Isaac có thể phá đá bằng cách đi vào chúng"}, -- Thunder Thighs
	[315] = {"315", "Strange Attractor", "Nước mắt của Isaac thu hút kẻ địch, vật phẩm nhặt và trang sức#Hiệu ứng thu hút mạnh hơn ở cuối đường bay của nước mắt"}, -- Strange Attractor
	[316] = {"316", "Cursed Eye", "Sóng nước mắt sạc 5 phát#{{Warning}} Nhận sát thương khi đang sạc một phần sẽ dịch chuyển Isaac đến phòng ngẫu nhiên"}, -- Cursed Eye
	[319] = {"319", "Cain's Other Eye", "Bắn nước mắt theo hướng ngẫu nhiên với cùng hiệu ứng như Isaac#{{Damage}} Gây 75% sát thương của Isaac"}, -- Cain's Other Eye
	[320] = {"320", "???'s Only Friend", "Ruồi điều khiển được#Gây 15 sát thương tiếp xúc mỗi giây"}, -- ???'s Only Friend
	[323] = {"323", "Isaac's Tears", "Bắn 8 nước mắt theo mọi hướng#Nước mắt sao chép hiệu ứng nước mắt của Isaac, cộng thêm 5 sát thương#Sạc lại bằng cách bắn nước mắt"}, -- Isaac's Tears
	[325] = {"325", "Scissors", "{{Timer}} Đầu của Isaac biến thành bạn đồng hành cố định trong phòng#Cơ thể được điều khiển riêng và phun nước mắt máu theo hướng Isaac đang bắn"}, -- Scissors
	[326] = {"326", "Breath of Life", "Giữ nút SỬ DỤNG làm trống thanh sạc#Isaac tạm thời bất tử khi thanh sạc trống#Isaac triệu hồi tia sáng khi tiếp xúc với kẻ địch khi bất tử#Nếu chặn sát thương đúng thời điểm, bắn tia thánh 4 hướng và nhận lá chắn ngắn#{{Warning}} Giữ quá lâu gây sát thương cho Isaac"}, -- Breath of Life
	[328] = {"328", "The Negative", "↑ {{Damage}} +1 Sát thương#Nhận sát thương ở nửa Trái tim Đỏ hoặc không có gây sát thương cho tất cả kẻ địch trong phòng"}, -- The Negative
	[330] = {"330", "Soy Milk", "↑ {{Tears}} x5.5 Hệ số tốc độ bắn#↓ {{Damage}} x0.2 Hệ số sát thương#↓ {{Tearsize}} -0.3 Kích thước nước mắt#Giảm mạnh độ đẩy lùi"}, -- Soy Milk
	[331] = {"331", "Godhead", "↑ {{Damage}} +0.5 Sát thương#↓ {{Tears}} -0.3 Nước mắt#↓ {{Shotspeed}} -0.3 Tốc độ đạn#Nước mắt tự dẫn đường#Nước mắt có hào quang gây 60 sát thương mỗi giây"}, -- Godhead
	[336] = {"336", "Dead Onion", "↑ {{Tearsize}} +0.22 Kích thước nước mắt#↓ {{Range}} -1.5 Tầm bắn#↓ {{Shotspeed}} -0.4 Tốc độ đạn#Nước mắt xuyên thấu + xuyên tường"}, -- Dead Onion
	[339] = {"339", "Safety Pin", "↑ {{Range}} +2.5 Tầm bắn#↑ {{Shotspeed}} +0.16 Tốc độ đạn#{{BlackHeart}} +1 Trái tim Đen"}, -- Safety Pin
	[342] = {"342", "Blue Cap", "↑ {{Heart}} +1 Máu#↑ {{Tears}} +0.7 Nước mắt#↓ {{Shotspeed}} -0.16 Tốc độ đạn#{{HealingRed}} Hồi 1 trái tim"}, -- Blue Cap
	[344] = {"344", "Match Book", "{{BlackHeart}} +1 Trái tim Đen#{{Bomb}} Tạo 3 bom#{{Trinket41}} Tạo Gậy Diêm"}, -- Match Book
	[345] = {"345", "Synthoil", "↑ {{Damage}} +1 Sát thương#↑ {{Range}} +2.5 Tầm bắn"}, -- Synthoil
	[346] = {"346", "A Snack", "↑ {{Heart}} +1 Máu#{{HealingRed}} Hồi 1 trái tim"}, -- A Snack
	[349] = {"349", "Wooden Nickel", "{{Coin}} 59% cơ hội tạo một đồng xu ngẫu nhiên"}, -- Wooden Nickel
	[352] = {"352", "Glass Cannon", "{{Damage}} Bắn một nước mắt xuyên thấu + xuyên tường lớn gây 10x sát thương của Isaac#{{Warning}} Khi cầm, nhận sát thương:#↓ Loại bỏ thêm 2 trái tim máu#↓ Làm hỏng khẩu pháo trong vài phòng#↑ {{Range}} +1.5 Tầm bắn và để lại vệt máu trong phòng#Sát thương thêm không thể giết Isaac#Tự gây sát thương không kích hoạt hiệu ứng"}, -- Glass Cannon
	[354] = {"354", "Crack Jacks", "↑ {{Heart}} +1 Máu#{{HealingRed}} Hồi 1 trái tim#{{Trinket}} Tạo một món trang sức"}, -- Crack Jacks
	[355] = {"355", "Mom's Pearls", "↑ {{Range}} +2.5 Tầm bắn#↑ {{Luck}} +1 May mắn#{{SoulHeart}} +1 Trái tim Linh hồn"}, -- Mom's Pearls
	[360] = {"360", "Incubus", "Bắn nước mắt với cùng hiệu ứng như Isaac#{{Damage}} Gây 75% sát thương của Isaac"}, -- Incubus
	[365] = {"365", "Lost Fly", "Di chuyển dọc theo tường/chướng ngại vật trong phòng#Gây 30 sát thương tiếp xúc mỗi giây#Kẻ địch gần đó nhắm vào con ruồi"}, -- Lost Fly
	[366] = {"366", "Scatter Bombs", "{{Bomb}} +5 Bom#Bom của Isaac phân tán thành 4-5 bom nhỏ"}, -- Scatter Bombs
	[367] = {"367", "Sticky Bombs", "{{Bomb}} +5 Bom#{{Slow}} Bom của Isaac dính vào kẻ địch và để lại chất lỏng trắng làm chậm#Giết kẻ địch bằng bom tạo nhện xanh"}, -- Sticky Bombs
	[368] = {"368", "Epiphora", "↑ {{Tears}} Bắn theo một hướng dần tăng tốc độ bắn tối đa 200% và giảm độ chính xác"}, -- Epiphora
	[369] = {"369", "Continuum", "↑ {{Range}} +3 Tầm bắn#Nước mắt xuyên tường#Nước mắt có thể đi qua một bên màn hình và xuất hiện ở bên kia"}, -- Continuum
	[370] = {"370", "Mr. Dolly", "↑ {{Tears}} +0.7 Nước mắt#↑ {{Range}} +2.5 Tầm bắn#{{UnknownHeart}} Tạo 3 trái tim ngẫu nhiên"}, -- Mr. Dolly
	[374] = {"374", "Holy Light", "10% cơ hội bắn nước mắt thánh, tạo tia sáng khi trúng#{{Luck}} 50% cơ hội ở 9 may mắn#{{Damage}} Tia sáng gây 3x sát thương của Isaac"}, -- Holy Light
	[375] = {"375", "Host Hat", "Miễn nhiễm với vụ nổ và vật thể rơi#25% cơ hội phản đạn kẻ địch"}, -- Host Hat
	[376] = {"376", "Restock", "Mua vật phẩm từ Cửa hàng sẽ tái nhập hàng ngay lập tức#Vật phẩm tái nhập tăng giá mỗi lần"}, -- Restock
	[380] = {"380", "Pay To Play", "{{Coin}} +5 Đồng xu#Các khối, cửa và rương khóa phải mở bằng đồng xu thay vì chìa khóa"}, -- Pay To Play
	[382] = {"382", "Friendly Ball", "Có thể ném vào kẻ địch để bắt chúng#Sử dụng vật phẩm sau khi bắt kẻ địch tạo ra chúng như một bạn đồng hành thân thiện#Đi qua quả bóng sau khi bắt sẽ sạc lại ngay lập tức"}, -- Friendly Ball
	[384] = {"384", "Lil Gurdy", "{{Chargeable}} Lao và nảy quanh phòng với tốc độ dựa trên mức sạc#Gây 5-20 sát thương tiếp xúc mỗi lần va chạm tùy vào tốc độ"}, -- Lil Gurdy
	[386] = {"386", "D12", "Đổi lại bất kỳ chướng ngại vật nào thành chướng ngại vật ngẫu nhiên khác (ví dụ: phân, chậu, TNT, phân đỏ, khối đá, v.v.)#Cơ hội nhỏ đổi chướng ngại vật thành nút, công tắc chết, không gian bò hoặc cửa sập"}, -- D12
	[389] = {"389", "Rune Bag", "{{Rune}} Tạo một rune ngẫu nhiên hoặc Đá Linh hồn mỗi 7-8 phòng"}, -- Rune Bag
	[391] = {"391", "Betrayal", "Kẻ địch có thể bị trúng đạn của nhau và bắt đầu nội chiến"}, -- Betrayal
	[393] = {"393", "Serpent's Kiss", "{{Poison}} 15% cơ hội bắn nước mắt độc#{{Poison}} Gây độc cho kẻ địch khi tiếp xúc#{{BlackHeart}} Kẻ địch bị giết bởi độc tiếp xúc có cơ hội thả Trái tim Đen khi chết"}, -- Serpent's Kiss
	[394] = {"394", "Marked", "↑ {{Tears}} +0.7 Nước mắt#↑ {{Range}} +3 Tầm bắn#Isaac tự động bắn nước mắt vào một mục tiêu đỏ di động trên mặt đất#bạn đồng hành cũng bắn về phía mục tiêu#Bạn có thể ngừng bắn và đặt lại vị trí mục tiêu bằng nút Thả ({{ButtonRT}})"}, -- Marked
	[395] = {"395", "Tech X", "Nước mắt của Isaac được thay bằng một vòng laze có thể sạc#Kích thước và sát thương vòng tăng tối đa 100% theo thời gian sạc"}, -- Tech X
	[397] = {"397", "Tractor Beam", "↑ {{Tears}} +1 Tốc độ bắn#↑ {{Range}} +2.5 Tầm bắn#↑ {{Shotspeed}} +0.16 Tốc độ đạn#Nước mắt của Isaac luôn di chuyển dọc theo một tia sáng phía trước Isaac"}, -- Tractor Beam
	[399] = {"399", "Maw of the Void", "{{Chargeable}} Bắn nước mắt trong 2.35 giây và thả nút bắn tạo một vòng brimstone đen quanh Isaac#Nó gây 30x sát thương của Isaac trong 2 giây"}, -- Maw of the Void
	[401] = {"401", "Explosivo", "25% cơ hội bắn nước mắt dính#Nước mắt dính lớn lên và nổ sau vài giây, gây sát thương của Isaac +60"}, -- Explosivo
	[404] = {"404", "Farting Baby", "Chặn đạn#Khi bị trúng, 10% cơ hội đánh rắm và {{Charm}} mê hoặc, {{Poison}} gây độc hoặc đẩy lùi kẻ địch#Những cái rắm gây 5-6 sát thương"}, -- Farting Baby
	[405] = {"405", "GB Bug", "{{Throwable}} Có thể ném (nhấn đúp phím bắn)#Đổi lại kẻ địch và vật phẩm nhặt mà nó tiếp xúc"}, -- GB Bug
	[407] = {"407", "Purity", "↑ Tăng một chỉ số của Isaac tùy thuộc vào màu sắc của hào quang#Nhận sát thương loại bỏ hiệu ứng, và cấp hiệu ứng mới ở phòng tiếp theo#{{ColorYellow}}Vàng{{CR}} = ↑ {{Speed}} +0.5 Tốc độ#{{ColorBlue}}Xanh dương{{CR}} = ↑ {{Tears}} +2 Tốc độ bắn#{{ColorRed}}Đỏ{{CR}} = ↑ {{Damage}} +4 Sát thương#{{ColorOrange}}Cam{{CR}} = ↑ {{Range}} +3 Tầm bắn"}, -- Purity
	[408] = {"408", "Athame", "25% cơ hội cho một vòng brimstone đen xuất hiện quanh kẻ địch bị giết#Nó gây 30x sát thương của Isaac trong 2 giây#{{Luck}} +2.5% cơ hội mỗi may mắn"}, -- Athame
	[415] = {"415", "Crown Of Light", "{{SoulHeart}} +2 Trái tim Linh hồn#Nếu Isaac không có hộp tim bị tổn thương:#↑ {{Damage}} x2 Hệ số sát thương#↓ {{Shotspeed}} -0.3 Tốc độ đạn#Nhận bất kỳ sát thương nào loại bỏ hiệu ứng trong phòng"}, -- Crown Of Light
	[416] = {"416", "Deep Pockets", "{{Coin}} Nếu dọn phòng không có phần thưởng, tạo 1-3 đồng xu#{{Coin}} Tăng giới hạn đồng xu lên 999"}, -- Deep Pockets
	[417] = {"417", "Succubus", "Bay quanh phòng bao quanh bởi hào quang gây sát thương gây 7.5-10 sát thương mỗi giây#↑ {{Damage}} x1.5 Hệ số sát thương khi đứng trong hào quang"}, -- Succubus
	[419] = {"419", "Teleport 2.0", "Dịch chuyển Isaac đến một phòng chưa được dọn#Thứ tự ưu tiên: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{Planetarium}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"}, -- Teleport 2.0
	[421] = {"421", "Kidney Bean", "{{Charm}} Mê hoặc tất cả kẻ địch ở gần"}, -- Kidney Bean
	[422] = {"422", "Glowing Hourglass", "Đưa Isaac trở lại phòng trước đó và đảo ngược tất cả hành động đã thực hiện trong phòng sử dụng vật phẩm#Hồi ngược có thể sử dụng ba lần mỗi tầng#{{Collectible66}} Hoạt động như Đồng hồ Cát khi hết lượt, làm chậm kẻ địch trong 8 giây"}, -- Glowing Hourglass
	[426] = {"426", "Obsessed Fan", "Bắt chước chuyển động của Isaac sau 0.66 giây#Gây 30 sát thương tiếp xúc mỗi giây"}, -- Obsessed Fan
	[430] = {"430", "Papa Fly", "Bắt chước chuyển động của Isaac sau 0.66 giây#{{Damage}} Bắn nước mắt vào kẻ địch gần đó gây sát thương của Isaac"}, -- Papa Fly
	[431] = {"431", "Multidimensional Baby", "Bắt chước chuyển động của Isaac sau 0.66 giây#Nước mắt đi qua nó được nhân đôi và tăng tầm bắn + tốc độ bắn"}, -- Multidimensional Baby
	[432] = {"432", "Glitter Bombs", "{{Bomb}} +5 Bom#{{Charm}} Bom có 63% cơ hội thả vật phẩm nhặt ngẫu nhiên và 15% cơ hội mê hoặc kẻ địch khi nổ#Cơ hội thả vật phẩm giảm 1% cho mỗi lần thả trong tầng này"}, -- Glitter Bombs
	[433] = {"433", "My Shadow", "Một cái bóng nhỏ đi theo Isaac#{{Timer}} Khi kẻ địch chạm vào bóng, một con sạc đen thân thiện xuất hiện trong phòng#Con sạc gây 8.7 sát thương mỗi lần đánh"}, -- My Shadow
	[437] = {"437", "D7", "Khởi động lại phòng và hồi sinh tất cả kẻ địch#Có thể dùng để nhận nhiều phần thưởng dọn phòng từ một phòng"}, -- D7
	[440] = {"440", "Kidney Stone", "Isaac thỉnh thoảng ngừng bắn và sạc một đòn tấn công thả ra một loạt nước mắt và một viên sỏi thận"}, -- Kidney Stone
	[442] = {"442", "Dark Prince's Crown", "Khi ở 1 Trái tim Đỏ đầy:#↑ {{Tears}} +2 Tốc độ bắn#↑ {{Range}} +1.5 Tầm bắn#↑ {{Shotspeed}} +0.2 Tốc độ đạn"}, -- Dark Prince's Crown
	[444] = {"444", "Lead Pencil", "Isaac bắn một loạt nước mắt mỗi 15 nước mắt"}, -- Lead Pencil
	[448] = {"448", "Shard of Glass", "Khi nhận sát thương:#{{Heart}} 25% cơ hội tạo Trái tim Đỏ#{{BleedingOut}} Isaac chảy máu, phun nước mắt theo hướng đang bắn#Chảy máu gây nửa Trái tim Đỏ sát thương mỗi 20 giây#Chảy máu dừng lại nếu hồi Trái tim Đỏ, hết Trái tim Đỏ, hoặc sát thương tiếp theo sẽ giết Isaac"}, -- Shard of Glass
	[450] = {"450", "Eye of Greed", "{{Damage}} Mỗi 20 nước mắt, Isaac bắn một nước mắt đồng xu gây x1.5 +10 sát thương#Kẻ địch trúng đồng xu bị hóa đá và biến thành vàng#{{Coin}} Giết kẻ địch vàng thả 1-3 đồng xu#{{Warning}} Bắn nước mắt đồng xu tốn 1 đồng xu"}, -- Eye of Greed
	[451] = {"451", "Tarot Cloth", "{{Card}} Tạo một lá bài#{{Card}} Hiệu ứng lá bài Tarot được nhân đôi hoặc tăng cường"}, -- Tarot Cloth
	[453] = {"453", "Compound Fracture", "↑ {{Range}} +1.5 Tầm bắn#Nước mắt vỡ thành 1-3 mảnh xương nhỏ khi va chạm bất cứ thứ gì"}, -- Compound Fracture
	[455] = {"455", "Dad's Lost Coin", "↑ {{Range}} +2.5 Tầm bắn#{{Luck}} Tạo một Đồng xu May mắn"}, -- Dad's Lost Coin
	[456] = {"456", "Midnight Snack", "↑ {{Heart}} +1 Máu#{{HealingRed}} Hồi 1 trái tim"}, -- Midnight Snack
	[459] = {"459", "Sinus Infection", "20% cơ hội bắn một cục nước mũi dính#{{Damage}} Nước mũi gây sát thương của Isaac mỗi giây và dính trong 10 giây#{{Luck}} Không bị ảnh hưởng bởi may mắn"}, -- Sinus Infection
	[462] = {"462", "Eye of Belial", "↑ {{Range}} +1.5 Tầm bắn#Nước mắt xuyên thấu#Trúng kẻ địch làm nước mắt tự dẫn đường và tăng gấp đôi sát thương"}, -- Eye of Belial
	[464] = {"464", "Glyph of Balance", "{{SoulHeart}} +2 Trái tim Linh hồn#Phần thưởng dọn phòng và kẻ địch Quán quân thả vật phẩm nhặt mà Isaac cần nhất"}, -- Glyph of Balance
	[468] = {"468", "Shade", "Bắt chước chuyển động của Isaac sau 0.66 giây#Gây 75 sát thương tiếp xúc mỗi giây#Sau khi gây 666 sát thương, nó được Isaac hấp thụ, tăng sát thương tiếp xúc của Isaac"}, -- Shade
	[472] = {"472", "King Baby", "Các bạn đồng hành khác đi theo nó và tự động bắn vào kẻ địch#Dừng di chuyển khi Isaac bắn#Dịch chuyển về Isaac khi Isaac ngừng bắn"}, -- King Baby
	[474] = {"474", "Broken Glass Cannon", "Sử dụng vật phẩm biến nó trở lại thành Khẩu pháo Thủy tinh"}, -- Broken Glass Cannon
	[476] = {"476", "D1", "Nhân đôi một vật phẩm nhặt ngẫu nhiên trong phòng#Vật phẩm nhặt được nhân đôi có thể không giống với bản gốc"}, -- D1
	[477] = {"477", "Void", "Tiêu thụ tất cả vật phẩm trên bệ trong phòng#Vật phẩm kích hoạt: Hiệu ứng của chúng kích hoạt với mỗi lần sử dụng Void sau này#↑ Vật phẩm bị động cấp hai chỉ số ngẫu nhiên tăng"}, -- Void
	[487] = {"487", "Potato Peeler", "{{EmptyHeart}} Loại bỏ 1 hộp tim để:#↑ {{Damage}} +0.2 Sát thương#{{Collectible73}} Một Khối Thịt#{{Timer}} Nhận trong phòng:#↑ {{Range}} +1.5 Tầm bắn#{{Collectible214}} Để lại vệt chất lỏng máu"}, -- Potato Peeler
	[489] = {"489", "D Infinity", "Có thể hoạt động như bất kỳ vật phẩm xúc xắc nào (trừ {{Collectible723}} Xúc xắc Quay ngược)#Thời gian sạc thay đổi dựa trên xúc xắc cuối cùng sử dụng và cập nhật sau mỗi lần dùng"}, -- D Infinity
	[491] = {"491", "Acid Baby", "{{Pill}} Tạo một viên thuốc ngẫu nhiên mỗi 7 phòng#{{Poison}} Sử dụng viên thuốc gây độc cho tất cả kẻ địch trong phòng"}, -- Acid Baby
	[493] = {"493", "Adrenaline", "↑ {{Damage}} Tăng sát thương cho mỗi hộp tim trống#Càng nhiều hộp tim trống, phần thưởng cho mỗi hộp mới càng lớn"}, -- Adrenaline
	[494] = {"494", "Jacob's Ladder", "Nước mắt tạo tia điện khi va chạm#Tia gây nửa sát thương của Isaac#Tia có thể lan đến tối đa 4 kẻ địch khác"}, -- Jacob's Ladder
	[495] = {"495", "Ghost Pepper", "8% cơ hội bắn ngọn lửa xanh chặn đạn kẻ địch và gây sát thương tiếp xúc#{{Luck}} 50% cơ hội ở 10 may mắn#Ngọn lửa co lại và biến mất sau 2 giây"}, -- Ghost Pepper
	[496] = {"496", "Euthanasia", "3.33% cơ hội bắn kim#{{Luck}} 25% cơ hội ở 13 may mắn#Kim giết kẻ địch thường ngay lập tức, làm chúng vỡ thành 10 nước mắt#{{Damage}} Kim gây 3x sát thương của Isaac với Boss"}, -- Euthanasia
	[497] = {"497", "Camo Undies", "{{Confusion}} Vào phòng ngụy trang Isaac và làm tất cả kẻ địch bị choáng cho đến khi bắn nước mắt#↑ {{Speed}} +0.5 Tốc độ khi ngụy trang#Hủy ngụy trang gây sát thương xung quanh Isaac và tăng nhẹ tốc độ bắn và sát thương trong thời gian ngắn"}, -- Camo Undies
	[500] = {"500", "Sack of Sacks", "Tạo một túi mỗi 7-8 phòng"}, -- Sack of Sacks
	[501] = {"501", "Greed's Gullet", "{{Heart}} +1 Hộp tim cho mỗi 25 đồng xu Isaac có"}, -- Greed's Gullet
	[503] = {"503", "Little Horn", "5% cơ hội bắn nước mắt triệu hồi tay Big Horn#{{Luck}} 20% cơ hội ở 15 may mắn#Tay giết kẻ địch ngay lập tức và gây 36 sát thương cho Boss#Isaac gây 7 sát thương tiếp xúc mỗi giây"}, -- Little Horn
	[504] = {"504", "Brown Nugget", "Tạo một tháp pháo ruồi bắn kẻ địch#Mỗi phát bắn gây 3.5 sát thương"}, -- Brown Nugget
	[506] = {"506", "Backstabber", "{{BleedingOut}} Đánh kẻ địch từ phía sau gây gấp đôi sát thương và gây chảy máu, khiến kẻ địch để lại chất lỏng và nhận sát thương khi di chuyển"}, -- Backstabber
	[507] = {"507", "Sharp Straw", "{{Damage}} Gây sát thương của Isaac + 10% máu tối đa của kẻ địch cho tất cả kẻ địch#{{HalfHeart}} Gây sát thương bằng Ống Hút có thể tạo nửa trái tim"}, -- Sharp Straw
	[508] = {"508", "Mom's Razor", "{{BleedingOut}} Vệ tinh gây chảy máu, khiến kẻ địch nhận sát thương khi di chuyển#{{Damage}} Gây 1.5x sát thương của Isaac mỗi giây"}, -- Mom's Razor
	[509] = {"509", "Bloodshot Eye", "Vệ tinh bắn một nước mắt mỗi 0.33 giây vào kẻ địch gần đó#Gây 3.5 sát thương mỗi nước mắt#Gây 20 sát thương tiếp xúc mỗi giây"}, -- Bloodshot Eye
	[514] = {"514", "Broken Modem", "Làm một số kẻ địch và đạn tạm dừng ngẫu nhiên#Đạn bị dừng biến mất#25% cơ hội nhân đôi phần thưởng dọn phòng"}, -- Broken Modem
	[517] = {"517", "Fast Bombs", "{{Bomb}} +7 Bom#Loại bỏ độ trễ giữa các lần đặt bom#Bom không đẩy lùi nhau"}, -- Fast Bombs
	[522] = {"522", "Telekinesis", "Dừng tất cả đạn kẻ địch đến gần Isaac trong 3 giây và đẩy chúng ra xa sau đó#Đẩy kẻ địch gần đó ra xa trong thời gian hiệu ứng"}, -- Telekinesis
	[523] = {"523", "Moving Box", "Lưu trữ tối đa 10 vật phẩm nhặt và vật phẩm trong phòng hiện tại#Sử dụng vật phẩm lần nữa thả mọi thứ trở lại sàn#Cho phép Isaac di chuyển đồ giữa các phòng"}, -- Moving Box
	[524] = {"524", "Technology Zero", "Nước mắt của Isaac được nối với nhau bằng tia điện#Tia điện gây 4.5x sát thương của Isaac mỗi giây"}, -- Technology Zero
	[531] = {"531", "Haemolacria", "↑ {{Damage}} +1 Sát thương#↑ {{Damage}} x1.5 Hệ số sát thương#↓ {{Tears}} x0.33 Hệ số tốc độ bắn#↓ {{Range}} x0.8 Hệ số tầm bắn#Nước mắt của Isaac bay theo hình vòng cung và vỡ thành nước mắt nhỏ hơn khi va chạm"}, -- Haemolacria
	[543] = {"543", "Hallowed Ground", "Nhận sát thương tạo một phân trắng#Khi ở trong hào quang của phân:#↑ {{Tears}} x2.5 Hệ số tốc độ bắn#↑ {{Damage}} x1.2 Hệ số sát thương#Nước mắt tự dẫn đường#Cơ hội chặn sát thương"}, -- Hallowed Ground
	[549] = {"549", "Brittle Bones", "{{EmptyBoneHeart}} Thay tất cả hộp Trái tim Đỏ của Isaac bằng 6 Trái tim Xương trống#Khi mất một Trái tim Xương:#↑ {{Tears}} +0.4 Tốc độ bắn#Bắn 8 nước mắt xương theo mọi hướng"}, -- Brittle Bones
	[552] = {"552", "Mom's Shovel", "Mở cửa sập xuống tầng tiếp theo#{{LadderRoom}} Tạo không gian bò nếu sử dụng trên ô trang trí (cỏ, đá nhỏ, giấy, đá quý, v.v.)#{{Warning}} Sử dụng xẻng trên đống đất trong \"Dark Room\""}, -- Mom's Shovel
	[553] = {"553", "Mucormycosis", "25% cơ hội bắn nước mắt bào tử dính#{{Luck}} Không bị ảnh hưởng bởi may mắn#{{Poison}} Bào tử nổ sau 2.5 giây, gây sát thương, gây độc cho kẻ địch gần đó và thả thêm bào tử"}, -- Mucormycosis
	[554] = {"554", "2Spooky", "{{Fear}} Làm kẻ địch sợ hãi trong bán kính nhỏ quanh Isaac"}, -- 2Spooky
	[555] = {"555", "Golden Razor", "{{Coin}} +5 đồng xu khi nhặt#{{Timer}} Trả 5 {{Coin}} đồng xu và nhận trong phòng:#↑ {{Damage}} +1.2 Sát thương"}, -- Golden Razor
	[556] = {"556", "Sulfur", "{{Timer}} {{Collectible118}} Brimstone trong phòng#Sử dụng nhiều lần trong một phòng tăng sát thương và kích thước tia"}, -- Sulfur
	[557] = {"557", "Fortune Cookie", "Cấp một trong các phần thưởng sau:#Một lời tiên tri#{{SoulHeart}} Một Trái tim Linh hồn#{{Rune}} Một Rune hoặc Đá Linh hồn#{{Card}} Một lá bài Tarot#{{Trinket}} Một món trang sức"}, -- Fortune Cookie
	[558] = {"558", "Eye Sore", "Cơ hội bắn 1-3 nước mắt thêm theo hướng ngẫu nhiên#{{Luck}} Không bị ảnh hưởng bởi may mắn"}, -- Eye Sore
	[559] = {"559", "120 Volt", "Liên tục phóng điện vào kẻ địch gần đó#{{Damage}} Tia điện gây tối đa 3.75x sát thương của Isaac mỗi giây#Tia có thể lan đến tối đa 4 kẻ địch khác"}, -- 120 Volt
	[560] = {"560", "It Hurts", "{{Timer}} Khi nhận sát thương, nhận trong phòng:#↑ {{Tears}} +1.2 Tốc độ bắn ở lần trúng đầu tiên#↑ {{Tears}} +0.4 Tốc độ bắn cho mỗi lần trúng thêm#Thả một vòng 10 nước mắt quanh Isaac"}, -- It Hurts
	[561] = {"561", "Almond Milk", "↑ {{Tears}} x4 Hệ số tốc độ bắn#↓ {{Damage}} x0.3 Hệ số sát thương#↓ {{Tearsize}} -0.16 Kích thước nước mắt#Nước mắt nhận hiệu ứng trang sức con sâu ngẫu nhiên và một số hiệu ứng vật phẩm"}, -- Almond Milk
	[562] = {"562", "Rock Bottom", "↑ Ngăn chỉ số bị giảm trong suốt lần chạy"}, -- Rock Bottom
	[563] = {"563", "Nancy Bombs", "{{Bomb}} +5 Bom#Bom của Isaac nổ với hiệu ứng ngẫu nhiên"}, -- Nancy Bombs
	[564] = {"564", "A Bar of Soap", "↑ {{Tears}} +0.5 Nước mắt#↑ {{Shotspeed}} +0.2 Tốc độ đạn"}, -- A Bar of Soap
	[565] = {"565", "Blood Puppy", "Đuổi theo kẻ địch#Sau khi giết 15 kẻ địch, nó gây nhiều sát thương hơn, tạo nửa Trái tim Đỏ mỗi 10 lần giết, nhưng cố gắng làm hại Isaac#Sau khi giết 40 kẻ địch, nó gây nhiều sát thương hơn, tạo Trái tim Đỏ đầy, và có thể phá đá#Gây đủ sát thương cho nó khiến nó trở lại giai đoạn đầu tiên"}, -- Blood Puppy
	[566] = {"566", "Dream Catcher", "{{HalfSoulHeart}} +1 Nửa Trái tim Linh hồn khi vào tầng mới#Cảnh chuyển tầng ác mộng tiết lộ trận đấu Boss và vật phẩm Phòng Kho báu của tầng tiếp theo"}, -- Dream Catcher
	[567] = {"567", "Paschal Candle", "↑ {{Tears}} Dọn phòng mà không nhận sát thương tăng +0.4 Tốc độ bắn#Tối đa +2 Tốc độ bắn {{ColorSilver}}(5 phòng){{CR}}"}, -- Paschal Candle
	[568] = {"568", "Divine Intervention", "Nhấn đúp phím bắn tạo một lá chắn#Lá chắn kéo dài 1 giây, đẩy kẻ địch ra xa và phản đạn và tia laze của kẻ địch"}, -- Divine Intervention
	[569] = {"569", "Blood Oath", "{{Warning}} Vào tầng mới rút hết Trái tim Đỏ của Isaac, nhưng tăng tốc độ và sát thương cho mỗi trái tim mất đi#Mỗi nửa trái tim mất đi tính là một lần trúng riêng cho hiệu ứng khi bị đánh"}, -- Blood Oath
	[570] = {"570", "Playdough Cookie", "Mỗi nước mắt của Isaac có màu sắc và hiệu ứng trạng thái khác nhau"}, -- Playdough Cookie
	[571] = {"571", "Orphan Socks", "↑ {{Speed}} +0.3 Tốc độ#{{SoulHeart}} +2 Trái tim Linh hồn#Miễn nhiễm với chất lỏng trên sàn và gai sàn"}, -- Orphan Socks
	[572] = {"572", "Eye of the Occult", "↑ {{Damage}} +1 Sát thương#↑ {{Range}} +2 Tầm bắn#↓ {{Shotspeed}} -0.16 Tốc độ đạn#Nước mắt của Isaac có thể điều khiển giữa không trung"}, -- Eye of the Occult
	[573] = {"573", "Immaculate Heart", "↑ {{Heart}} +1 Máu#↑ {{Damage}} x1.2 Hệ số sát thương#{{HealingRed}} Đầy máu#20% cơ hội bắn thêm một nước mắt xoay quanh xuyên tường"}, -- Immaculate Heart
	[574] = {"574", "Monstrance", "Isaac được bao quanh bởi một hào quang gây sát thương#Kẻ địch càng gần Isaac, hào quang gây càng nhiều sát thương cho chúng"}, -- Monstrance
	[575] = {"575", "The Intruder", "{{Slow}} Chui vào đầu Isaac và bắn 4 nước mắt làm chậm gây 1.5 sát thương#Nhận sát thương có thể khiến nhện rời đầu và đuổi theo kẻ địch"}, -- The Intruder
	[576] = {"576", "Dirty Mind", "Tất cả kẻ địch Phân (nhỏ) đều thân thiện#Phá hủy phân tạo 1-4 Phân#Loại Phân phụ thuộc vào loại phân#Đá có thể được thay bằng phân"}, -- Dirty Mind
	[577] = {"577", "Damocles", "Treo một thanh kiếm phía trên đầu Isaac, nhân đôi tất cả vật phẩm trên bệ#Không nhân đôi vật phẩm có giá hoặc từ rương#{{Warning}} Sau khi nhận bất kỳ sát thương nào, thanh kiếm có cơ hội cực thấp giết Isaac ngay lập tức mỗi khung hình#Hiệu ứng bất tử có thể ngăn cái chết"}, -- Damocles
	[578] = {"578", "Free Lemonade", "Tạo một vũng chất lỏng vàng lớn#Chất lỏng gây 24 sát thương mỗi giây"}, -- Free Lemonade
	[579] = {"579", "Spirit Sword", "Thay vì bắn nước mắt, vung kiếm#{{Damage}} Thanh kiếm gây 3x sát thương của Isaac +3.5 và vung nhanh theo tốc độ nhấn nút bắn#{{Chargeable}} Sạc thực hiện đòn tấn công xoay + bắn đạn#Bắn đạn với mỗi lần vung khi đầy máu"}, -- Spirit Sword
	[580] = {"580", "Red Key", "Tạo một phòng đỏ liền kề với phòng thường, được chỉ định bởi viền cửa#Phòng Đỏ có thể là phòng đặc biệt#{{ErrorRoom}} Vào phòng ngoài bản đồ 13x13 sẽ dịch chuyển Isaac đến phòng I AM ERROR"}, -- Red Key
	[581] = {"581", "Psy Fly", "Đuổi theo và đẩy lùi đạn kẻ địch#Gây 15 sát thương tiếp xúc mỗi giây"}, -- Psy Fly
	[582] = {"582", "Wavy Cap", "↑ {{Tears}} +0.75 Tốc độ bắn#↓ {{Speed}} -0.03 Tốc độ#Làm méo màn hình#Mỗi lần sử dụng cần sạc lâu hơn#Rời hoặc dọn phòng giảm hiệu ứng"}, -- Wavy Cap
	[583] = {"583", "Rocket in a Jar", "{{Bomb}} +5 Bom#Đặt bom trong khi bắn sẽ bắn một tên lửa theo hướng đó thay vì bom"}, -- Rocket in a Jar
	[584] = {"584", "Book of Virtues", "{{AngelChance}} +12.5% Cơ hội Phòng Thiên thần khi cầm#Tạo một vệ tinh wisp bắn nước mắt xuyên tường nhưng có thể bị phá hủy#Có thể kết hợp với vật phẩm kích hoạt thứ hai để tạo wisp đặc biệt#{{AngelRoom}} Biến Phòng Quỷ đầu tiên thành Phòng Thiên thần#{{AngelRoom}} Cho phép Phòng Thiên thần xuất hiện sau khi nhận giao dịch quỷ"}, -- Book of Virtues
	[585] = {"585", "Alabaster Box", "Phải sạc bằng cách nhặt Trái tim Linh hồn, sau đó tạo:#{{SoulHeart}} Ba Trái tim Linh hồn#{{AngelRoom}} Hai vật phẩm Phòng Thiên thần#{{DevilRoom}} Chỉ tạo 2 Trái tim Linh hồn và 1 vật phẩm Thiên thần nếu đã nhận giao dịch quỷ trước đó"}, -- Alabaster Box
	[586] = {"586", "The Stairway", "Tạo một thang trong phòng đầu tiên của mỗi tầng dẫn đến một {{AngelRoom}} Cửa hàng Phòng Thiên thần độc đáo với vật phẩm và vật phẩm nhặt"}, -- The Stairway
	[587] = {"587", "", "<vật phẩm không tồn tại>"},
	[588] = {"588", "Sol", "{{BossRoom}} Tiết lộ vị trí Phòng Boss#{{Timer}} Khi Boss tầng bị đánh bại, nhận trong tầng:#↑ {{Damage}} +3 Sát thương#↑ {{Luck}} +1 May mắn#{{Card20}} Hiệu ứng Mặt Trời#{{Battery}} Sạc đầy vật phẩm kích hoạt#{{CurseBlind}} Xóa bỏ mọi lời nguyền"}, -- Sol
	[589] = {"589", "Luna", "Thêm một {{SecretRoom}} Phòng Bí mật và {{SuperSecretRoom}} Phòng Bí mật Siêu cấp cho mỗi tầng#Tiết lộ một Phòng Bí mật mỗi tầng#{{Timer}} Phòng Bí mật chứa một tia sáng cấp trong tầng:#↑ {{Tears}} +0.5 Tốc độ bắn#↑ {{Tears}} Thêm +0.5 Tốc độ bắn từ tia đầu tiên mỗi tầng#{{HalfSoulHeart}} Nửa Trái tim Linh hồn"}, -- Luna
	[590] = {"590", "Mercurius", "↑ {{Speed}} +0.4 Tốc độ#Hầu hết các cửa vẫn mở vĩnh viễn"}, -- Mercurius
	[591] = {"591", "Venus", "↑ {{Heart}} +1 Máu#{{HealingRed}} Hồi 1 trái tim#{{Charm}} Mê hoặc kẻ địch gần đó"}, -- Venus
	[592] = {"592", "Terra", "↑ {{Damage}} +1 Sát thương#Thay nước mắt của Isaac bằng đá#Đá gây sát thương biến đổi, có thể phá chướng ngại vật và tăng độ đẩy lùi"}, -- Terra
	[593] = {"593", "Mars", "Nhấn đúp phím di chuyển khiến Isaac lao tới#{{Damage}} Trong lúc lao, Isaac bất tử và gây 4x sát thương của mình +8#{{Timer}} Hồi chiêu 3 giây"}, -- Mars
	[594] = {"594", "Jupiter", "↑ {{EmptyHeart}} +2 Hộp tim trống#↓ {{Speed}} -0.3 Tốc độ#{{HealingRed}} Hồi nửa trái tim#{{Speed}} Tốc độ tăng lên +0.5 khi đứng yên#{{Poison}} Di chuyển thả đám mây độc#{{Poison}} Miễn nhiễm với độc"}, -- Jupiter
	[595] = {"595", "Saturnus", "Vào phòng khiến 7 nước mắt xoay quanh Isaac#Những nước mắt đó kéo dài 13 giây và gây 1.5x sát thương của Isaac +5#Đạn kẻ địch có cơ hội xoay quanh Isaac"}, -- Saturnus
	[596] = {"596", "Uranus", "{{Freezing}} Isaac bắn nước mắt băng làm đóng băng kẻ địch khi chết#Chạm vào kẻ địch bị đóng băng khiến nó trượt đi và nổ thành 10 mảnh băng"}, -- Uranus
	[597] = {"597", "Neptunus", "{{Tears}} Không bắn tích lũy một lượng nước mắt tăng trong 3 giây#Phần thưởng nước mắt giảm khi Isaac bắn"}, -- Neptunus
	[598] = {"598", "Pluto", "↑ {{Tears}} +0.7 Nước mắt#Thu nhỏ đáng kể Isaac, cho phép chen qua các khe hở#Đạn có thể bay qua Isaac"}, -- Pluto
	[599] = {"599", "Voodoo Head", "{{CursedRoom}} Tạo thêm một Phòng Nguyền rủa mỗi tầng#Cải thiện bố cục và phần thưởng Phòng Nguyền rủa#{{Coin}} Tạo một đồng xu trong mỗi Phòng Nguyền rủa"}, -- Voodoo Head
	[600] = {"600", "Eye Drops", "↑ {{Tears}} x1.4 Hệ số tốc độ bắn cho mắt trái"}, -- Eye Drops
	[601] = {"601", "Act of Contrition", "↑ {{Tears}} +0.7 Nước mắt#{{EternalHeart}} +1 Trái tim Vĩnh cửu#{{AngelChance}} Cho phép Phòng Thiên thần xuất hiện ngay cả sau khi nhận giao dịch quỷ#Nhận sát thương Trái tim Đỏ không giảm nhiều cơ hội Phòng Quỷ/Thiên thần"}, -- Act of Contrition
	[602] = {"602", "Member Card", "{{Shop}} Mở một cửa sập trong mỗi Cửa hàng#Cửa sập dẫn đến một cửa hàng dưới lòng đất bán trang sức, rune, lá bài, trái tim đặc biệt và vật phẩm từ bất kỳ nhóm nào"}, -- Member Card
	[603] = {"603", "Battery Pack", "{{Battery}} Tạo 2-4 pin#{{Battery}} Sạc đầy vật phẩm kích hoạt"}, -- Battery Pack
	[604] = {"604", "Mom's Bracelet", "Cho phép Isaac nhặt và ném đá, TNT, phân, Phân thân thiện, Đầu lâu và các chướng ngại vật khác#Cho phép mang chúng giữa các phòng"}, -- Mom's Bracelet
	[605] = {"605", "The Scooper", "↑ {{Damage}} x1.35 Hệ số sát thương cho mắt phải#{{Timer}} Triệu hồi một bạn đồng hành Peeper trong phòng, để lại vệt chất lỏng đỏ và gây 36 sát thương tiếp xúc mỗi giây"}, -- The Scooper
	[606] = {"606", "Ocular Rift", "5% cơ hội bắn nước mắt tạo khe hở nơi chúng hạ cánh#{{Luck}} 20% cơ hội ở 15 may mắn#Khe hở gây 3x sát thương của Isaac mỗi giây và hút kẻ địch, vật phẩm nhặt và đạn gần đó"}, -- Ocular Rift
	[607] = {"607", "Boiled Baby", "Bắn các loạt nước mắt hỗn loạn theo mọi hướng#Gây 3.5 hoặc 5.25 sát thương mỗi nước mắt"}, -- Boiled Baby
	[608] = {"608", "Freezer Baby", "Bắn nước mắt hóa đá gây 3.5 sát thương#{{Freezing}} Đóng băng kẻ địch khi giết chúng"}, -- Freezer Baby
	[609] = {"609", "Eternal D6", "Đổi lại tất cả vật phẩm trên bệ trong phòng#Có 25% cơ hội xóa vật phẩm thay vì đổi lại"}, -- Eternal D6
	[610] = {"610", "Bird Cage", "Nhảy lên kẻ địch gây sát thương đầu tiên cho Isaac trong phòng#Gây 45 sát thương và thả sóng đá#Đuổi theo kẻ địch sau đó với 6.5 sát thương tiếp xúc mỗi giây"}, -- Bird Cage
	[611] = {"611", "Larynx", "Isaac hét lên, gây sát thương và đẩy lùi kẻ địch gần đó#Tiếng hét mạnh hơn khi vật phẩm có nhiều lần sạc hơn"}, -- Larynx
	[612] = {"612", "Lost Soul", "Chết trong một lần trúng và hồi sinh ở đầu tầng tiếp theo#Nếu mang nó sống sót đến tầng tiếp theo, có thể tạo:#{{SoulHeart}} 3 Trái tim Linh hồn#{{EternalHeart}} 2 Trái tim Vĩnh cửu#{{TreasureRoom}} Một vật phẩm Phòng Kho báu#{{AngelRoom}} Một vật phẩm Phòng Thiên thần"}, -- Lost Soul
	[613] = {"613", "", "<vật phẩm không tồn tại>"},
	[614] = {"614", "Blood Bombs", "↑ {{Heart}} +1 Máu#{{HealingRed}} Hồi 4 trái tim#{{HalfHeart}} Nếu Isaac không có bom, có thể đặt một quả bom với giá nửa trái tim#Bom của Isaac để lại chất lỏng đỏ#"}, -- Blood Bombs
	[615] = {"615", "Lil Dumpy", "Đẩy lùi kẻ địch hoặc đạn ngay trước khi Isaac nhận sát thương từ chúng#Cơ hội đẩy lùi đạn gần đó#Cần chạm vào sau khi đẩy lùi để kích hoạt lại"}, -- Lil Dumpy
	[616] = {"616", "Bird's Eye", "8% cơ hội bắn ngọn lửa đỏ chặn đạn kẻ địch và gây sát thương tiếp xúc#{{Luck}} 50% cơ hội ở 10 may mắn#Ngọn lửa biến mất sau khi chặn 4 phát, gây sát thương 4 lần hoặc sau 10 giây"}, -- Bird's Eye
	[617] = {"617", "Lodestone", "{{Magnetize}} 17% cơ hội bắn nước mắt từ hóa#{{Luck}} 100% cơ hội ở 5 may mắn#Kẻ địch bị từ hóa hút vật phẩm nhặt, đạn và kẻ địch gần đó"}, -- Lodestone
	[618] = {"618", "Rotten Tomato", "{{Bait}} 17% cơ hội bắn nước mắt đánh dấu kẻ địch#{{Luck}} 100% cơ hội ở 5 may mắn#Kẻ địch bị đánh dấu bị kẻ địch khác nhắm đến"}, -- Rotten Tomato
	[619] = {"619", "Birthright", "Có hiệu ứng khác nhau cho mỗi nhân vật"}, -- Birthright
	[620] = {"620", "", "<vật phẩm không tồn tại>"},
	[621] = {"621", "Red Stew", "↑ {{Damage}} +21.6 Sát thương#{{HealingRed}} Đầy máu#Sát thương tăng dần mất đi trong 3 phút#Giết kẻ địch khi hiệu ứng đang hoạt động kéo dài thời gian"}, -- Red Stew
	[622] = {"622", "Genesis", "Loại bỏ tất cả vật phẩm và vật phẩm nhặt của Isaac#Dịch chuyển Isaac đến một phòng ngủ với vật phẩm nhặt và rương#Với mỗi vật phẩm bị loại bỏ, Isaac có thể chọn giữa 3 vật phẩm từ cùng nhóm#Rời phòng ngủ đưa Isaac đến tầng tiếp theo"}, -- Genesis
	[623] = {"623", "Sharp Key", "{{Key}} +5 Chìa khóa#Ném một trong những chìa khóa của Isaac theo hướng bắn#Chìa khóa ném gây sát thương, phá chướng ngại vật và mở cửa#Kẻ địch bị giết bằng chìa khóa có thể thả nội dung của rương, bao gồm vật phẩm"}, -- Sharp Key
	[624] = {"624", "Booster Pack", "{{Card}} Tạo 5 lá bài ngẫu nhiên"}, -- Booster Pack
	[625] = {"625", "Mega Mush", "Kích cỡ Isaac khổng lồ và cấp:#↑ {{Damage}} x4 Hệ số sát thương#↑ {{Range}} +2 Tầm bắn#↓ {{Tears}} -1.9 Nước mắt#Bất tử#Khả năng nghiền nát kẻ địch và chướng ngại vật#{{Timer}} Kéo dài 30 giây và tồn tại giữa các phòng và tầng"}, -- Mega Mush
	[626] = {"626", "Knife Piece 1", "Biến thành một con dao ném được gây 25 sát thương khi kết hợp với {{Collectible627}} Mảnh Dao 2#Con dao có thể mở một cánh cửa bằng thịt"}, -- Knife Piece 1
	[627] = {"627", "Knife Piece 2", "Biến thành một con dao ném được gây 25 sát thương khi kết hợp với {{Collectible626}} Mảnh Dao 1#Con dao có thể mở một cánh cửa bằng thịt"}, -- Knife Piece 2
	[628] = {"628", "Death Certificate", "Dịch chuyển Isaac đến một tầng chứa mọi vật phẩm trong trò chơi#Chọn một vật phẩm từ tầng này sẽ dịch chuyển Isaac trở lại phòng ban đầu"}, -- Death Certificate
	[629] = {"629", "Bot Fly", "Bắn nước mắt có lá chắn để phá hủy đạn kẻ địch#Gây 3 sát thương tiếp xúc mỗi giây"}, -- Bot Fly
	[630] = {"630", "", "<vật phẩm không tồn tại>"},
	[631] = {"631", "Meat Cleaver", "Chia tất cả kẻ địch trong phòng thành 2 phiên bản nhỏ hơn với 40% máu#Kẻ địch tự nhiên chia đôi (như Envy) nhận đủ sát thương để chia đôi thay vì chết#Gây 25 sát thương cho kẻ địch không thể chia đôi"}, -- Meat Cleaver
	[632] = {"632", "Evil Charm", "↑ {{Luck}} +2 May mắn#Miễn nhiễm với hiệu ứng {{Burning}} cháy, {{Confusion}} choáng, {{Fear}} sợ hãi và {{Poison}} độc"}, -- Evil Charm
	[633] = {"633", "Dogma", "↑ {{Speed}} +0.1 Tốc độ#↑ {{Damage}} +2 Sát thương#Bay được và một lần {{HolyMantleSmall}} Lá chắn Holy Mantle#{{Heart}} Hồi Isaac bằng Trái tim Đỏ và Linh hồn nếu anh ta có ít hơn 6 trái tim"}, -- Dogma
	[634] = {"634", "Purgatory", "Các vết nứt đỏ xuất hiện trên mặt đất trong phòng có kẻ địch#Đi qua các vết nứt triệu hồi ma nổ tự dẫn đường"}, -- Purgatory
	[635] = {"635", "Stitches", "Tạo một bạn đồng hành di chuyển theo hướng Isaac bắn#Khi sử dụng, Isaac đổi chỗ với bạn đồng hành và tạm thời bất tử#Dịch chuyển lên đồ vật có thể gây sát thương hoặc phá hủy chúng"}, -- Stitches
	[636] = {"636", "R Key", "Khởi động lại toàn bộ lần chạy#Giữ tất cả vật phẩm, trang sức, chỉ số và vật phẩm nhặt đã thu thập#Đồng hồ không đặt lại"}, -- R Key
	[637] = {"637", "Knockout Drops", "{{Confusion}} 10% cơ hội bắn một nắm đấm gây choáng và đẩy lùi mạnh#{{Luck}} 100% cơ hội ở 9 may mắn#Kẻ địch nhận sát thương khi bị đẩy vào tường/chướng ngại vật"}, -- Knockout Drops
	[638] = {"638", "Eraser", "Ném một cục tẩy giết kẻ địch ngay lập tức#Ngăn kẻ địch bị xóa xuất hiện trong suốt lần chạy#Gây 15 sát thương cho Boss#Chỉ có thể sử dụng một lần mỗi tầng"}, -- Eraser
	[639] = {"639", "Yuck Heart", "{{RottenHeart}} +1 Trái tim Thối"}, -- Yuck Heart
	[640] = {"640", "Urn of Souls", "Phun một dòng lửa#Giết kẻ địch thêm một lần sạc cho bình"}, -- Urn of Souls
	[641] = {"641", "Akeldama", "Tạo một chuỗi nước mắt phía sau Isaac trong phòng có kẻ địch#Nước mắt gây 3.5 sát thương"}, -- Akeldama
	[642] = {"642", "Magic Skin", "Tạo một vật phẩm từ nhóm vật phẩm của phòng hiện tại#{{BrokenHeart}} Chuyển 1 hộp tim hoặc 1 Trái tim Xương hoặc 2 Trái tim Linh hồn thành Trái tim Vỡ#{{Warning}} Thay thế vật phẩm trong tương lai nếu Isaac không cầm nó {{ColorSilver}}(33% sau 1 lần dùng, 50% sau 2 lần, 100% sau 3 lần)#Cơ hội thấp hơn nếu Da Ma thuật ở trên bệ trong tầng hiện tại"}, -- Magic Skin
	[643] = {"643", "Revelation", "{{SoulHeart}} +2 Trái tim Linh hồn#Bay được#{{Chargeable}} Tia thánh có thể sạc gây sát thương cao#Không thay thế nước mắt của Isaac"}, -- Revelation
	[644] = {"644", "Consolation Prize", "↑ Tăng chỉ số thấp nhất của Isaac trong Tốc độ, Tốc độ bắn, Sát thương và Tầm bắn#Tạo 3 {{Coin}} đồng xu, 1 {{Bomb}} bom hoặc 1 {{Key}} chìa khóa tùy thuộc vào thứ Isaac có ít nhất"}, -- Consolation Prize
	[645] = {"645", "Tinytoma", "Vệ tinh lớn chặn đạn#Gây 3.5 sát thương tiếp xúc mỗi giây#Chia thành các phiên bản nhỏ hơn của chính nó sau khi trúng 3 lần#Các phiên bản nhỏ vỡ thành nhện xanh#Hồi sinh 5 giây sau khi biến mất hoàn toàn"}, -- Tinytoma
	[646] = {"646", "Brimstone Bombs", "{{Bomb}} +5 Bom#{{Collectible118}} Bom của Isaac thả tia máu 4 hướng#Tia không làm tổn thương Isaac"}, -- Brimstone Bombs
	[647] = {"647", "4.5 Volt", "Dọn phòng không còn sạc vật phẩm kích hoạt#Gây sát thương cho kẻ địch từ từ làm đầy thanh sạc#Sát thương cần cho mỗi lần sạc tăng mỗi tầng"}, -- 4.5 Volt
	[648] = {"648", "", "<vật phẩm không tồn tại>"},
	[649] = {"649", "Fruity Plum", "Tự đẩy mình theo đường chéo quanh phòng, bắn nước mắt trên đường đi gây 3 sát thương#Gây 6 sát thương tiếp xúc mỗi giây"}, -- Fruity Plum
	[650] = {"650", "Plum Flute", "{{Timer}} Triệu hồi một Baby Plum thân thiện trong phòng trong 10 giây"}, -- Plum Flute
	[651] = {"651", "Star of Bethlehem", "Từ từ di chuyển từ phòng đầu tiên của tầng đến {{BossRoom}} Phòng Boss#Di chuyển nhanh hơn nếu bạn ở phía trước, và chậm hơn nếu bạn ở phía sau#Đứng trong hào quang của nó cấp:#↑ {{Tears}} x2.5 Hệ số nước mắt#↑ {{Damage}} x1.8 Hệ số sát thương#Nước mắt tự dẫn đường#50% cơ hội bỏ qua sát thương"}, -- Star of Bethlehem
	[652] = {"652", "Cube Baby", "Có thể đá quanh bằng cách đi vào nó#{{Slow}} Làm chậm và gây tối đa 17.5 sát thương tiếp xúc tùy vào tốc độ#{{Freezing}} Đóng băng kẻ địch nó giết"}, -- Cube Baby
	[653] = {"653", "Vade Retro", "Giữ vật phẩm khiến kẻ địch không phải ma sinh ra ma đỏ nhỏ khi chết#Sử dụng vật phẩm khiến các con ma nổ#Sử dụng vật phẩm cũng giết bất kỳ kẻ địch ma nào (bao gồm Boss) có dưới 50% máu"}, -- Vade Retro
	[654] = {"654", "False PHD", "{{BlackHeart}} +1 Trái tim Đen#{{Pill}} Xác định tất cả viên thuốc#Chuyển tất cả thuốc tốt thành thuốc xấu#↑ {{Damage}} Ăn viên thuốc giảm chỉ số tăng +0.6 sát thương#{{BlackHeart}} Ăn các viên thuốc xấu khác tạo Trái tim Đen"}, -- False PHD
	[655] = {"655", "Spin to Win", "Cấp thụ động một vệ tinh chặn đạn kẻ địch và gây 10.5 sát thương tiếp xúc mỗi giây#Sử dụng vật phẩm cấp:#↑ {{Speed}} +0.5 Tốc độ#Tăng tốc độ và sát thương của vệ tinh"}, -- Spin to Win
	[656] = {"656", "Damocles", "Treo một thanh kiếm phía trên đầu Isaac, nhân đôi tất cả vật phẩm trên bệ#Không nhân đôi vật phẩm có giá hoặc từ rương#{{Warning}} Sau khi nhận bất kỳ sát thương nào, thanh kiếm có cơ hội cực thấp giết Isaac ngay lập tức mỗi khung hình#Hiệu ứng bất tử có thể ngăn cái chết"}, -- Damocles (hidden passive version)
	[657] = {"657", "Vasculitis", "Kẻ địch nổ thành nước mắt khi chết, thừa hưởng hiệu ứng nước mắt của Isaac"}, -- Vasculitis
	[658] = {"658", "Giant Cell", "Nhận sát thương tạo một Minisaac#Minisaac đuổi theo và bắn vào kẻ địch gần đó"}, -- Giant Cell
	[659] = {"659", "Tropicamide", "↑ {{Range}} +2.5 Tầm bắn#↑ {{Tearsize}} +0.22 Kích thước nước mắt"}, -- Tropicamide
	[660] = {"660", "Card Reading", "Tạo hai cổng ở phòng đầu tiên của mỗi tầng#Rời phòng làm cổng biến mất#{{Blank}} {{ColorRed}}Đỏ: {{CR}}{{BossRoom}} Phòng Boss#{{Blank}} {{ColorYellow}}Vàng: {{CR}}{{TreasureRoom}} Phòng Kho báu#{{Blank}} {{ColorBlue}}Xanh dương: {{CR}}{{SecretRoom}} Phòng Bí mật"}, -- Card Reading
	[661] = {"661", "Quints", "Giết kẻ địch tạo một bạn đồng hành cố định tại vị trí của nó#Giới hạn tối đa 5 bạn đồng hành"}, -- Quints
	[662] = {"662", "", "<Vật phẩm không tồn tại>"},
	[663] = {"663", "Tooth and Nail", "Bất tử 1 giây mỗi 6 giây#Isaac nhấp nháy ngay trước khi hiệu ứng kích hoạt"}, -- Tooth and Nail
	[664] = {"664", "Binge Eater", "↑ {{Heart}} +1 Máu#{{HealingRed}} Đầy máu#Vật phẩm trên bệ xoay vòng giữa vật phẩm của nó và một món đồ ăn#Nhặt món đồ ăn cấp:#{{HealingRed}} Hồi 2 trái tim#↑ {{Damage}} Tạm thời +3.6 sát thương#↑ 2 chỉ số tăng vĩnh viễn (tùy thuộc vào đồ ăn)#↓ {{Speed}} -0.03 Tốc độ"}, -- Binge Eater
	[665] = {"665", "Guppy's Eye", "Tiết lộ nội dung của {{Chest}} rương, {{GrabBag}} túi, người bán hàng và lò sưởi trước khi mở hoặc phá hủy chúng"}, -- Guppy's Eye
	[666] = {"666", "", "<Vật phẩm không tồn tại>"},
	[667] = {"667", "Strawman", "{{Bomb}} +1 Bom#{{Player14}} Tạo Keeper như một nhân vật thứ hai#Khi Keeper chết, tạo nhện xanh và xóa vĩnh viễn Strawman cùng bất kỳ vật phẩm nào Keeper đã nhặt#{{DevilRoom}} Vật phẩm Phòng Quỷ tốn đồng xu khi Strawman còn sống#{{Warning}} Strawman có thể nhặt vật phẩm cốt truyện"}, -- Strawman
	[668] = {"668", "Dad's Note", "Bắt đầu Hành trình Lên#Trang sức để lại trong {{TreasureRoom}} Phòng Kho báu hoặc {{BossRoom}} Phòng Boss trước đó biến thành {{Card78}} Chìa khóa Nứt"}, -- Dad's Note
	[669] = {"669", "Sausage", "↑ {{Heart}} +1 Máu#↑ {{Speed}} +0.2 Tốc độ#↑ {{Tears}} +0.5 Nước mắt#↑ {{Damage}} +0.5 Sát thương#↑ {{Range}} +2.5 Tầm bắn#↑ {{Shotspeed}} +0.16 Tốc độ đạn#↑ {{Luck}} +1 May mắn#{{HealingRed}} Đầy máu#↑ {{AngelDevilChance}} +6.9% Cơ hội Phòng Quỷ/Thiên thần#↑ {{PlanetariumChance}} +6.9% Cơ hội Phòng Hành tinh"}, -- Sausage
	[670] = {"670", "Options?", "Cho phép Isaac chọn giữa hai phần thưởng dọn phòng khác nhau"}, -- Options?
	[671] = {"671", "Candy Heart", "↑ Hồi máu bằng {{Heart}} Trái tim Đỏ cấp tăng chỉ số ngẫu nhiên vĩnh viễn#{{Heart}} Tạo một Trái tim Đỏ"}, -- Candy Heart
	[672] = {"672", "A Pound of Flesh", "{{DevilRoom}} Vật phẩm Phòng Quỷ tốn đồng xu#{{Shop}} Vật phẩm Cửa hàng tốn trái tim#Vật phẩm tiêu thụ trong Cửa hàng bị bao quanh bởi gai"}, -- A Pound of Flesh
	[673] = {"673", "Redemption", "{{DevilRoom}} Vào tầng mới sau khi ghé Phòng Quỷ và không lấy vật phẩm/vật phẩm nhặt cấp:#↑ {{Damage}} +1 Sát thương#{{SoulHeart}} +1 Trái tim Linh hồn"}, -- Redemption
	[674] = {"674", "Spirit Shackles", "Nhận sát thương chí mạng biến Isaac thành ma bị xích vào cơ thể chết của mình và cho phép tiếp tục chiến đấu với nửa trái tim#Nếu con ma sống sót, Isaac hồi sinh sau 10 giây#Phải sạc lại bằng cách nhặt Trái tim Linh hồn"}, -- Spirit Shackles
	[675] = {"675", "Cracked Orb", "Nhận sát thương:#Mở khóa tất cả cửa khóa trong phòng#Tiết lộ một phòng ngẫu nhiên trên bản đồ#Phá hủy tất cả đá nhuộm và đá không gian bò"}, -- Cracked Orb
	[676] = {"676", "Empty Heart", "{{EmptyHeart}} +1 Hộp tim trống khi ở 1 Trái tim Đỏ hoặc ít hơn khi bắt đầu tầng mới"}, -- Empty Heart
	[677] = {"677", "Astral Projection", "{{Timer}} Nhận sát thương trong phòng chưa dọn cấp trong trận chiến:#Nước mắt xuyên tường#Bay được#Bỏ qua sát thương lần tiếp theo#Dừng thời gian trong 2 giây#Tăng mạnh tốc độ và tốc độ bắn trong 2 giây"}, -- Astral Projection
	[678] = {"678", "C Section", "{{Chargeable}} Thay nước mắt của Isaac bằng đòn tấn công sạc bắn nước mắt thai nhi tự dẫn đường, xuyên tường#{{Damage}} Nước mắt thai nhi gây khoảng 2.8x sát thương của Isaac mỗi giây"}, -- C Section
	[679] = {"679", "Lil Abaddon", "{{Collectible399}} bạn đồng hành sạc và thả ra một vòng Maw of the Void#Nó gây 52.5 sát thương trong 1 giây"}, -- Lil Abaddon
	[680] = {"680", "Montezuma's Revenge", "{{Chargeable}} Bắn sạc lên một tia ngược tầm ngắn gây sát thương cao#Không thay thế nước mắt của Isaac"}, -- Montezuma's Revenge
	[681] = {"681", "Lil Portal", "Gây sát thương tiếp xúc và bay về phía trước#Tiêu thụ vật phẩm nhặt trên đường đi#Mỗi vật phẩm nhặt tiêu thụ tăng kích thước, sát thương và tạo một con ruồi xanh#Tiêu thụ bốn vật phẩm nhặt tạo một cổng đến phòng chưa khám phá"}, -- Lil Portal
	[682] = {"682", "Worm Friend", "Đôi khi chui ra khỏi mặt đất và túm lấy kẻ địch#Kẻ địch bị túm nhận 8 sát thương mỗi giây, bị làm chậm và không thể di chuyển"}, -- Worm Friend
	[683] = {"683", "Bone Spurs", "Kẻ địch tạo mảnh xương khi chết#Xương chặn đạn và gây sát thương tiếp xúc"}, -- Bone Spurs
	[684] = {"684", "Hungry Soul", "Giết kẻ địch có cơ hội tạo một con ma#Ma đuổi theo kẻ địch, gây sát thương tiếp xúc và nổ sau 5 giây#Isaac không nhận sát thương từ vụ nổ"}, -- Hungry Soul
	[685] = {"685", "Jar of Wisps", "Tạo một wisp ngẫu nhiên#Tạo thêm một wisp với mỗi lần sử dụng, tối đa 12"}, -- Jar of Wisps
	[686] = {"686", "Soul Locket", "↑ Nhặt {{SoulHeart}} Trái tim Linh hồn cấp tăng chỉ số ngẫu nhiên vĩnh viễn#{{SoulHeart}} Tạo một Trái tim Linh hồn"}, -- Soul Locket
	[687] = {"687", "Friend Finder", "Tạo một quái vật thân thiện ngẫu nhiên bắt chước chuyển động và tấn công của Isaac"}, -- Friend Finder
	[688] = {"688", "Inner Child", "+1 Mạng#Khi chết:#Hồi sinh Isaac trong cùng phòng với nửa trái tim#↑ {{Speed}} +0.2 Tốc độ#↑ Thu nhỏ kích thước đáng kể"}, -- Inner Child
	[689] = {"689", "Glitched Crown", "Vật phẩm trên bệ nhanh chóng xoay vòng giữa 5 vật phẩm ngẫu nhiên"}, -- Glitched Crown
	[690] = {"690", "Belly Jelly", "Kẻ địch bị đẩy ra khỏi Isaac#50% cơ hội bỏ qua sát thương tiếp xúc#50% cơ hội đẩy lùi đạn kẻ địch"}, -- Belly Jelly
	[691] = {"691", "Sacred Orb", "Ngăn vật phẩm Chất lượng {{Quality0}}/{{Quality1}} xuất hiện#Vật phẩm Chất lượng {{Quality2}} có 33% cơ hội bị đổi lại"}, -- Sacred Orb
	[692] = {"692", "Sanguine Bond", "Tạo một bộ gai trong {{DevilRoom}} Phòng Quỷ#Nhận sát thương trên gai cấp:#35%: Không có gì#33%: ↑ {{Damage}} +0.5 Sát thương#15%: 6 {{Coin}} đồng xu#10%: 2 {{BlackHeart}} Trái tim Đen#5%: {{DevilRoom}} Vật phẩm Quỷ ngẫu nhiên#2%: Biến hình Leviathan"}, -- Sanguine Bond
	[693] = {"693", "The Swarm", "Cấp 8 con ruồi vệ tinh#Dọn phòng tạo một con ruồi mới#Ruồi biến thành ruồi xanh sau khi chặn một phát bắn"}, -- The Swarm
	[694] = {"694", "Heartbreak", "↑ {{Damage}} +0.25 Sát thương cho mỗi Trái tim Vỡ#{{BrokenHeart}} +3 Trái tim Vỡ#{{BrokenHeart}} Mỗi lần trúng chí mạng cấp +2 Trái tim Vỡ#Isaac chết ở 12 Trái tim Vỡ"}, -- Heartbreak
	[695] = {"695", "Bloody Gust", "Khi nhận sát thương, nhận trong tầng:#↑ {{Speed}} Tăng tốc độ#↑ {{Tears}} Tăng tốc độ bắn#Tối đa +1.02 tốc độ và +3 tốc độ bắn"}, -- Bloody Gust
	[696] = {"696", "Salvation", "Isaac được bao quanh bởi một vầng hào quang#Kẻ địch đứng trong hào quang quá lâu bị trúng tia sáng hình chữ thập#Nhận sát thương tăng kích thước hào quang trong tầng"}, -- Salvation
	[697] = {"697", "Vanishing Twin", "Vào phòng Boss tạo một bản sao của Boss#Đánh bại bản sao tạo thêm một vật phẩm#Bản sao chậm hơn và có 75% máu"}, -- Vanishing Twin
	[698] = {"698", "Twisted Pair", "Hai bạn đồng hành bắn nước mắt với cùng chỉ số và hiệu ứng như Isaac#{{Damage}} Chúng gây 37.5% sát thương của Isaac"}, -- Twisted Pair
	[699] = {"699", "Azazel's Rage", "{{Collectible118}} Dọn 4 phòng bắn một tia Brimstone lớn khi vào phòng tiếp theo"}, -- Azazel's Rage
	[700] = {"700", "Echo Chamber", "Sử dụng một {{Rune}} rune, {{Card}} lá bài hoặc {{Pill}} viên thuốc cũng sử dụng bản sao của 3 rune/lá bài/viên thuốc cuối cùng đã dùng sau khi nhặt Echo Chamber"}, -- Echo Chamber
	[701] = {"701", "Isaac's Tomb", "Tạo một {{DirtyChest}} Rương Cũ ở đầu mỗi tầng#Rương Cũ cần chìa khóa để mở và có thể chứa {{SoulHeart}} Trái tim Linh hồn, {{Trinket}} trang sức hoặc vật phẩm của Mẹ, Bố và Thiên thần"}, -- Isaac's Tomb
	[702] = {"702", "Vengeful Spirit", "Nhận sát thương tạo một wisp vệ tinh#Wisp bắn nước mắt, không chặn đạn và biến mất ở tầng tiếp theo#Tối đa 6 wisp"}, -- Vengeful Spirit
	[703] = {"703", "Esau Jr.", "Chuyển đổi giữa nhân vật hiện tại và Esau Jr.#Esau Jr. có {{BlackHeart}} 3 Trái tim Đen, {{Damage}} +2 Sát thương, bay được, và vật phẩm ngẫu nhiên bằng số lượng vật phẩm người chơi có lần đầu sử dụng vật phẩm này#Nhân vật có vật phẩm và máu độc lập#{{Warning}} Chết với bất kỳ nhân vật nào kết thúc lần chạy"}, -- Esau Jr.
	[704] = {"704", "Berserk!", "{{Battery}} Sạc bằng sát thương gây ra#{{Timer}} Nhận trong 5 giây:#↑ {{Speed}} +0.4 Tốc độ#↓ {{Tears}} x0.5 Hệ số tốc độ bắn#↑ {{Tears}} +2 Tốc độ bắn#↑ {{Damage}} +3 Sát thương#Hạn chế tấn công thành đánh cận chiến phản đạn#{{Timer}} Mỗi lần giết tăng thời gian thêm 1 giây và cấp bất tử ngắn"}, -- Berserk!
	[705] = {"705", "Dark Arts", "{{Timer}} Nhận trong 1 giây (hoặc đến khi bắn):#↑ {{Speed}} +1 Tốc độ#Isaac có thể đi qua kẻ địch/đạn và làm tê liệt chúng#Khi hiệu ứng kết thúc, gây sát thương cho kẻ địch bị tê liệt, xóa đạn bị tê liệt và tạo vụ nổ tại vị trí Isaac#Tấn công và vụ nổ mạnh hơn khi càng nhiều kẻ địch/đạn bị trúng"}, -- Dark Arts
	[706] = {"706", "Abyss", "Tiêu thụ tất cả vật phẩm trên bệ trong phòng và tạo một con châu chấu cho mỗi vật phẩm#Châu chấu gây sát thương của Isaac 2-3 lần mỗi đòn tấn công#Một số vật phẩm tạo châu chấu đặc biệt khi tiêu thụ"}, -- Abyss
	[707] = {"707", "Supper", "↑ {{Heart}} +1 Máu#{{HealingRed}} Hồi 1 trái tim"}, -- Supper
	[708] = {"708", "Stapler", "↑ {{Damage}} +1 Sát thương#Tất cả nước mắt của Isaac được bắn từ mắt phải"}, -- Stapler
	[709] = {"709", "Suplex!", "Isaac lao theo hướng di chuyển#Lao vào kẻ địch hoặc Boss sẽ nhấc chúng lên và đập xuống đất#Đập tạo sát thương và tạo sóng đá dựa trên kích thước của Isaac#Bạn bất tử trong lúc lao và đập"}, -- Suplex!
	[710] = {"710", "Bag of Crafting", "Thu thập tối đa 8 vật phẩm nhặt, không thể thả#Sử dụng vật phẩm với 8 vật phẩm nhặt trong túi chế tạo một vật phẩm#Chất lượng vật phẩm dựa trên chất lượng của vật phẩm nhặt"}, -- Bag of Crafting
	[711] = {"711", "Flip", "Vào phòng có vật phẩm trên bệ hiển thị vật phẩm ma thứ hai trên bệ#Sử dụng vật phẩm đổi vật phẩm thật và ma#Sử dụng Flip sau khi lấy vật phẩm đầu tiên cho phép Isaac nhặt vật phẩm còn lại#{{Warning}} Vật phẩm ma ở một mình trên bệ biến mất sau khi rời phòng"}, -- Flip
	[712] = {"712", "Lemegeton", "Tạo một vệ tinh cấp hiệu ứng của một vật phẩm ngẫu nhiên#Vật phẩm có 25% cơ hội từ nhóm vật phẩm phòng hiện tại và 75% cơ hội từ nhóm Kho báu, Boss hoặc Cửa hàng"}, -- Lemegeton
	[713] = {"713", "Sumptorium", "Loại bỏ nửa trái tim và tạo một cục máu#Cục máu sao chép nước mắt của Isaac#Mỗi loại trái tim tạo một cục máu với máu, sát thương và hiệu ứng nước mắt khác nhau"}, -- Sumptorium
	[714] = {"714", "Recall", "Lấy lại cơ thể của Forgotten từ bất kỳ khoảng cách nào#Hồn bất tử trong khi Forgotten đang quay lại"}, -- Recall
	[715] = {"715", "Hold", "Sử dụng vật phẩm khi trống để lưu trữ phân tiếp theo bên trong#Sử dụng vật phẩm với phân bên trong sử dụng phân đó"}, -- Hold
	[716] = {"716", "Keeper's Sack", "Tạo 3 {{Coin}} đồng xu và 1 {{Key}} chìa khóa#{{Shop}} Chi 3 đồng xu cấp hoặc:#↑ {{Speed}} +0.03 Tốc độ#↑ {{Damage}} +0.5 Sát thương#↑ {{Range}} +0.25 Tầm bắn"}, -- Keeper's Sack
	[717] = {"717", "Keeper's Kin", "Đá và chướng ngại vật khác tạo 2 nhện xanh khi bị phá hủy#Đá đôi khi tạo nhện xanh trong phòng có kẻ địch"}, -- Keeper's Kin
	[718] = {"718", "", "<Vật phẩm không tồn tại>"},
	[719] = {"719", "Keeper's Box", "{{Shop}} Tạo một vật phẩm/vật phẩm nhặt Cửa hàng ngẫu nhiên để mua"}, -- Keeper's Box
	[720] = {"720", "Everything Jar", "Tạo vật phẩm nhặt dựa trên số lần sạc#Phần thưởng Sạc:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} Kích hoạt hiệu ứng ngẫu nhiên mạnh mẽ ở 12 lần sạc"}, -- Everything Jar
	[721] = {"721", "TMTRAINER", "Gây lỗi cho tất cả vật phẩm trong tương lai#Vật phẩm bị lỗi có hiệu ứng hoàn toàn ngẫu nhiên"}, -- TMTRAINER
	[722] = {"722", "Anima Sola", "Xích kẻ địch gần nhất trong 5 giây#Kẻ địch bị xích không thể di chuyển hoặc tấn công"}, -- Anima Sola
	[723] = {"723", "Spindown Dice", "Đổi lại tất cả vật phẩm trong phòng bằng cách giảm ID nội bộ của chúng đi một"}, -- Spindown Dice
	[724] = {"724", "Hypercoagulation", "{{Heart}} Nhận sát thương thả nửa hoặc một Trái tim Đỏ tùy thuộc vào lượng máu Isaac mất#Trái tim phóng ra và biến mất sau 1.5 giây"}, -- Hypercoagulation
	[725] = {"725", "IBS", "Gây đủ sát thương khiến Isaac nhấp nháy đỏ#Thả nút bắn khi Isaac nhấp nháy hoặc:#Ném một phân ngẫu nhiên#Tạo chất lỏng tăng chỉ số#{{Poison}} Đánh rắm một đám mây độc#Tạo 5 quả bom sống"}, -- IBS
	[726] = {"726", "Hemoptysis", "Nhấn đúp phím bắn khiến Isaac hắt hơi máu#Hắt hơi gây 1.5x sát thương của Isaac#Hồi chiêu 1 giây#{{BrimstoneCurse}} Kẻ địch bị ảnh hưởng nhận thêm sát thương từ tia Brimstone"}, -- Hemoptysis
	[727] = {"727", "Ghost Bombs", "{{Bomb}} +5 Bom#Bom của Isaac tạo ma đuổi theo kẻ địch#Ma gây 2x sát thương của Isaac mỗi giây và nổ sau 10 giây"}, -- Ghost Bombs
	[728] = {"728", "Gello", "Một bạn đồng hành quỷ lao ra khỏi Isaac trong phòng#Con quỷ bắn về phía kẻ địch gần nhất, bắt chước nước mắt, chỉ số và hiệu ứng của Isaac#{{Damage}} Nước mắt của nó gây 75% sát thương của Isaac"}, -- Gello
	[729] = {"729", "Decap Attack", "Ném đầu của Isaac theo một hướng#Đầu gây sát thương tiếp xúc và bắn nước mắt từ nơi nó hạ cánh#Sử dụng vật phẩm lần nữa hoặc giẫm lên đầu sẽ gắn lại nó"}, -- Decap Attack
	[730] = {"730", "Glass Eye", "↑ {{Damage}} +0.75 Sát thương#↑ {{Luck}} +1 May mắn"}, -- Glass Eye
	[731] = {"731", "Stye", "↑ {{Damage}} x1.28 Hệ số sát thương cho mắt phải#↑ {{Range}} +6.5 Tầm bắn cho mắt phải#↓ {{Shotspeed}} -0.3 Tốc độ đạn cho mắt phải"}, -- Stye
	[732] = {"732", "Mom's Ring", "↑ {{Damage}} +1 Sát thương#{{Rune}} Tạo một rune hoặc đá linh hồn ngẫu nhiên"}, -- Mom's Ring
}
EID:updateDescriptionsViaTable(repCollectibles, EID.descriptions[languageCode].collectibles)

---------- Modifiers ----------

-- Buffs caused by Binge Eater
-- Note: "#" will be replaced with "#{{Collectible664}} " automatically, in order to add Binge eater icon in front of each buff-bulletpoint
EID.descriptions[languageCode].bingeEaterBuffs = {
	[22] = "↑ {{Tears}} +0.5 Nước mắt#↑ {{Range}} +2.5 Tầm bắn#↑ {{Damage}} Tạm thời +3.6 Sát thương#↓ {{Speed}} -0.03 Tốc độ", -- Lunch
	[23] = "↑ {{Tears}} +0.5 Nước mắt#↑ {{Shotspeed}} +0.2 Tốc độ đạn#↑ {{Damage}} Tạm thời +3.6 Sát thương#↓ {{Speed}} -0.03 Tốc độ", -- Dinner
	[24] = "↑ {{Damage}} +1 Sát thương#↑ {{Shotspeed}} +0.2 Tốc độ đạn#↑ {{Damage}} Tạm thời +3.6 Sát thương#↓ {{Speed}} -0.03 Tốc độ", -- Dessert
	[25] = "↑ {{Range}} +2.5 Tầm bắn#↑ {{Shotspeed}} +0.2 Tốc độ đạn#↑ {{Damage}} Tạm thời +3.6 Sát thương#↓ {{Speed}} -0.03 Tốc độ", -- Breakfast
	[26] = "↑ {{Damage}} +1 Sát thương#↑ {{Range}} +2.5 Tầm bắn#↑ {{Damage}} Tạm thời +3.6 Sát thương#↓ {{Speed}} -0.03 Tốc độ", -- Rotten Meat
	[346] = "↑ {{Shotspeed}} +0.2 Tốc độ đạn#↑ {{Luck}} +1 May mắn#↑ {{Damage}} Tạm thời +3.6 Sát thương#↓ {{Speed}} -0.03 Tốc độ", -- A Snack
	[456] = "↑ {{Damage}} +1 Sát thương#↑ {{Luck}} +1 May mắn#↑ {{Damage}} Tạm thời +3.6 Sát thương#↓ {{Speed}} -0.03 Tốc độ", -- Midnight Snack
	[707] = "↑ {{Tears}} +0.5 Nước mắt#↑ {{Luck}} +1 May mắn#↑ {{Damage}} Tạm thời +3.6 Sát thương#↓ {{Speed}} -0.03 Tốc độ", -- Supper	
}

-- Buffs caused by Book of Belial with Judas' Birthright
-- Note: "#" will be replaced with "#{{Collectible34}} " automatically, in order to add Book of Belial icon in front of each buff-bulletpoint
EID.descriptions[languageCode].bookOfBelialBuffs = {
	[40] = "Cũng kích hoạt hiệu ứng của {{Collectible35}} Necronomicon", -- Kamikaze!
	[126] = "Cũng kích hoạt hiệu ứng của {{Collectible35}} Necronomicon", -- Razor Blade
	[127] = "↑ {{Damage}} +2 Sát thương cho tầng tiếp theo", -- Forget me Now
	[133] = "↑ {{Damage}} +0.5 Sát thương", -- Guppy's Paw
	[135] = "Tạm thời ↑ {{Damage}} +0.66 sát thương cho mỗi lần sử dụng", -- IV Bag
	[147] = "Rìu có độ bền và lực đẩy tăng, sử dụng nhanh hơn, đốt cháy kẻ thù {{Burning}} và làm rơi nhiều vật phẩm hơn khi phá phân hoặc chướng ngại vật", -- Notched Axe
	[186] = "Cũng kích hoạt hiệu ứng của {{Collectible126}} Razor Blade", -- Blood Rights
	[282] = "Để lại vệt lửa gây sát thương tiếp xúc và đốt cháy kẻ thù {{Burning}}", -- How to Jump
	[290] = "Sử dụng vật phẩm tiêu tốn một trái tim, tăng {{Damage}} sát thương và để lại vệt đỏ trên mặt đất", -- The Jar
	[295] = "Có cơ hội kích hoạt hiệu ứng của {{Collectible555}} Golden Razor", -- Magic Fingers
	[297] = "Vĩnh viễn nhận được một bạn đồng hành quỷ cùng với phần thưởng thông thường", -- Pandora's Box
	[323] = "Bắn 10 nước mắt thay vì bình thường, chúng xuyên thấu + quang phổ với tăng sát thương", -- Isaac's Tears
	[326] = "Thay vì tạo ánh sáng, bạn có hào quang lửa khi bất tử#Tạm thời tăng {{Damage}} sát thương và kích hoạt hiệu ứng của {{Collectible35}} Necronomicon khi chặn hoàn hảo", -- Breath of Life
	[352] = "Kích hoạt {{Collectible34}} The Book of Belial khi bị phá hủy#Tăng sát thương kéo dài cho đến khi pháo được sửa", -- Glass Cannon
	[475] = "Hồi sinh Judas thành Dark Judas nếu anh ta có thêm mạng", -- Plan C
	[482] = "Thay thế vật phẩm mới nhận gần đây nhất bằng {{Collectible51}} Pentagram thay vì loại bỏ nó", -- Clicker
	[487] = "Thêm ↑ {{Damage}} +0.5 sát thương", -- Potato Peeler
	[536] = "Với mỗi bạn đồng hành hy sinh:#↑ {{Damage}} +10.8 sát thương giảm dần", -- Sacrificial Altar
	[555] = "Gây sát thương cho tất cả kẻ thù trong phòng#Kẻ thù bị giết bởi hiệu ứng này có thể làm rơi 1-2 đồng xu", -- Golden Razor
	[577] = "Vĩnh viễn ↑ {{Damage}} tăng sát thương", -- Damocles
	[582] = "Vĩnh viễn ↑ {{Damage}} tăng sát thương dựa trên số lần hiệu ứng của vật phẩm được xếp chồng cao nhất", -- Wavy Cap
	[585] = "Thay đổi phần thưởng thành 2 Trái tim đen và 1 vật phẩm Thỏa thuận với Quỷ#Trở thành 3 trái tim và 2 vật phẩm nếu đã thực hiện Thỏa thuận với Quỷ", -- Alabaster Box
	[622] = "Tặng miễn phí một {{Collectible51}} Pentagram", -- Genesis
	[623] = "Cũng kích hoạt hiệu ứng của {{Collectible126}} Razor Blade", -- Sharp Key
	[635] = "Tạo một đường {{Collectible705}} Dark Arts giữa Judas và Stitches", -- Stitches
	[640] = "Bắn chùm tia {{Collectible118}} Brimstone thay vì bình thường", -- Urn of Souls
	[642] = "↑ {{Damage}} x1.4 Hệ số sát thương#↑ {{Damage}} +1 Sát thương", -- Magic Skin
	[653] = "Ma quỷ tự tìm đến kẻ thù", -- Vade Retro
	[685] = "Tạo ra các wisp {{Collectible292}} Satanic Bible#{{DevilChance}} +10% cơ hội Phòng Quỷ cho mỗi wisp", -- Jar of Wisps
	[705] = "Tạm thời ↑ {{Damage}} tăng sát thương cho mỗi kẻ thù/đạn trúng", -- Dark Arts
	[710] = "Nhặt {{Heart}} Trái tim đỏ có cơ hội thay thế bằng {{BlackHeart}} Trái tim đen", -- Bag of Crafting
	[729] = "Khi đầu bị tách ra:#↑ {{Tears}} x3 Hệ số tốc độ bắn#↑ {{Damage}} +2 Sát thương", -- Decap Attack	
}

-- Book of Virtues wisp types
EID.descriptions[languageCode].bookOfVirtuesWisps = {
	[33] = "Wisp vòng trong {{InnerWisp}}#Nước mắt tự dẫn đường", -- The Bible
	[34] = "Wisp vòng giữa {{MiddleWisp}}#Nước mắt sát thương gấp đôi", -- The Book of Belial
	[35] = "Wisp vòng trong {{InnerWisp}}#3.5% cơ hội cho nước mắt {{Fear}} gây sợ hãi#Hiệu ứng {{Collectible35}} Necronomicon khi bị phá hủy", -- The Necronomicon
	[36] = "Wisp vòng ngoài {{OuterWisp}}#2.5% cơ hội cho nước mắt {{Collectible236}} E. Coli", -- The Poop
	[37] = "Wisp vòng giữa {{MiddleWisp}}#Thả bom tự tìm phân tán khi bị phá hủy", -- Mr. Boom
	[38] = "Wisp vòng ngoài {{OuterWisp}}#Nước mắt nhanh, không chính xác", -- Tammy's Head
	[39] = "Wisp vòng giữa {{MiddleWisp}}#5% cơ hội cho nước mắt hóa đá", -- Mom's Bra
	[40] = "Wisp vòng giữa {{MiddleWisp}}#Nước mắt nổ#Nổ khi bị phá hủy", -- Kamikaze!
	[41] = "Wisp vòng giữa {{MiddleWisp}}#7.5% cơ hội cho nước mắt {{Fear}} gây sợ hãi", -- Mom's Pad
	[42] = "Wisp vòng giữa {{MiddleWisp}}#7.5% cơ hội cho nước mắt {{Collectible149}} Ipecac", -- Bob's Rotten Head
	[44] = "Wisp vòng giữa {{MiddleWisp}}#10% cơ hội cho nước mắt dịch chuyển kẻ thù#Wisp nhấp nháy mỗi 5 giây", -- Teleport!
	[45] = "Wisp vòng giữa {{MiddleWisp}}#20% cơ hội để kẻ thù làm rơi 1 {{Heart}} Trái tim đỏ khi bị giết", -- Yum Heart
	[47] = "Wisp vòng giữa {{MiddleWisp}}#Bắn 3 nước mắt nổ về phía tâm ngắm khi sử dụng", -- Doctor's Remote
	[49] = "Wisp vòng ngoài {{OuterWisp}}#Không bắn nước mắt#Bắn tia khi sử dụng", -- Shoop da Whoop!
	[56] = "Wisp vòng giữa {{MiddleWisp}}#Nước mắt nhanh, tầm ngắn#Wisp nhỏ giọt vệt vàng", -- Lemon Mishap
	[58] = "Wisp vòng giữa {{MiddleWisp}}#Máu thấp nhưng miễn nhiễm với đạn#Miễn nhiễm sát thương trong hiệu ứng {{Collectible58}}", -- Book of Shadows
	[65] = "Wisp vòng giữa {{MiddleWisp}}#Thả Bom Quỷ khi bị phá hủy", -- Anarchist Cookbook
	[66] = "Wisp vòng giữa {{MiddleWisp}}#{{Slow}} Làm chậm kẻ thù trong 3 giây khi bị phá hủy", -- The Hourglass
	[77] = "Wisp vòng giữa {{MiddleWisp}}#Sát thương tiếp xúc tăng", -- My Little Unicorn
	[78] = "Wisp vòng trong {{InnerWisp}}#Không bắn nước mắt#Tạo một Locust cho phòng khi bị phá hủy", -- Book of Revelations
	[83] = "Wisp vòng trong {{InnerWisp}}#Nước mắt sát thương và lực đẩy gấp đôi", -- The Nail
	[84] = "Wisp vòng giữa {{MiddleWisp}}#Không có hiệu ứng đặc biệt", -- We Need to Go Deeper!
	[85] = "Wisp vòng trong {{InnerWisp}}#Thả một {{Card}} lá bài khi bị phá hủy", -- Deck of Cards
	[86] = "Wisp vòng giữa {{MiddleWisp}}#Nước mắt răng", -- Monstro's Tooth
	[93] = "Wisp vòng trong {{InnerWisp}}#Nước mắt chống trọng lực#Cơ hội cho nước mắt {{Fear}} gây sợ hãi", -- The Gamekid
	[97] = "Tạo 1 trong 8 wisp:#{{Collectible65}}{{Collectible42}}{{Collectible85}}{{Collectible102}}{{Collectible37}}{{Collectible177}}{{Collectible49}}{{Collectible45}}#{{Warning}} Hiệu ứng nổ có khả năng xảy ra", -- The Book of Sin
	[102] = "Wisp vòng trong {{InnerWisp}}#Tạo 1 trong 6 wisp:#nước mắt thường tạo nhện địch khi bị phá hủy hoặc cơ hội cho nước mắt độc, hóa đá, gây rối, đốt cháy, Bom Quỷ#Cả 6 tạo một {{Pill}} viên thuốc khi bị phá hủy", -- Mom's Bottle of Pills
	[105] = "Wisp vòng giữa {{MiddleWisp}}#+1 Wisp cho mỗi vật phẩm được đổi lại", -- The D6
	[107] = "Wisp vòng trong {{InnerWisp}}#Nước mắt xuyên thấu", -- The Pinking Shears
	[111] = "Wisp vòng ngoài {{OuterWisp}}#Xì hơi {{Poison}} độc khi bị phá hủy", -- The Bean
	[123] = "Wisp vòng trong {{InnerWisp}}#Nước mắt ngẫu nhiên", -- Monster Manual
	[124] = "Tạo wisp của vật phẩm mà nó bắt chước", -- Dead Sea Scrolls
	[126] = "Wisp vòng giữa {{MiddleWisp}}#Wisp máu cao", -- Razor Blade
	[127] = "Wisp vòng giữa {{MiddleWisp}}#Wisp máu vô hạn cho tầng mới", -- Forget Me Now
	[130] = "Wisp vòng giữa {{MiddleWisp}}#Không bắn nước mắt#Wisp lao theo hướng Isaac bắn", -- A Pony
	[133] = "Wisp vòng giữa {{MiddleWisp}}#Tạo 3 wisp máu cao", -- Guppy's Paw
	[135] = "Wisp vòng ngoài {{OuterWisp}}#Wisp máu thấp", -- IV Bag
	[136] = "Wisp vòng giữa {{MiddleWisp}}#7.5% cơ hội cho nước mắt {{Bait}} đánh dấu#Kẻ thù bị đánh dấu bị tấn công bởi kẻ thù khác", -- Best Friend
	[137] = "Wisp vòng trong {{InnerWisp}}#+1 Wisp cho mỗi quả bom phát nổ#Nước mắt của wisp cũng có thể được kích nổ từ xa", -- Remote Detonator
	[145] = "Wisp vòng ngoài {{OuterWisp}}#Wisp được tạo thay vì ruồi#Tạo một ruồi xanh khi bị phá hủy", -- Guppy's Head
	[146] = "Wisp vòng trong {{InnerWisp}}#Nước mắt tự dẫn đường", -- Prayer Card
	[147] = "Có cơ hội tạo wisp phân từ phân và 1 trong 5 wisp khoáng từ đá:#{{Collectible132}} Than, {{Collectible201}} Sắt, {{Collectible202}} Vàng, {{Collectible68}} Đá đỏ, {{Collectible415}} Kim cương", -- Notched Axe
	[158] = "Wisp vòng giữa {{MiddleWisp}}#Wisp máu cao bắn vào kẻ thù gần đó", -- Crystal Ball
	[160] = "Wisp vòng giữa {{MiddleWisp}}#Triệu hồi tia sáng khi tiếp xúc", -- Crack the Sky
	[164] = "Wisp vòng giữa {{MiddleWisp}}#Wisp chỉ trong một phòng", -- The Candle
	[166] = "Wisp vòng giữa {{MiddleWisp}}#Phá hủy tất cả vật phẩm nhặt trong phòng, có cơ hội tạo wisp ngẫu nhiên cho mỗi vật phẩm", -- D20
	[171] = "Wisp vòng giữa {{MiddleWisp}}#7.5% cơ hội cho nước mắt {{Slow}} làm chậm", -- Spider Butt
	[175] = "Wisp vòng giữa {{MiddleWisp}}#Wisp mở rương/cửa khóa khi chạm, bao gồm cửa Mega Satan, Ascent, và Corpse#Wisp tự hiến mình cho {{KeyBeggar}} Key Masters", -- Dad's Key
	[177] = "Tạo wisp dựa trên phần thưởng nhận được", -- Portable Slot
	[181] = "Wisp vòng giữa {{MiddleWisp}}#10% cơ hội cho nước mắt {{Collectible374}} Holy Light", -- White Pony
	[186] = "Wisp vòng giữa {{MiddleWisp}}#Wisp máu cao", -- Blood Rights
	[192] = "Wisp vòng giữa {{MiddleWisp}}#Nước mắt tự dẫn đường", -- Telepathy for Dummies
	[263] = "Wisp vòng giữa {{MiddleWisp}}#15% cơ hội để kẻ thù làm rơi một {{Rune}} rune khi bị giết#Thả một {{Rune}} rune khi bị phá hủy", -- Clear Rune
	[282] = "Tạo tối đa 6 wisp tĩnh cho phòng", -- How to Jump
	[283] = "Đổi lại tất cả wisp và tạo 1 wisp ngẫu nhiên#Không đổi lại Book of Virtues", -- D100
	[284] = "Loại bỏ tất cả wisp và tạo wisp ngẫu nhiên cho mỗi 2 vật phẩm sở hữu#Không đổi lại Book of Virtues", -- D4
	[285] = "Wisp vòng giữa {{MiddleWisp}}#10% cơ hội cho nước mắt hiệu ứng D10", -- D10
	[286] = "Wisp vòng giữa {{MiddleWisp}}#15% cơ hội để kẻ thù làm rơi một {{Card}} lá bài khi bị giết#Tạo một {{Card}} lá bài khi bị phá hủy", -- Blank Card
	[287] = "Wisp vòng giữa {{MiddleWisp}}#Hiệu ứng {{Collectible675}} Cracked Orb khi bị phá hủy", -- Book of Secrets
	[288] = "Wisp vòng ngoài {{OuterWisp}}#Wisp được tạo thay vì nhện#Tạo một nhện xanh khi bị phá hủy", -- Box of Spiders
	[289] = "Wisp vòng giữa {{MiddleWisp}}#Wisp chỉ trong một phòng#Nước mắt ngọn lửa đỏ", -- Red Candle
	[290] = "Wisp vòng giữa {{MiddleWisp}}#Tạo wisp cho mỗi trái tim thay vì làm rơi chúng#Cơ hội tạo một {{HalfHeart}} nửa Trái tim đỏ khi bị phá hủy", -- The Jar
	[291] = "Wisp vòng giữa {{MiddleWisp}}#Tạo thêm một wisp cho mỗi kẻ thù bị xả", -- Flush!
	[292] = "Wisp vòng giữa {{MiddleWisp}}#+10% {{AngelDevilChance}} cơ hội Phòng Quỷ/Thiên thần cho mỗi wisp Satanic Bible", -- Satanic Bible
	[293] = "Wisp vòng giữa {{MiddleWisp}}#Bắn tia {{Collectible118}} Brimstone 4 hướng khi bị phá hủy", -- Head of Krampus
	[294] = "Wisp vòng trong {{InnerWisp}}#Wisp máu thấp chỉ trong một phòng#Không bắn nước mắt#Hiệu ứng Butter Bean khi bị phá hủy", -- Butter Bean
	[295] = "Wisp vòng trong {{InnerWisp}}#Cơ hội làm rơi một {{Coin}} đồng xu khi bị phá hủy", -- Magic Fingers
	[296] = "Wisp vòng giữa {{MiddleWisp}}#Wisp máu cao hơn có thể được chữa bằng {{Heart}} Trái tim đỏ", -- Converter
	[297] = "Wisp vòng giữa {{MiddleWisp}}#Tạo 0-8 wisp tùy thuộc vào tầng", -- Pandora's Box
	[298] = "Wisp vòng giữa {{MiddleWisp}}#Không bắn nước mắt#Miễn nhiễm sát thương tiếp xúc#Không gây sát thương tiếp xúc trừ khi Unicorn Stump hoặc hiệu ứng tương tự được kích hoạt", -- Unicorn Stump
	[323] = "Wisp vòng giữa {{MiddleWisp}}#Tạo 6 wisp#Thời gian tồn tại 3 giây", -- Isaac's Tears
	[324] = "Wisp vòng giữa {{MiddleWisp}}#Nước mắt {{Collectible570}} Playdough Cookie", -- Undefined
	[325] = "Wisp vòng giữa {{MiddleWisp}}#Nước mắt cụm cung", -- Scissors
	[326] = "Wisp vòng trong {{InnerWisp}}#Tạo 4 wisp khi chặn hoàn hảo", -- Breath of Life
	[338] = "Wisp vòng giữa {{MiddleWisp}}#Wisp chỉ trong một phòng#Nước mắt boomerang", -- The Boomerang
	[347] = "Wisp vòng giữa {{MiddleWisp}}#Wisp máu cao với nước mắt {{Collectible245}} 20/20#Nhân đôi tất cả wisp khác", -- Diplopia
	[348] = "Wisp vòng giữa {{MiddleWisp}}#Thả một {{Pill}} viên thuốc khi bị phá hủy", -- Placebo
	[349] = "Wisp vòng giữa {{MiddleWisp}}#50% cơ hội làm rơi một {{Coin}} đồng xu khi bị phá hủy", -- Wooden Nickel
	[351] = "Wisp vòng giữa {{MiddleWisp}}#Tạo sóng đá khi sử dụng#Hóa đá + xì hơi {{Poison}} độc khi bị phá hủy", -- Mega Bean
	[352] = "Wisp vòng giữa {{MiddleWisp}}#Wisp máu thấp tồn tại giữa các phòng#Tất cả wisp Glass Cannon bị phá hủy khi một cái bị phá", -- Glass Cannon
	[357] = "Wisp vòng giữa {{MiddleWisp}}#Không có hiệu ứng đặc biệt#Nhân đôi tất cả wisp cho phòng", -- Box of Friends
	[382] = "Wisp vòng giữa {{MiddleWisp}}#Kẻ thù thân thiện tạo 1 trong 4 wisp khi chết, tùy thuộc vào đòn tấn công của chúng, với nước mắt thường, tự tìm, nổ, hoặc Brimstone", -- Friendly Ball
	[383] = "Wisp vòng giữa {{MiddleWisp}}#Nước mắt của wisp có thể được kích nổ, biến thành 6 nước mắt của Isaac#Tồn tại giữa các phòng#Nổ thành nước mắt của Isaac khi bị phá hủy", -- Tear Detonator
	[386] = "Wisp vòng giữa {{MiddleWisp}}#5% cơ hội cho nước mắt đổi lại đá, bình, sọ hoặc nấm", -- D12
	[396] = "Không bắn nước mắt#Mỗi cổng có 1 wisp", -- Ventricle Razor
	[406] = "Wisp vòng giữa {{MiddleWisp}}#Sát thương và tốc độ bắn ngẫu nhiên", -- D8
	[419] = "Wisp vòng giữa {{MiddleWisp}}#20% cơ hội cho nước mắt dịch chuyển kẻ thù#Wisp nhấp nháy mỗi 5 giây", -- Teleport 2.0
	[421] = "Wisp vòng giữa {{MiddleWisp}}#Nước mắt {{Charm}} mê hoặc#Xì hơi {{Charm}} mê hoặc khi bị phá hủy", -- Kidney Bean
	[422] = "Wisp vòng giữa {{MiddleWisp}}#30% cơ hội cho nước mắt hóa đá#Hồi sinh tất cả wisp bị phá hủy ở phòng trước", -- Glowing Hourglass
	[427] = "Nảy quanh phòng, nổ khi bị Isaac bắn#Không bắn nước mắt hoặc gây sát thương tiếp xúc", -- Mine Crafter
	[434] = "Wisp vòng giữa {{MiddleWisp}}#Wisp được tạo thay vì ruồi#Tối đa 5 ruồi tạo 1 wisp với máu và sát thương tăng", -- Jar of Flies
	[437] = "Wisp vòng giữa {{MiddleWisp}}#Hiệu ứng D7 khi bị đánh lần đầu", -- D7
	[439] = "Wisp vòng giữa {{MiddleWisp}}#Không có hiệu ứng đặc biệt", -- Mom's Box
	[441] = "Wisp vòng giữa {{MiddleWisp}}#Nước mắt Brimstone {{Chargeable}} có thể nạp#Bắn liên tục trong Mega Blast", -- Mega Blast
	[475] = "Wisp vòng giữa {{MiddleWisp}}#Tạo 8 wisp sát thương cao tồn tại sau khi chết", -- Plan C
	[476] = "Wisp vòng giữa {{MiddleWisp}}#Tạo wisp thứ hai nếu không có vật phẩm nào được nhân đôi", -- D1
	[477] = "Tạo wisp của tất cả vật phẩm hoạt động đã hấp thụ#Không tự tạo wisp", -- Void
	[478] = "Wisp vòng giữa {{MiddleWisp}}#Tạm dừng tất cả kẻ thù và đạn trong 3 giây khi bị phá hủy", -- Pause
	[479] = "Wisp vòng giữa {{MiddleWisp}}#Cơ hội làm rơi một {{Trinket}} bùa khi bị phá hủy", -- Smelter
	[480] = "Wisp vòng giữa {{MiddleWisp}}#Máu tăng cho mỗi vật phẩm nhặt được chuyển đổi#Chỉ tạo wisp nếu ít nhất một vật phẩm được chuyển đổi", -- Compost
	[481] = "Wisp vòng giữa {{MiddleWisp}}#5% cơ hội cho nước mắt biến kẻ thù thành wisp ngẫu nhiên", -- Dataminer
	[482] = "Tạo wisp ngẫu nhiên", -- Clicker
	[483] = "Wisp vòng giữa {{MiddleWisp}}#Tạo 8 wisp thả Bom Quỷ vàng khi bị phá hủy", -- Mama Mega!
	[484] = "Wisp vòng giữa {{MiddleWisp}}#Wisp chỉ trong một phòng#Không bắn nước mắt#Hiệu ứng Wait What? khi bị phá hủy", -- Wait What?
	[485] = "Wisp vòng giữa {{MiddleWisp}}#Tất cả wisp Crooked Penny bị phá hủy hoặc nhân đôi khi một cái bị hư hại", -- Crooked Penny
	[486] = "Wisp vòng giữa {{MiddleWisp}}#Không bắn nước mắt#Cơ hội ngăn Isaac nhận sát thương và bị phá hủy vì điều đó", -- Dull Razor
	[487] = "Wisp không thể phá hủy, vĩnh viễn#Đuổi theo kẻ thù để bắn chúng#Không chặn đạn hoặc gây sát thương tiếp xúc", -- Potato Peeler
	[488] = "Tạo wisp của vật phẩm mà nó bắt chước (wisp ngẫu nhiên nếu không phải vật phẩm hoạt động)", -- Metronome
	[489] = "Wisp vòng giữa {{MiddleWisp}}#Tạo wisp thường#Hiệu ứng thêm dựa trên con xúc xắc bắt chước", -- D Infinity
	[490] = "Tạo wisp ngẫu nhiên#Hồi sinh sau khi dọn phòng nếu bị phá hủy", -- Eden's Soul
	[504] = "Wisp vòng giữa {{MiddleWisp}}#Wisp chỉ trong một phòng#Nước mắt nhanh, sát thương thấp, nhắm mục tiêu", -- Brown Nugget
	[507] = "Wisp vòng ngoài {{OuterWisp}}#Cơ hội tạo wisp khi giết", -- Sharp Straw
	[510] = "Wisp vòng giữa {{MiddleWisp}}#Nước mắt {{Collectible229}} Monstro's Lung, {{Collectible268}} rotten Baby, {{Collectible87}} Loki's Horns hoặc {{Collectible118}} Brimstone", -- Delirious
	[512] = "Wisp vòng giữa {{MiddleWisp}}#Nước mắt từ tính", -- Black Hole
	[515] = "Tạo wisp ngẫu nhiên#Hồi sinh sau khi dọn phòng nếu bị phá hủy", -- Mystery Gift
	[516] = "Wisp vòng giữa {{MiddleWisp}}#Nước mắt nhanh#Nước mắt bắn 8 hướng như Sprinkler", -- Sprinkler
	[521] = "Wisp vòng giữa {{MiddleWisp}}#Bắn ba phát#Mua bất cứ thứ gì sẽ phá hủy tất cả wisp Coupon", -- Coupon
	[522] = "Wisp vòng ngoài {{OuterWisp}}#Đạn bị bắt biến thành wisp", -- Telekinesis
	[523] = "Wisp vòng giữa {{MiddleWisp}}#Wisp chỉ tạo khi làm rơi vật phẩm#Tạo vật phẩm nhặt ngẫu nhiên khi bị phá hủy", -- Moving Box
	[527] = "Wisp vòng giữa {{MiddleWisp}}#Không bắn nước mắt#Khi dọn phòng, wisp mở rương/cửa", -- Mr. ME!
	[536] = "Wisp vòng giữa {{MiddleWisp}}#Chuyển tất cả wisp thành {{HalfHeart}} nửa Trái tim đỏ#Tạo wisp máu cao, sát thương cao khi hy sinh", -- Sacrificial Altar
	[545] = "Wisp vòng trong {{InnerWisp}}#Tạo một Bony thân thiện khi bị phá hủy", -- Book of the Dead
	[550] = "Wisp vòng giữa {{MiddleWisp}}#10% cơ hội cho nước mắt khiến Mom dậm lên kẻ thù", -- Broken Shovel
	[552] = "Wisp vòng giữa {{MiddleWisp}}#10% cơ hội cho nước mắt khiến Mom dậm lên kẻ thù#Cũng tạo wisp máu cao không bắn nước mắt", -- Mom's Shovel
	[555] = "Wisp vòng giữa {{MiddleWisp}}#15% cơ hội cho nước mắt {{Collectible202}} Midas' Touch", -- Golden Razor
	[556] = "Wisp vòng giữa {{MiddleWisp}}#Nước mắt Brimstone {{Collectible118}} tầm ngắn", -- Sulfur
	[557] = "Wisp vòng giữa {{MiddleWisp}}#↑ {{Luck}} +0.2 May mắn cho mỗi wisp Fortune Cookie", -- Fortune Cookie
	[577] = "Wisp vòng giữa {{MiddleWisp}}#Không có hiệu ứng đặc biệt", -- Damocles
	[578] = "Wisp vòng giữa {{MiddleWisp}}#Wisp nhỏ giọt vệt vàng", -- Free Lemonade
	[580] = "Wisp vòng giữa {{MiddleWisp}}#Cơ hội tạo Cửa Đỏ khi vào phòng mới", -- Red Key
	[582] = "Wisp vòng giữa {{MiddleWisp}}#Nước mắt sát thương thấp#Tối đa 1 wisp Wavy Cap", -- Wavy Cap
	[584] = "Không có lợi ích từ nhiều bản sao", -- Book of Virtues
	[585] = "Wisp vòng giữa {{MiddleWisp}}#Tạo 8 wisp thường", -- Alabaster Box
	[604] = "Wisp chỉ trong một phòng#Tạo 1-3 wisp tại nơi thứ gì đó hạ cánh (tối đa 8 wisp)#10% cơ hội cho nước mắt {{Confusion}} gây rối", -- Mom's Bracelet
	[605] = "Wisp vòng giữa {{MiddleWisp}}#Không có hiệu ứng đặc biệt", -- The Scooper
	[609] = "Wisp vòng giữa {{MiddleWisp}}#Chỉ 50% tạo wisp bất tử#50% cơ hội tất cả wisp Eternal D6 bị phá hủy khi sử dụng", -- Eternal D6
	[611] = "Wisp vòng giữa {{MiddleWisp}}#Máu và sát thương tăng dựa trên số lần nạp", -- Larynx
	[622] = "Wisp vòng giữa {{MiddleWisp}}#Thay thế tất cả wisp bằng 3 wisp thường", -- Genesis
	[623] = "Wisp vòng giữa {{MiddleWisp}}#Không có hiệu ứng đặc biệt", -- Sharp Key
	[631] = "Wisp vòng giữa {{MiddleWisp}}#Chia đôi tất cả wisp (giảm nửa sát thương)#Wisp bị phá hủy nếu chia lần thứ ba", -- Meat Cleaver
	[635] = "Wisp chỉ trong một phòng#Tạo wisp tĩnh tại vị trí của Isaac trước khi dịch chuyển (tối đa 6 wisp)", -- Stitches
	[636] = "Không có wisp", -- R Key
	[638] = "Wisp vòng giữa {{MiddleWisp}}#Miễn nhiễm với đạn#Xóa kẻ thù không phải trùm khi tiếp xúc", -- Eraser
	[639] = "Wisp vòng giữa {{MiddleWisp}}#Tạo ruồi xanh thay vì bắn nước mắt", -- Yuck Heart
	[640] = "Wisp vòng giữa {{MiddleWisp}}#Cơ hội cho nước mắt ngọn lửa xanh", -- Urn of Souls
	[642] = "Wisp vòng giữa {{MiddleWisp}}#Nước mắt độc", -- Magic Skin
	[650] = "Wisp vòng giữa {{MiddleWisp}}#Khi Baby Plum nảy chéo, tất cả wisp Plum Flute cũng bất tử và làm như vậy", -- Plum Flute
	[653] = "Không có wisp#Ma đỏ có thể bắn nước mắt", -- Vade Retro
	[655] = "Wisp vòng giữa {{MiddleWisp}}#Wisp tạm thời trong khi sử dụng#Nước mắt nhanh", -- Spin to Win
	[685] = "Nhân ba số wisp được tạo", -- Jar of Wisps
	[687] = "Tạo wisp ngẫu nhiên", -- Friend Finder
	[703] = "Wisp vòng giữa {{MiddleWisp}}#Không có hiệu ứng đặc biệt", -- Esau Jr.
	[704] = "Wisp vòng giữa {{MiddleWisp}}#Wisp máu cao#Không bắn nước mắt", -- Berserk!
	[705] = "Wisp vòng giữa {{MiddleWisp}}#Wisp chỉ trong một phòng cho mỗi kẻ thù bị giết", -- Dark Arts
	[706] = "Wisp vòng giữa {{MiddleWisp}}#Wisp máu cao#Không bắn nước mắt", -- Abyss
	[709] = "Wisp chỉ trong một phòng#Tạo 3 wisp tại nơi Isaac hạ cánh", -- Suplex!
	[710] = "Tạo wisp ngẫu nhiên khi chế tạo", -- Bag of Crafting
	[711] = "Wisp vòng giữa {{MiddleWisp}}#Wisp máu cao", -- Flip
	[712] = "Wisp vật phẩm bắn Nước mắt tự dẫn đường", -- Lemegeton
	[713] = "Không có wisp", -- Sumptorium
	[719] = "Wisp vòng giữa {{MiddleWisp}}#20% cơ hội để kẻ thù làm rơi một {{Coin}} đồng xu khi bị giết", -- Keeper's Box
	[720] = "Tạo wisp ngẫu nhiên", -- Everything Jar
	[722] = "Bay quanh kẻ thù bị xích, bắn vào chúng#Wisp chết khi kẻ thù chết", -- Anima Sola
	[723] = "Wisp vòng giữa {{MiddleWisp}}#Tạo wisp ngẫu nhiên và đổi tất cả wisp thành loại đó", -- Spindown Dice
	[728] = "Wisp vòng giữa {{MiddleWisp}}#Tất cả wisp bay quanh Gello khi kích hoạt", -- Gello
	[729] = "Wisp tĩnh chỉ trong một phòng", -- Decap Attack	
}

---------- Abyss Locust description parts ----------
EID.descriptions[languageCode].AbyssTexts = {
 	-- values inside {} brackets will be replaced with text parts below
	-- As the last step, {pluralize} will be replaced with the "Pluralize" value. 
	-- The placeholder therefore can be used in all parts that make up the abyss locust descriptions
	InfoText = "{amount} {size}{speed}locust{pluralize} ({dmg})",
	InfoTextPlural = nil, -- Can be used by translators to provide a pluralized version of the InfoText
	Chance = " ({1}% Chance)", -- {1} will be replaced with the chance
	SpeedSlow = "slow ", -- Speed < 1
	SpeedFast = "fast ", -- Speed > 1
	SpeedDash = "dashing ", -- Speed >= 6
	SizeSmall = "small ", -- Size < 1
	SizeBig = "big ", -- Size > 1
	DamageMult = "{1}x Isaac's damage", -- {1} will be replaced with the calculated damage multiplier 
}

---------- Abyss Locust special effects ----------
--- Special locust effects that dont correspond to TearFlags.
--- Displays an icon in front of the description that shows an item with the same effect
EID.descriptions[languageCode].AbyssLocustEffects = {
	[0] = "{{Bomb}} Nổ khi gây sát thương",
	[1] = "{{QuestionMark}} Hiệu ứng châu chấu ngẫu nhiên",	
-- 2 = Multiple locusts act like one. Uninteresting info for the player in my opinion
[3] = "{{Collectible284}} Đổi lại kẻ thù khi gây sát thương",
[4] = "{{Collectible35}} Gây sát thương cho tất cả kẻ thù khi gây sát thương",
[5] = "{{Collectible638}} Xóa một kẻ thù khi gây sát thương",
[6] = "{{Collectible114}} Dao xoay quanh châu chấu khi nó tấn công",
[7] = "{{Collectible611}} Sử dụng tiếng hét Larynx, gây sát thương cho kẻ thù gần đó",
[8] = "{{Collectible399}} Tạo một vòng Maw of the Void",
[9] = "{{Collectible522}} Nhận hào quang đẩy đạn khi đang nạp",
[10] = "{{Collectible447}} Tạo xì hơi độc khi gây sát thương",
[11] = "{{Collectible447}} Tạo một tiếng xì hơi khi gây sát thương",
[12] = "{{Collectible118}} Tạo một brimstone chống trọng lực khi gây sát thương",
[13] = "{{Collectible317}} Tạo vệt xanh lá khi gây sát thương",
[14] = "{{Collectible56}} Tạo vệt vàng khi gây sát thương",
[15] = "{{Collectible214}} Tạo vệt đỏ khi gây sát thương",
[16] = "{{Collectible178}} Tạo vệt xanh dương khi gây sát thương",
[17] = "{{Collectible420}} Ngẫu nhiên tạo một hình pentagram",
[18] = "{{Collectible144}} Nhận +0.25 sát thương cho mỗi vật phẩm nhặt tiêu thụ. Tối đa 25 vật phẩm nhặt",
}


-- list of Tear flag descriptions used for Abyss locust effect description
EID.descriptions[languageCode].TearFlagNames = {
	[0] = "quang phổ",         -- Ouija board type tear (goes thru obstacles)
	[1] = "xuyên thấu",         -- Cupid's arrow type tear (goes thru enemy)
	[2] = "tự tìm",          -- Spoon bender type tear (homes to enemy)
	[3] = "làm chậm",         -- Spider bite type tear (slows on contact)
	[4] = "độc",          -- Common cold type tear (poisons on contact)
	[5] = "hóa đá",         -- Mom's contact type tear (freezes on contact)
	[6] = "chia tách",          -- Parasite type tear (splits on collision)
	[7] = "tăng theo tầm bắn",      -- Lump of coal type tear (grows by range)
	[8] = "boomerang",        -- My reflection type tear (returns back)
	[9] = "bền bỉ",        -- Polyphemus type tear (Damages the entity and if the damage is more then enemy hp it continues with less damage
	[10] = "chuyển động ngoằn ngoèo",     -- Wiggle worm type tear (wiggles)
	[11] = "tạo ruồi khi trúng",    -- Mulligan type tear (creates fly on hit)
	[12] = "nổ",        -- IPECAC type tear (explodes on hit)
	[13] = "mê hoặc",        -- Mom's Eyeshadow tear
	[14] = "gây rối",        -- Iron Bar tear
	[15] = "kẻ thù làm rơi trái tim",   -- These tears cause enemy to drop hearts if killed (33% chance)
	[16] = "bay quanh người chơi",   -- Used for Little Planet (orbit arounds the player)
	[17] = "đợi trước khi di chuyển",   -- Anti gravity type tear (floats in place for some time before finally moving) (unset after first update)
	[18] = "chia thành 4 khi trúng",   -- Splits into 4 smaller tears if it hits the ground
	[19] = "nảy khỏi kẻ thù",    -- Bounce off of enemies, walls, rocks (Higher priority than PERSISTENT & PIERCING)
	[20] = "sợ hãi",          -- Mom's Perfume type tear of fear (fear on contact)
	[21] = "thu nhỏ",         -- Proptosis tears start large and shrink
	[22] = "đốt cháy",          -- Fire Mind tears cause Burn effect on enemies
	[23] = "nam châm kẻ thù và vật phẩm nhặt", -- Attracts enemies and pickups
	[24] = "đẩy lùi",        -- Tear impact pushes enemies back further
	[25] = "nhấp nháy",        -- Makes the tear pulse
	[26] = "chuyển động xoắn ốc",     -- Makes the tear path spiral
	[27] = "hình oval",       -- Makes the tear oval in the direction of travel
	[28] = "bom buồn",        -- Used by Bombs (Sad Bomb)
	[29] = "bom mông",        -- Used by Bombs (Butt Bomb)
	[30] = "chuyển động vuông",     -- Used for Hook Worm
	[31] = "hào quang gây sát thương",   -- Used for GodHead (they will have a glow around them)
	[32] = "làm chậm + nhuộm kẻ thù màu đen", -- Used for Gish player tears (to color enemy black on slowing)
	[33] = "vệt xanh lá khi trúng", -- Mysterious Liquid tears spawn damaging green creep when hit
	[34] = "có khiên",        -- Lost Contact tears, block enemy projectiles
	[35] = "bom lấp lánh",      -- Used by Bombs (Glitter Bomb)
	[36] = "bom phân tán",      -- Used for Scatter bombs
	[37] = "dính",         -- Used for Sticky bombs and Explosivo tears
	[38] = "vòng quanh màn hình",   -- Tears loop around the screen
	[39] = "tạo tia sáng khi trúng", -- Create damaging light beam on hit
	[40] = "đồng xu rơi khi trúng",    -- Used by Bumbo, spawns a coin when tear hits
	[41] = "máu đen rơi khi trúng",  -- Enemy drops a black hp when dies
	[42] = "tia kéo",      -- Tear with this flag will follow parent player's beam
	[43] = "thu nhỏ kẻ thù",     -- God's flesh flag to minimize enemies
	[44] = "tạo đồng xu khi trúng",   -- Greed coin tears that has a chance to generate a coin when hit
	[45] = "bom chữ thập",       -- Bomber Boy
	[46] = "chuyển động xoắn ốc lớn",   -- Ouroboros Worm, big radius oscilating tears
	[47] = "gây rối vĩnh viễn khi trúng",  -- Glaucoma tears, permanently confuses enemies
	[48] = "đờm",         -- Booger tears, stick and do damage over time
	[49] = "tạo nhện hoặc ruồi khi trúng",        -- Egg tears, leave creep and spawns spiders or flies
	[50] = "có thể phá vỡ vật thể lưới khi trúng",      -- Sulfuric Acid tears, can break grid entities
	[51] = "tạo 1-2 mảnh xương khi kẻ thù chết",          -- Bone tears, splits in 2
	[52] = "xuyên thấu + nhận sát thương gấp đôi & tự tìm sau đó", -- Belial tears, piecing tears gets double damage + homing
	[53] = "biến kẻ thù thành vàng khi chạm",      -- Midas touch tears
	[54] = "nổ thành 10 nước mắt khi trúng",        -- Needle tears
	[55] = "điện khi trúng",      -- Jacobs ladder tears
	[56] = "triệu hồi tay Big Horn khi trúng", -- Little Horn tears
	[57] = "kết nối bằng điện",  -- Technology Zero
	[58] = "nảy vào nhau",    -- Pop!
	[59] = "hấp thụ những cái khác",        -- Hungry Tears
	[60] = "tia laze",        -- Trisagion, generates a laser on top of the tear
	[61] = "nảy trên mặt đất",     -- Flat Stone
	[62] = "nổ chia tách",       -- Haemolacria
	[63] = "vệt chất lỏng",       -- Bob's Bladder
	[64] = "hiệu ứng đấm khi trúng",   -- Knockout Drops
	[65] = "đóng băng kẻ thù khi chết",  -- Uranus
	[66] = "nam châm kẻ thù và vật phẩm nhặt", -- Lodestone
	[67] = "hiệu ứng mồi khi trúng",    -- Rotten Tomato
	[68] = "Eye of the Occult",    -- Eye of the Occult
	[69] = "chuyển động quỹ đạo hẹp",  -- Orbiting tears with a more narrow and stable orbit (used by Saturnus and Immaculate Heart)
	[70] = "phá đá",       -- Rock tears, chance to break rocks, deal extra damage to rock type enemies
	[71] = "chuyển động 90 độ",   -- Brain Worm, tears turn and go horizontally when moving past an enemy
	[72] = "bom máu",       -- Blood Bombs, leave blood creep on the ground
	[73] = "biến kẻ thù thành phân",  -- E. Coli tears, turn enemies into poop
	[74] = "đồng xu rơi khi chết",   -- Killed enemies have a chance to drop a random coin (Reverse Hanged Man)
	[75] = "bom brimstone",     -- Brimstone Bombs, explosion creates a brimstone cross
	[76] = "hố đen khi trúng",    -- Rift tears, creates a black hole on impact
	[77] = "dính vào kẻ thù và nhân đôi khi kẻ thù chết", -- Spore tears, stick to enemies and multiply on enemy death
	[78] = "bom ma",       -- Ghost bombs
	[79] = "lá bài rơi khi chết",   -- Killed enemies will drop a random tarot card
	[80] = "rune rơi khi chết",   -- Killed enemies will drop a random rune
	[81] = "dịch chuyển kẻ thù khi trúng",  -- Hit enemies will teleport to a different part of the room
	[82] = "giảm tốc theo thời gian",  -- Decelerate over time
	[83] = "tăng tốc theo thời gian",  -- Accelerate over time
	[104] = "nảy (chỉ tường)",  -- Similar to TEAR_BOUNCE but only bounces off walls, not enemies
	[106] = "sát thương thêm từ phía sau + chảy máu",  -- Deals extra damage from behind and inflicts bleeding
	
}

-- Special Locust effects when Item was eaten by Abyss. Entries here will override the auto-generated descriptions
-- Kept in for backwards compatibility
EID.descriptions[languageCode].abyssSynergies = {}

-- Effect of Car battery on Active Items
local repCarBattery = {
	[34] = {2, 3}, -- The Book of Belial
	[59] = {2, 3}, -- The Book of Belial (Birthright)
	[83] = {" Nửa", "1"}, -- The Nail
	[263] = "Kích hoạt hai lần", -- Clear Rune
	[283] = {1, 2, "vật phẩm nhặt được", "{{CR}}vật phẩm nhặt được"}, -- D100
	[285] = "Làm kẻ địch thoái hóa hai lần", -- D10
	[288] = {"4-8", "8-16"}, -- Box of Spiders
	[293] = {200, 400}, -- Head of Krampus
	[296] = {1, 2, " Trái tim", " {{CR}}Trái tim", 1, 2, "ô", "{{CR}}ô"}, -- Converter
	[323] = "Nước mắt gây sát thương gấp đôi", -- Isaac's Tears
	[386] = "Tăng cơ hội xuất hiện chướng ngại vật hiếm", -- D12
	[485] = "25% cơ hội nhân bốn, 75% cơ hội loại bỏ", -- Crooked Penny
	[489] = "Sử dụng xúc xắc được chọn hai lần", -- D Infinity
	[522] = {3, 6}, -- Telekinesis
	[557] = {"một", "hai"}, -- Fortune Cookie
	[582] = "Kích hoạt hai lần", -- Wavy Cap
	[584] = "Sinh ra hai linh hồn", -- Book of Virtues
	[605] = {" một ", " 2 ", "bạn đồng hành", "{{CR}}bạn đồng hành"}, -- The Scooper
	[609] = {25, 44}, -- Eternal D6
	[611] = "Kích hoạt thêm một tiếng hét 1 năng lượng", -- Larynx
	[625] = {30, 60}, -- Mega Mush
	[631] = {25, 50}, -- Meat Cleaver
	[635] = "Hoán đổi tức thì hai lần#Rất tốt để dịch chuyển vào kẻ địch, nhưng không thể nhặt vật phẩm ngoài tầm với", -- Stitches
	[639] = {1, 2, " Trái tim", " {{CR}}Trái tim"}, -- Yuck Heart
	[642] = "Kích hoạt hai lần", -- Magic Skin
	[650] = {" một ", " 2 ", "Plum", "{{CR}}Plums"}, -- Plum Flute
	[685] = "Sinh ra gấp đôi số linh hồn, nhưng số lần sử dụng chỉ tăng 1", -- Jar of Wisps
	[687] = {" một ", " 2 ", "quái vật", "{{CR}}quái vật"}, -- Friend Finder
	[704] = "Kéo dài 10 giây, nhưng giết kẻ địch giới hạn thời gian còn lại tối đa 5 giây", -- Berserk!
	[705] = {1, 2}, -- Dark Arts
	[712] = {" một ", " 2 ", "vệ tinh", "{{CR}}vệ tinh"}, -- Lemegeton
	[713] = {"nửa trái tim", "một trái tim", "một cục máu", "2 {{CR}}cục máu"}, -- Sumptorium
	[719] = {" một ", " 2 ", "vật phẩm/vật phẩm nhặt được", "{{CR}}vật phẩm/vật phẩm nhặt được"}, -- Keeper's Box
	[720] = "Sinh ra một đống phân cùng với vật phẩm nhặt được", -- Everything Jar
	[722] = "Xích 2 kẻ địch lại#Nếu chỉ có một kẻ địch, xích nó trong 10 giây#Dùng Anima Sola lần nữa sẽ thả kẻ địch gần nhất", -- Anima Sola
	[723] = {"một", "hai"}, -- Spindown Dice
}
EID:updateDescriptionsViaTable(repCarBattery, EID.descriptions[languageCode].carBattery)

-- Effect of BFFS!/Hive Mind on Familiars
local repBFFSSynergies = {
	["5.100.67"] = {6, 12}, -- Sister Maggy
	["5.100.98"] = {"7-8", "6"}, -- The Relic
	["5.100.107"] = {23.5, 47}, -- The Pinking Shears
	["5.100.172"] = {112.5, 225}, -- Sacrificial Dagger
	["5.100.178"] = {7, 14, "Sinh ra một ngọn lửa xanh tại điểm va chạm"}, -- Holy Water
	["5.100.206"] = {56, 112}, -- Guillotine
	["5.100.264"] = {6.5, 13}, -- Smart Fly
	["5.100.272"] = {100, 125}, -- BBF
	["5.100.273"] = {100, 125}, -- Bob's Brain
	["5.100.274"] = {150, 300}, -- Best Bud
	["5.100.275"] = {24, 48}, -- Lil Brimstone
	["5.100.276"] = "Bắn thêm các phát ngẫu nhiên theo các hướng khác nhau và để lại vũng chất lỏng lớn hơn", -- Isaac's Heart
	["5.100.319"] = {75, 150}, -- Cain's Other Eye
	["5.100.320"] = {15, 30}, -- ???'s Only Friend
	["5.100.360"] = {75, 150, 100, 200}, -- Incubus (+ Lilith exception)
	["5.100.365"] = {30, 60}, -- Lost Fly
	["5.100.384"] = {"5-20", "10-40"}, -- Lil Gurdy
	["5.100.389"] = {"7-8", "6"}, -- Rune Bag
	["5.100.467"] = {10, 20}, -- Finger!
	["5.100.468"] = {75, 150}, -- Shade
	["5.100.491"] = {"7", "6"}, -- Acid Baby
	["5.100.500"] = {"7-8", "6"}, -- Sack of Sacks
	["5.100.504"] = {3.5, 7}, -- Brown Nugget
	["5.100.508"] = {1.5, 3}, -- Mom's Razor
	["5.100.509"] = {3.5, 7, 20, 40}, -- Bloodshot Eye
	
	["5.100.565"] = "Sát thương gấp đôi khi thân thiện", -- Blood Puppy
	["5.100.569"] = "Nếu kích hoạt, cấp thêm sát thương và tốc độ", -- Blood Oath
	["5.100.575"] = {1.5, 3}, -- The Intruder
	["5.100.581"] = {15, 30}, -- Psy Fly
	["5.100.584"] = "Gấp đôi sát thương nước mắt và tiếp xúc của linh hồn", -- Book of Virtues
	["5.100.605"] = {36, 72}, -- The Scooper
	["5.100.607"] = {3.5, 7, 5.25, 10.5}, -- Boiled Baby
	["5.100.608"] = {3.5, 7}, -- Freezer Baby
	["5.100.610"] = {45, 90, "một đợt sóng đá", "4 {{CR}}đợt sóng đá", 6.5, 13}, -- Bird Cage
	["5.100.612"] = "Cấp hiệu ứng Holy Mantle cho Lost Soul", -- Lost Soul
	["5.100.626"] = {25, 50}, -- Knife Piece 1
	["5.100.627"] = {25, 50}, -- Knife Piece 2
	["5.100.629"] = {3, 6}, -- Bot Fly
	["5.100.635"] = "Khi sử dụng, bắn 8 nước mắt từ vị trí của người chơi", -- Stitches
	["5.100.645"] = {3.5, 7}, -- Tinytoma
	["5.100.649"] = {3, 6, 2, 4}, -- Fruity Plum
	["5.100.650"] = "Sát thương tiếp xúc gấp đôi", -- Plum Flute
	["5.100.652"] = {17.5, 35}, -- Cube Baby
	["5.100.655"] = {10.5, 21, "Không có thưởng sát thương BFFS! cho bất kỳ bạn đồng hành nào khi Spin to Win đang được sử dụng"}, -- Spin to Win
	["5.100.679"] = {52.5, 105}, -- Lil Abaddon
	["5.100.681"] = "Sát thương gấp đôi", -- Lil Portal
	["5.100.682"] = {8, 16}, -- Worm Friend
	["5.100.685"] = "Gấp đôi sát thương nước mắt và tiếp xúc của linh hồn", -- Jar of Wisps
	["5.100.698"] = {37.5, 75}, -- Twisted Pair
	["5.100.702"] = "Gấp đôi sát thương nước mắt và tiếp xúc của linh hồn", -- Vengeful Spirit
	["5.100.706"] = "Sát thương của châu chấu tăng 25%", -- Abyss
	["5.100.712"] = "Gấp đôi sát thương tiếp xúc của vệ tinh", -- Lemegeton
	["5.100.713"] = "Sát thương của cục máu gấp đôi", -- Sumptorium
	["5.100.728"] = {75, 150, 100, 200}, -- Gello (+ Lilith exception)
	
	["5.300.96"] = "Gấp đôi sát thương nước mắt và tiếp xúc của linh hồn", -- Soul of Bethany
	["5.350.142"] = "Gấp đôi sát thương nước mắt và tiếp xúc của linh hồn", -- Beth's Faith
	["5.350.182"] = "Gấp đôi sát thương nước mắt và tiếp xúc của linh hồn", -- Beth's Essence
	["5.350.176"] = "Sát thương của cục máu gấp đôi", -- Lil Clot
	["5.350.186"] = "Sát thương của châu chấu tăng 25%", -- Apollyon's Best Friend
	["Tainted Lilith"] = "Sát thương nước mắt của Gello gấp đôi", -- Gello (for BFFS pedestal)
}
EID:updateDescriptionsViaTable(repBFFSSynergies, EID.descriptions[languageCode].BFFSSynergies)

---------- Trinkets ----------

local repTrinkets={
	[10] = {"10", "Wiggle Worm", "↑ {{Tears}} +0.4 Nước mắt#Nước mắt quang phổ#Nước mắt của Isaac di chuyển theo dạng sóng"}, -- Wiggle Worm
	[11] = {"11", "Ring Worm", "↑ {{Tears}} +0.47 Nước mắt#Nước mắt quang phổ#Nước mắt của Isaac di chuyển theo xoắn ốc với tốc độ cao"}, -- Ring Worm
	[15] = {"15", "Lucky Rock", "{{Coin}} Phá đá có 33% cơ hội tạo ra đồng xu"},-- Lucky Rock
	[16] = {"16", "Mom's Toenail", "Chân của Mom dậm xuống một điểm ngẫu nhiên trong phòng mỗi 20 giây"}, -- Mom's Toenail
	[24] = {"24", "Butt Penny", "{{Coin}} 20% cơ hội cao hơn để đồng xu xuất hiện từ phân#{{Poison}} Nhặt đồng xu khiến Isaac xì hơi, gây độc và đẩy lùi kẻ thù cùng đạn"}, -- Butt Penny
	[26] = {"26", "Hook Worm", "↑ {{Tears}} +0.4 Nước mắt#↑ {{Range}} +1.5 Tầm bắn#Nước mắt quang phổ#Nước mắt của Isaac di chuyển theo hình góc cạnh"}, -- Hook Worm
	[32] = {"32", "Liberty Cap", "25% cơ hội nhận hiệu ứng nấm ngẫu nhiên mỗi phòng"}, -- Liberty Cap
	[33] = {"33", "Umbilical Cord", "{{HalfHeart}} Có nửa Trái tim đỏ hoặc ít hơn sẽ nhận {{Collectible100}} Little Steven#{{Collectible318}} Nhận sát thương có cơ hội cao tạo ra bạn đồng hành Gemini trong phòng"}, -- Umbilical Cord
	[39] = {"39", "Cancer", "↑ {{Tears}} +1 Tốc độ bắn"}, -- Cancer
	[48] = {"48", "A Missing Page", "Nhận sát thương có 5% cơ hội gây 80 sát thương cho tất cả kẻ thù trong phòng#{{Collectible35}} Trái tim đen và hiệu ứng kiểu Necronomicon gây sát thương gấp đôi"}, -- A Missing Page
	[49] = {"49", "Bloody Penny", "{{HalfHeart}} Nhặt đồng xu có 25% cơ hội tạo nửa Trái tim đỏ#Cơ hội cao hơn từ đồng 5 xu và 10 xu"}, -- Bloody Penny
	[50] = {"50", "Burnt Penny", "{{Bomb}} Nhặt đồng xu có 25% cơ hội tạo bom#Cơ hội cao hơn từ đồng 5 xu và 10 xu"}, -- Burnt Penny
	[51] = {"51", "Flat Penny", "{{Key}} Nhặt đồng xu có 25% cơ hội tạo chìa khóa#Cơ hội cao hơn từ đồng 5 xu và 10 xu"}, -- Flat Penny
	[65] = {"65", "Tape Worm", "↑ {{Range}} +3 Tầm bắn"}, -- Tape Worm
	[66] = {"66", "Lazy Worm", "↓ {{Shotspeed}} -0.5 Tốc độ đạn"}, -- Lazy Worm
	[67] = {"67", "Cracked Dice", "Nhận sát thương có 50% cơ hội kích hoạt một trong các hiệu ứng sau:#{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible285}} D10#{{Collectible386}} D12#{{Collectible166}} D20"}, -- Cracked Dice
	[69] = {"69", "Faded Polaroid", "Ngụy trang ngẫu nhiên cho Isaac#{{Confusion}} Gây rối kẻ thù#Có thể dùng để mở \"Cửa Lạ\" trong \"Depths II\""}, -- Faded Polaroid
	[80] = {"80", "Black Feather", "↑ {{Damage}} +0.5 Sát thương cho mỗi vật phẩm \"Evil up\" đang giữ"}, -- Black Feather
	[92] = {"92", "Cracked Crown", "↑ x1.33 Hệ số chỉ số (trừ tốc độ bắn) cho các chỉ số trên 1 {{Speed}} tốc độ, 2.73 {{Tears}} nước mắt, 3.5 {{Damage}} sát thương, 6.5 {{Range}} tầm bắn, 1 {{Shotspeed}} tốc độ đạn"}, -- Cracked Crown
	[96] = {"96", "Ouroboros Worm", "↑ +0.4 Nước mắt#↑ {{Range}} +1.5 Tầm bắn#Nước mắt quang phổ#Cơ hội cho nước mắt tự tìm#{{Luck}} 100% cơ hội ở 9 may mắn#Nước mắt của Isaac di chuyển nhanh theo hình xoắn ốc"}, -- Ouroboros Worm
	[98] = {"98", "Nose Goblin", "5% cơ hội bắn nước mắt dính tự tìm#{{Damage}} Đờm gây sát thương của Isaac một lần mỗi giây#Đờm dính trong 10 giây"}, -- Nose Goblin
	[101] = {"101", "Dim Bulb", "Giữ vật phẩm hoạt động hoàn toàn không nạp năng lượng sẽ nhận:#↑ {{Speed}} +0.5 Tốc độ#↑ {{Tears}} +0.5 Nước mắt#↑ {{Damage}} +1.5 Sát thương#↑ {{Range}} +1.5 Tầm bắn#↑ {{Shotspeed}} +0.3 Tốc độ đạn#↑ {{Luck}} +2 May mắn"}, -- Dim Bulb
	[107] = {"107", "Crow Heart", "Nhận sát thương làm cạn Trái tim đỏ trước Trái tim hồn/đen#{{Warning}} Sát thương Trái tim đỏ có thể làm giảm cơ hội Phòng Quỷ/Thiên thần"}, -- Crow Heart
	[110] = {"110", "Silver Dollar", "{{Shop}} Cửa hàng xuất hiện trong Womb và Corpse"}, -- Silver Dollar
	[111] = {"111", "Bloody Crown", "{{TreasureRoom}} Phòng Kho báu xuất hiện trong Womb và Corpse"}, -- Bloody Crown
	[119] = {"119", "Stem Cell", "{{HealingRed}} Vào tầng mới hồi nửa số Trái tim đỏ/Xương trống của Isaac#{{HealingRed}} Hồi tối thiểu nửa trái tim"}, -- Stem Cell
	[128] = {"128", "Finger Bone", "{{EmptyBoneHeart}} Nhận sát thương có 4% cơ hội nhận Trái tim xương"}, -- Finger Bone
	[129] = {"129", "Jawbreaker", "{{Damage}} 10% cơ hội bắn răng gây sát thương gấp 3.2 lần của Isaac#{{Luck}} 100% cơ hội ở 9 may mắn"}, -- Jawbreaker
	[130] = {"130", "Chewed Pen", "{{Slow}} 10% cơ hội bắn nước mắt làm chậm#{{Luck}} 100% cơ hội ở 18 may mắn"}, -- Chewed Pen
	[131] = {"131", "Blessed Penny", "{{HalfSoulHeart}} Nhặt đồng xu có 17% cơ hội tạo nửa Trái tim hồn#Cơ hội cao hơn từ đồng 5 xu và 10 xu"}, -- Blessed Penny
	[132] = {"132", "Broken Syringe", "25% cơ hội nhận hiệu ứng ống tiêm ngẫu nhiên mỗi phòng"}, -- Broken Syringe
	[133] = {"133", "Short Fuse", "Bom của Isaac nổ nhanh hơn"}, -- Short Fuse
	[134] = {"134", "Gigante Bean", "Tăng kích thước xì hơi"}, -- Gigante Bean
	[135] = {"135", "A Lighter", "{{Burning}} Vào phòng có 20% cơ hội đốt cháy kẻ thù ngẫu nhiên"}, -- A Lighter
	[136] = {"136", "Broken Padlock", "Cửa, khối chìa khóa và rương vàng có thể mở bằng vụ nổ#Vụ nổ cũng có thể mở \"Cửa Lạ\" trong \"Depths II\""}, -- Broken Padlock
	[137] = {"137", "Myosotis", "Vào tầng mới tạo tối đa 4 vật phẩm nhặt chưa lấy từ tầng trước trong phòng bắt đầu"}, -- Myosotis
	[138] = {"138", "'M", "Sử dụng vật phẩm hoạt động sẽ đổi lại nó"}, -- 'M
	[139] = {"139", "Teardrop Charm", "{{Luck}} +4 May mắn cho các hiệu ứng nước mắt dựa trên may mắn"}, -- Teardrop Charm
	[140] = {"140", "Apple of Sodom", "Nhặt Trái tim đỏ có thể biến chúng thành nhện xanh#Hiệu ứng hoạt động ngay cả khi đầy máu#Hiệu ứng có thể tiêu thụ trái tim cần để hồi máu"}, -- Apple of Sodom
	[141] = {"141", "Forgotten Lullaby", "Gấp đôi tốc độ bắn của bạn đồng hành"}, -- Forgotten Lullaby
	[142] = {"142", "Beth's Faith", "{{Collectible584}} Vào tầng mới tạo 4 wisp Book of Virtues"}, -- Beth's Faith
	[143] = {"143", "Old Capacitor", "{{Battery}} Ngăn vật phẩm hoạt động nạp năng lượng khi dọn phòng#{{Battery}} Dọn phòng có 20% cơ hội tạo pin#{{Luck}} 33% cơ hội ở 5 may mắn"}, -- Old Capacitor
	[144] = {"144", "Brain Worm", "Nước mắt xoay 90 độ để nhắm vào kẻ thù mà chúng có thể đã bỏ lỡ"}, -- Brain Worm
	[145] = {"145", "Perfection", "↑ {{Luck}} +10 May mắn#Nhận sát thương phá hủy bùa"}, -- Perfection
	[146] = {"146", "Devil's Crown", "{{RedTreasureRoom}} Vật phẩm Phòng Kho báu được thay bằng giao kèo quỷ"}, -- Devil's Crown
	[147] = {"147", "Charged Penny", "{{Battery}} Nhặt đồng xu có 17% cơ hội thêm 1 lần nạp cho vật phẩm hoạt động#Cơ hội cao hơn từ đồng 5 xu và 10 xu"}, -- Charged Penny
	[148] = {"148", "Friendship Necklace", "Tất cả bạn đồng hành bay quanh Isaac"}, -- Friendship Necklace
	[149] = {"149", "Panic Button", "Ngay trước khi nhận sát thương, sử dụng vật phẩm hoạt động nếu đã nạp"}, -- Panic Button
	[150] = {"150", "Blue Key", "Cửa khóa có thể mở miễn phí, nhưng Isaac phải dọn một phòng từ tầng Hush trước khi vào phòng phía sau"}, -- Blue Key
	[151] = {"151", "Flat File", "Thu lại hầu hết gai nhọn, khiến chúng vô hại#Cũng ảnh hưởng đến cửa {{CursedRoom}} Phòng Nguyền, kẻ giả dạng và mọi chướng ngại gai"}, -- Flat File
	[152] = {"152", "Telescope Lens", "{{PlanetariumChance}} +9% cơ hội Phòng Thiên văn#Thêm +15% cơ hội nếu chưa vào Phòng Thiên văn#Phòng Thiên văn có thể xuất hiện trong Womb và Corpse"}, -- Telescope Lens
	[153] = {"153", "Mom's Lock", "25% cơ hội nhận hiệu ứng vật phẩm Mom ngẫu nhiên mỗi phòng"}, -- Mom's Lock
	[154] = {"154", "Dice Bag", "50% cơ hội mỗi phòng mới nhận một xúc xắc dùng một lần#Xúc xắc biến mất khi rời đi#Xúc xắc không chiếm ô thuốc/lá bài"}, -- Dice Bag
	[155] = {"155", "Holy Crown", "Tạo một {{TreasureRoom}} Phòng Kho báu và {{Shop}} Cửa hàng trong Cathedral"}, -- Holy Crown
	[156] = {"156", "Mother's Kiss", "{{Heart}} +1 Ô chứa trái tim khi giữ"}, -- Mother's Kiss
	[157] = {"157", "Torn Card", "Cứ sau 15 phát bắn, Isaac bắn một nước mắt {{Collectible149}} Ipecac + {{Collectible5}} My Reflection với tầm bắn rất cao"}, -- Torn Card
	[158] = {"158", "Torn Pocket", "Nhận sát thương khiến Isaac làm rơi 2 đồng xu, chìa khóa hoặc bom của mình#Vật phẩm nhặt có thể được thay bằng biến thể khác, như chìa khóa vàng, đồng 5 xu, 10 xu, v.v."}, -- Torn Pocket
	[159] = {"159", "Gilded Key", "{{Key}} +1 Chìa khóa khi nhặt#{{GoldenChest}} Thay tất cả rương (trừ Cũ/Mega) bằng rương vàng#{{GoldenChest}} Rương vàng có thể chứa thêm lá bài, thuốc hoặc bùa"}, -- Gilded Key
	[160] = {"160", "Lucky Sack", "{{GrabBag}} Vào tầng mới tạo một bao tải"}, -- Lucky Sack
	[161] = {"161", "Wicked Crown", "Tạo một {{TreasureRoom}} Phòng Kho báu và {{Shop}} Cửa hàng trong Sheol"}, -- Wicked Crown
	[162] = {"162", "Azazel's Stump", "{{Player7}} Dọn phòng có 50% cơ hội biến người chơi thành Azazel#{{Timer}} Hiệu ứng kéo dài đến khi dọn và rời một phòng khác"}, -- Azazel's Stump
	[163] = {"163", "Dingle Berry", "Tất cả kẻ thù Dip (phân nhỏ) đều thân thiện#Dọn phòng tạo 1 Dip ngẫu nhiên"}, -- Dingle Berry
	[164] = {"164", "Ring Cap", "{{Bomb}} Tạo thêm 1 bom cho mỗi bom đặt"}, -- Ring Cap
	[165] = {"165", "Nuh Uh!", "Từ Womb trở đi, thay tất cả đồng xu và chìa khóa bằng bom, trái tim, thuốc, lá bài, bùa, pin hoặc ruồi địch"}, -- Nuh Uh!
	[166] = {"166", "Modeling Clay", "50% cơ hội nhận hiệu ứng của vật phẩm thụ động ngẫu nhiên mỗi phòng"}, -- Modeling Clay
	[167] = {"167", "Polished Bone", "Dọn phòng có 25% cơ hội tạo một Bony thân thiện"}, -- Polished Bone
	[168] = {"168", "Hollow Heart", "{{EmptyBoneHeart}} Vào tầng mới nhận +1 Trái tim xương"}, -- Hollow Heart
	[169] = {"169", "Kid's Drawing", "{{Guppy}} Được tính là 1 vật phẩm cho biến hình Guppy khi giữ"}, -- Kid's Drawing
	[170] = {"170", "Crystal Key", "{{Collectible580}} Dọn phòng có 33% cơ hội tạo phòng Chìa khóa đỏ#Cơ hội thấp hơn khi ở phòng đỏ"}, -- Crystal Key
	[171] = {"171", "Keeper's Bargain", "{{DevilRoom}} 50% cơ hội để giao kèo quỷ tốn đồng xu thay vì trái tim"}, -- Keeper's Bargain
	[172] = {"172", "Cursed Penny", "Nhặt đồng xu dịch chuyển Isaac đến một phòng ngẫu nhiên#Có thể dịch chuyển đến phòng bí mật"}, -- Cursed Penny
	[173] = {"173", "Your Soul", "{{DevilRoom}} Cho phép Isaac lấy 1 vật phẩm Phòng Quỷ miễn phí#{{Warning}} Giao kèo quỷ miễn phí vẫn ảnh hưởng đến cơ hội Phòng Thiên thần"}, -- Your Soul
	[174] = {"174", "Number Magnet", "{{DevilChance}} +10% cơ hội Phòng Quỷ#Ngăn Krampus xuất hiện trong Phòng Quỷ#Phòng Quỷ là phiên bản đặc biệt với nhiều giao kèo, Trái tim đen và kẻ thù"}, -- Number Magnet
	[175] = {"175", "Strange Key", "Mở cửa đến tầng Hush bất kể thời gian#Sử dụng {{Collectible297}} Pandora's Box tiêu thụ chìa khóa và tạo 6 vật phẩm từ các nhóm ngẫu nhiên"}, -- Strange Key
	[176] = {"176", "Lil Clot", "Tạo một cục máu đông bắt chước chuyển động của Isaac#Sao chép chỉ số, hiệu ứng nước mắt và 35% sát thương của Isaac#Hồi sinh mỗi phòng"}, -- Lil Clot
	[177] = {"177", "Temporary Tattoo", "{{Chest}} Dọn {{ChallengeRoom}} Phòng Thử thách tạo một rương#Dọn {{BossRushRoom}} Phòng Thử thách Trùm tạo một vật phẩm"}, -- Temporary Tattoo
	[178] = {"178", "Swallowed M80", "Nhận sát thương có 50% cơ hội khiến Isaac phát nổ#Không phá hủy Máy Hiến máu hoặc Confessionals, nhưng tạo vật phẩm nhặt như thể đã phá"}, -- Swallowed M80
	[179] = {"179", "RC Remote", "bạn đồng hành bắt chước chuyển động của Isaac#Giữ nút thả ({{ButtonRT}}) để giữ bạn đồng hành tại chỗ"}, -- RC Remote
	[180] = {"180", "Found Soul", "Theo chuyển động của Isaac và bắn nước mắt quang phổ#Sao chép chỉ số, hiệu ứng nước mắt và 50% sát thương của Isaac#Sử dụng hầu hết vật phẩm hoạt động khi Isaac dùng#Chết trong một phát#Hồi sinh mỗi tầng"}, -- Found Soul
	[181] = {"181", "Expansion Pack", "Sử dụng vật phẩm hoạt động kích hoạt hiệu ứng của thêm 1-2 vật phẩm hoạt động nạp 1-2 lần"}, -- Expansion Pack
	[182] = {"182", "Beth's Essence", "Vào {{AngelRoom}} Phòng Thiên thần tạo 5 wisp#Quyên góp cho Người ăn xin có 25% cơ hội tạo wisp"}, -- Beth's Essence
	[183] = {"183", "The Twins", "50% cơ hội nhân đôi một bạn đồng hành mỗi phòng#Tặng {{Collectible8}} Brother Bobby hoặc {{Collectible67}} Sister Maggy nếu Isaac không có bạn đồng hành nào"}, -- The Twins
	[184] = {"184", "Adoption Papers", "{{Shop}} Cửa hàng bán bạn đồng hành với giá 10 đồng xu"}, -- Adoption Papers
	[185] = {"185", "Cricket Leg", "Giết kẻ thù có 17% cơ hội tạo một châu chấu ngẫu nhiên"}, -- Cricket Leg
	[186] = {"186", "Apollyon's Best Friend", "{{Collectible706}} Tặng 1 châu chấu Abyss"}, -- Apollyon's Best Friend
	[187] = {"187", "Broken Glasses", "{{TreasureRoom}} 50% cơ hội thêm một vật phẩm mù trong Phòng Kho báu#50% cơ hội tiết lộ vật phẩm mù trong Phòng Kho báu đường phụ"}, -- Broken Glasses
	[188] = {"188", "Ice Cube", "Vào phòng có 20% cơ hội hóa đá kẻ thù ngẫu nhiên#{{Freezing}} Giết kẻ thù hóa đá sẽ đóng băng nó"}, -- Ice Cube
	[189] = {"189", "Sigil of Baphomet", "Giết kẻ thù khiến Isaac bất tử trong 1 giây#Bất tử cộng dồn với các lần giết liên tiếp"}, -- Sigil of Baphomet	
}
EID:updateDescriptionsViaTable(repTrinkets, EID.descriptions[languageCode].trinkets)

EID.descriptions[languageCode].goldenTrinket = "Hiệu ứng tăng gấp đôi"
EID.descriptions[languageCode].tripledTrinket = "Hiệu ứng tăng gấp ba!"
EID.descriptions[languageCode].quadrupledTrinket = "Hiệu ứng tăng gấp bốn!"

-- Most trinkets that can be doubled or tripled just have the numbers in their description multiplied
-- A few trinkets have odd edge cases where their effect completely changes, or is different depending on if it's Mom's Box or Golden
EID.descriptions[languageCode].goldenTrinketEffects = {
	-- Broken Remote (replace with Teleport 2.0 info)
	[4] = { "{{Collectible419}} Sử dụng vật phẩm kích hoạt dịch chuyển Isaac đến {{ColorGold}}một phòng chưa được dọn sạch{{CR}}#Thứ tự ưu tiên: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{Planetarium}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"}, -- Teleport 2.0
	-- Broken Magnet (find+replace): find Phrase #1 in the localized description, change it to Phrase #2 for doubled
	[6] = { "đồng xu", "vật phẩm nhặt được" },
	-- Rosary Bead append
	[7] = { "{{Collectible72}} Rosary được thêm vào tất cả kho vật phẩm" },
	-- Golden Store Credit: full replace
	[13] = { "{{Shop}} {{ColorGold}}Cho phép Isaac lấy vật phẩm trong Cửa hàng miễn phí{{CR}}#Cơ hội biến thành {{Trinket13}} Store Credit thông thường sau mỗi lần mua" },
	-- Lucky Rock append (Gold / Mom's Box / Both)
	[15] = { "RĐá có thể làm rơi 2 đồng xu", "Đá có thể làm rơi 2 đồng xu", "Đá có thể làm rơi 3 đồng xu" },
	-- Golden Mysterious Candy makes Golden Poop
	[25] = { "phân", "phân vàng" },
	-- Isaac's Fork (find+replace): find Phrase #1 in the localized description, change it to Phrase #2 or 3 for doubled/tripled
	[46] = { "nửa trái tim", "một trái tim", "một trái tim rưỡi" },
	-- Tick (replace): A full replacement for Golden / Mom's Box / Both, as the Golden version can be removed and only one effect is tripled
	[53] = {
		"{{HealingRed}} Hồi {{ColorGold}}2{{CR}} trái tim khi vào {{BossRoom}}Boss Room#-{{ColorGold}}30{{CR}}% máu boss#{{ColorGold}}Có thể tháo được!",
		"{{HealingRed}} Hồi {{ColorGold}}2{{CR}} trái tim khi vào {{BossRoom}}Boss Room#-{{ColorGold}}30{{CR}}% máu boss#{{Warning}} Một khi nhặt lên, không thể tháo bỏ#Chỉ có thể tháo bằng {{Trinket41}}Match Stick hoặc nuốt chửng",
		"{{HealingRed}} Hồi {{ColorGold}}3{{CR}} trái tim khi vào {{BossRoom}}Boss Room#-{{ColorGold}}30{{CR}}% máu boss#{{ColorGold}}Có thể tháo được!",
	},
	-- Rainbow Worm (append): With Mom's Box, it gives 2 copies of the temp worm, and doubles 1 of those copies, for triple effect
	[64] = { "Tăng chỉ số của sâu gấp đôi", "Tăng chỉ số của sâu gấp ba", "Tăng chỉ số của sâu gấp bốn", },
	-- Error (append): Same behavior as Rainbow Worm
	[75] = { "Hiệu ứng trang sức được tăng gấp đôi nếu có thể", "Hiệu ứng trang sức được tăng gấp ba nếu có thể", "Hiệu ứng trang sức được tăng gấp bốn nếu có thể", },
	-- NO!
	[88] = { "Ngăn vật phẩm Chất lượng {{Quality0}} xuất hiện" },
	-- Gilded Key (Golden version only): it doesn't give a key. bug that might get fixed (maybe it'll give a Golden Key?)
	[159] = { "Thay tất cả rương (trừ Rương Cũ/Rương Mega) bằng rương vàng#Rương vàng có thể chứa thêm lá bài, viên thuốc hoặc trang sức" },
	-- The Twins
	[183] = { "Có thể sao chép/cấp 2 bạn đồng hành", "Có thể sao chép/cấp 2 bạn đồng hành", "Có thể sao chép/cấp 3 bạn đồng hành" },
}

--[[
Localizations may choose to overwrite specific data from EID.GoldenTrinketData in this table. For advanced users only.
Example: If French uses "Double" instead of "2x" for Purple Heart, they can do:
EID.descriptions[languageCode].goldenTrinketData = {
	[5] = {findReplace = true, mult = 2},
}
and then place
	[5] = { "Double", "Quadruple" },
in their goldenTrinketEffects
]]
EID.descriptions[languageCode].goldenTrinketData = { }

---------- Cards ----------

local repCards={
	[2] = {"2", "I - The Magician", "{{Timer}} Nhận trong phòng:#↑ {{Range}} +3 Tầm bắn#Nước mắt tự tìm"}, -- I - The Magician
	[12] = {"12", "XI - Strength", "{{Timer}} Nhận trong phòng:#↑ {{Heart}} +1 Máu#↑ {{Speed}} +0.3 Tốc độ#↑ {{Damage}} +0.3 Sát thương#↑ {{Damage}} x1.5 Hệ số sát thương#↑ {{Range}} +2.5 Tầm bắn"}, -- XI - Strength
	[16] = {"16", "XV - The Devil", "{{Timer}} Nhận trong phòng:#↑ {{Damage}} +2 Sát thương"}, -- XV - The Devil
	[18] = {"18", "XVII - The Stars", "{{TreasureRoom}} Dịch chuyển Isaac đến Phòng Kho báu#{{Planetarium}} Nếu có Phòng Thiên văn, dịch chuyển đến đó thay vì vậy"}, -- XVII - The Stars
	[20] = {"20", "XIX - The Sun", "{{HealingRed}} Đầy máu#Gây 100 sát thương cho tất cả kẻ thù#{{Timer}} Hiệu ứng bản đồ đầy đủ cho tầng (trừ {{SuperSecretRoom}} Phòng Bí mật Đặc biệt / {{UltraSecretRoom}} Phòng Bí mật Tối thượng)#{{CurseDarkness}} Xóa Lời nguyền Bóng tối"}, -- XIX - The Sun
	[22] = {"22", "XXI - The World", "{{Timer}} Hiệu ứng bản đồ đầy đủ cho tầng (trừ {{SuperSecretRoom}} Phòng Bí mật Đặc biệt / {{UltraSecretRoom}} Phòng Bí mật Tối thượng)"}, -- XXI - The World
	[27] = {"27", "Ace of Clubs", "{{Bomb}} Biến tất cả vật phẩm nhặt, rương và kẻ thù không phải trùm thành bom ngẫu nhiên"}, -- Ace of Clubs
	[28] = {"28", "Ace of Diamonds", "{{Coin}} Biến tất cả vật phẩm nhặt, rương và kẻ thù không phải trùm thành đồng xu ngẫu nhiên"}, -- Ace of Diamonds
	[29] = {"29", "Ace of Spades", "{{Key}} Biến tất cả vật phẩm nhặt, rương và kẻ thù không phải trùm thành chìa khóa ngẫu nhiên"}, -- Ace of Spades
	[30] = {"30", "Ace of Hearts", "{{UnknownHeart}} Biến tất cả vật phẩm nhặt, rương và kẻ thù không phải trùm thành trái tim ngẫu nhiên"}, -- Ace of Hearts
	[34] = {"34", "Ehwaz", "Tạo một cửa sập đến tầng tiếp theo#{{LadderRoom}} Tạo không gian bò nếu dùng trên ô trang trí (cỏ, đá nhỏ, giấy, ngọc, v.v.)"}, -- Ehwaz
	[39] = {"39", "Algiz", "{{Timer}} Khiến Isaac bất tử trong 20 giây"}, -- Algiz
	[42] = {"42", "Chaos Card", "Ném lá bài theo hướng Isaac đang di chuyển khi sử dụng#Giết ngay lập tức BẤT KỲ kẻ thù nào nó chạm vào (trừ Delirium hoặc Beast)"}, -- Chaos Card
	[51] = {"51", "Holy Card", "{{HolyMantle}} Khiên Holy Mantle dùng một lần (ngăn sát thương một lần)"}, -- Holy Card
	[52] = {"52", "Huge Growth", "{{Timer}} Nhận trong phòng:#↑ {{Damage}} +7 Sát thương#↑ {{Range}} +3 Tầm bắn#Tăng kích thước#Cho phép Isaac phá đá bằng cách đi vào chúng"}, -- Huge Growth
	[55] = {"55", "Rune Shard", "{{Rune}} Kích hoạt hiệu ứng rune ngẫu nhiên#Hiệu ứng rune yếu hơn"}, -- Rune Shard
	[56] = {"56", "0 - The Fool?", "Làm rơi tất cả trái tim của Isaac trừ một và tất cả vật phẩm nhặt xuống sàn#Đồng xu và bom được làm rơi dưới dạng {{Collectible74}} The Quarter hoặc {{Collectible19}} Boom! nếu có thể"}, -- 0 - The Fool?
	[57] = {"57", "I - The Magician?", "{{Timer}} Tặng hào quang đẩy lùi kẻ thù và đạn trong 60 giây"}, -- I - The Magician?
	[58] = {"58", "II - The High Priestess?", "{{Timer}} Chân của Mom cố dậm lên Isaac trong 60 giây"}, -- II - The High Priestess?
	[59] = {"59", "III - The Empress?", "{{Timer}} Nhận trong 60 giây:#↑ {{Heart}} +2 Máu#↑ {{Tears}} +1.5 Tốc độ bắn#↓ {{Speed}} -0.1 Tốc độ"}, -- III - The Empress?
	[60] = {"60", "IV - The Emperor?", "Dịch chuyển Isaac đến một phòng Trùm phụ có thể đánh bại để nhận vật phẩm#Trùm được chọn từ hai tầng sâu hơn tầng hiện tại"}, -- IV - The Emperor?
	[61] = {"61", "V - The Hierophant?", "{{EmptyBoneHeart}} Tạo 2 Trái tim xương"}, -- V - The Hierophant?
	[62] = {"62", "VI - The Lovers?", "Tạo một vật phẩm từ nhóm vật phẩm của phòng hiện tại#{{BrokenHeart}} Chuyển 1 ô chứa trái tim hoặc 2 Trái tim hồn thành Trái tim vỡ"}, -- VI - The Lovers?
	[63] = {"63", "VII - The Chariot?", "{{Timer}} Nhận trong 10 giây:#↑ {{Tears}} x4 Hệ số tốc độ bắn#Bất tử nhưng không thể di chuyển"}, -- VII - The Chariot?
	[64] = {"64", "VIII - Justice?", "{{GoldenChest}} Tạo 2-4 rương vàng"}, -- VIII - Justice?
	[65] = {"65", "IX - The Hermit?", "{{Coin}} Biến tất cả vật phẩm nhặt và vật phẩm trong phòng thành số đồng xu bằng giá trị Cửa hàng của chúng#Nếu không có gì để biến, tạo một Penny thay thế"}, -- IX - The Hermit?
	[66] = {"66", "X - Wheel of Fortune?", "{{DiceRoom}} Kích hoạt hiệu ứng Phòng Xúc xắc ngẫu nhiên"}, -- X - Wheel of Fortune?
	[67] = {"67", "XI - Strength?", "{{Timer}} Kẻ thù trong phòng bị {{Slow}} làm chậm và nhận sát thương gấp đôi trong 30 giây"}, -- XI - Strength?
	[68] = {"68", "XII - The Hanged Man?", "{{Timer}} Nhận trong 30 giây:#↓ {{Speed}} -0.1 Tốc độ#Bắn ba phát#{{Coin}} Kẻ thù bị giết làm rơi đồng xu"}, -- XII - The Hanged Man?
	[69] = {"69", "XIII - Death?", "{{Collectible545}} Kích hoạt Book of the Dead#Tạo thực thể Xương cho mỗi kẻ thù bị giết trong phòng"}, -- XIII - Death?
	[70] = {"70", "XIV - Temperance?", "{{Pill}} Ép Isaac ăn 5 viên thuốc ngẫu nhiên"}, -- XIV - Temperance?
	[71] = {"71", "XV - The Devil?", "{{Timer}} Nhận trong 60 giây:#{{Collectible33}} Kích hoạt The Bible (bay)#{{Collectible390}} bạn đồng hành Seraphim#{{MomsHeart}} Giết ngay lập tức Chân của Mom và Trái tim của Mom#{{Warning}} Giết Isaac khi dùng với Satan"}, -- XV - The Devil?
	[72] = {"72", "XVI - The Tower?", "Tạo 7 cụm đá và chướng ngại vật ngẫu nhiên#Cụm thường chứa Đá Tinted"}, -- XVI - The Tower?
	[73] = {"73", "XVII - The Stars?", "Loại bỏ vật phẩm thụ động lâu đời nhất của Isaac (bỏ qua vật phẩm khởi đầu)#Tạo 2 vật phẩm ngẫu nhiên từ nhóm vật phẩm của phòng hiện tại"}, -- XVII - The Stars?
	[74] = {"74", "XVIII - The Moon?", "{{UltraSecretRoom}} Dịch chuyển Isaac đến Phòng Bí mật Tối thượng#Đường trở lại sẽ làm bằng các phòng đỏ"}, -- XVIII - The Moon?
	[75] = {"75", "XIX - The Sun?", "{{Timer}} Nhận cho tầng:#↑ {{Damage}} +1.5 Sát thương#Bay và nước mắt quang phổ#{{BoneHeart}} Chuyển ô chứa trái tim thành Trái tim xương (hoàn nguyên)#{{CurseDarkness}} Lời nguyền Bóng tối"}, -- XIX - The Sun?
	[76] = {"76", "XX - Judgement?", "{{RestockMachine}} Tạo một Máy Đổi mới"}, -- XX - Judgement?
	[77] = {"77", "XXI - The World?", "{{LadderRoom}} Tạo một cửa sập đến không gian bò"}, -- XXI - The World?
	[78] = {"78", "Cracked Key", "{{Collectible580}} Chìa khóa đỏ dùng một lần"}, -- Cracked Key
	[79] = {"79", "Queen of Hearts", "{{Heart}} Tạo 1-20 Trái tim đỏ"}, -- Queen of Hearts
	[80] = {"80", "Wild Card", "Sao chép hiệu ứng của viên thuốc, lá bài, rune, đá hồn hoặc vật phẩm hoạt động được dùng gần đây nhất"}, -- Wild Card
	[81] = {"81", "Soul of Isaac", "Khiến tất cả bệ vật phẩm trong phòng chuyển đổi giữa hai vật phẩm khác nhau"}, -- Soul of Isaac
	[82] = {"82", "Soul of Magdalene", "{{Timer}} Hiệu ứng kéo dài trong phòng:#{{HalfHeart}} Kẻ thù bị giết làm rơi nửa Trái tim đỏ biến mất sau 2 giây"}, -- Soul of Magdalene
	[83] = {"83", "Soul of Cain", "Mở tất cả cửa trong phòng#{{Collectible580}} Tạo phòng đỏ trên mọi tường có thể"}, -- Soul of Cain
	[84] = {"84", "Soul of Judas", "{{Collectible705}} Kích hoạt Dark Arts với thời gian 3 giây#Tạm thời ↑ {{Damage}} tăng sát thương cho mỗi kẻ thù/đạn trúng"}, -- Soul of Judas
	[85] = {"85", "Soul of ???", "{{Poison}} Gây ra 8 tiếng xì hơi độc với vệt nâu, sau đó nhanh chóng tạo 7 Bom Mông#Đứng trên vệt nhận:#↑ {{Tears}} +1.5 Tốc độ bắn#↑ {{Damage}} +1 Sát thương"}, -- Soul of ???
	[86] = {"86", "Soul of Eve", "{{Timer}} 14 bạn đồng hành Chim Chết bay vào và tấn công kẻ thù trong phòng"}, -- Soul of Eve
	[87] = {"87", "Soul of Samson", "{{Collectible704}} Kích hoạt Berserk! trong 10 giây#{{Timer}} Mỗi lần giết tăng thời gian thêm 1 giây"}, -- Soul of Samson
	[88] = {"88", "Soul of Azazel", "{{Collectible441}} Bắn tia Mega Blast trong 7.5 giây"}, -- Soul of Azazel
	[89] = {"89", "Soul of Lazarus", "Isaac chết và ngay lập tức hồi sinh với nửa trái tim#Vật phẩm này tự động được dùng khi nhận sát thương chí mạng (làm mạng phụ)"}, -- Soul of Lazarus
	[90] = {"90", "Soul of Eden", "Đổi lại bệ vật phẩm và vật phẩm nhặt trong phòng#Vật phẩm đổi lại đến từ các nhóm vật phẩm ngẫu nhiên"}, -- Soul of Eden
	[91] = {"91", "Soul of the Lost", "{{Player10}} Biến người chơi thành The Lost trong phòng#Cho phép lấy một vật phẩm {{DevilRoom}} Phòng Quỷ miễn phí#Cho phép vào cửa Mausoleum hoặc Gehenna miễn phí"}, -- Soul of the Lost
	[92] = {"92", "Soul of Lilith", "Vĩnh viễn tặng một bạn đồng hành ngẫu nhiên"}, -- Soul of Lilith
	[93] = {"93", "Soul of the Keeper", "{{Coin}} Tạo 1-25 đồng xu ngẫu nhiên"}, -- Soul of the Keeper
	[94] = {"94", "Soul of Apollyon", "Tạo 15 châu chấu ngẫu nhiên"}, -- Soul of Apollyon
	[95] = {"95", "Soul of the Forgotten", "{{Player16}} Tạo The Forgotten làm nhân vật phụ trong phòng"}, -- Soul of the Forgotten
	[96] = {"96", "Soul of Bethany", "{{Collectible584}} Tạo 6 wisp Book of Virtues ngẫu nhiên"}, -- Soul of Bethany
	[97] = {"97", "Soul of Jacob and Esau", "{{Player20}} Tạo Esau làm nhân vật phụ trong phòng#Anh ta xuất hiện với số vật phẩm thụ động bằng người chơi"}, -- Soul of Jacob and Esau	
}
EID:updateDescriptionsViaTable(repCards, EID.descriptions[languageCode].cards)

-- Card Buffs caused by Tarot Cloth
-- Strings will be appended to the original description (with line breaks replaced with a Tarot Cloth icon)
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs (the new text will be colored Shiny Purple)
EID.descriptions[languageCode].tarotClothBuffs = {
	[2] = "Cũng cấp hiệu ứng {{Collectible34}} The Book of Belial", -- I - The Magician
	[3] = "Chân thứ hai giáng xuống ngay sau chân đầu tiên", -- II - The High Priestess
	[4] = {0.3, 0.6, 1.5, 3}, -- III - The Empress
	[5] = "{{SoulHeart}} +1 Trái Tim Linh Hồn nếu trùm chưa bị đánh bại", -- IV - The Emperor
	[6] = {2, 3}, -- V - The Hierophant
	[7] = {2, 3}, -- VI - The Lovers
	[8] = {6, 12}, -- VII - The Chariot
	[9] = {"Sinh ra {{ColorShinyPurple}}2{{CR}} {{UnknownHeart}} trái tim, {{Coin}} đồng xu, {{Bomb}} bom and {{Key}} chìa khóa ngẫu nhiên"}, -- VIII - Justice
	[10] = "Ngăn Greed xuất hiện trong Cửa hàng#Biến Cửa hàng Greed thành Cửa hàng bình thường nếu Greed đã bị đánh trong đó", -- IX - The Hermit
	[11] = {" một ", " 2 ", "Máy Đánh Bạc", "{{CR}}Máy Đánh Bạc", "Máy Bói Toán", "{{CR}}Máy Bói Toán"}, -- X - Wheel of Fortune
	[12] = {1, 2, 0.3, 0.6, 0.3, 0.6, 2.5, 5}, -- XI - Strength
	[14] = {40, 80}, -- XIII - Death
	[15] = {" một ", " 2 ", " Máy", " {{CR}}Máy", "Người Ăn Xin Quỷ", "{{CR}}Người Ăn Xin Quỷ"}, -- XIV - Temperance ( + Greed version)
	[16] = {2, 4}, -- XV - The Devil
	[17] = {6, 12}, -- XVI - The Tower
	[18] = "Nếu Phòng Kho Báu chưa được vào, nó sẽ có hai vật phẩm để chọn", -- XVII - The Stars
	[20] = {100, 400}, -- XIX - The Sun
	[21] = {" một ", " 2 ", "Người Ăn Xin ", "{{CR}}Người Ăn Xin ", "Người Ăn Xin Quỷ", "{{CR}}Người Ăn Xin Quỷ"}, -- XX - Judgement
	[56] = "àm rơi 6 vật phẩm gần đây nhất của Isaac cùng với các vật phẩm nhặt được", -- 0 - The Fool?
	[59] = {2, 3}, -- III - The Empress?
	[61] = {2, 3}, -- V - The Hierophant?
	[62] = "Kích hoạt hiệu ứng hai lần", -- VI - The Lovers?
	[64] = {4, 14, 2, 4}, -- VIII - Justice?
	[65] = "Sinh ra thêm 1 {{Coin}} đồng xu", -- IX - The Hermit?
	[66] = {" một ", " 2 ", "hiệu ứng", "{{CR}}hiệu ứng"}, -- X - Wheel of Fortune?
	[67] = {30, 60}, -- XI - Strength?
	[68] = {30, 60}, -- XII - The Hanged Man?
	[70] = {5, 10}, -- XIV - Temperance?
	[72] = {7, 14}, -- XVI - The Tower?
	[73] = {"Loại bỏ {{ColorShinyPurple}}2{{CR}} vật phẩm thụ động thu thập lâu nhất của Isaac (bỏ qua vật phẩm khởi đầu)#Sinh ra {{ColorShinyPurple}}4{{CR}} vật phẩm ngẫu nhiên từ kho vật phẩm của phòng hiện tại"}, -- XVII - The Stars?
	[76] = {" một ", " 2 ", " Máy", " {{CR}}Máy"}, -- XX - Judgement?
}

-- There's some odd behavior with Blank Card + Tarot Cloth not doubling some cards
-- These will be appended after Blank Card recharge time and "Blank Card effect:"
EID.descriptions[languageCode].tarotClothBlankCardBuffs = {
	[11] = "Sinh ra 1 máy", -- X - Wheel of Fortune
	[12] = "Tăng chỉ số không được tăng gấp đôi", -- XI - Strength
	[14] = "Gây 40 sát thương", -- XIII - Death
	[15] = "Sinh ra 1 máy", -- XIV - Temperance
	[16] = "+2 Sát thương", -- XV - The Devil
	[20] = "Gây 200 sát thương", -- XIX - The Sun
	[21] = "Sinh ra 1 người ăn xin", -- XX - Judgement
	[56] = "Làm rơi 3 vật phẩm", -- 0 - The Fool?
	[64] = "Sinh ra 2-7 rương", -- VIII - Justice?
	[65] = "Không sinh ra thêm đồng xu", -- IX - The Hermit?
	[66] = "Kích hoạt 1 hiệu ứng", -- X - Wheel of Fortune?
	[68] = "Kéo dài 30 giây", -- XII - The Hanged Man?
	[72] = "Sinh ra 7 cụm", -- XVI - The Tower?
	[73] = "Loại bỏ 1 vật phẩm và sinh ra 2", -- XVII - The Stars?
	[76] = "Sinh ra 1 máy", -- XX - Judgement?
}

---------- Pills ----------

local repPills={
	[4] = {"3", "Bombs are Key", "Hoán đổi số lượng {{Bomb}} bom và {{Key}} chìa khóa của Isaac#Bom vàng và chìa khóa vàng cũng bị hoán đổi"}, -- Bombs are Key
	[12] = {"11", "Range Down", "↓ {{Range}} -1 Tầm bắn"}, -- Range Down
	[13] = {"12", "Range Up", "↑ {{Range}} +1.25 Tầm bắn"}, -- Range Up
	[38] = {"37", "Retro Vision", "{{Timer}} Làm mờ pixel màn hình trong 30 giây"},
	[42] = {"41", "I'm Drowsy...", "{{Slow}} Làm chậm Isaac và tất cả kẻ thù trong phòng"}, -- I'm Drowsy...
	[43] = {"42", "I'm Excited!!", "{{Timer}} Tăng tốc Isaac và tất cả kẻ thù trong phòng#Kích hoạt lại sau 30 và 60 giây"}, -- I'm Excited!!
	[48] = {"47", "Shot speed Down", "↓ {{Shotspeed}} -0.15 Tốc độ đạn"}, -- Shot speed Down
	[49] = {"48", "Shot speed Up", "↑ {{Shotspeed}} +0.15 Tốc độ đạn"}, -- Shot speed Up
	[50] = {"49", "Experimental Pill", "↑ Tăng 1 chỉ số ngẫu nhiên#↓ Giảm 1 chỉ số ngẫu nhiên"}, -- Experimental Pill
	[9999] = {"", "Golden Pill", "Hiệu ứng thuốc ngẫu nhiên#Có cơ hội tự phá hủy sau mỗi lần dùng"}, -- golden Pill	
}
EID:updateDescriptionsViaTable(repPills, EID.descriptions[languageCode].pills)

EID.descriptions[languageCode].horsepills={
	{"0", "Bad Gas", "{{Poison}} Đầu độc cả phòng"}, -- Bad Gas
	{"1", "Bad Trip", "{{Warning}} Gây 2 trái tim sát thương cho Isaac#Trở thành viên thuốc Hồi máu đầy đủ (+3 Trái tim hồn) khi còn 1 trái tim hoặc ít hơn"}, -- Bad Trip
	{"2", "Balls of Steel", "{{SoulHeart}} +4 Trái tim hồn"}, -- Balls of Steel
	{"3", "Bombs are Key", "Hoán đổi số lượng {{Bomb}} bom và {{Key}} chìa khóa của Isaac#Tăng số lượng bom và chìa khóa thêm 50%#Bom vàng và chìa khóa vàng cũng bị hoán đổi"}, -- Bombs are Key
	{"4", "Explosive Diarrhea", "Tạo vài quả Bom Quỷ Mega tự tìm"}, -- Explosive Diarrhea
	{"5", "Full Health", "{{SoulHeart}} +3 Trái tim hồn#{{HealingRed}} Đầy máu"}, -- Full Health
	{"6", "Health Down", "↓ {{EmptyHeart}} -2 Máu#Trở thành viên thuốc Tăng máu khi còn 0 hoặc 1 ô chứa trái tim"}, -- Health Down
	{"7", "Health Up", "↑ {{EmptyHeart}} +2 Ô chứa trái tim trống"}, -- Health Up
	{"8", "I Found Pills", "Không có hiệu ứng"}, -- I Found Pills
	{"9", "Puberty", "Không có hiệu ứng#Ăn 3 viên tặng biến hình Người lớn:#↑ {{Heart}} +1 Máu"}, -- Puberty
	{"10", "Pretty Fly", "{{Collectible279}} Tặng một vệ tinh Big Fan#Không giới hạn số lượng Big Fan mà Isaac có thể có"}, -- Pretty Fly
	{"11", "Range Down", "↓ {{Range}} -2 Tầm bắn"}, -- Range Down
	{"12", "Range Up", "↑ {{Range}} +2.5 Tầm bắn"}, -- Range Up
	{"13", "Speed Down", "↓ {{Speed}} -0.24 Tốc độ"}, -- Speed Down
	{"14", "Speed Up", "↑ {{Speed}} +0.3 Tốc độ"}, -- Speed Up
	{"15", "Tears Down", "↓ {{Tears}} -0.56 Nước mắt"}, -- Tears Down
	{"16", "Tears Up", "↑ {{Tears}} +0.70 Nước mắt"}, -- Tears Up
	{"17", "Luck Down", "↓ {{Luck}} -2 May mắn"}, -- Luck Down
	{"18", "Luck Up", "↑ {{Luck}} +2 May mắn"}, -- Luck Up
	{"19", "Telepills", "Dịch chuyển Isaac đến một phòng ngẫu nhiên"}, -- Telepills
	{"20", "48 Hour Energy!", "{{Battery}} Nạp đầy vật phẩm hoạt động#{{Battery}} Làm rơi 3-4 pin"}, -- 48 Hour Energy!
	{"21", "Hematemesis", "{{EmptyHeart}} Rút hết ô chứa trái tim trừ một#{{Heart}} Tạo 1-4 Trái tim đỏ"}, -- Hematemesis
	{"22", "Paralysis", "Ngăn Isaac di chuyển và bắn trong 4 giây"}, -- Paralysis
	{"23", "I can see forever!", "{{SecretRoom}} Mở lối vào phòng bí mật trên tầng#Hiệu ứng bản đồ đầy đủ"}, -- I can see forever!
	{"24", "Pheromones", "{{Charm}} Biến mọi kẻ thù trong phòng thành thân thiện vĩnh viễn"}, -- Pheromones
	{"25", "Amnesia", "{{CurseLost}} Ẩn bản đồ tầng"}, -- Amnesia
	{"26", "Lemon Party", "Tạo một vũng chất lỏng kích thước bằng phòng gây sát thương cho kẻ thù"}, -- Lemon Party
	{"27", "R U a Wizard?", "{{Timer}} Isaac bắn chéo trong 60 giây"}, -- R U a Wizard?
	{"28", "Percs!", "{{Timer}} Giảm mọi sát thương nhận còn nửa trái tim trong phòng"}, -- Percs!
	{"29", "Addicted!", "{{Timer}} Tăng mọi sát thương nhận thành một trái tim đầy đủ trong phòng"}, -- Addicted!
	{"30", "Re-Lax", "Isaac tạo phân phía sau trong 10 giây"}, -- Re-Lax
	{"31", "???", "{{CurseMaze}} Hiệu ứng Lời nguyền Mê cung cho tầng"}, -- ???
	{"32", "One makes you larger", "Tăng kích thước của Isaac rất nhiều#Không ảnh hưởng đến hộp va chạm của anh ta"}, -- One makes you larger
	{"33", "One makes you small", "Giảm kích thước của Isaac rất nhiều#Cũng giảm kích thước hộp va chạm của anh ta"}, -- One makes you small
	{"34", "Infested!", "Tạo 2 nhện xanh cho mỗi đống phân trong phòng"}, -- Infested!
	{"35", "Infested?", "Tạo 2 nhện xanh cho mỗi kẻ thù trong phòng#Tạo 2-6 nhện xanh nếu không có kẻ thù trong phòng"}, -- Infested?
	{"36", "Power Pill!", "{{Timer}} Nhận trong phòng:#↑ {{Damage}} +7 Sát thương#↑ {{Range}} +3 Tầm bắn#{{Timer}} Nhận trong 6.5 giây:#Bất tử#Isaac không thể bắn nhưng gây 40 sát thương tiếp xúc mỗi giây#{{HealingRed}} Ăn 2 kẻ thù hồi nửa trái tim#{{Fear}} Làm tất cả kẻ thù trong phòng sợ hãi"}, -- Power Pill!
	{"37", "Retro Vision", "Làm mờ pixel màn hình trong 90 giây"}, -- Retro Vision
	{"38", "Friends Till The End!", "Tạo 6 ruồi xanh"}, -- Friends Till The End!
	{"39", "X-Lax", "Tạo một vũng chất lỏng trơn trượt lâu dài"}, -- X-Lax
	{"40", "Something's wrong...", "{{Slow}} Tạo một vũng chất lỏng làm chậm lâu dài"}, -- Something's wrong...
	{"41", "I'm Drowsy...", "{{Slow}} Làm chậm Isaac và tất cả kẻ thù trong phòng"}, -- I'm Drowsy...
	{"42", "I'm Excited!!", "Tăng tốc Isaac và tất cả kẻ thù trong phòng#Kích hoạt lại sau 30 và 60 giây"}, --I'm Excited!!
	{"43", "Gulp!", "Tiêu thụ bùa của Isaac và tặng hiệu ứng của nó vĩnh viễn"}, -- Gulp!
	{"44", "Horf!", "{{Collectible149}} Bắn một cụm nước mắt Ipecac"}, -- Horf!
	{"45", "Feels like I'm walking on sunshine!", "{{Timer}} Nhận trong 6.5 giây:#Bất tử#Isaac không thể bắn nhưng gây 40 sát thương tiếp xúc mỗi giây#{{HealingRed}} Ăn 2 kẻ thù hồi nửa trái tim#{{Fear}} Làm tất cả kẻ thù trong phòng sợ hãi"}, -- Feels like I'm walking on sunshine!
	{"46", "Vurp!", "Tạo viên thuốc cuối cùng Isaac dùng dưới dạng viên ngựa"}, -- Vurp!
	{"47", "Shot speed Down", "↓ {{Shotspeed}} -0.3 Tốc độ đạn"}, -- Shot speed Down
	{"48", "Shot speed Up", "↑ {{Shotspeed}} +0.3 Tốc độ đạn"}, -- Shot speed Up
	{"49", "Experimental Pill", "↑ Tăng 1 chỉ số ngẫu nhiên hai lần#↓ Giảm 1 chỉ số ngẫu nhiên hai lần"}, -- Experimental Pill
	[9999] = {"", "Golden Pill", "Hiệu ứng viên ngựa ngẫu nhiên#Có cơ hội tự phá hủy sau mỗi lần dùng"}, -- Golden Pill	
}

---------- Character Info ----------
local repCharacterInfo = {
	[4] = {"???", "Không thể có Trái tim đỏ#{{SoulHeart}} Tăng máu tặng Trái tim hồn#{{DevilRoom}} Giao kèo quỷ tốn 1 hoặc 2 Trái tim đỏ sẽ tốn 1 hoặc 2 Trái tim hồn thay vì vậy#Phá phân tạo 1 ruồi xanh"},
	[8] = {"Lazarus", "Một lần mỗi tầng, khi bạn chết:#Hồi sinh thành Lazarus Risen#Mất 1 ô chứa Trái tim đỏ#↑ {{Damage}} +0.5 Sát thương"},
	[11] = {"Lazarus Risen", "Tăng chỉ số và hệ số sát thương x1.4#Khi vào tầng mới, biến lại thành Lazarus"},
	[12] = {"Dark Judas", "{{Damage}} x2 Hệ số sát thương#Không thể có Trái tim đỏ#{{BlackHeart}} Tăng máu tặng Trái tim đen#{{Player3}} Được tính là Judas cho dấu hoàn thành"},
	[14] = {"Keeper", "{{CoinHeart}} Hồi máu bằng cách nhặt đồng xu#Tối đa 3 Trái tim xu#Trái tim nhặt biến thành Ruồi xanh#{{DevilRoom}} Giao kèo quỷ tốn 15 hoặc 30 đồng xu"},
	[18] = {"Bethany", "{{SoulHeart}} Dùng Trái tim hồn để nạp vật phẩm hoạt động#Không thể dùng Trái tim hồn làm máu"},
	[19] = {"Jacob", "Điều khiển Jacob và Esau cùng lúc#Cả hai nhân vật thả bom khi một người dùng#Esau đứng yên khi giữ {{ButtonRT}}#{{ButtonLT}} dùng vật phẩm hoạt động của Jacob, {{ButtonRB}} dùng của Esau, giữ {{ButtonRT}} để dùng lá bài/thuốc của họ#Khi có lựa chọn giữa các vật phẩm, Jacob và Esau có thể lấy hai cùng lúc"},
	[20] = {"Esau", "Điều khiển Jacob và Esau cùng lúc#Cả hai nhân vật thả bom khi một người dùng#Esau đứng yên khi giữ {{ButtonRT}}#{{ButtonLT}} dùng vật phẩm hoạt động của Jacob, {{ButtonRB}} dùng của Esau, giữ {{ButtonRT}} để dùng lá bài/thuốc của họ#Khi có lựa chọn giữa các vật phẩm, Jacob và Esau có thể lấy hai cùng lúc"},
	
	[21] = {"Tainted Isaac", "Bệ vật phẩm chuyển đổi giữa 2 lựa chọn#Chỉ có thể mang 8 vật phẩm thụ động#Thay đổi vật phẩm sẽ bị làm rơi cho vật phẩm thứ 9 bằng {{ButtonRT}}"},
	[22] = {"Tainted Magdalene", "Máu trên 2 Trái tim đỏ sẽ từ từ cạn#Khi tiếp xúc, thực hiện cú đánh cận chiến gây sát thương gấp 6#{{HalfRedHeart}} Cơ hội để kẻ thù làm rơi Nửa Trái tim đỏ biến mất sau 2 giây#Đảm bảo rơi khi giết bằng cận chiến#{{Collectible45}} Hồi máu gấp đôi từ nguồn không phải vật phẩm nhặt#{{AngelDevilChance}} Sát thương lên trái tim cạn không ảnh hưởng đến cơ hội Giao kèo Quỷ"},
	[23] = {"Tainted Cain", "Chạm vào bệ vật phẩm biến nó thành nhiều loại vật phẩm nhặt khác nhau"},
	[24] = {"Tainted Judas", "Không thể có Trái tim đỏ#{{BlackHeart}} Tăng máu tặng Trái tim đen"},
	[25] = {"Tainted ???", "Bom được thay bằng Phép Phân#{{Crafting29}} Gây sát thương tạo vật phẩm nhặt phân#{{Collectible715}} Bạn có thể lưu phép tiếp theo để dùng sau bằng Hold"},
	[26] = {"Tainted Eve", "Giữ nút Bắn biến trái tim của bạn thành bạn đồng hành Cục máu#Các loại Trái tim khác nhau tạo Cục máu với máu và hiệu ứng nước mắt nhiều hơn#Cục máu mất máu theo thời gian#Cục máu đứng yên khi giữ {{ButtonRT}}#Khi còn nửa trái tim không có Cục máu, bạn nhận đòn tấn công kiểu Mom's Knife cho đến khi hồi máu và rời phòng"},
	[27] = {"Tainted Samson", "Gây hoặc nhận sát thương tích lũy chế độ Berserk#{{Timer}} Khi bạn cuồng nộ, nhận trong 5 giây:#↑ {{Speed}} +0.4 Tốc độ#↓ {{Tears}} x0.5 Hệ số tốc độ bắn#↑ {{Tears}} +2 Tốc độ bắn#↑ {{Damage}} +3 Sát thương#Hạn chế tấn công thành cận chiến phản đạn#{{Timer}} Mỗi lần giết tăng thời gian thêm 1 giây và tặng bất tử ngắn"},
	[28] = {"Tainted Azazel", "Khi bắt đầu nạp, bạn hắt hơi máu#Trúng kẻ thù bằng hắt hơi giảm nửa thời gian nạp#Hắt hơi gây sát thương gấp 1.5 lần của Azazel#{{BrimstoneCurse}} Kẻ thù bị ảnh hưởng nhận thêm sát thương từ tia Brimstone#Khi chết, kẻ thù bị nguyền nổ và truyền lời nguyền cho kẻ thù gần đó"},
	[29] = {"Tainted Lazarus", "Lazarus có hai trạng thái, mỗi trạng thái có vật phẩm và máu riêng#Dọn phòng/sóng hoặc dùng Flip để chuyển trạng thái"},
	[30] = {"Tainted Eden", "Khi nhận sát thương, đổi lại chỉ số, vật phẩm, bùa và vật phẩm tiêu thụ của bạn#Vật phẩm đổi lại thành vật phẩm từ cùng nhóm vật phẩm#Tự gây sát thương không đổi lại"},
	[31] = {"Tainted Lost", "{{Card51}} Lá bài xuất hiện có 10% cơ hội là Holy Card#Vật phẩm chất lượng {{Quality2}} hoặc thấp hơn có 20% cơ hội được đổi lại#Chỉ vật phẩm \"tấn công\" mới có thể xuất hiện"},
	[32] = {"Tainted Lilith", "Nhấn Bắn tung ra đòn tấn công cận chiến thai nhi tầm ngắn gây sát thương gấp 3#Giữ Bắn giữ thai nhi ngoài bắn nước mắt về phía kẻ thù gần nhất"},
	[33] = {"Tainted Keeper", "Tối đa 2 Trái tim xu#Kẻ thù làm rơi đồng xu biến mất sau 2 giây#Hầu hết bệ vật phẩm tốn 15 đồng xu#Giao kèo quỷ và vật phẩm Thiên thần tốn 15 hoặc 30 đồng xu#Cửa hàng không cần chìa khóa và có hàng tồn kho tăng"},
	[34] = {"Tainted Apollyon", ""},
	[35] = {"Tainted Forgotten", "The Forgotten là một đống xương bất động được The Soul nhặt và ném gây sát thương gấp 3#Chỉ The Soul có thể nhận sát thương#Bom được đặt tại vị trí của Forgotten#Không thể có Trái tim đỏ#{{SoulHeart}} Tăng máu tặng Trái tim hồn"},
	[36] = {"Tainted Bethany", "{{Heart}} Dùng Trái tim đỏ để nạp vật phẩm hoạt động#Không thể có Trái tim đỏ#{{SoulHeart}} Tăng máu tặng Trái tim hồn và lần nạp máu#Tăng chỉ số chỉ hiệu quả 75%"},
	[37] = {"Tainted Jacob", "Dark Esau đuổi theo bạn, lao về phía bạn khi gần#Đòn lao gây nhiều sát thương cho kẻ thù#Nếu trúng bạn, bạn biến thành ma chết trong một phát cho đến hết tầng#Khi là ma, mỗi phòng có thể lấy một giao kèo quỷ miễn phí"},
	[38] = {"Dead Tainted Lazarus", "Lazarus có hai trạng thái, mỗi trạng thái có vật phẩm và máu riêng#Dọn phòng/sóng hoặc dùng Flip để chuyển trạng thái"},
	[39] = {"Tainted Jacob's Soul", "Bay#Nước mắt quang phổ#{{Warning}} Không có máu#{{Warning}} Chết nếu bị Dark Esau đánh trúng#{{DevilRoom}} Mỗi phòng có thể lấy một giao kèo quỷ miễn phí#Biến lại thành Tainted Jacob ở tầng tiếp theo"},
	[40] = {"Tainted Forgotten Soul", "The Forgotten là một đống xương bất động được The Soul nhặt và ném gây sát thương gấp 3#Chỉ The Soul có thể nhận sát thương#Bom được đặt tại vị trí của Forgotten#Không thể có Trái tim đỏ#{{SoulHeart}} Tăng máu tặng Trái tim hồn"},	
}
EID:updateDescriptionsViaTable(repCharacterInfo, EID.descriptions[languageCode].CharacterInfo)

EID.descriptions[languageCode].birthright ={
	{"Isaac", "", "Tất cả bệ vật phẩm chuyển đổi giữa hai lựa chọn"},
	{"Magdalene", "", "↑ {{Heart}} +1 Máu#Số lượng ô chứa trái tim tối đa tăng lên 18"},
	{"Cain", "", "↑ {{Luck}} +1 May mắn#{{ArcadeRoom}} Tất cả tầng sau sẽ có Phòng Giải trí nâng cấp (trừ Dark Room và Chest)#{{Collectible46}} Tăng mạnh cơ hội thắng của Lucky Foot"},
	{"Judas", "", "{{Collectible34}} The Book of Belial trở thành vật phẩm thụ động tương tự {{Collectible584}} Book of Virtues#{{Collectible34}} Tặng The Book of Belial nếu Judas hiện không giữ nó#↑ {{Damage}} Tăng sát thương tương ứng với số lần nạp của vật phẩm hoạt động kết hợp với nó#Tặng hiệu ứng đặc biệt cho một số vật phẩm hoạt động"},
	{"???", "", "{{SoulHeart}} Trái tim hồn nhận từ tăng máu được nhân đôi"},
	{"Eve", "", "{{Collectible122}} Whore of Babylon luôn hoạt động bất kể máu#{{Collectible117}} Dead Bird luôn hoạt động"},
	{"Samson", "", "{{Collectible157}} Bloody Lust có thể kích hoạt thêm 4 lần mỗi tầng, tối đa +14 sát thương sau 10 lần kích hoạt"},
	{"Azazel", "", "Tia Brimstone của Azazel trở nên rộng hơn nhiều#Không tăng sát thương"},
	{"Lazarus", "", "↑ Hồi sinh thành Lazarus Risen tặng {{Damage}} +7.2 sát thương#{{Timer}} Tăng sát thương giảm dần trong 60 giây#{{Blank}} Giết kẻ thù khi hiệu ứng đang hoạt động kéo dài nó"},
	{"Eden", "", "Tạo 3 vật phẩm ngẫu nhiên từ các nhóm vật phẩm ngẫu nhiên#Chỉ có thể lấy một"},
	{"The Lost", "", "Ngăn các vật phẩm vô dụng với The Lost xuất hiện#Ví dụ: vật phẩm chỉ tăng máu, bay, nước mắt quang phổ, hoặc kích hoạt khi nhận sát thương"},
	{"Lazarus Risen", "", "↑ {{Damage}} +7.2 Sát thương#Tăng sát thương giảm dần trong 60 giây#Giết kẻ thù khi hiệu ứng đang hoạt động kéo dài nó#Hiệu ứng kích hoạt mỗi khi Lazarus hồi sinh thành Lazarus Risen"},
	{"Black Judas", "", "{{Collectible34}} The Book of Belial trở thành vật phẩm thụ động tương tự {{Collectible584}} Book of Virtues#{{Collectible34}} Tặng The Book of Belial nếu Judas hiện không giữ nó#↑ {{Damage}} Tăng sát thương tương ứng với số lần nạp của vật phẩm hoạt động kết hợp với nó#Tặng hiệu ứng đặc biệt cho một số vật phẩm hoạt động"},
	{"Lilith", "", "bạn đồng hành được đặt trước mặt Lilith"},
	{"Keeper", "", "↑ {{CoinHeart}} +1 Máu#Số lượng ô chứa Trái tim xu tối đa tăng lên 4"},
	{"Apollyon", "", "{{Collectible477}} Sử dụng Void có cơ hội tạo vật phẩm đã bị void trước đó#Không xóa tăng chỉ số#Càng nhiều vật phẩm bị void, cơ hội tạo vật phẩm khi dùng càng cao"},
	{"The Forgotten", "", "Xóa xích trói The Soul với The Forgotten"},
	{"The Forgotten Soul", "", "Xóa xích trói The Soul với The Forgotten"},
	{"Bethany", "", "{{Battery}} Kích hoạt vật phẩm bằng lần nạp hồn đôi khi miễn phí"},
	{"Jacob", "", "Nhân vật nhặt vật phẩm nhận bản sao của ba vật phẩm thụ động của nhân vật kia"},
	{"Esau", "", "Nhân vật nhặt vật phẩm nhận bản sao của ba vật phẩm thụ động của nhân vật kia"},
	{"Tainted Isaac", "", "Thêm 4 ô vật phẩm thụ động#Bản thân không chiếm ô"},
	{"Tainted Magdalene", "", "{{Heart}} Thêm 1 ô chứa trái tim không cạn"},
	{"Tainted Cain", "", "Gấp đôi số lượng vật phẩm nhặt rơi ra từ việc thu thập một vật phẩm"},
	{"Tainted Judas", "", "{{Collectible705}} Tăng tầm đánh của Dark Arts vào kẻ thù và nước mắt"},
	{"Tainted ???", "", "{{PoopPickup}} Tăng số lượng phân tối đa có thể mang lên 29"},
	{"Tainted Eve", "", "{{HalfHeart}} Cục máu Trái tim đỏ tạo nửa Trái tim đỏ khi chết, biến mất sau 2 giây"},
	{"Tainted Samson", "", "{{Collectible704}} Giết kẻ thù thêm 3 giây vào bộ đếm Berserk! thay vì 1"},
	{"Tainted Azazel", "", "{{Collectible726}} Gấp đôi kích thước đòn hắt hơi máu của Tainted Azazel"},
	{"Tainted Lazarus", "", "Dạng không hoạt động của Tainted Lazarus xuất hiện như nhân vật thứ hai ma quái#Hắn bất tử và gây 25% sát thương#Cả hai dạng nhận vật phẩm Birthright"},
	{"Tainted Eden", "", "Bất kỳ vật phẩm nào có trước Birthright không thể đổi lại#Vật phẩm hoạt động có thể đổi lại nếu làm rơi và nhặt lại"},
	{"Tainted Lost", "", "Tặng mạng phụ hồi sinh Tainted Lost trong cùng phòng và gây 200 sát thương cho kẻ thù gần đó"},
	{"Tainted Lilith", "", "{{Collectible728}} bạn đồng hành thường theo Tainted Lilith sẽ theo Gello của cô ấy#Đòn cận chiến nhận +3 sát thương cho mỗi bạn đồng hành"},
	{"Tainted Keeper", "", "{{Coin}} Thu hút mạnh đồng xu rơi từ việc đánh bại kẻ thù#Không ảnh hưởng đến đồng xu khác"},
	{"Tainted Apollyon", "", "Châu chấu liên tục gây sát thương cho kẻ thù mà không quay lại khi giữ nút bắn"},
	{"Tainted Forgotten", "", "{{Collectible714}} Tainted Soul nhận khả năng Recall để gọi Tainted Forgotten từ xa#The Soul bất tử khi Forgotten đang quay lại"},
	{"Tainted Bethany", "", "Tạo bốn wisp vật phẩm ngẫu nhiên chất lượng {{Quality3}} và {{Quality4}} với máu cao hơn đáng kể so với bình thường"},
	{"Tainted Jacob", "", "Dark Esau tách thành hai, tạo bản sao bóng tối của chính nó#Cả hai Esau luôn lao cùng lúc#{{Collectible722}} Thời gian hồi của Anima Sola giảm còn 10 giây#Dùng Anima Sola xích cả hai Esau trong 6.67 giây"},
	{"Dead Tainted Lazarus", "", "Dạng không hoạt động của Tainted Lazarus xuất hiện như nhân vật thứ hai ma quái#Hắn bất tử và gây 25% sát thương#Cả hai dạng nhận vật phẩm Birthright"},
	{"Tainted Jacob's Soul", "", "Dark Esau tách thành hai, tạo bản sao bóng tối của chính nó#Cả hai Esau luôn lao cùng lúc#{{Collectible722}} Thời gian hồi của Anima Sola giảm còn 10 giây#Dùng Anima Sola xích cả hai Esau trong 6.67 giây"},
	{"Tainted Forgotten Soul", "", "{{Collectible714}} Tainted Soul nhận khả năng Recall để gọi Tainted Forgotten từ xa#The Soul bất tử khi Forgotten đang quay lại"},	
}

---------- Glitched Item Descriptions ----------

EID.descriptions[languageCode].GlitchedItemText = {
	-- Item Config info
	AddBlackHearts = "{{BlackHeart}} {1} Trái tim đen",
	AddBombs = "{{Bomb}} {1} Bom",
	AddCoins = "{{Coin}} {1} Đồng xu",
	AddHearts = "{{HealingRed}} Hồi {1} trái tim",
	AddKeys = "{{Key}} {1} Chìa khoá",
	AddMaxHearts = "{{EmptyHeart}} {1} Ô trái tim",
	AddSoulHearts = "{{SoulHeart}} {1} Trái tim linh hồn",

	-- Cache Flag names
	cacheFlagStart = "Có thể ảnh hưởng đến ",
	[0] = "{{Damage}} Sát thương", "{{Tears}} Tốc độ bắn", "{{Shotspeed}} Tốc độ đạn", "{{Range}} Tầm bắn", "{{Speed}} Tốc độ", "Hiệu ứng nước mắt", "Màu nước mắt", "Bay", "Loại tấn công", "bạn đồng hành", "{{Luck}} May mắn", "Kích thước", "Màu sắc", "Nội dung rương", [16] = "Tất cả chỉ số",

	-- Attribute triggers
	active = "Khi sử dụng:#",
pickup_collected = "Khi nhặt một vật phẩm:#",
enemy_kill = "Giết một kẻ địch có 20% cơ hội:#",
damage_taken = "Khi nhận sát thương:#",
entity_spawned = "Khi một {T1} được sinh ra:#",
tear_fire = "Bắn một nước mắt có 5% cơ hội:#",
enemy_hit = "Đánh trúng kẻ địch có 5% cơ hội:#",
room_clear = "Khi dọn sạch một phòng:#",
chain = " Sau đó:{{CR}} ",

	-- Attribute effects
	area_damage = "Gây {1} sát thương trong {2} ô xung quanh Isaac",
add_temporary_effect = "Cấp {1} cho phòng",
convert_entities = "Chuyển tất cả {1} trong phòng thành {2}",
use_active_item = "Sử dụng {1}",
spawn_entity = "Sinh ra một {1}",
fart = "Đánh rắm trên {1} ô xung quanh Isaac",

	-- Generic entity names not obtained from entities2.xml
	-- This could also be a place to localize entity names; this table is read from before EID.XMLEntityNames
	["4.-1"] = "bom đã thắp",
["5.0"] = "vật phẩm nhặt được",
["5.10"] = "trái tim",
["5.20"] = "đồng xu",
["5.30"] = "chìa khóa",
["5.40"] = "bom nhặt được",
["5.69"] = "bao tải",
["5.70"] = "viên thuốc",
["5.90"] = "pin",
["5.300"] = "lá bài",
["5.301"] = "rune", -- không phải ID thật
["9.-1"] = "đạn của kẻ địch",
["999.-1"] = "đối tượng lưới",
["1000.0"] = "hiệu ứng",

	-- Text for the base item that is granted
	grants = "Cấp ",
}

---------- Bag of Crafting Text ----------
EID.descriptions[languageCode].CraftingBagContent = "Túi:"
EID.descriptions[languageCode].CraftingRoomContent = "Phòng:"
EID.descriptions[languageCode].CraftingFloorContent = "Tầng:"
EID.descriptions[languageCode].CraftingSearch = "Tìm kiếm:"
EID.descriptions[languageCode].CraftingBagQuality = "Chất lượng Túi:"
EID.descriptions[languageCode].CraftingBestQuality = "Chất lượng Tốt nhất:"
EID.descriptions[languageCode].CraftingHideKey = "Ẩn:"
EID.descriptions[languageCode].CraftingPreviewKey = "Xem trước:"
-- {1} will be converted to the number of recipes
EID.descriptions[languageCode].CraftingMore = "...+{1} nữa"
-- {1} will be converted into the number of available items
EID.descriptions[languageCode].CraftingNumAvailableItems = "{1} trong số 8 vật phẩm có sẵn"
EID.descriptions[languageCode].CraftingWarningAvailableItems = "Cần ít nhất 8 để hiển thị công thức chế tạo!"
-- {1} will be converted into the name of the key that toggles the BoC visibility
EID.descriptions[languageCode].CraftingIsHidden = "Hiện đang Ẩn (Hiển thị bằng {1})"
-- {1} will be converted into the name of the key that toggles the BoC Search
EID.descriptions[languageCode].CraftingResults = "(Scroll: Hold {{CONFIG_BoC_Toggle}} + {{ButtonY}} {{ButtonA}}, Lock: {{ButtonX}}, Refresh: {{ButtonB}}, Reset Bag: Hold {{ButtonRB}}, Search: {1})"

-- Strings for Tainted Cain's pedestal salvaging; the non-base lines will have the corresponding icon automatically
EID.descriptions[languageCode].TaintedCainPedestalBase = "Biến thành 3-8 vật phẩm nhặt được ngẫu nhiên khi chạm vào"
EID.descriptions[languageCode].TaintedCainPedestalBaseBirthright = "Biến thành {{BlinkBirthright}}6-16{{CR}} vật phẩm nhặt được ngẫu nhiên khi chạm vào"
EID.descriptions[languageCode].TaintedCainPedestalGuaranteed = "Đảm bảo sinh ra một{n} {1}" -- Room type spawns
EID.descriptions[languageCode].TaintedCainPedestalBonus = "33% cơ hội nhận thêm một {1}" -- "Safety Cap" type spawns
EID.descriptions[languageCode].TaintedCainPedestalLuckyToe = "66% cơ hội nhận thêm một vật phẩm nhặt được"
EID.descriptions[languageCode].TaintedCainPedestalLuckyToeBirthright = "66% cơ hội nhận {{BlinkBirthright}}2{{CR}} vật phẩm nhặt được bổ sung"
EID.descriptions[languageCode].TaintedCainPedestalDaemonsTail = "Trái tim ít có khả năng xuất hiện 80%"


---------- Misc. Text ----------

EID.descriptions[languageCode].ResultsWithX = "(Kết quả với {1})"
EID.descriptions[languageCode].VariableCharge = "{1} năng lượng:"

EID.descriptions[languageCode].poopSpells = {
	{"Phân", "Phân bình thường có thể làm rơi vật phẩm nhặt được"},
{"Phân Ngô", "Sinh ra ruồi xanh khi còn nguyên vẹn"},
{"Phân Cháy", "Gây sát thương tiếp xúc khi còn nguyên vẹn#Để lại lửa sau khi bị phá hủy"},
{"Phân Đá", "Có thể gây sát thương 3 lần khi ném#Cần nhiều đòn để phá hủy"},
{"Phân Thối", "Phát ra đám mây độc#{{Warning}} Đám mây nổ nếu chạm vào lửa!"},
{"Phân Đen", "{{Slow}} Tạo chất lỏng làm chậm#{{Confusion}} Gây 10 sát thương và làm rối loạn tất cả kẻ địch khi bị phá hủy"},
{"Phân Thánh", "{{Collectible543}} Tạo một phân trắng#Khi ở trong hào quang của phân:#↑ {{Damage}} Hệ số sát thương x1.2#↑ {{Tears}} Hệ số tốc độ bắn x2.5#Nước mắt tự dẫn#Cơ hội chặn sát thương"},
{"Chất Lỏng Nâu", "Để lại vệt chất lỏng#Đứng trên chất lỏng tăng tốc độ bắn và sát thương của Isaac#Nếu chất lỏng chạm vào phân khác, nó nhận thuộc tính của phân đó"},
{"Đánh Rắm", "Đẩy lùi kẻ địch và đạn gần đó, và sinh ra đám mây độc#{{Warning}} Đám mây nổ nếu chạm vào lửa!"},
{"Bom", "Bom ném được bình thường"},
{"Tiêu Chảy Nổ", "Isaac nhanh chóng sinh ra 5 quả bom đã thắp"},

	--Undetected poop, for Poop API
	--[Poop name in code] = {Icon, Name, Description}
	["Unknown"] = {"{{PoopSpell1}}", "Phân Không Xác Định", "Hiệu ứng của phân không được biết"}
}

EID.descriptions[languageCode].itemPoolFor = "Kho vật phẩm cho:"
EID.descriptions[languageCode].itemPoolNames = {
	[0] = "Treasure", "Shop", "Boss", "Devil", "Angel", "Secret", "Library", "Shell Game", "Golden Chest", "Red Chest", "Beggar", "Demon Beggar", "Curse", "Key Master", "Battery Bum", "Mom's Chest", "Greed Treasure", "Greed Boss", "Greed Shop", "Greed Devil", "Greed Angel", "Greed Curse", "Greed Secret", "Crane Game", "Ultra Secret", "Bomb Bum", "Planetarium", "Old Chest", "Baby Shop", "Wooden Chest", "Rotten Beggar",
}

EID.descriptions[languageCode].VoidShopText = "Nếu hấp thụ ngay sau khi nhặt, nhận được:"
EID.descriptions[languageCode].VoidOptionText = " sẽ được hấp thụ thay thế"
EID.descriptions[languageCode].VoidNames[2] = "{1} Tốc độ bắn"

EID.descriptions[languageCode].PurityBoosts = {[0] = "↑ {{Damage}} +4 Sát thương", "↑ {{Tears}} +2 Tốc độ bắn", "↑ {{Speed}} +0.5 Tốc độ", "↑ {{Range}} +3 Tầm bắn"}

EID.descriptions[languageCode].spindownError = "Vật phẩm biến mất"

EID.descriptions[languageCode].BlankCardEffect = "Hiệu ứng Blank Card:"

EID.descriptions[languageCode].FlipItemToggleInfo = "(Giữ {{CONFIG_BoC_Toggle}} để hiển thị mô tả)"
EID.descriptions[languageCode].GlitchedCrownToggleInfo = "(Nhấn {{CONFIG_BoC_Toggle}} để hiển thị mô tả tiếp theo: {1})"

EID.descriptions[languageCode].GlowingHourglassTransformed = "Sẽ biến lại thành Glowing Hourglass ở tầng tiếp theo"

EID.descriptions[languageCode].FalsePHDHeart = "Sinh ra 1 {{BlackHeart}} Trái Tim Đen"
EID.descriptions[languageCode].FalsePHDDamage = "↑ {{Damage}} +0.6 Sát thương"
EID.descriptions[languageCode].FalsePHDHorseDamage = "↑ {{Damage}} +1.2 Sát thương"

EID.descriptions[languageCode].ExperimentalPillPHD = "Không giảm chỉ số"
EID.descriptions[languageCode].ExperimentalPillFalsePHD = "Không tăng chỉ số ngẫu nhiên"

EID.descriptions[languageCode].PandorasBoxStrangeKeyEffect = "Thay vào đó, tiêu thụ chìa khóa và sinh ra 6 vật phẩm từ các kho ngẫu nhiên"

EID.descriptions[languageCode].AchievementWarningTitle = "{{ColorYellow}}{{Warning}} CẢNH BÁO {{Warning}}"
EID.descriptions[languageCode].AchievementWarningText = "Thành tựu bị vô hiệu hóa!#Để kích hoạt tiến trình và thành tựu, bạn cần đánh bại Mom (Depths II) mà không bật bất kỳ mod nào.#(Nếu bạn đã đánh bại Mom, thông báo này là lỗi và có thể bỏ qua)#(Cảnh báo này có thể tắt trong cấu hình)"
EID.descriptions[languageCode].OldGameVersionWarningText = "EID được cập nhật cho phiên bản Steam mới nhất#Phiên bản trò chơi của bạn không được hỗ trợ chính thức, nên một số mô tả và tính năng sẽ không chính xác#(Cảnh báo này có thể tắt trong cấu hình)"
EID.descriptions[languageCode].ModdedRecipesWarningText = "Vật phẩm mod có thể khiến tính toán công thức chế tạo không chính xác!#Cài REPENTOGON để hỗ trợ công thức mod tốt hơn#(Cảnh báo này có thể tắt trong cấu hình)"


-- Conditional descriptions - DO NOT TRANSLATE THE FIRST PART IN ["BRACKETS"]
-- Strings will be appended to the original description
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs (if there's an odd number of entries, the last entry is appended)
-- For collectible/player conditionals, lines will automatically have their bulletpoint, and {1} is replaced with their name
local repConditions = {
	------ GENERAL STRINGS ------
	["Tainted Revive"] = "{1} chỉ đơn giản là hồi sinh",
	["Ice Tears"] = "Việc đóng băng kẻ địch không được tính là giết chết", -- Uranus Anti-Synergy
	
	------ GREED MODE ------
	["5.100.344"] = {"{{BlackHeart}} +1 Trái Tim Đen#{{Bomb}} Sinh ra 3 bom"}, -- Match Book (Greed)
	["5.300.74"] = {"Dịch chuyển Isaac đến phòng đầu tiên của tầng"}, -- The Moon? (Greed)
	["5.100.416"] = {"{{Coin}} Tăng giới hạn đồng xu lên 999"}, -- Deep Pockets (Greed)
	["5.100.566"] = {"{{HalfSoulHeart}} +1 nửa Trái Tim Linh Hồn khi vào tầng mới#!!! Ác mộng chuyển giai đoạn hiển thị sai vật phẩm trong Chế độ Tham Lam"}, -- Dream Catcher (Greed)
	["5.100.580"] = "{{GreedMode}} Chỉ hiếm khi tạo ra các phòng đặc biệt trong Chế độ Tham Lam#{{SuperSecretRoom}} Vẫn có thể giúp tìm Phòng Siêu Bí Mật", -- Red Key (Greed)
	["5.300.83"] = "{{GreedMode}} Chỉ hiếm khi tạo ra các phòng đặc biệt trong Chế độ Tham Lam#{{SuperSecretRoom}} Vẫn có thể giúp tìm Phòng Siêu Bí Mật", -- Soul of Cain (Greed)
	["5.100.514"] = {"Khiến một số kẻ địch và đạn tạm dừng ngẫu nhiên trong khoảng thời gian ngắn#Đạn bị tạm dừng sẽ biến mất"}, -- Broken Modem (Greed)
	["5.350.162"] = {"{{Player7}} Dọn một đợt có 50% cơ hội biến người chơi thành Azazel#{{Timer}} Hiệu ứng kéo dài cho đến khi dọn xong đợt khác"}, -- Azazel's Stump (Greed)
	
	
	------ ACHIEVEMENT CHECKS ------
	-- todo...
	
	
	------ SPECIFIC CHARACTER SYNERGIES/CHANGES ------
	["5.100.642"] = {"!!! CHỈ DÙNG MỘT LẦN !!!#Sinh ra một vật phẩm từ kho vật phẩm của phòng hiện tại"}, -- Magic Skin + Lost
	["5.100.240"] = "{1} giữ nguyên thay đổi chỉ số khi bỏ vật phẩm", -- Experimental Treatment + Tainted Isaac
	["5.100.644"] = "{1} giữ nguyên tăng chỉ số khi bỏ vật phẩm", -- Consolation Prize + Tainted Isaac
	["5.100.549"] = {"↑ {{Tears}} +0.4 Tốc độ bắn"}, -- Brittle Bones (Keeper+Lost)
	["5.100.694"] = "Hoạt động với {1}, cho phép anh ta chịu được 4 đòn", -- Heartbreak + Losts
	["5.100.694 (Keeper)"] = {"↑ {{Damage}} +0.25 Sát thương cho mỗi Trái Tim Vỡ#{{BrokenHeart}} +1 Trái Tim Vỡ#{{BrokenHeart}} Mỗi đòn chí mạng cấp +1 Trái Tim Vỡ#{{Warning}} Keeper chết ở 3 Trái Tim Vỡ"}, -- Heartbreak + Normal Keeper
	["5.100.694 (Tainted Keeper)"] = {"{{Warning}} {1} sẽ chết trong một đòn sau khi nhặt vật phẩm này#↑ {{Damage}} +0.25 Sát thương cho mỗi Trái Tim Vỡ#{{BrokenHeart}} +1 Trái Tim Vỡ#{{BrokenHeart}} Mỗi đòn chí mạng cấp +1 Trái Tim Vỡ#Tainted Keeper chết ở 2 Trái Tim Vỡ"}, -- Heartbreak + Tainted Keeper
	["5.100.501"] = "{1} có thể nhận thêm ô chứa đồng xu#Vật phẩm tăng máu có thể cấp thêm một ô mỗi 25 đồng xu", -- Greed's Gullet + Keeper
	["5.100.188"] = "Gây 7.5 sát thương dưới dạng {1}", -- Cain + Abel
	["5.100.360"] = "Gây 100% sát thương dưới dạng {1}", -- Lilith + Incubus
	["5.100.728"] = "Gây 100% sát thương dưới dạng {1}", -- Lilith + Gello
	["5.100.230 (Keeper)"] = "{1} còn lại 1 ô chứa đồng xu", -- Abaddon
	["5.100.230 (Bethany)"] = "{1} còn lại nửa trái tim", -- Abaddon
	["5.100.230 (Tainted Bethany)"] = "{1} không mất năng lượng máu của cô ấy", -- Abaddon
	["5.100.245 (Keeper)"] = {"↑ {{Tears}} Tăng tốc độ nước mắt#↑ Giảm độ phân tán nước mắt#↓ {{Damage}} Hệ số sát thương x0.8"}, -- 20/20 + Keeper
	["5.100.205 (Tainted Magdalene)"] = "Cho phép sử dụng Yum Heart vô hạn", -- Sharp Plug + Tainted Magdalene	
	
	["5.100.705"] = "Tạm thời +1 sát thương cho mỗi viên đạn/kẻ địch", -- Dark Arts + Dark/Tainted Judas
	["5.100.722"] = {"Xích Dark Esau lại#Sau 5 giây hoặc khi dùng Anima Sola lần nữa, anh ta thoát ra và lao về phía Jacob"}, -- TJacob + Anima Sola
	["5.100.713"] = {"Thu hồi tất cả cục máu về thanh máu của Eve#Cục máu thừa chỉ đơn giản được di chuyển đến vị trí của cô ấy#{{Timer}} Thời gian nạp lại 1 giây"}, --Teve + Sumptorium	
	["5.100.711"] = {"Vào", "{{Player38}} Lật Lazarus sang trạng thái khác#Vào"}, -- Tlaz + Flip
	["5.100.710"] = {"Khi sử dụng, tấn công vung túi theo hướng đã chọn#Vung vào vật phẩm nhặt được sẽ cho vào túi#Nội dung của Túi có thể được chuyển đổi bằng {{ButtonRT}} để thay thế vật phẩm nhặt cụ thể khi đầy#Giữ phím Sử dụng khi túi đầy sẽ chế tạo vật phẩm được xem trước#Chất lượng vật phẩm dựa trên chất lượng của vật phẩm nhặt được"}, -- Tcain Bag of Crafting

	["Mother's Kiss Soul"] = {"{{SoulHeart}} +1 Trái Tim Linh Hồn khi cầm"},
	["Mother's Kiss Bone"] = {"{{BoneHeart}} +1 Trái Tim Xương khi cầm"},
	["Mother's Kiss Coin"] = {"{{CoinHeart}} +1 Trái Tim Đồng Xu khi cầm#Tăng giới hạn Trái Tim Đồng Xu thêm 1"},	
	
	-- Vibrant/Dim Bulb
	["5.350.100 (Bethany)"] = "Hoạt động với năng lượng linh hồn của {1}",
	["5.350.100 (Tainted Bethany)"] = "Hoạt động với năng lượng máu của {1}",
	["5.350.101 (Bethany)"] = "Bỏ qua năng lượng linh hồn của {1}",
	["5.350.101 (Tainted Bethany)"] = "Bỏ qua năng lượng máu của {1}",
	["Health Up Soul Charges"] = "+{1} năng lượng linh hồn",
	["Health Up Blood Charges"] = "+{1} năng lượng máu",
	
	-- Tainted Bethany stuff
	["2 of Hearts Blood Charges"] = "Gấp đôi năng lượng máu của {1}",
	["Vampire Blood Charges"] = {"↑ {{Damage}} +0.3 Sát thương#Giết 13 kẻ địch thêm 1 năng lượng máu"},
	["Fork Blood Charges"] = {"Dọn một phòng có 10% cơ hội thêm 1 năng lượng máu"},
	["Stem Cell Blood Charges"] = {"Vào tầng mới thêm 1 năng lượng máu"},
	
	["Salvaging Bonus"] = {"và máy bị phá hủy", "máy bị phá hủy, và vật phẩm phân giải"},
	["Salvaging Lucky Toe"] = "66% cơ hội nhận thêm một vật phẩm nhặt được từ vật phẩm phân giải",
	
	
	------ DUPLICATE COPIES OF ITEMS ------
	["5.100.2 (Copies)"] = "Isaac bắn thêm 1 nước mắt#Không giảm chỉ số bổ sung", -- The Inner Eye
	["5.100.153 (Copies)"] = "Isaac bắn thêm 2 nước mắt#Không giảm chỉ số bổ sung", -- Mutant Spider
	["5.100.245 (Copies)"] = "Isaac bắn thêm 1 nước mắt#Không giảm chỉ số bổ sung", -- 20/20
	["5.100.358 (Copies)"] = "Isaac bắn thêm 1 nước mắt ở giữa", -- The Wiz
	["5.100.64 (Copies)"] = "Sở hữu vật phẩm này nhiều lần giảm giá thêm", -- Steam Sale
	["5.100.118 (Copies)"] = "Nhiều Brimstone cấp tăng sát thương và tia lớn hơn", -- Brimstone
	["5.100.531 (Copies)"] = "Các bản sao bổ sung chỉ cấp +1 sát thương", -- Haemolacria
	["5.100.224 (Copies)"] = "Các bản sao bổ sung chỉ cấp +0.5 tốc độ bắn", -- Cricket's Body
	
	
	----- MISC. ITEM CONDITIONS ------
	["Sacrificial Nugget"] = "Biến tháp pháo Brown Nugget thành đồng xu",
	["Sacrificial Item Wisps"] = "bạn đồng hành do Lemegeton tạo ra có thể bị hiến tế#Biến tất cả linh hồn Lemegeton thành {{HalfSoulHeart}} nửa Trái Tim Linh Hồn",
	["Sacrificial Plum"] = "Plum được triệu hồi được tính là bạn đồng hành, và không loại bỏ Plum Flute",
	["Sacrificial Quints"] = "Nếu một bạn đồng hành Quints bị hiến tế, bạn mất Quints",
	["Sacrificial Abyss"] = "Châu chấu Abyss được tính là bạn đồng hành",
	["Sacrificial Star"] = "Ngôi sao Bethlehem được tính là bạn đồng hành",
	["Sacrificial Clots"] = "Biến Cục máu thành đồng xu",
	
	["1000.76.1"] = "{{Warning}} Chỉ đổi mới nhân vật kích hoạt xúc xắc", -- Dice Room 1 (Co-op)
	["1000.76.6"] = "{{Warning}} Tất cả vật phẩm của các nhân vật sẽ được đổi mới trong chế độ co-op!", -- Dice Room 6 (Co-op)
	["5.100.45"] = "Hồi nửa trái tim cho người chơi khác", -- Yum Heart (Co-Op)
	["5.350.125"] = "Tia cũng nối giữa các người chơi", -- Extension Cord (Co-Op)
	
	["5.100.245"] = "Loại bỏ phạt tốc độ bắn của {1}", -- 20/20 + Mutant Spider, The Inner Eye, Polyphemus
	["20/20"] = "Không có phạt tốc độ bắn với {1}", -- 20/20 + Mutant Spider, The Inner Eye, Polyphemus
	
	["5.100.135 (Hard Mode)"] = {"1-2 đồng xu", "1 đồng xu", "2-3 đồng xu", "2 đồng xu"}, -- IV Bag Hard Mode (modify the PHD text too)
	["5.100.201"] = "Nạp lại năng lượng của {1} khi nhặt", -- Iron Bar + Notched Axe
	["5.350.172"] = "{1} loại bỏ hiệu ứng dịch chuyển", -- Cursed Penny + Black Candle
	["5.100.501 (Deep Pockets)"] = "+1 ô chứa cho mỗi 100 đồng xu vượt quá 99", -- Greed's Gullet + Deep Pockets
	["? Card Single Use"] = "Vật phẩm dùng một lần có thể dùng nhiều lần với ? Card", -- Single Use Actives + ? Card
	["Both Peppers"] = "Với {1}, cơ hội cơ bản bắn ngọn lửa là 12.5%, tối đa 100% ở 7 may mắn", -- Ghost Pepper + Bird's Eye
	["Black Feather"] = "↑ {{Damage}} +0.5 Sát thương", -- Black Feather items
	["Hemoptysis"] = "Hoạt động với {1}", -- Hemoptysis + Brimstone items
	["5.100.600"] = "Hệ số tốc độ bắn x1.2 cho {1}", -- Eye Drops (items and some players)
	["5.100.482"] = "Nhân vật Tainted biến thành nhân vật Tainted khác", -- Clicker
	
	["4.5 Volt Timed"] = "Không có hiệu ứng với nạp lại theo thời gian", -- 4.5 Volt + Timed Recharges
	["4.5 Volt Multiple"] = "Vật phẩm kích hoạt phụ chỉ nhận năng lượng nếu vật phẩm kích hoạt chính đầy", -- 4.5 Volt + Schoolbag/Pocket Actives
	["Bulb Zero"] = "Vật phẩm kích hoạt có 0 năng lượng tối đa không được tính", -- Vibrant/Dim Bulb + zero charge actives
	
	["Brimstone Proptosis"] = "Tia gây sát thương gấp 6 ở cự ly gần, giảm dần theo khoảng cách",
	["Brimstone Ipecac"] = "Tia laser nhận +2 sát thương và nổ trên kẻ địch và chướng ngại vật",
	["Brimstone Pop!"] = "Tia ngắn hơn bắn {1} nước mắt ở cuối",
	["Eye of Belial Dr. Fetus"] = "Bom xuyên thấu, gây sát thương x2.5, nhưng không tự dẫn hoặc gây thêm sát thương nổ",
	["Spirit Sword C Section"] = "{1} được ưu tiên#Thai nhi cầm kiếm và thực hiện đòn xoay",
	["Spirit Sword Mom's Knife"] = "{1} được ưu tiên#Đòn xoay ném kiếm về phía trước",
	["Spirit Sword Technology"] = "Thanh kiếm trở thành kiếm ánh sáng có thể phản đạn kẻ địch",
	["Spirit Sword Ipecac"] = "Thanh kiếm nhận +6 sát thương và gây độc nhưng không nổ#Tia kiếm thì nổ",
	["Ludovico Ipecac"] = "Nước mắt nhận +2 sát thương nhưng không nổ hoặc gây độc",
	["Technology Ipecac"] = "Tia laser nhận +2 sát thương và nổ trên mục tiêu",
	["Eye of the Occult Beam"] = "Isaac tự động bắn với tâm ngắm thay đổi đường đi của tia",
	
	["Lullaby Clots"] = "(Bao gồm cục máu)",
	["Lullaby Incubus"] = "(Bao gồm Incubus)",
	
	-- Jacob's Ladder / 120 Volt battery synergies
	["Sparks Damage"] = "Tia lửa gây thêm 50% sát thương",
	["Sparks Arc Length"] = "Tia lửa có khoảng cách nối dài hơn",
	["Sparks Arc Count"] = "Tia lửa có thể nối đến 2 kẻ địch nữa",
	["Sparks Arc Back"] = "Tia lửa có thể nối lại cùng một kẻ địch",
	
	["White Poop Jar"] = "Sinh ra Phân Trắng khi dùng 1 năng lượng",
	["Golden Poop Jar"] = "Cơ hội sinh ra Phân Vàng khi dùng 1 năng lượng",
	
	["Binge Eater Healing"] = {"Hồi 1 trái tim", "Hồi {{BlinkGreen}}2{{CR}} trái tim", "+4 năng lượng máu", "+{{BlinkGreen}}6{{CR}} năng lượng máu"},
}
EID:updateDescriptionsViaTable(repConditions, EID.descriptions[languageCode].ConditionalDescs)




-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repCollectibles = repCollectibles
	EID.descriptions[languageCode].repTrinkets = repTrinkets
	EID.descriptions[languageCode].repCards = repCards
	EID.descriptions[languageCode].repPills = repPills
end

if REPENTOGON then
	EID.descriptions[languageCode].custom["6.8.0"] = {"0", "Máy Quyên Góp", "Thành tựu tiếp theo tại {1} đồng xu, còn lại {2} đồng xu#{{Luck}} 2% cơ hội nhận +1 May mắn khi quyên góp#{{AngelRoom}} Quyên góp 10 đồng xu tăng cơ hội vào Phòng Thiên Thần"}
	EID.descriptions[languageCode].custom["6.11.0"] = {"0", "Máy Quyên Góp Tham Lam", "Thành tựu tiếp theo tại {1} đồng xu, còn lại {2} đồng xu"}
end
