---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 13] = "{{Poison}} Chạm vào kẻ địch sẽ gây độc cho chúng", -- The Virus
	-- Full old Desc: "↑ {{Speed}} +0.2 Tốc độ#{{Poison}} Chạm vào kẻ địch sẽ gây độc cho chúng#Isaac gây 48 sát thương tiếp xúc mỗi giây"
	-- English: "{{Poison}} Touching enemies poisons them"

	[C_ID .. 42] = "Sử dụng vật phẩm và bắn theo một hướng sẽ ném đầu#{{Poison}} Đầu nổ tại nơi nó hạ cánh và tạo một đám mây độc#Gây sát thương của Isaac + 185", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes where it lands and creates a poison cloud#Deals Isaac's damage + 185"

	[C_ID .. 46] = "Tăng cơ hội thắng khi đánh bạc#Tăng cơ hội nhận thưởng khi dọn phòng#Biến thuốc xấu thành thuốc tốt", -- Lucky Foot
	-- Full old Desc: "↑ {{Luck}} +1 May mắn#Tăng cơ hội thắng khi đánh bạc#Tăng cơ hội nhận thưởng khi dọn phòng#Biến thuốc xấu thành thuốc tốt"
	-- English: "Better chance to win while gambling#Increases room clearing drop chance#Turns bad pills into good ones"

	[C_ID .. 52] = "{{Damage}} Những quả bom đó gây 10x sát thương nước mắt của Isaac#Nếu sát thương vượt quá 60, thay vào đó gây 5x sát thương +30", -- Dr. Fetus
	-- Full old Desc: "↓ {{Tears}} x0.4 Hệ số tốc độ bắn#{{Bomb}} Isaac bắn bom thay vì nước mắt#{{Damage}} Những quả bom đó gây 10x sát thương nước mắt của Isaac#Nếu sát thương vượt quá 60, thay vào đó gây 5x sát thương +30"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 10x Isaac's tear damage#If that results in over 60 damage, they instead deal 5x damage +30"

	[C_ID .. 53] = "Các vật phẩm nhặt được bị hút về phía Isaac#Mở rương từ khoảng cách 2 ô, bỏ qua sát thương từ Rương Gai", -- Magneto
	-- English: "Pickups are attracted to Isaac#Opens chests from 2 tiles away, ignoring damage of Spike Chests"

	[C_ID .. 69] = "{{Chargeable}} Nước mắt có thể sạc#{{Damage}} Sát thương tăng theo thời gian sạc, tối đa 4x", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x"

	[C_ID .. 78] = "Sử dụng vật phẩm thay thế Boss tầng bằng một kỵ sĩ", -- Book of Revelations
	-- Full old Desc: "{{SoulHeart}} +1 Trái tim Linh hồn#{{AngelDevilChance}} +17.5% Cơ hội Phòng Quỷ/Thiên thần khi cầm#Sử dụng vật phẩm thay thế Boss tầng bằng một kỵ sĩ"
	-- English: "Using the item replaces the floor's boss with a horseman"

	[C_ID .. 84] = "Mở cửa sập xuống tầng tiếp theo#{{LadderRoom}} Mở không gian bò nếu sử dụng trên ô trang trí (cỏ, đá nhỏ, giấy, đá quý, v.v.)", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} Opens a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[C_ID .. 91] = "Các phòng trên bản đồ được tiết lộ từ xa hơn#{{SecretRoom}} Cũng có thể tiết lộ Phòng Bí mật và Phòng Bí mật Siêu cấp#Ngăn sát thương từ vật thể rơi", -- Spelunker Hat
	-- English: "Rooms on the map are revealed from further away#{{SecretRoom}} Can also reveal Secret and Super Secret Rooms#Prevents damage from falling projectiles"

	[C_ID .. 114] = "Nước mắt của Isaac được thay bằng một con dao ném được#{{Damage}} Con dao gây 2x sát thương của Isaac khi cầm và tối đa 6x sát thương ở 1/3 mức sạc#Sạc thêm chỉ tăng tầm ném#Sát thương giảm xuống 2x khi dao quay lại Isaac", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and caps at 6x damage at 1/3 charge#Charging further only increases throwing range#Damage reduces to 2x when returning to Isaac"

	[C_ID .. 123] = "{{Timer}} Tạo một bạn đồng hành ngẫu nhiên trong tầng", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the floor"

	[C_ID .. 126] = "↑ {{Damage}} +1.2 Sát thương trong phòng#{{Warning}} Gây 1 trái tim sát thương cho Isaac#Sau lần sử dụng đầu tiên trong phòng, gây nửa trái tim#{{Heart}} Ưu tiên loại bỏ Trái tim Đỏ trước", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first"

	[C_ID .. 140] = "{{Poison}} Miễn nhiễm với độc", -- Bob's Curse
	-- Full old Desc: "{{Bomb}} +5 Bom#{{Poison}} Bom của Isaac tạo một đám mây độc#{{Poison}} Miễn nhiễm với độc"
	-- English: "{{Poison}} Isaac's bombs create a cloud of poison#{{Poison}} Poison immunity"

	[C_ID .. 142] = "{{SoulHeart}} Isaac nhận 1 Trái tim Linh hồn khi bị tổn thương xuống còn nửa trái tim#Chỉ xảy ra một lần mỗi phòng#Rời đi và vào lại phòng cho phép hiệu ứng kích hoạt lại#{{Warning}} Không kích hoạt khi hiến máu", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again#{{Warning}} Doesn't trigger from health donations"

	[C_ID .. 147] = "Sử dụng vật phẩm khiến Isaac cầm rìu#Cầm rìu cho phép Isaac phá đá, lối vào phòng bí mật và gây sát thương cho kẻ địch#Đánh trúng bằng rìu giảm lần sạc#Lên tầng mới sẽ sạc đầy rìu", -- Notched Axe
	-- English: "Using the item makes Isaac hold the axe#Holding the axe allows Isaac to break rocks, secret room entrances and damage enemies#Landing a hit with the axe reduces its charge#Entering a new floor fully recharges the axe"

	[C_ID .. 149] = "Nước mắt của Isaac được bắn theo hình vòng cung#{{Poison}} Nước mắt nổ và gây độc cho kẻ địch nơi chúng hạ cánh", -- Ipecac
	-- Full old Desc: "↑ {{Damage}} +40 Sát thương#↓ {{Tears}} x0.33 Hệ số tốc độ bắn#↓ {{Range}} x0.8 Hệ số tầm bắn#↓ {{Shotspeed}} -0.2 Tốc độ đạn#Nước mắt của Isaac được bắn theo hình vòng cung#{{Poison}} Nước mắt nổ và gây độc cho kẻ địch nơi chúng hạ cánh"
	-- English: "Isaac's tears are fired in an arc#{{Poison}} The tears explode and poison enemies where they land"

	[C_ID .. 152] = "Thay nước mắt mắt phải của Isaac bằng một tia laze liên tục#{{Damage}} Tia gây 2x sát thương của Isaac mỗi giây", -- Technology 2
	-- Full old Desc: "↓ {{Tears}} x0.67 Hệ số tốc độ bắn#Thay nước mắt mắt phải của Isaac bằng một tia laze liên tục#{{Damage}} Tia gây 2x sát thương của Isaac mỗi giây"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} The laser deals 2x Isaac's damage per second"

	[C_ID .. 171] = "{{Slow}} Làm chậm kẻ địch trong 4 giây#Kẻ địch bị giết bởi vật phẩm tạo nhện xanh", -- Spider Butt
	-- Full old Desc: "{{Slow}} Làm chậm kẻ địch trong 4 giây#Gây 10 sát thương cho tất cả kẻ địch#Kẻ địch bị giết bởi vật phẩm tạo nhện xanh"
	-- English: "{{Slow}} Slows down enemies for 4 seconds#Enemies killed by the item spawn blue spiders"

	[C_ID .. 178] = "{{Throwable}} La mình theo hướng Isaac bắn#Vỡ và gây 7 sát thương khi trúng kẻ địch#Để lại một vũng chất lỏng hóa đá + gây sát thương", -- Holy Water
	-- English: "{{Throwable}} Launches itself in the direction Isaac shoots#Breaks and deals 7 damage upon hitting an enemy#{{Petrify}} Leaves a pool of petrifying + damaging creep"

	[C_ID .. 180] = "Isaac đánh rắm nhiều lần khi nhận sát thương#{{Poison}} Những cái rắm để lại đám mây độc và đẩy lùi đạn", -- The Black Bean
	-- English: "Isaac farts multiple times when damaged#{{Poison}} The farts leave poison clouds and deflects projectiles"

	[C_ID .. 186] = "{{Heart}} Ưu tiên loại bỏ Trái tim Đỏ trước", -- Blood Rights
	-- Full old Desc: "Gây 40 sát thương cho mọi kẻ địch#{{Warning}} Gây 1 trái tim sát thương cho Isaac#Sau lần sử dụng đầu tiên trong phòng, gây nửa trái tim#{{Heart}} Ưu tiên loại bỏ Trái tim Đỏ trước"
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first"

	[C_ID .. 203] = "Các vật phẩm nhặt được có 50% cơ hội được nhân đôi", -- Humbleing Bundle
	-- English: "Pickups have a 50% chance to be doubled"

	[C_ID .. 205] = "{{Battery}} Sử dụng vật phẩm kích hoạt chưa sạc sẽ sạc đầy nó với giá nửa trái tim cho mỗi lần sạc còn thiếu#{{Heart}} Ưu tiên loại bỏ Trái tim Đỏ trước", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of half a heart per missing charge#{{Heart}} Removes Red Hearts first"

	[C_ID .. 222] = "Giữ nút bắn làm nước mắt lơ lửng giữa không trung#Thả nút bắn sẽ bắn chúng theo hướng đã bắn", -- Anti-Gravity
	-- Full old Desc: "↑ {{Tears}} +1 Tốc độ bắn#Giữ nút bắn làm nước mắt lơ lửng giữa không trung#Thả nút bắn sẽ bắn chúng theo hướng đã bắn"
	-- English: "Holding the fire buttons causes tears to hover in mid-air#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "Miễn nhiễm với vụ nổ và lửa#{{HealingRed}} Bị trúng vụ nổ hồi nửa trái tim", -- Pyromaniac
	-- Full old Desc: "{{Bomb}} +5 Bom#Miễn nhiễm với vụ nổ và lửa#{{HealingRed}} Bị trúng vụ nổ hồi nửa trái tim"
	-- English: "Immunity to explosions and fire#{{HealingRed}} Getting hit by explosions heals half a heart"

	[C_ID .. 224] = "Nước mắt tách thành 4 khi trúng#Nước mắt tách ra gây nửa sát thương", -- Cricket's Body
	-- Full old Desc: "↑ {{Tears}} +0.5 Tốc độ bắn#↓ {{Range}} x0.8 Hệ số tầm bắn#Nước mắt tách thành 4 khi trúng#Nước mắt tách ra gây nửa sát thương"
	-- English: "Tears split in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "{{SoulHeart}} Nhận sát thương có 8% cơ hội tạo Trái tim Linh hồn#{{Luck}} +2% cơ hội mỗi may mắn#{{HalfHeart}} Kẻ địch có cơ hội thả nửa Trái tim Đỏ khi chết", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a 8% chance to spawn a Soul Heart#{{Luck}} +2% chance per luck#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 230] = "{{Fear}} 15% cơ hội bắn nước mắt gây sợ", -- Abaddon
	-- Full old Desc: "↑ {{Speed}} +0.2 Tốc độ#↑ {{Damage}} +1.5 Sát thương#{{BlackHeart}} Chuyển tất cả hộp tim thành Trái tim Đen#{{BlackHeart}} +2 Trái tim Đen#{{Fear}} 15% cơ hội bắn nước mắt gây sợ"
	-- English: "{{BlackHeart}} Converts all heart containers into Black Hearts#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 232] = "{{Slow}} Kẻ địch bị chậm vĩnh viễn xuống 80% tốc độ tấn công và di chuyển", -- Stop Watch
	-- Full old Desc: "↑ {{Speed}} +0.3 Tốc độ#{{Slow}} Kẻ địch bị chậm vĩnh viễn xuống 80% tốc độ tấn công và di chuyển"
	-- English: "{{Slow}} Enemies are permanently slowed down to 80% of their attack and movement speed"

	[C_ID .. 248] = "Nhện xanh và ruồi xanh gây sát thương gấp đôi#bạn đồng hành nhện và ruồi trở nên mạnh hơn", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage#Spider and fly familiars become stronger"

	[C_ID .. 256] = "{{Burning}} Miễn nhiễm với lửa (trừ đạn lửa)", -- Hot Bombs
	-- Full old Desc: "{{Bomb}} +5 Bom#{{Burning}} Bom của Isaac gây sát thương tiếp xúc#{{Burning}} Bom của Isaac để lại ngọn lửa nơi chúng nổ#{{Burning}} Miễn nhiễm với lửa (trừ đạn lửa)"
	-- English: "{{Burning}} Isaac's bombs deal contact damage#{{Burning}} Isaac's bombs leave a flame where they explode#{{Burning}} Fire immunity (except projectiles)"

	[C_ID .. 261] = "↓ Nước mắt gây ít sát thương hơn khi bay xa hơn#Nước mắt gây 3x sát thương ở cự ly gần và không có sát thương sau 0.8 giây", -- Proptosis
	-- Full old Desc: "↑ {{Damage}} +0.5 Sát thương#↓ Nước mắt gây ít sát thương hơn khi bay xa hơn#Nước mắt gây 3x sát thương ở cự ly gần và không có sát thương sau 0.8 giây"
	-- English: "↓ Tears deal less damage the longer they are airborne#Tears deal 3x damage at point blank range and no damage after 0.8 seconds"

	[C_ID .. 262] = "Nhận sát thương xuống còn 1 trái tim gây sát thương cho tất cả kẻ địch trong phòng#{{Collectible35}} Trái tim Đen và hiệu ứng kiểu Necronomicon gây gấp đôi sát thương", -- Missing Page 2
	-- Full old Desc: "{{BlackHeart}} +1 Trái tim Đen#Nhận sát thương xuống còn 1 trái tim gây sát thương cho tất cả kẻ địch trong phòng#{{Collectible35}} Trái tim Đen và hiệu ứng kiểu Necronomicon gây gấp đôi sát thương"
	-- English: "Taking damage down to 1 heart damages all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[C_ID .. 263] = "{{Rune}} Kích hoạt hiệu ứng của rune Isaac đang giữ mà không sử dụng nó", -- Clear Rune
	-- Full old Desc: "{{Rune}} Tạo 1 rune khi nhặt#{{Rune}} Kích hoạt hiệu ứng của rune Isaac đang giữ mà không sử dụng nó"
	-- English: "{{Rune}} Triggers the effect of the rune Isaac holds without using it"

	[C_ID .. 276] = "Isaac trở nên bất tử#Tạo một bạn đồng hành trái tim đi theo Isaac#Trái tim sạc khi Isaac bắn và thả một loạt nước mắt khi dừng bắn#{{Warning}} Nếu bạn đồng hành trái tim bị trúng, Isaac nhận sát thương", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#The heart charges up when Isaac fires and releases a burst of tears when he stops#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 278] = "{{Heart}} Nhặt Trái tim Đỏ gần đó#Tạo Trái tim Đen, rune, lá bài, viên thuốc hoặc nhện cho mỗi 1.5 Trái tim Đỏ nhặt được", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#Spawns a Black Heart, rune, card, pill, or spider for every 1.5 hearts picked up"

	[C_ID .. 280] = "Ngẫu nhiên tạo nhện xanh trong phòng có kẻ địch#{{Charm}} Mê hoặc kẻ địch khi tiếp xúc", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms#{{Charm}} Charms enemies it comes in contact with"

	[C_ID .. 283] = "Nhân đôi 1 vật phẩm nhặt trong phòng#Đổi lại tốc độ, nước mắt, sát thương, tầm bắn và vật phẩm bị động của Isaac#Đổi lại tất cả vật phẩm trên bệ, vật phẩm nhặt và đá trong phòng#Khởi động lại phòng, hồi sinh tất cả kẻ địch và làm chúng thoái hóa", -- D100
	-- English: "Duplicates 1 pickup in the room#Rerolls Isaac's speed, tears, damage, range and passive items#Rerolls all pedestal items, pickups and rocks in the room#Restarts the room, respawns all enemies and devolves them"

	[C_ID .. 285] = "Làm thoái hóa tất cả kẻ địch trong phòng#Ví dụ, tất cả Ruồi Đỏ trở thành Ruồi Đen", -- D10
	-- English: "Devolves all enemies in the room#For instance, all Red Flies become Black Flies"

	[C_ID .. 286] = "Kích hoạt hiệu ứng của lá bài Isaac đang giữ mà không sử dụng nó", -- Blank Card
	-- English: "Triggers the effect of the card Isaac holds without using it"

	[C_ID .. 287] = "Đánh dấu đá nhuộm và không gian bò trong phòng#{{Collectible76}} Nếu đã có tất cả hiệu ứng, cấp Tầm nhìn X-quang", -- Book of Secrets
	-- Full old Desc: "Đánh dấu đá nhuộm và không gian bò trong phòng#{{Timer}} Nhận một trong các hiệu ứng sau cho tầng:#{{Collectible54}} Bản đồ Kho báu#{{Collectible21}} La bàn#{{Collectible246}} Bản đồ Xanh#Chỉ cấp hiệu ứng chưa có#{{Collectible76}} Nếu đã có tất cả hiệu ứng, cấp Tầm nhìn X-quang"
	-- English: "Highlights tinted and crawlspace rocks in the room#{{Timer}} Receive one of these effects for the floor:#{{IND}}{{NameC54}}#{{IND}}{{NameC21}}#{{IND}}{{NameC246}}#Only grants effects not already active#{{Collectible76}} If all effects are active, grants X-Ray Vision"

	[C_ID .. 289] = "Ném một ngọn lửa đỏ#Nó gây sát thương tiếp xúc, chặn nước mắt kẻ địch, và biến mất khi đã gây sát thương hoặc chặn đạn 4 lần hoặc sau 10 giây", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 4 times or after 10 seconds"

	[C_ID .. 291] = "Biến tất cả kẻ địch không phải Boss thành phân#Tiêu diệt ngay lập tức kẻ địch phân và Boss phân#Dập tắt lò sưởi và lấp đầy phòng bằng nước#Biến hố dung nham thành mặt đất có thể đi lại", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses#Extinguishes fire places and fills the room with water#Turns lava pits into walkable ground"

	[C_ID .. 292] = "{{DevilRoom}} Sử dụng vật phẩm trước trận đấu Boss khiến phần thưởng Boss trở thành giao dịch quỷ#Mua các giao dịch quỷ này có hậu quả tương tự như trong Phòng Quỷ#Không ảnh hưởng đến vật phẩm trên bệ ở tầng The Void", -- Satanic Bible
	-- Full old Desc: "{{BlackHeart}} +1 Trái tim Đen#{{DevilRoom}} Sử dụng vật phẩm trước trận đấu Boss khiến phần thưởng Boss trở thành giao dịch quỷ#Mua các giao dịch quỷ này có hậu quả tương tự như trong Phòng Quỷ#Không ảnh hưởng đến vật phẩm trên bệ ở tầng The Void"
	-- English: "{{DevilRoom}} Using the item before a boss fight makes the boss reward a devil deal#Purchasing these devil deals has the same consequences as those in Devil Rooms#Does not affect item pedestals in The Void floor"

	[C_ID .. 294] = "Đẩy lùi kẻ địch và đạn gần đó#Kẻ địch bị đẩy vào chướng ngại vật nhận 10 sát thương", -- Butter Bean
	-- English: "Knocks back nearby enemies and projectiles#Enemies pushed into obstacles take 10 damage"

	[C_ID .. 295] = "Gây 2x sát thương của Isaac + 10 cho tất cả kẻ địch trong phòng#{{Coin}} Tốn 1 đồng xu", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage + 10 to all enemies in the room#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "{{Heart}} Chuyển 1 Trái tim Linh hồn hoặc Đen thành 1 hộp tim", -- Converter
	-- English: "{{Heart}} Converts 1 Soul or Black Heart into 1 heart container"

	[C_ID .. 297] = "{{NoLB}} Tạo phần thưởng dựa trên tầng:#B1: 2{{SoulHeart}}; B2: 2{{Bom}} + 2{{Key}}#{{NoLB}}C1: Vật phẩm Boss; C2: C1 + 2{{SoulHeart}}#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Vật phẩm Boss#W2: {{Collectible33}} Kinh Thánh#???/Void: Không có gì#Sheol: Vật phẩm Quỷ + 1{{BlackHeart}}#Cathe: Vật phẩm Thiên thần + 1{{EternalHeart}}#{{NoLB}}Dark Room: Mở khóa {{Collectible523}} Moving Box#Chest: 1{{Coin}}#Home: {{Collectible580}} Chìa khóa Đỏ", -- Pandora's Box
	-- English: "{{NoLB}}Spawns rewards based on floor:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#{{NoLB}}C1: Boss item; C2: C1 + 2{{SoulHeart}}#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Boss items#W2: {{Collectible33}} The Bible#???/Void: Nothing#Sheol: Devil item + 1{{BlackHeart}}#Cathe: Angel item + 1{{EternalHeart}}#{{NoLB}}Dark Room: Unlocks {{Collectible523}} Moving Box#Chest: 1{{Coin}}#Home: {{Collectible580}} Red Key"

	[C_ID .. 300] = "Di chuyển trên 0.85 tốc độ khiến Isaac miễn nhiễm sát thương tiếp xúc và gây 25 sát thương cho kẻ địch", -- Aries
	-- Full old Desc: "↑ {{Speed}} +0.25 Tốc độ#Di chuyển trên 0.85 tốc độ khiến Isaac miễn nhiễm sát thương tiếp xúc và gây 25 sát thương cho kẻ địch"
	-- English: "Moving above 0.85 Speed makes Isaac immune to contact damage and deals 25 damage to enemies"

	[C_ID .. 308] = "Isaac để lại vệt chất lỏng#{{Damage}} Chất lỏng gây 66% sát thương của Isaac mỗi giây và thừa hưởng hiệu ứng nước mắt của Isaac", -- Aquarius
	-- English: "Isaac leaves a trail of creep#{{Damage}} The creep deals 66% of Isaac's damage per second and inherits his tear effects"

	[C_ID .. 315] = "Nước mắt của Isaac thu hút kẻ địch, vật phẩm nhặt và trang sức#Hiệu ứng thu hút mạnh hơn ở cuối đường bay của nước mắt", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets#The attraction effect is much stronger at the end of the tears' path"

	[C_ID .. 319] = "Bắn nước mắt theo hướng ngẫu nhiên với cùng hiệu ứng như Isaac#{{Damage}} Gây 75% sát thương của Isaac", -- Cain's Other Eye
	-- English: "Shoots tears in random directions with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 323] = "Bắn 8 nước mắt theo mọi hướng#Nước mắt sao chép hiệu ứng nước mắt của Isaac, cộng thêm 5 sát thương#Sạc lại bằng cách bắn nước mắt", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects, plus 5 damage#Recharges by shooting tears"

	[C_ID .. 325] = "{{Timer}} Đầu của Isaac biến thành bạn đồng hành cố định trong phòng#Cơ thể được điều khiển riêng và phun nước mắt máu theo hướng Isaac đang bắn", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The body is controlled separately and gushes blood tears in the direction Isaac is shooting"

	[C_ID .. 326] = "Giữ nút SỬ DỤNG làm trống thanh sạc#Isaac tạm thời bất tử khi thanh sạc trống#Isaac triệu hồi tia sáng khi tiếp xúc với kẻ địch khi bất tử#Nếu chặn sát thương đúng thời điểm, bắn tia thánh 4 hướng và nhận lá chắn ngắn#{{Warning}} Giữ quá lâu gây sát thương cho Isaac", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#Isaac summons light beams on contact with enemies when invincible#If damage is blocked with perfect timing, shoot a 4-way holy beam and gain a brief shield#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 330] = "Giảm mạnh độ đẩy lùi", -- Soy Milk
	-- Full old Desc: "↑ {{Tears}} x5.5 Hệ số tốc độ bắn#↓ {{Damage}} x0.2 Hệ số sát thương#↓ {{Tearsize}} -0.3 Kích thước nước mắt#Giảm mạnh độ đẩy lùi"
	-- English: "Drastically reduces knockback"

	[C_ID .. 331] = "Nước mắt có hào quang gây 60 sát thương mỗi giây", -- Godhead
	-- Full old Desc: "↑ {{Damage}} +0.5 Sát thương#↓ {{Tears}} -0.3 Nước mắt#↓ {{Shotspeed}} -0.3 Tốc độ đạn#Nước mắt tự dẫn đường#Nước mắt có hào quang gây 60 sát thương mỗi giây"
	-- English: "Tears gain an aura that deals 60 damage per second"

	[C_ID .. 344] = "{{Trinket41}} Tạo Gậy Diêm", -- Match Book
	-- Full old Desc: "{{BlackHeart}} +1 Trái tim Đen#{{Bomb}} Tạo 3 bom#{{Trinket41}} Tạo Gậy Diêm"
	-- English: "{{Trinket41}} Spawns Match Stick"

	[C_ID .. 352] = "{{Damage}} Bắn một nước mắt xuyên thấu + xuyên tường lớn gây 10x sát thương của Isaac#{{Warning}} Khi cầm, nhận sát thương:#↓ Loại bỏ thêm 2 trái tim máu#↓ Làm hỏng khẩu pháo trong vài phòng#↑ {{Range}} +1.5 Tầm bắn và để lại vệt máu trong phòng#Sát thương thêm không thể giết Isaac#Tự gây sát thương không kích hoạt hiệu ứng", -- Glass Cannon
	-- English: "{{Damage}} Shoots a large piercing spectral tear that does 10x Isaac's damage#{{Warning}} While held, taking damage:#↓ Removes an extra 2 hearts of health#↓ Breaks the cannon for a few rooms#↑ {{Range}} +1.5 Range and leaves a blood trail for the room#The extra damage can't kill Isaac#Self-damage does not trigger the effect"

	[C_ID .. 360] = "Bắn nước mắt với cùng hiệu ứng như Isaac#{{Damage}} Gây 75% sát thương của Isaac", -- Incubus
	-- English: "Shoots tears with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 365] = "Di chuyển dọc theo tường/chướng ngại vật trong phòng#Kẻ địch gần đó nhắm vào con ruồi", -- Lost Fly
	-- Full old Desc: "Di chuyển dọc theo tường/chướng ngại vật trong phòng#Gây 30 sát thương tiếp xúc mỗi giây#Kẻ địch gần đó nhắm vào con ruồi"
	-- English: "Moves along walls/obstacles in the room#Nearby enemies target the fly"

	[C_ID .. 367] = "{{Slow}} Bom của Isaac dính vào kẻ địch và để lại chất lỏng trắng làm chậm#Giết kẻ địch bằng bom tạo nhện xanh", -- Sticky Bombs
	-- Full old Desc: "{{Bomb}} +5 Bom#{{Slow}} Bom của Isaac dính vào kẻ địch và để lại chất lỏng trắng làm chậm#Giết kẻ địch bằng bom tạo nhện xanh"
	-- English: "{{Slow}} Isaac's bombs stick to enemies and leave white slowing creep#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "↑ {{Tears}} Bắn theo một hướng dần tăng tốc độ bắn tối đa 200% và giảm độ chính xác", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually increases fire rate up to 200% and decreases accuracy"

	[C_ID .. 374] = "{{Damage}} Tia sáng gây 3x sát thương của Isaac", -- Holy Light
	-- Full old Desc: "10% cơ hội bắn nước mắt thánh, tạo tia sáng khi trúng#{{Luck}} 50% cơ hội ở 9 may mắn#{{Damage}} Tia sáng gây 3x sát thương của Isaac"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot holy tears, which spawn a beam of light on hit#{{Damage}} The beams deals 3x Isaac's damage"

	[C_ID .. 375] = "Miễn nhiễm với vụ nổ và vật thể rơi#25% cơ hội phản đạn kẻ địch", -- Host Hat
	-- English: "Grants immunity to explosions and falling projectiles#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Mua vật phẩm từ Cửa hàng sẽ tái nhập hàng ngay lập tức#Vật phẩm tái nhập tăng giá mỗi lần", -- Restock
	-- English: "Buying an item from a Shop restocks it instantly#Restocked items increase in price each time"

	[C_ID .. 380] = "Các khối, cửa và rương khóa phải mở bằng đồng xu thay vì chìa khóa", -- Pay To Play
	-- Full old Desc: "{{Coin}} +5 Đồng xu#Các khối, cửa và rương khóa phải mở bằng đồng xu thay vì chìa khóa"
	-- English: "Locked blocks, doors and chests must be opened with coins instead of keys"

	[C_ID .. 382] = "Có thể ném vào kẻ địch để bắt chúng#Sử dụng vật phẩm sau khi bắt kẻ địch tạo ra chúng như một bạn đồng hành thân thiện#Đi qua quả bóng sau khi bắt sẽ sạc lại ngay lập tức", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns the capture as a friendly companion#Walking over the ball after a capture instantly recharges the item"

	[C_ID .. 384] = "{{Chargeable}} Lao và nảy quanh phòng với tốc độ dựa trên mức sạc#Gây 5-20 sát thương tiếp xúc mỗi lần va chạm tùy vào tốc độ", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-20 contact damage per hit depending on speed"

	[C_ID .. 386] = "Đổi lại bất kỳ chướng ngại vật nào thành chướng ngại vật ngẫu nhiên khác (ví dụ: phân, chậu, TNT, phân đỏ, khối đá, v.v.)#Cơ hội nhỏ đổi chướng ngại vật thành nút, công tắc chết, không gian bò hoặc cửa sập", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)#Small chance to reroll obstacles into buttons, killswitches, crawlspaces or trapdoors"

	[C_ID .. 389] = "{{Rune}} Tạo một rune ngẫu nhiên hoặc Đá Linh hồn mỗi 7-8 phòng", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune or Soul Stone every 7-8 rooms"

	[C_ID .. 391] = "Kẻ địch có thể bị trúng đạn của nhau và bắt đầu nội chiến", -- Betrayal
	-- English: "Enemies can hit each other with their projectiles, and start infighting"

	[C_ID .. 393] = "{{Poison}} 15% cơ hội bắn nước mắt độc#{{Poison}} Gây độc cho kẻ địch khi tiếp xúc#{{BlackHeart}} Kẻ địch bị giết bởi độc tiếp xúc có cơ hội thả Trái tim Đen khi chết", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Enemies killed by contact poison have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "Isaac tự động bắn nước mắt vào một mục tiêu đỏ di động trên mặt đất#bạn đồng hành cũng bắn về phía mục tiêu#Bạn có thể ngừng bắn và đặt lại vị trí mục tiêu bằng nút Thả ({{ButtonRT}})", -- Marked
	-- Full old Desc: "↑ {{Tears}} +0.7 Nước mắt#↑ {{Range}} +3 Tầm bắn#Isaac tự động bắn nước mắt vào một mục tiêu đỏ di động trên mặt đất#bạn đồng hành cũng bắn về phía mục tiêu#Bạn có thể ngừng bắn và đặt lại vị trí mục tiêu bằng nút Thả ({{ButtonRT}})"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground#Familiars shoot towards the target too#You can stop shooting and reset the target's location by pressing the drop button ({{ButtonRT}})"

	[C_ID .. 395] = "Nước mắt của Isaac được thay bằng một vòng laze có thể sạc#Kích thước và sát thương vòng tăng tối đa 100% theo thời gian sạc", -- Tech X
	-- English: "Isaac's tears are replaced by a chargeable laser ring#Ring size and damage increases up to 100% with charge time"

	[C_ID .. 399] = "{{Chargeable}} Bắn nước mắt trong 2.35 giây và thả nút bắn tạo một vòng brimstone đen quanh Isaac#Nó gây 30x sát thương của Isaac trong 2 giây", -- Maw of the Void
	-- English: "{{Chargeable}} Firing tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds"

	[C_ID .. 401] = "25% cơ hội bắn nước mắt dính#Nước mắt dính lớn lên và nổ sau vài giây, gây sát thương của Isaac +60", -- Explosivo
	-- English: "25% chance to shoot sticky tears#Sticky tears grow and explode after a few seconds, dealing Isaac's damage +60"

	[C_ID .. 404] = "Khi bị trúng, 10% cơ hội đánh rắm và {{Charm}} mê hoặc, {{Poison}} gây độc hoặc đẩy lùi kẻ địch#Những cái rắm gây 5-6 sát thương", -- Farting Baby
	-- Full old Desc: "Chặn đạn#Khi bị trúng, 10% cơ hội đánh rắm và {{Charm}} mê hoặc, {{Poison}} gây độc hoặc đẩy lùi kẻ địch#Những cái rắm gây 5-6 sát thương"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies#The farts deal 5-6 damage"

	[C_ID .. 405] = "{{Throwable}} Có thể ném (nhấn đúp phím bắn)#Đổi lại kẻ địch và vật phẩm nhặt mà nó tiếp xúc", -- GB Bug
	-- English: "{{Throwable}} Throwable (double-tap shoot)#Rerolls enemies and pickups it comes in contact with"

	[C_ID .. 407] = "↑ Tăng một chỉ số của Isaac tùy thuộc vào màu sắc của hào quang#Nhận sát thương loại bỏ hiệu ứng, và cấp hiệu ứng mới ở phòng tiếp theo#{{ColorYellow}}Vàng{{CR}} = ↑ {{Speed}} +0.5 Tốc độ#{{ColorBlue}}Xanh dương{{CR}} = ↑ {{Tears}} +2 Tốc độ bắn#{{ColorRed}}Đỏ{{CR}} = ↑ {{Damage}} +4 Sát thương#{{ColorOrange}}Cam{{CR}} = ↑ {{Range}} +3 Tầm bắn", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and grants a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} +2 Fire rate#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +3 Range"

	[C_ID .. 408] = "25% cơ hội cho một vòng brimstone đen xuất hiện quanh kẻ địch bị giết#Nó gây 30x sát thương của Isaac trong 2 giây#{{Luck}} +2.5% cơ hội mỗi may mắn", -- Athame
	-- English: "25% chance for a black brimstone ring to spawn around killed enemies#It deals 30x Isaac's damage over 2 seconds#{{Luck}} +2.5% chance per luck"

	[C_ID .. 416] = "{{Coin}} Nếu dọn phòng không có phần thưởng, tạo 1-3 đồng xu#{{Coin}} Tăng giới hạn đồng xu lên 999", -- Deep Pockets
	-- English: "{{Coin}} If clearing a room would yield no reward, spawns 1-3 coins#{{Coin}} Increases the coin cap to 999"

	[C_ID .. 417] = "Bay quanh phòng bao quanh bởi hào quang gây sát thương gây 7.5-10 sát thương mỗi giây#↑ {{Damage}} x1.5 Hệ số sát thương khi đứng trong hào quang", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 7.5-10 damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 421] = "{{Charm}} Mê hoặc tất cả kẻ địch ở gần", -- Kidney Bean
	-- English: "{{Charm}} Charms all enemies in close range"

	[C_ID .. 422] = "Đưa Isaac trở lại phòng trước đó và đảo ngược tất cả hành động đã thực hiện trong phòng sử dụng vật phẩm#Hồi ngược có thể sử dụng ba lần mỗi tầng#{{Collectible66}} Hoạt động như Đồng hồ Cát khi hết lượt, làm chậm kẻ địch trong 8 giây", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in#The rewind can be used three times per floor#{{Collectible66}} Acts as The Hourglass when out of rewinds, which slows enemies down for 8 seconds"

	[C_ID .. 432] = "{{Charm}} Bom có 63% cơ hội thả vật phẩm nhặt ngẫu nhiên và 15% cơ hội mê hoặc kẻ địch khi nổ#Cơ hội thả vật phẩm giảm 1% cho mỗi lần thả trong tầng này", -- Glitter Bombs
	-- Full old Desc: "{{Bomb}} +5 Bom#{{Charm}} Bom có 63% cơ hội thả vật phẩm nhặt ngẫu nhiên và 15% cơ hội mê hoặc kẻ địch khi nổ#Cơ hội thả vật phẩm giảm 1% cho mỗi lần thả trong tầng này"
	-- English: "{{Charm}} Bombs have a 63% chance to drop a random pickup and a 15% chance to charm enemies when they explode#The pickup spawn chance goes down by 1% for each spawn this floor"

	[C_ID .. 433] = "Một cái bóng nhỏ đi theo Isaac#{{Timer}} Khi kẻ địch chạm vào bóng, một con sạc đen thân thiện xuất hiện trong phòng", -- My Shadow
	-- Full old Desc: "Một cái bóng nhỏ đi theo Isaac#{{Timer}} Khi kẻ địch chạm vào bóng, một con sạc đen thân thiện xuất hiện trong phòng#Con sạc gây 8.7 sát thương mỗi lần đánh"
	-- English: "A small shadow follows Isaac#{{Friendly}} When an enemy touches the shadow a friendly black charger spawns for the room"

	[C_ID .. 437] = "Khởi động lại phòng và hồi sinh tất cả kẻ địch#Có thể dùng để nhận nhiều phần thưởng dọn phòng từ một phòng", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room"

	[C_ID .. 444] = "Isaac bắn một loạt nước mắt mỗi 15 nước mắt", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears"

	[C_ID .. 448] = "Khi nhận sát thương:#{{Heart}} 25% cơ hội tạo Trái tim Đỏ#{{BleedingOut}} Isaac chảy máu, phun nước mắt theo hướng đang bắn#Chảy máu gây nửa Trái tim Đỏ sát thương mỗi 20 giây#Chảy máu dừng lại nếu hồi Trái tim Đỏ, hết Trái tim Đỏ, hoặc sát thương tiếp theo sẽ giết Isaac", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{BleedingOut}} Isaac bleeds, spewing tears in the direction he is shooting#The bleeding does half a Red Heart of damage every 20 seconds#The bleeding stops if a Red Heart is healed, all Red Hearts are empty, or the next damage would kill Isaac"

	[C_ID .. 450] = "{{Damage}} Mỗi 20 nước mắt, Isaac bắn một nước mắt đồng xu gây x1.5 +10 sát thương#Kẻ địch trúng đồng xu bị hóa đá và biến thành vàng#{{Coin}} Giết kẻ địch vàng thả 1-3 đồng xu#{{Warning}} Bắn nước mắt đồng xu tốn 1 đồng xu", -- Eye of Greed
	-- English: "{{Damage}} Every 20 tears, Isaac shoots a coin tear that deals x1.5 +10 damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-3 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "{{Card}} Hiệu ứng lá bài Tarot được nhân đôi hoặc tăng cường", -- Tarot Cloth
	-- Full old Desc: "{{Card}} Tạo một lá bài#{{Card}} Hiệu ứng lá bài Tarot được nhân đôi hoặc tăng cường"
	-- English: "{{Card}} Tarot card effects are doubled or enhanced"

	[C_ID .. 453] = "Nước mắt vỡ thành 1-3 mảnh xương nhỏ khi va chạm bất cứ thứ gì", -- Compound Fracture
	-- Full old Desc: "↑ {{Range}} +1.5 Tầm bắn#Nước mắt vỡ thành 1-3 mảnh xương nhỏ khi va chạm bất cứ thứ gì"
	-- English: "Tears shatter into 1-3 bone shards upon hitting anything"

	[C_ID .. 464] = "Phần thưởng dọn phòng và kẻ địch Quán quân thả vật phẩm nhặt mà Isaac cần nhất", -- Glyph of Balance
	-- Full old Desc: "{{SoulHeart}} +2 Trái tim Linh hồn#Phần thưởng dọn phòng và kẻ địch Quán quân thả vật phẩm nhặt mà Isaac cần nhất"
	-- English: "Room clear rewards and champion enemy drops become whatever pickup Isaac needs the most"

	[C_ID .. 472] = "Các bạn đồng hành khác đi theo nó và tự động bắn vào kẻ địch#Dừng di chuyển khi Isaac bắn#Dịch chuyển về Isaac khi Isaac ngừng bắn", -- King Baby
	-- English: "Other familiars follow it and automatically shoot at enemies#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 474] = "Sử dụng vật phẩm biến nó trở lại thành Khẩu pháo Thủy tinh", -- Broken Glass Cannon
	-- English: "Using the item turns it back into Glass Cannon"

	[C_ID .. 476] = "Nhân đôi một vật phẩm nhặt ngẫu nhiên trong phòng#Vật phẩm nhặt được nhân đôi có thể không giống với bản gốc", -- D1
	-- English: "Duplicates a random pickup in the room#Duplicated pickups may not be identical to the original"

	[C_ID .. 477] = "Tiêu thụ tất cả vật phẩm trên bệ trong phòng#Vật phẩm kích hoạt: Hiệu ứng của chúng kích hoạt với mỗi lần sử dụng Void sau này#↑ Vật phẩm bị động cấp hai chỉ số ngẫu nhiên tăng", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 489] = "Có thể hoạt động như bất kỳ vật phẩm xúc xắc nào (trừ {{Collectible723}} Xúc xắc Quay ngược)#Thời gian sạc thay đổi dựa trên xúc xắc cuối cùng sử dụng và cập nhật sau mỗi lần dùng", -- D Infinity
	-- Full old Desc: "Có thể hoạt động như bất kỳ vật phẩm xúc xắc nào (trừ {{Collectible723}} Xúc xắc Quay ngược)#Thời gian sạc thay đổi dựa trên xúc xắc cuối cùng sử dụng và cập nhật sau mỗi lần dùng"
	-- English: "Can be made to act as any die item (except {{Name723}}) with the drop button ({{ButtonRT}})#Charge time varies based on the last die used and updates with every use"

	[C_ID .. 493] = "↑ {{Damage}} Tăng sát thương cho mỗi hộp tim trống#Càng nhiều hộp tim trống, phần thưởng cho mỗi hộp mới càng lớn", -- Adrenaline
	-- English: "↑ {{Damage}} Damage up for every empty heart container#The more empty heart containers, the bigger the bonus for each new one"

	[C_ID .. 494] = "Nước mắt tạo tia điện khi va chạm#Tia gây nửa sát thương của Isaac#Tia có thể lan đến tối đa 4 kẻ địch khác", -- Jacob's Ladder
	-- English: "Tears spawn a spark of electricity on impact#Sparks deal half of Isaac's damage#Sparks can arc to up to 4 other enemies"

	[C_ID .. 495] = "Ngọn lửa co lại và biến mất sau 2 giây", -- Ghost Pepper
	-- Full old Desc: "8% cơ hội bắn ngọn lửa xanh chặn đạn kẻ địch và gây sát thương tiếp xúc#{{Luck}} 50% cơ hội ở 10 may mắn#Ngọn lửa co lại và biến mất sau 2 giây"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a blue fire that blocks enemy shots and deals contact damage#Fires shrink and disappear after 2 seconds"

	[C_ID .. 497] = "{{Confusion}} Vào phòng ngụy trang Isaac và làm tất cả kẻ địch bị choáng cho đến khi bắn nước mắt#↑ {{Speed}} +0.5 Tốc độ khi ngụy trang#Hủy ngụy trang gây sát thương xung quanh Isaac và tăng nhẹ tốc độ bắn và sát thương trong thời gian ngắn", -- Camo Undies
	-- English: "{{Confusion}} Entering a room camouflages Isaac and confuses all enemies until a tear is shot#↑ {{Speed}} +0.5 Speed while cloaked#Uncloaking deals damage around Isaac and grants a very brief fire rate and damage up"

	[C_ID .. 501] = "{{Heart}} +1 Hộp tim cho mỗi 25 đồng xu Isaac có", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins Isaac has"

	[C_ID .. 503] = "Tay giết kẻ địch ngay lập tức và gây 36 sát thương cho Boss", -- Little Horn
	-- Full old Desc: "5% cơ hội bắn nước mắt triệu hồi tay Big Horn#{{Luck}} 20% cơ hội ở 15 may mắn#Tay giết kẻ địch ngay lập tức và gây 36 sát thương cho Boss#Isaac gây 7 sát thương tiếp xúc mỗi giây"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a tear that summons a Big Horn hand#The hand instantly kills enemies and deals 36 damage to bosses"

	[C_ID .. 504] = "Tạo một tháp pháo ruồi bắn kẻ địch", -- Brown Nugget
	-- Full old Desc: "Tạo một tháp pháo ruồi bắn kẻ địch#Mỗi phát bắn gây 3.5 sát thương"
	-- English: "Spawns a fly that shoots at enemies"

	[C_ID .. 506] = "{{BleedingOut}} Đánh kẻ địch từ phía sau gây gấp đôi sát thương và gây chảy máu, khiến kẻ địch để lại chất lỏng và nhận sát thương khi di chuyển", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which makes enemies leave creep and take damage when they move"

	[C_ID .. 507] = "{{Damage}} Gây sát thương của Isaac + 10% máu tối đa của kẻ địch cho tất cả kẻ địch#{{HalfHeart}} Gây sát thương bằng Ống Hút có thể tạo nửa trái tim", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts"

	[C_ID .. 508] = "{{BleedingOut}} Vệ tinh gây chảy máu, khiến kẻ địch nhận sát thương khi di chuyển#{{Damage}} Gây 1.5x sát thương của Isaac mỗi giây", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which makes enemies take damage when they move#{{Damage}} Deals 1.5x Isaac's damage per second"

	[C_ID .. 509] = "Vệ tinh bắn một nước mắt mỗi 0.33 giây vào kẻ địch gần đó", -- Bloodshot Eye
	-- Full old Desc: "Vệ tinh bắn một nước mắt mỗi 0.33 giây vào kẻ địch gần đó#Gây 3.5 sát thương mỗi nước mắt#Gây 20 sát thương tiếp xúc mỗi giây"
	-- English: "Orbital that shoots a tear every 0.33 seconds to nearby enemies"

	[C_ID .. 514] = "Làm một số kẻ địch và đạn tạm dừng ngẫu nhiên#Đạn bị dừng biến mất#25% cơ hội nhân đôi phần thưởng dọn phòng", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#Paused projectiles disappear#25% chance to double room clear rewards"

	[C_ID .. 517] = "Loại bỏ độ trễ giữa các lần đặt bom#Bom không đẩy lùi nhau", -- Fast Bombs
	-- Full old Desc: "{{Bomb}} +7 Bom#Loại bỏ độ trễ giữa các lần đặt bom#Bom không đẩy lùi nhau"
	-- English: "Removes the delay between bomb placements#Bombs don't deal knockback to each other"

	[C_ID .. 522] = "Dừng tất cả đạn kẻ địch đến gần Isaac trong 3 giây và đẩy chúng ra xa sau đó#Đẩy kẻ địch gần đó ra xa trong thời gian hiệu ứng", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards#Pushes close enemies away during the effect"

	[C_ID .. 523] = "Lưu trữ tối đa 10 vật phẩm nhặt và vật phẩm trong phòng hiện tại#Sử dụng vật phẩm lần nữa thả mọi thứ trở lại sàn#Cho phép Isaac di chuyển đồ giữa các phòng", -- Moving Box
	-- English: "Stores up to 10 pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Nước mắt của Isaac được nối với nhau bằng tia điện#Tia điện gây 4.5x sát thương của Isaac mỗi giây", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#Electricity deals 4.5x Isaac's damage per second"

	[C_ID .. 552] = "Mở cửa sập xuống tầng tiếp theo#{{LadderRoom}} Tạo không gian bò nếu sử dụng trên ô trang trí (cỏ, đá nhỏ, giấy, đá quý, v.v.)#{{Warning}} Sử dụng xẻng trên đống đất trong \"Dark Room\"", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 553] = "25% cơ hội bắn nước mắt bào tử dính#{{Luck}} Không bị ảnh hưởng bởi may mắn#{{Poison}} Bào tử nổ sau 2.5 giây, gây sát thương, gây độc cho kẻ địch gần đó và thả thêm bào tử", -- Mucormycosis
	-- English: "25% chance to shoot a sticky spore tear#{{Luck}} Not affected by luck#{{Poison}} Spores blow up after 2.5 seconds, dealing damage, poisoning nearby enemies and releasing more spores"

	[C_ID .. 554] = "{{Fear}} Làm kẻ địch sợ hãi trong bán kính nhỏ quanh Isaac", -- 2Spooky
	-- English: "{{Fear}} Fears enemies in a small radius around Isaac"

	[C_ID .. 555] = "{{Timer}} Trả 5 {{Coin}} đồng xu và nhận trong phòng:#{VAR:EFFECTLIST}", -- Golden Razor
	-- Full old Desc: "{{Coin}} +5 đồng xu khi nhặt#{{Timer}} Trả 5 {{Coin}} đồng xu và nhận trong phòng:#↑ {{Damage}} +1.2 Sát thương"
	-- English: "{{Timer}} Pay 5 {{Coin}} coins and receive for the room:#{VAR:EFFECTLIST}"

	[C_ID .. 556] = "Sử dụng nhiều lần trong một phòng tăng sát thương và kích thước tia", -- Sulfur
	-- Full old Desc: "{{Timer}} {{Collectible118}} Brimstone trong phòng#Sử dụng nhiều lần trong một phòng tăng sát thương và kích thước tia"
	-- English: "{{Timer}} {{NameC118}} for the room#Using it multiple times in one room grants increased damage and a larger beam"

	[C_ID .. 557] = "Cấp một trong các phần thưởng sau:#Một lời tiên tri#{{SoulHeart}} Một Trái tim Linh hồn#{{Rune}} Một Rune hoặc Đá Linh hồn#{{Card}} Một lá bài Tarot#{{Trinket}} Một món trang sức", -- Fortune Cookie
	-- English: "Grants one of the following rewards:#A fortune#{{SoulHeart}} A Soul Heart#{{Rune}} A Rune or Soul Stone#{{Card}} A Tarot card#{{Trinket}} A Trinket"

	[C_ID .. 558] = "Cơ hội bắn 1-3 nước mắt thêm theo hướng ngẫu nhiên#{{Luck}} Không bị ảnh hưởng bởi may mắn", -- Eye Sore
	-- English: "Chance to shoot 1-3 extra tears in random directions#{{Luck}} Not affected by luck"

	[C_ID .. 559] = "Liên tục phóng điện vào kẻ địch gần đó#{{Damage}} Tia điện gây tối đa 3.75x sát thương của Isaac mỗi giây#Tia có thể lan đến tối đa 4 kẻ địch khác", -- 120 Volt
	-- English: "Repeatedly zaps nearby enemies#{{Damage}} Electricity deals up to 3.75x Isaac's damage per second#Sparks can arc to up to 4 other enemies"

	[C_ID .. 560] = "{{Timer}} Khi nhận sát thương, nhận trong phòng:#↑ {{Tears}} +1.2 Tốc độ bắn ở lần trúng đầu tiên#↑ {{Tears}} +0.4 Tốc độ bắn cho mỗi lần trúng thêm#Thả một vòng 10 nước mắt quanh Isaac", -- It Hurts
	-- English: "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac"

	[C_ID .. 561] = "Nước mắt nhận hiệu ứng trang sức con sâu ngẫu nhiên và một số hiệu ứng vật phẩm", -- Almond Milk
	-- Full old Desc: "↑ {{Tears}} x4 Hệ số tốc độ bắn#↓ {{Damage}} x0.3 Hệ số sát thương#↓ {{Tearsize}} -0.16 Kích thước nước mắt#Nước mắt nhận hiệu ứng trang sức con sâu ngẫu nhiên và một số hiệu ứng vật phẩm"
	-- English: "Tears gain random worm trinket effects and some item effects"

	[C_ID .. 562] = "↑ Ngăn chỉ số bị giảm trong suốt lần chạy", -- Rock Bottom
	-- English: "↑ Prevents stats from being lowered for the rest of the run"

	[C_ID .. 563] = "Bom của Isaac nổ với hiệu ứng ngẫu nhiên", -- Nancy Bombs
	-- Full old Desc: "{{Bomb}} +5 Bom#Bom của Isaac nổ với hiệu ứng ngẫu nhiên"
	-- English: "Isaac's bombs explode with random effects"

	[C_ID .. 565] = "Đuổi theo kẻ địch#Sau khi giết 15 kẻ địch, nó gây nhiều sát thương hơn, tạo nửa Trái tim Đỏ mỗi 10 lần giết, nhưng cố gắng làm hại Isaac#Sau khi giết 40 kẻ địch, nó gây nhiều sát thương hơn, tạo Trái tim Đỏ đầy, và có thể phá đá#Gây đủ sát thương cho nó khiến nó trở lại giai đoạn đầu tiên", -- Blood Puppy
	-- English: "Chases enemies#After killing 15 enemies, it deals more damage, spawns a half Red Heart every 10 kills, but tries to hurt Isaac#After killing 40 enemies, it deals even more damage, spawns full Red Hearts, and can destroy rocks#Dealing enough damage to it returns it to its first phase"

	[C_ID .. 566] = "{{HalfSoulHeart}} +1 Nửa Trái tim Linh hồn khi vào tầng mới#Cảnh chuyển tầng ác mộng tiết lộ trận đấu Boss và vật phẩm Phòng Kho báu của tầng tiếp theo", -- Dream Catcher
	-- English: "{{HalfSoulHeart}} +1 half Soul Heart when entering a new floor#The stage transition nightmare reveals the next floor's boss fight and Treasure Room item"

	[C_ID .. 567] = "↑ {{Tears}} Dọn phòng mà không nhận sát thương tăng +0.4 Tốc độ bắn#Tối đa +2 Tốc độ bắn {{ColorSilver}}(5 phòng){{CR}}", -- Paschal Candle
	-- English: "↑ {{Tears}} Clearing a room without taking damage grants +0.4 Fire rate#Caps at +2 Fire rate {{ColorSilver}}(5 rooms){{CR}}"

	[C_ID .. 568] = "Nhấn đúp phím bắn tạo một lá chắn#Lá chắn kéo dài 1 giây, đẩy kẻ địch ra xa và phản đạn và tia laze của kẻ địch", -- Divine Intervention
	-- English: "Double-tapping a fire key creates a shield#The shield lasts 1 second, pushes enemies away and reflects enemy projectiles and lasers"

	[C_ID .. 569] = "{{Warning}} Vào tầng mới rút hết Trái tim Đỏ của Isaac, nhưng tăng tốc độ và sát thương cho mỗi trái tim mất đi#Mỗi nửa trái tim mất đi tính là một lần trúng riêng cho hiệu ứng khi bị đánh", -- Blood Oath
	-- English: "{{Warning}} Entering a new floor drains all of Isaac's Red Hearts, but grants speed and damage bonuses for each heart lost#Each half heart lost counts as an individual hit for on-hit effects"

	[C_ID .. 570] = "Mỗi nước mắt của Isaac có màu sắc và hiệu ứng trạng thái khác nhau", -- Playdough Cookie
	-- English: "Each of Isaac's tears have a different color and status effect"

	[C_ID .. 571] = "Miễn nhiễm với chất lỏng trên sàn và gai sàn", -- Orphan Socks
	-- Full old Desc: "↑ {{Speed}} +0.3 Tốc độ#{{SoulHeart}} +2 Trái tim Linh hồn#Miễn nhiễm với chất lỏng trên sàn và gai sàn"
	-- English: "Immune to creep and floor spikes"

	[C_ID .. 572] = "Nước mắt của Isaac có thể điều khiển giữa không trung", -- Eye of the Occult
	-- Full old Desc: "↑ {{Damage}} +1 Sát thương#↑ {{Range}} +2 Tầm bắn#↓ {{Shotspeed}} -0.16 Tốc độ đạn#Nước mắt của Isaac có thể điều khiển giữa không trung"
	-- English: "Isaac's tears can be controlled in mid-air"

	[C_ID .. 573] = "20% cơ hội bắn thêm một nước mắt xoay quanh xuyên tường", -- Immaculate Heart
	-- Full old Desc: "↑ {{Heart}} +1 Máu#↑ {{Damage}} x1.2 Hệ số sát thương#{{HealingRed}} Đầy máu#20% cơ hội bắn thêm một nước mắt xoay quanh xuyên tường"
	-- English: "20% chance to shoot an extra orbiting spectral tear"

	[C_ID .. 574] = "Isaac được bao quanh bởi một hào quang gây sát thương#Kẻ địch càng gần Isaac, hào quang gây càng nhiều sát thương cho chúng", -- Monstrance
	-- English: "Isaac is surrounded by a damaging aura#The closer enemies are to Isaac, the more damage the aura deals to them"

	[C_ID .. 575] = "{{Slow}} Chui vào đầu Isaac và bắn 4 nước mắt làm chậm gây 1.5 sát thương#Nhận sát thương có thể khiến nhện rời đầu và đuổi theo kẻ địch", -- The Intruder
	-- English: "{{Slow}} Buries itself in Isaac's head and shoots 4 extra slowing tears that deal 1.5 damage#Taking damage can make the spider exit the head and chase enemies"

	[C_ID .. 576] = "Tất cả kẻ địch Phân (nhỏ) đều thân thiện#Phá hủy phân tạo 1-4 Phân#Loại Phân phụ thuộc vào loại phân#Đá có thể được thay bằng phân", -- Dirty Mind
	-- English: "All Dip (small poop) enemies are friendly#Destroying poop spawns 1-4 Dips#Dip type depends on the poop type#Rocks may be replaced with poop"

	[C_ID .. 577] = "Treo một thanh kiếm phía trên đầu Isaac, nhân đôi tất cả vật phẩm trên bệ#Không nhân đôi vật phẩm có giá hoặc từ rương#{{Warning}} Sau khi nhận bất kỳ sát thương nào, thanh kiếm có cơ hội cực thấp giết Isaac ngay lập tức mỗi khung hình#Hiệu ứng bất tử có thể ngăn cái chết", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 578] = "Tạo một vũng chất lỏng vàng lớn#Chất lỏng gây 24 sát thương mỗi giây", -- Free Lemonade
	-- English: "Creates a large pool of yellow creep#The creep deals 24 damage per second"

	[C_ID .. 579] = "Thay vì bắn nước mắt, vung kiếm#{{Damage}} Thanh kiếm gây 3x sát thương của Isaac +3.5 và vung nhanh theo tốc độ nhấn nút bắn#{{Chargeable}} Sạc thực hiện đòn tấn công xoay + bắn đạn#Bắn đạn với mỗi lần vung khi đầy máu", -- Spirit Sword
	-- English: "Instead of shooting tears, swing a sword#{{Damage}} The sword deals 3x Isaac's damage +3.5 and swings as fast as the fire button is tapped#{{Chargeable}} Charging does a spin attack + projectile shot#Shoots projectiles with swings at full health"

	[C_ID .. 580] = "Tạo một phòng đỏ liền kề với phòng thường, được chỉ định bởi viền cửa#Phòng Đỏ có thể là phòng đặc biệt#{{ErrorRoom}} Vào phòng ngoài bản đồ 13x13 sẽ dịch chuyển Isaac đến phòng I AM ERROR", -- Red Key
	-- English: "Creates a red room adjacent to a regular room, indicated by a door outline#Red Rooms can be special rooms#{{ErrorRoom}} Entering a room outside the 13x13 floor map teleports Isaac to the I AM ERROR room"

	[C_ID .. 581] = "Đuổi theo và đẩy lùi đạn kẻ địch", -- Psy Fly
	-- Full old Desc: "Đuổi theo và đẩy lùi đạn kẻ địch#Gây 15 sát thương tiếp xúc mỗi giây"
	-- English: "Chases and deflects enemy projectiles"

	[C_ID .. 582] = "Làm méo màn hình#Mỗi lần sử dụng cần sạc lâu hơn#Rời hoặc dọn phòng giảm hiệu ứng", -- Wavy Cap
	-- Full old Desc: "↑ {{Tears}} +0.75 Tốc độ bắn#↓ {{Speed}} -0.03 Tốc độ#Làm méo màn hình#Mỗi lần sử dụng cần sạc lâu hơn#Rời hoặc dọn phòng giảm hiệu ứng"
	-- English: "Distorts the screen#Takes longer to recharge each use#Leaving or clearing rooms reduces the effects"

	[C_ID .. 583] = "Đặt bom trong khi bắn sẽ bắn một tên lửa theo hướng đó thay vì bom", -- Rocket in a Jar
	-- Full old Desc: "{{Bomb}} +5 Bom#Đặt bom trong khi bắn sẽ bắn một tên lửa theo hướng đó thay vì bom"
	-- English: "Placing a bomb while shooting fires a rocket in that direction instead"

	[C_ID .. 584] = "Tạo một vệ tinh wisp bắn nước mắt xuyên tường nhưng có thể bị phá hủy#Có thể kết hợp với vật phẩm kích hoạt thứ hai để tạo wisp đặc biệt#{{AngelRoom}} Cho phép Phòng Thiên thần xuất hiện sau khi nhận giao dịch quỷ", -- Book of Virtues
	-- Full old Desc: "{{AngelChance}} +12.5% Cơ hội Phòng Thiên thần khi cầm#Tạo một vệ tinh wisp bắn nước mắt xuyên tường nhưng có thể bị phá hủy#Có thể kết hợp với vật phẩm kích hoạt thứ hai để tạo wisp đặc biệt#{{AngelRoom}} Biến Phòng Quỷ đầu tiên thành Phòng Thiên thần#{{AngelRoom}} Cho phép Phòng Thiên thần xuất hiện sau khi nhận giao dịch quỷ"
	-- English: "Spawns an orbital wisp familiar that shoots spectral tears but can be destroyed#Can be combined with a second active item to create special wisps#{{AngelRoom}} Turns the first Devil Room into an Angel Room#{{AngelRoom}} Allows Angel Rooms to spawn after taking a Devil deal"

	[C_ID .. 585] = "Phải sạc bằng cách nhặt Trái tim Linh hồn, sau đó tạo:#{{SoulHeart}} Ba Trái tim Linh hồn#{{AngelRoom}} Hai vật phẩm Phòng Thiên thần#{{DevilRoom}} Chỉ tạo 2 Trái tim Linh hồn và 1 vật phẩm Thiên thần nếu đã nhận giao dịch quỷ trước đó", -- Alabaster Box
	-- English: "Must be charged by picking up Soul Hearts, then spawns:#{{SoulHeart}} Three Soul Hearts#{{AngelRoom}} Two Angel Room items#{{DevilRoom}} Only spawns 2 Soul Hearts and 1 Angel item if a Devil deal was taken previously"

	[C_ID .. 586] = "Tạo một thang trong phòng đầu tiên của mỗi tầng dẫn đến một {{AngelRoom}} Cửa hàng Phòng Thiên thần độc đáo với vật phẩm và vật phẩm nhặt", -- The Stairway
	-- English: "Spawns a ladder in the first room of every floor that leads to a unique {{AngelRoom}} Angel Room shop with items and pickups"

	[C_ID .. 588] = "{{CurseBlind}} Xóa bỏ mọi lời nguyền", -- Sol
	-- Full old Desc: "{{BossRoom}} Tiết lộ vị trí Phòng Boss#{{Timer}} Khi Boss tầng bị đánh bại, nhận trong tầng:#↑ {{Damage}} +3 Sát thương#↑ {{Luck}} +1 May mắn#{{Card20}} Hiệu ứng Mặt Trời#{{Battery}} Sạc đầy vật phẩm kích hoạt#{{CurseBlind}} Xóa bỏ mọi lời nguyền"
	-- English: "{{BossRoom}} Reveals the location of the Boss Room#{{Timer}} When the floor boss is defeated, receive for the floor:#{VAR:EFFECTLIST}#{{NameK20}} effect#{{Battery}} Fully recharges the active item#{{CurseBlind}} Removes any curses"

	[C_ID .. 589] = "Thêm một {{SecretRoom}} Phòng Bí mật và {{SuperSecretRoom}} Phòng Bí mật Siêu cấp cho mỗi tầng#Tiết lộ một Phòng Bí mật mỗi tầng#{{Timer}} Phòng Bí mật chứa một tia sáng cấp trong tầng:#↑ {{Tears}} +0.5 Tốc độ bắn#↑ {{Tears}} Thêm +0.5 Tốc độ bắn từ tia đầu tiên mỗi tầng#{{HalfSoulHeart}} Nửa Trái tim Linh hồn", -- Luna
	-- English: "Adds an extra {{SecretRoom}} Secret Room and {{SuperSecretRoom}} Super Secret Room to each floor#Reveals one Secret Room each floor#{{Timer}} Secret Rooms contain a beam of light that grant for the floor:#↑ {{Tears}} +0.5 Fire rate#↑ {{Tears}} Additional +0.5 Fire rate from the first beam per floor#{{HalfSoulHeart}} Half a Soul Heart"

	[C_ID .. 590] = "Hầu hết các cửa vẫn mở vĩnh viễn", -- Mercurius
	-- Full old Desc: "↑ {{Speed}} +0.4 Tốc độ#Hầu hết các cửa vẫn mở vĩnh viễn"
	-- English: "Most doors stay permanently open"

	[C_ID .. 591] = "{{Charm}} Mê hoặc kẻ địch gần đó", -- Venus
	-- Full old Desc: "↑ {{Heart}} +1 Máu#{{HealingRed}} Hồi 1 trái tim#{{Charm}} Mê hoặc kẻ địch gần đó"
	-- English: "{{Charm}} Charms nearby enemies"

	[C_ID .. 592] = "Thay nước mắt của Isaac bằng đá#Đá gây sát thương biến đổi, có thể phá chướng ngại vật và tăng độ đẩy lùi", -- Terra
	-- Full old Desc: "↑ {{Damage}} +1 Sát thương#Thay nước mắt của Isaac bằng đá#Đá gây sát thương biến đổi, có thể phá chướng ngại vật và tăng độ đẩy lùi"
	-- English: "Replaces Isaac's tears with rocks#Rocks deal variable damage, can destroy obstacles and have increased knockback"

	[C_ID .. 593] = "Nhấn đúp phím di chuyển khiến Isaac lao tới#{{Damage}} Trong lúc lao, Isaac bất tử và gây 4x sát thương của mình +8#{{Timer}} Hồi chiêu 3 giây", -- Mars
	-- English: "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown"

	[C_ID .. 594] = "{{Poison}} Miễn nhiễm với độc", -- Jupiter
	-- Full old Desc: "↑ {{EmptyHeart}} +2 Hộp tim trống#↓ {{Speed}} -0.3 Tốc độ#{{HealingRed}} Hồi nửa trái tim#{{Speed}} Tốc độ tăng lên +0.5 khi đứng yên#{{Poison}} Di chuyển thả đám mây độc#{{Poison}} Miễn nhiễm với độc"
	-- English: "{{Speed}} Speed builds up to +0.5 while standing still#{{Poison}} Moving releases poison clouds#{{Poison}} Poison immunity"

	[C_ID .. 595] = "Vào phòng khiến 7 nước mắt xoay quanh Isaac#Những nước mắt đó kéo dài 13 giây và gây 1.5x sát thương của Isaac +5#Đạn kẻ địch có cơ hội xoay quanh Isaac", -- Saturnus
	-- English: "Entering a room causes 7 tears to orbit Isaac#Those tears last for 13 seconds and deal 1.5x Isaac's damage +5#Enemy projectiles have a chance to orbit Isaac"

	[C_ID .. 596] = "{{Freezing}} Isaac bắn nước mắt băng làm đóng băng kẻ địch khi chết#Chạm vào kẻ địch bị đóng băng khiến nó trượt đi và nổ thành 10 mảnh băng", -- Uranus
	-- English: "{{Freezing}} Isaac shoots petrifying tears that freeze enemies on death#Touching a frozen enemy makes it slide away and explode into 10 ice shards"

	[C_ID .. 597] = "{{Tears}} Không bắn tích lũy một lượng nước mắt tăng trong 3 giây#Phần thưởng nước mắt giảm khi Isaac bắn", -- Neptunus
	-- English: "{{Tears}} Not shooting builds up a tear bonus over 3 seconds#The tear bonus decreases as Isaac shoots"

	[C_ID .. 598] = "Thu nhỏ đáng kể Isaac, cho phép chen qua các khe hở#Đạn có thể bay qua Isaac", -- Pluto
	-- Full old Desc: "↑ {{Tears}} +0.7 Nước mắt#Thu nhỏ đáng kể Isaac, cho phép chen qua các khe hở#Đạn có thể bay qua Isaac"
	-- English: "Significantly shrinks Isaac, allowing him to squeeze between objects#Projectiles can pass over him"

	[C_ID .. 599] = "{{CursedRoom}} Tạo thêm một Phòng Nguyền rủa mỗi tầng#Cải thiện bố cục và phần thưởng Phòng Nguyền rủa#{{Coin}} Tạo một đồng xu trong mỗi Phòng Nguyền rủa", -- Voodoo Head
	-- English: "{{CursedRoom}} Spawns an additional Curse Room each floor#Improves Curse Room layouts and rewards#{{Coin}} Spawns a coin in every Curse Room"

	[C_ID .. 601] = "Nhận sát thương Trái tim Đỏ không giảm nhiều cơ hội Phòng Quỷ/Thiên thần", -- Act of Contrition
	-- Full old Desc: "↑ {{Tears}} +0.7 Nước mắt#{{EternalHeart}} +1 Trái tim Vĩnh cửu#{{AngelChance}} Cho phép Phòng Thiên thần xuất hiện ngay cả sau khi nhận giao dịch quỷ#Nhận sát thương Trái tim Đỏ không giảm nhiều cơ hội Phòng Quỷ/Thiên thần"
	-- English: "{{AngelChance}} Allows Angel Rooms to spawn after taking a devil deal#Taking Red Heart damage doesn't reduce Devil/Angel Room chance as much"

	[C_ID .. 602] = "{{Shop}} Mở một cửa sập trong mỗi Cửa hàng#Cửa sập dẫn đến một cửa hàng dưới lòng đất bán trang sức, rune, lá bài, trái tim đặc biệt và vật phẩm từ bất kỳ nhóm nào", -- Member Card
	-- English: "{{Shop}} Opens a trapdoor in every Shop#The trapdoor leads to an underground shop that sells trinkets, runes, cards, special hearts and items from any pool"

	[C_ID .. 603] = "{{Battery}} Sạc đầy vật phẩm kích hoạt", -- Battery Pack
	-- Full old Desc: "{{Battery}} Tạo 2-4 pin#{{Battery}} Sạc đầy vật phẩm kích hoạt"
	-- English: "{{Battery}} Fully recharges the active item"

	[C_ID .. 604] = "Cho phép Isaac nhặt và ném đá, TNT, phân, Phân thân thiện, Đầu lâu và các chướng ngại vật khác#Cho phép mang chúng giữa các phòng", -- Mom's Bracelet
	-- English: "Allows Isaac to pick up and throw rocks, TNT, poops, friendly Dips, Hosts and other obstacles#Allows carrying them between rooms"

	[C_ID .. 606] = "Khe hở gây 3x sát thương của Isaac mỗi giây và hút kẻ địch, vật phẩm nhặt và đạn gần đó", -- Ocular Rift
	-- Full old Desc: "5% cơ hội bắn nước mắt tạo khe hở nơi chúng hạ cánh#{{Luck}} 20% cơ hội ở 15 may mắn#Khe hở gây 3x sát thương của Isaac mỗi giây và hút kẻ địch, vật phẩm nhặt và đạn gần đó"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot tears that create rifts where they land#Rifts do 3x Isaac's damage per second and pull in nearby enemies, pickups, and projectiles"

	[C_ID .. 607] = "Bắn các loạt nước mắt hỗn loạn theo mọi hướng", -- Boiled Baby
	-- Full old Desc: "Bắn các loạt nước mắt hỗn loạn theo mọi hướng#Gây 3.5 hoặc 5.25 sát thương mỗi nước mắt"
	-- English: "Shoots chaotic bursts of tears in all directions"

	[C_ID .. 608] = "Bắn nước mắt hóa đá gây 3.5 sát thương#{{Freezing}} Đóng băng kẻ địch khi giết chúng", -- Freezer Baby
	-- English: "{{Petrify}} Shoots petrifying tears that deal 3.5 damage#{{Freezing}} Freezes enemies upon killing them"

	[C_ID .. 609] = "Đổi lại tất cả vật phẩm trên bệ trong phòng#Có 25% cơ hội xóa vật phẩm thay vì đổi lại", -- Eternal D6
	-- English: "Rerolls all pedestal items in the room#Has a 25% chance to delete items instead of rerolling them"

	[C_ID .. 610] = "Nhảy lên kẻ địch gây sát thương đầu tiên cho Isaac trong phòng#Gây 45 sát thương và thả sóng đá#Đuổi theo kẻ địch sau đó với 6.5 sát thương tiếp xúc mỗi giây", -- Bird Cage
	-- English: "Leaps on the enemy that deals the first damage to Isaac in a room#Deals 45 damage and releases a rock wave#Chases enemies afterwards for 6.5 contact damage per second"

	[C_ID .. 611] = "Isaac hét lên, gây sát thương và đẩy lùi kẻ địch gần đó#Tiếng hét mạnh hơn khi vật phẩm có nhiều lần sạc hơn", -- Larynx
	-- English: "Isaac screams, damages and knocks back nearby enemies#The scream gets stronger the more charges the item has"

	[C_ID .. 612] = "Chết trong một lần trúng và hồi sinh ở đầu tầng tiếp theo#Nếu mang nó sống sót đến tầng tiếp theo, có thể tạo:#{{SoulHeart}} 3 Trái tim Linh hồn#{{EternalHeart}} 2 Trái tim Vĩnh cửu#{{TreasureRoom}} Một vật phẩm Phòng Kho báu#{{AngelRoom}} Một vật phẩm Phòng Thiên thần", -- Lost Soul
	-- English: "Dies in one hit and respawns at the start of the next floor#If it is brought alive to the next floor, it can spawn:#{{SoulHeart}} 3 Soul Hearts#{{EternalHeart}} 2 Eternal Hearts#{{TreasureRoom}} A Treasure Room item#{{AngelRoom}} An Angel Room item"

	[C_ID .. 614] = "{{HalfHeart}} Nếu Isaac không có bom, có thể đặt một quả bom với giá nửa trái tim#Bom của Isaac để lại chất lỏng đỏ", -- Blood Bombs
	-- Full old Desc: "↑ {{Heart}} +1 Máu#{{HealingRed}} Hồi 4 trái tim#{{HalfHeart}} Nếu Isaac không có bom, có thể đặt một quả bom với giá nửa trái tim#Bom của Isaac để lại chất lỏng đỏ#"
	-- English: "{{HalfHeart}} If Isaac has no bombs, one can be placed at the cost of half a heart#Isaac's bombs leave red creep"

	[C_ID .. 615] = "Đẩy lùi kẻ địch hoặc đạn ngay trước khi Isaac nhận sát thương từ chúng#Cơ hội đẩy lùi đạn gần đó#Cần chạm vào sau khi đẩy lùi để kích hoạt lại", -- Lil Dumpy
	-- English: "Deflects an enemy or projectile right before Isaac would take damage from it#Chance to deflect projectiles near it#Needs to be touched after deflecting to be reactivated"

	[C_ID .. 616] = "Ngọn lửa biến mất sau khi chặn 4 phát, gây sát thương 4 lần hoặc sau 10 giây", -- Bird's Eye
	-- Full old Desc: "8% cơ hội bắn ngọn lửa đỏ chặn đạn kẻ địch và gây sát thương tiếp xúc#{{Luck}} 50% cơ hội ở 10 may mắn#Ngọn lửa biến mất sau khi chặn 4 phát, gây sát thương 4 lần hoặc sau 10 giây"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a red fire that blocks enemy shots and deals contact damage#Fires disappear after blocking 4 shots, dealing damage 4 times or after 10 seconds"

	[C_ID .. 617] = "Kẻ địch bị từ hóa hút vật phẩm nhặt, đạn và kẻ địch gần đó", -- Lodestone
	-- Full old Desc: "{{Magnetize}} 17% cơ hội bắn nước mắt từ hóa#{{Luck}} 100% cơ hội ở 5 may mắn#Kẻ địch bị từ hóa hút vật phẩm nhặt, đạn và kẻ địch gần đó"
	-- English: "{{Magnetize}} {VAR:LUCKCHANCE}% chance to shoot magnetizing tears#Magnetized enemies attract nearby pickups, projectiles and enemies"

	[C_ID .. 618] = "Kẻ địch bị đánh dấu bị kẻ địch khác nhắm đến", -- Rotten Tomato
	-- Full old Desc: "{{Bait}} 17% cơ hội bắn nước mắt đánh dấu kẻ địch#{{Luck}} 100% cơ hội ở 5 may mắn#Kẻ địch bị đánh dấu bị kẻ địch khác nhắm đến"
	-- English: "{{Bait}} {VAR:LUCKCHANCE}% chance to shoot tears that mark enemies#Marked enemies are targeted by other enemies"

	[C_ID .. 619] = "Có hiệu ứng khác nhau cho mỗi nhân vật", -- Birthright
	-- English: "Has a different effect for each character"

	[C_ID .. 621] = "Sát thương tăng dần mất đi trong 3 phút#Giết kẻ địch khi hiệu ứng đang hoạt động kéo dài thời gian", -- Red Stew
	-- Full old Desc: "↑ {{Damage}} +21.6 Sát thương#{{HealingRed}} Đầy máu#Sát thương tăng dần mất đi trong 3 phút#Giết kẻ địch khi hiệu ứng đang hoạt động kéo dài thời gian"
	-- English: "The damage up wears off over 3 minutes#Killing enemies while the effect is active extends it"

	[C_ID .. 622] = "Loại bỏ tất cả vật phẩm và vật phẩm nhặt của Isaac#Dịch chuyển Isaac đến một phòng ngủ với vật phẩm nhặt và rương#Với mỗi vật phẩm bị loại bỏ, Isaac có thể chọn giữa 3 vật phẩm từ cùng nhóm#Rời phòng ngủ đưa Isaac đến tầng tiếp theo", -- Genesis
	-- English: "Removes all of Isaac's items and pickups#Teleports Isaac to a bedroom with pickups and chests#For every item removed, Isaac can choose between 3 items from the same pool#Leaving the bedroom takes Isaac to the next floor"

	[C_ID .. 623] = "Ném một trong những chìa khóa của Isaac theo hướng bắn#Chìa khóa ném gây sát thương, phá chướng ngại vật và mở cửa#Kẻ địch bị giết bằng chìa khóa có thể thả nội dung của rương, bao gồm vật phẩm", -- Sharp Key
	-- Full old Desc: "{{Key}} +5 Chìa khóa#Ném một trong những chìa khóa của Isaac theo hướng bắn#Chìa khóa ném gây sát thương, phá chướng ngại vật và mở cửa#Kẻ địch bị giết bằng chìa khóa có thể thả nội dung của rương, bao gồm vật phẩm"
	-- English: "Throws one of Isaac's keys in the direction he shoots#Thrown keys deal damage, destroy obstacles, and open doors#Enemies killed with keys can spawn the contents of a chest, including items"

	[C_ID .. 625] = "{VAR:TIMEDEFFECT}#Khả năng nghiền nát kẻ địch và chướng ngại vật", -- Mega Mush
	-- Full old Desc: "Kích cỡ Isaac khổng lồ và cấp:#↑ {{Damage}} x4 Hệ số sát thương#↑ {{Range}} +2 Tầm bắn#↓ {{Tears}} -1.9 Nước mắt#Bất tử#Khả năng nghiền nát kẻ địch và chướng ngại vật#{{Timer}} Kéo dài 30 giây và tồn tại giữa các phòng và tầng"
	-- English: "{VAR:TIMEDEFFECT}#Gigantifies Isaac#Ability to crush enemies and obstacles#Persists between rooms and floors"

	[C_ID .. 626] = "Con dao có thể mở một cánh cửa bằng thịt", -- Knife Piece 1
	-- Full old Desc: "Biến thành một con dao ném được gây 25 sát thương khi kết hợp với {{Collectible627}} Mảnh Dao 2#Con dao có thể mở một cánh cửa bằng thịt"
	-- English: "Turns into a throwable knife that deals 25 damage when combined with {{NameC627}}#The knife can open a door made of flesh"

	[C_ID .. 627] = "Con dao có thể mở một cánh cửa bằng thịt", -- Knife Piece 2
	-- Full old Desc: "Biến thành một con dao ném được gây 25 sát thương khi kết hợp với {{Collectible626}} Mảnh Dao 1#Con dao có thể mở một cánh cửa bằng thịt"
	-- English: "Turns into a throwable knife that deals 25 damage when combined with {{NameC626}}#The knife can open a door made of flesh"

	[C_ID .. 628] = "Dịch chuyển Isaac đến một tầng chứa mọi vật phẩm trong trò chơi#Chọn một vật phẩm từ tầng này sẽ dịch chuyển Isaac trở lại phòng ban đầu", -- Death Certificate
	-- English: "Teleports Isaac to a floor that contains every item in the game#Choosing an item from this floor teleports Isaac back to the room he came from"

	[C_ID .. 629] = "Bắn nước mắt có lá chắn để phá hủy đạn kẻ địch", -- Bot Fly
	-- Full old Desc: "Bắn nước mắt có lá chắn để phá hủy đạn kẻ địch#Gây 3 sát thương tiếp xúc mỗi giây"
	-- English: "Shoots shielded tears to destroy enemy projectiles"

	[C_ID .. 631] = "Chia tất cả kẻ địch trong phòng thành 2 phiên bản nhỏ hơn với 40% máu#Kẻ địch tự nhiên chia đôi (như Envy) nhận đủ sát thương để chia đôi thay vì chết#Gây 25 sát thương cho kẻ địch không thể chia đôi", -- Meat Cleaver
	-- English: "Splits all enemies in the room into 2 smaller versions with 40% health#Enemies that naturally split (like Envy) take enough damage to split instead#Deals 25 damage to enemies that can't be split"

	[C_ID .. 632] = "Miễn nhiễm với hiệu ứng {{Burning}} cháy, {{Confusion}} choáng, {{Fear}} sợ hãi và {{Poison}} độc", -- Evil Charm
	-- Full old Desc: "↑ {{Luck}} +2 May mắn#Miễn nhiễm với hiệu ứng {{Burning}} cháy, {{Confusion}} choáng, {{Fear}} sợ hãi và {{Poison}} độc"
	-- English: "Immune to {{Burning}} burn, {{Confusion}} confusion, {{Fear}} fear, and {{Poison}} poison effects"

	[C_ID .. 634] = "Các vết nứt đỏ xuất hiện trên mặt đất trong phòng có kẻ địch#Đi qua các vết nứt triệu hồi ma nổ tự dẫn đường", -- Purgatory
	-- English: "Red cracks spawn on the ground in hostile rooms#Walking over the cracks summons homing exploding ghosts"

	[C_ID .. 635] = "Tạo một bạn đồng hành di chuyển theo hướng Isaac bắn#Khi sử dụng, Isaac đổi chỗ với bạn đồng hành và tạm thời bất tử#Dịch chuyển lên đồ vật có thể gây sát thương hoặc phá hủy chúng", -- Stitches
	-- English: "Spawns a familiar that moves in the direction Isaac shoots#On use, Isaac swaps places with the familiar and becomes briefly invincible#Teleporting onto things can damage or destroy them"

	[C_ID .. 636] = "Khởi động lại toàn bộ lần chạy#Giữ tất cả vật phẩm, trang sức, chỉ số và vật phẩm nhặt đã thu thập#Đồng hồ không đặt lại", -- R Key
	-- English: "Restarts the entire run#All items, trinkets, stats and pickups collected are kept#The timer does not reset"

	[C_ID .. 637] = "Kẻ địch nhận sát thương khi bị đẩy vào tường/chướng ngại vật", -- Knockout Drops
	-- Full old Desc: "{{Confusion}} 10% cơ hội bắn một nắm đấm gây choáng và đẩy lùi mạnh#{{Luck}} 100% cơ hội ở 9 may mắn#Kẻ địch nhận sát thương khi bị đẩy vào tường/chướng ngại vật"
	-- English: "{{Confusion}} {VAR:LUCKCHANCE}% chance to shoot a fist that inflicts confusion and extreme knockback#Enemies take damage when they get knocked into a wall/obstacle"

	[C_ID .. 638] = "Ném một cục tẩy giết kẻ địch ngay lập tức#Ngăn kẻ địch bị xóa xuất hiện trong suốt lần chạy#Gây 15 sát thương cho Boss#Chỉ có thể sử dụng một lần mỗi tầng", -- Eraser
	-- English: "Throws an eraser that instantly kills an enemy#Prevents the erased enemy from spawning for the rest of the run#Deals 15 damage to bosses#Can only be used once per floor"

	[C_ID .. 640] = "Phun một dòng lửa#Giết kẻ địch thêm một lần sạc cho bình", -- Urn of Souls
	-- English: "Spews a stream of flames#Killing an enemy adds a charge to the urn"

	[C_ID .. 641] = "Tạo một chuỗi nước mắt phía sau Isaac trong phòng có kẻ địch#Nước mắt gây 3.5 sát thương", -- Akeldama
	-- English: "Creates a chain of tears behind Isaac in hostile rooms#The tears deal 3.5 damage"

	[C_ID .. 642] = "Tạo một vật phẩm từ nhóm vật phẩm của phòng hiện tại#{{BrokenHeart}} Chuyển 1 hộp tim hoặc 1 Trái tim Xương hoặc 2 Trái tim Linh hồn thành Trái tim Vỡ#{{Warning}} Thay thế vật phẩm trong tương lai nếu Isaac không cầm nó {{ColorSilver}}(33% sau 1 lần dùng, 50% sau 2 lần, 100% sau 3 lần)#Cơ hội thấp hơn nếu Da Ma thuật ở trên bệ trong tầng hiện tại", -- Magic Skin
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Turns 1 heart container or 1 Bone Heart or 2 Soul Hearts into a Broken Heart#{{Warning}} Replaces future items if Isaac isn't holding it {{ColorSilver}}(33% after 1 use, 50% after 2, 100% after 3)#Lower chance if Magic Skin is on a pedestal on the current floor"

	[C_ID .. 643] = "{{Chargeable}} Tia thánh có thể sạc gây sát thương cao#Không thay thế nước mắt của Isaac", -- Revelation
	-- Full old Desc: "{{SoulHeart}} +2 Trái tim Linh hồn#Bay được#{{Chargeable}} Tia thánh có thể sạc gây sát thương cao#Không thay thế nước mắt của Isaac"
	-- English: "{{Chargeable}} Chargeable high damage holy beam#Does not replace Isaac's tears"

	[C_ID .. 644] = "↑ Tăng chỉ số thấp nhất của Isaac trong Tốc độ, Tốc độ bắn, Sát thương và Tầm bắn#Tạo 3 {{Coin}} đồng xu, 1 {{Bomb}} bom hoặc 1 {{Key}} chìa khóa tùy thuộc vào thứ Isaac có ít nhất", -- Consolation Prize
	-- English: "↑ Increases Isaac's lowest stat out of Speed, Fire rate, Damage, and Range#Spawns either 3 {{Coin}} coins, 1 {{Bomb}} bomb, or 1 {{Key}} key depending on what Isaac has the least of"

	[C_ID .. 645] = "Vệ tinh lớn chặn đạn#Chia thành các phiên bản nhỏ hơn của chính nó sau khi trúng 3 lần#Các phiên bản nhỏ vỡ thành nhện xanh#Hồi sinh 5 giây sau khi biến mất hoàn toàn", -- Tinytoma
	-- Full old Desc: "Vệ tinh lớn chặn đạn#Gây 3.5 sát thương tiếp xúc mỗi giây#Chia thành các phiên bản nhỏ hơn của chính nó sau khi trúng 3 lần#Các phiên bản nhỏ vỡ thành nhện xanh#Hồi sinh 5 giây sau khi biến mất hoàn toàn"
	-- English: "Large orbital that blocks shots#Splits into smaller versions of itself upon taking 3 hits#The smaller versions break into blue spiders#Respawns 5 seconds after fully disappearing"

	[C_ID .. 646] = "{{Collectible118}} Bom của Isaac thả tia máu 4 hướng#Tia không làm tổn thương Isaac", -- Brimstone Bombs
	-- Full old Desc: "{{Bomb}} +5 Bom#{{Collectible118}} Bom của Isaac thả tia máu 4 hướng#Tia không làm tổn thương Isaac"
	-- English: "{{Collectible118}} Isaac's bombs release a 4-way blood beam#The beams don't hurt Isaac"

	[C_ID .. 647] = "Dọn phòng không còn sạc vật phẩm kích hoạt#Gây sát thương cho kẻ địch từ từ làm đầy thanh sạc#Sát thương cần cho mỗi lần sạc tăng mỗi tầng", -- 4.5 Volt
	-- English: "Clearing rooms no longer charges active items#Dealing damage to enemies slowly fills up the charge bar#Damage needed per charge increases each floor"

	[C_ID .. 649] = "Tự đẩy mình theo đường chéo quanh phòng, bắn nước mắt trên đường đi gây 3 sát thương", -- Fruity Plum
	-- Full old Desc: "Tự đẩy mình theo đường chéo quanh phòng, bắn nước mắt trên đường đi gây 3 sát thương#Gây 6 sát thương tiếp xúc mỗi giây"
	-- English: "Propels herself diagonally around the room, firing tears in her path that deal 3 damage"

	[C_ID .. 650] = "{{Timer}} Triệu hồi một Baby Plum thân thiện trong phòng trong 10 giây", -- Plum Flute
	-- English: "{{Timer}} Summons a friendly Baby Plum in the room for 10 seconds"

	[C_ID .. 651] = "Từ từ di chuyển từ phòng đầu tiên của tầng đến {{BossRoom}} Phòng Boss#Di chuyển nhanh hơn nếu bạn ở phía trước, và chậm hơn nếu bạn ở phía sau#Đứng trong hào quang của nó cấp:#{VAR:EFFECTLIST}#50% cơ hội bỏ qua sát thương", -- Star of Bethlehem
	-- Full old Desc: "Từ từ di chuyển từ phòng đầu tiên của tầng đến {{BossRoom}} Phòng Boss#Di chuyển nhanh hơn nếu bạn ở phía trước, và chậm hơn nếu bạn ở phía sau#Đứng trong hào quang của nó cấp:#↑ {{Tears}} x2.5 Hệ số nước mắt#↑ {{Damage}} x1.8 Hệ số sát thương#Nước mắt tự dẫn đường#50% cơ hội bỏ qua sát thương"
	-- English: "Slowly travels from the first room of the floor to the {{BossRoom}} Boss Room#Moves faster if you're ahead of it, and slower if you're behind it#Standing in its aura grants:#{VAR:EFFECTLIST}#50% chance to ignore damage"

	[C_ID .. 652] = "Có thể đá quanh bằng cách đi vào nó#{{Slow}} Làm chậm và gây tối đa 17.5 sát thương tiếp xúc tùy vào tốc độ#{{Freezing}} Đóng băng kẻ địch nó giết", -- Cube Baby
	-- English: "Can be kicked around by walking into it#{{Slow}} Slows and deals up to 17.5 contact damage depending on speed#{{Freezing}} Freezes enemies it kills"

	[C_ID .. 653] = "Giữ vật phẩm khiến kẻ địch không phải ma sinh ra ma đỏ nhỏ khi chết#Sử dụng vật phẩm khiến các con ma nổ#Sử dụng vật phẩm cũng giết bất kỳ kẻ địch ma nào (bao gồm Boss) có dưới 50% máu", -- Vade Retro
	-- English: "Holding the item causes non-ghost enemies to spawn small red ghosts on death#Using the item causes the ghosts to explode#Using the item also kills any ghost enemies (including bosses) that have less than 50% HP left"

	[C_ID .. 654] = "{{BlackHeart}} Ăn các viên thuốc xấu khác tạo Trái tim Đen", -- False PHD
	-- Full old Desc: "{{BlackHeart}} +1 Trái tim Đen#{{Pill}} Xác định tất cả viên thuốc#Chuyển tất cả thuốc tốt thành thuốc xấu#↑ {{Damage}} Ăn viên thuốc giảm chỉ số tăng +0.6 sát thương#{{BlackHeart}} Ăn các viên thuốc xấu khác tạo Trái tim Đen"
	-- English: "{{Pill}} Identifies all pills#Converts all good pills into bad pills#↑ {{Damage}} Eating a stat down pill grants +0.6 damage#{{BlackHeart}} Eating other bad pills spawns a Black Heart"

	[C_ID .. 655] = "Cấp thụ động một vệ tinh chặn đạn kẻ địch và gây 10.5 sát thương tiếp xúc mỗi giây#{VAR:ONUSEEFFECT}#Tăng tốc độ và sát thương của vệ tinh", -- Spin to Win
	-- Full old Desc: "Cấp thụ động một vệ tinh chặn đạn kẻ địch và gây 10.5 sát thương tiếp xúc mỗi giây#Sử dụng vật phẩm cấp:#↑ {{Speed}} +0.5 Tốc độ#Tăng tốc độ và sát thương của vệ tinh"
	-- English: "Passively grants an orbital that blocks enemy shots and deals 10.5 contact damage per second#{VAR:ONUSEEFFECT}#{{IND}}Increases speed and damage of orbitals"

	[C_ID .. 656] = "Treo một thanh kiếm phía trên đầu Isaac, nhân đôi tất cả vật phẩm trên bệ#Không nhân đôi vật phẩm có giá hoặc từ rương#{{Warning}} Sau khi nhận bất kỳ sát thương nào, thanh kiếm có cơ hội cực thấp giết Isaac ngay lập tức mỗi khung hình#Hiệu ứng bất tử có thể ngăn cái chết", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 657] = "Kẻ địch nổ thành nước mắt khi chết, thừa hưởng hiệu ứng nước mắt của Isaac", -- Vasculitis
	-- English: "Enemies explode into tears upon death, which inherit the effects of Isaac's tears"

	[C_ID .. 658] = "Nhận sát thương tạo một Minisaac#Minisaac đuổi theo và bắn vào kẻ địch gần đó", -- Giant Cell
	-- English: "Taking damage spawns a Minisaac#Minisaacs chase and shoot at nearby enemies"

	[C_ID .. 660] = "Tạo hai cổng ở phòng đầu tiên của mỗi tầng#Rời phòng làm cổng biến mất#{{Blank}} {{ColorRed}}Đỏ: {{CR}}{{BossRoom}} Phòng Boss#{{Blank}} {{ColorYellow}}Vàng: {{CR}}{{TreasureRoom}} Phòng Kho báu#{{Blank}} {{ColorBlue}}Xanh dương: {{CR}}{{SecretRoom}} Phòng Bí mật", -- Card Reading
	-- English: "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room"

	[C_ID .. 661] = "Giết kẻ địch tạo một bạn đồng hành cố định tại vị trí của nó#Giới hạn tối đa 5 bạn đồng hành", -- Quints
	-- English: "Killing an enemy spawns a stationary familiar in its place#Caps at 5 familiars"

	[C_ID .. 663] = "Bất tử 1 giây mỗi 6 giây#Isaac nhấp nháy ngay trước khi hiệu ứng kích hoạt", -- Tooth and Nail
	-- English: "1 second of invincibility every 6 seconds#Isaac flashes right before the effect triggers"

	[C_ID .. 664] = "Vật phẩm trên bệ xoay vòng giữa vật phẩm của nó và một món đồ ăn#Nhặt món đồ ăn cấp:#↓ {{Speed}} -0.03 Tốc độ", -- Binge Eater
	-- Full old Desc: "↑ {{Heart}} +1 Máu#{{HealingRed}} Đầy máu#Vật phẩm trên bệ xoay vòng giữa vật phẩm của nó và một món đồ ăn#Nhặt món đồ ăn cấp:#{{HealingRed}} Hồi 2 trái tim#↑ {{Damage}} Tạm thời +3.6 sát thương#↑ 2 chỉ số tăng vĩnh viễn (tùy thuộc vào đồ ăn)#↓ {{Speed}} -0.03 Tốc độ"
	-- English: "Item pedestals cycle between their item and a food item#Picking up a food item grants:#{{HealingRed}} Heal 2 hearts#↑ {{Damage}} Temporary +3.6 damage#↑ 2 permanent stat ups (depending on the food)#↓ {{Speed}} -0.03 speed"

	[C_ID .. 665] = "Tiết lộ nội dung của {{Chest}} rương, {{GrabBag}} túi, người bán hàng và lò sưởi trước khi mở hoặc phá hủy chúng", -- Guppy's Eye
	-- English: "Reveals the contents of {{Chest}} chests, {{GrabBag}} sacks, shopkeepers, and fireplaces before they're opened or destroyed"

	[C_ID .. 667] = "{{Warning}} Strawman có thể nhặt vật phẩm cốt truyện", -- Strawman
	-- Full old Desc: "{{Bomb}} +1 Bom#{{Player14}} Tạo Keeper như một nhân vật thứ hai#Khi Keeper chết, tạo nhện xanh và xóa vĩnh viễn Strawman cùng bất kỳ vật phẩm nào Keeper đã nhặt#{{DevilRoom}} Vật phẩm Phòng Quỷ tốn đồng xu khi Strawman còn sống#{{Warning}} Strawman có thể nhặt vật phẩm cốt truyện"
	-- English: "{{Player14}} Spawns Keeper as a second character#When he dies, spawns blue spiders and permanently removes Strawman and any item that he has picked up from the inventory#{{DevilRoom}} Devil Room items cost coins while Strawman is alive#{{Warning}} Strawman can pick up story items"

	[C_ID .. 668] = "Bắt đầu Hành trình Lên#Trang sức để lại trong {{TreasureRoom}} Phòng Kho báu hoặc {{BossRoom}} Phòng Boss trước đó biến thành {{Card78}} Chìa khóa Nứt", -- Dad's Note
	-- English: "Begins the Ascent#Trinkets left in previous {{TreasureRoom}} Treasure or {{BossRoom}} Boss Rooms turn into {{Card78}} Cracked Keys"

	[C_ID .. 670] = "Cho phép Isaac chọn giữa hai phần thưởng dọn phòng khác nhau", -- Options?
	-- English: "Allows Isaac to choose from two different room clear rewards"

	[C_ID .. 671] = "↑ Hồi máu bằng {{Heart}} Trái tim Đỏ cấp tăng chỉ số ngẫu nhiên vĩnh viễn#{{Heart}} Tạo một Trái tim Đỏ", -- Candy Heart
	-- English: "↑ Healing with {{Heart}} Red Hearts grants random permanent stat ups#{{Heart}} Spawns a Red Heart"

	[C_ID .. 672] = "{{DevilRoom}} Vật phẩm Phòng Quỷ tốn đồng xu#{{Shop}} Vật phẩm Cửa hàng tốn trái tim#Vật phẩm tiêu thụ trong Cửa hàng bị bao quanh bởi gai", -- A Pound of Flesh
	-- English: "{{DevilRoom}} Devil Room items cost coins#{{Shop}} Shop items cost hearts#Consumables in Shops are surrounded by spikes"

	[C_ID .. 673] = "{{DevilRoom}} Vào tầng mới sau khi ghé Phòng Quỷ và không lấy vật phẩm/vật phẩm nhặt cấp:#{VAR:EFFECTLIST}", -- Redemption
	-- Full old Desc: "{{DevilRoom}} Vào tầng mới sau khi ghé Phòng Quỷ và không lấy vật phẩm/vật phẩm nhặt cấp:#↑ {{Damage}} +1 Sát thương#{{SoulHeart}} +1 Trái tim Linh hồn"
	-- English: "{{DevilRoom}} Entering a new floor after visiting a Devil Room and not taking any item/pickup grants:#{VAR:EFFECTLIST}"

	[C_ID .. 674] = "Nhận sát thương chí mạng biến Isaac thành ma bị xích vào cơ thể chết của mình và cho phép tiếp tục chiến đấu với nửa trái tim#Nếu con ma sống sót, Isaac hồi sinh sau 10 giây#Phải sạc lại bằng cách nhặt Trái tim Linh hồn", -- Spirit Shackles
	-- English: "Taking fatal damage transforms Isaac into a ghost chained to his dead body and allows him to continue to fight with half a heart#If the ghost survives, Isaac revives after 10 seconds#Must be recharged by picking up a Soul Heart"

	[C_ID .. 675] = "Nhận sát thương:#Mở khóa tất cả cửa khóa trong phòng#Tiết lộ một phòng ngẫu nhiên trên bản đồ#Phá hủy tất cả đá nhuộm và đá không gian bò", -- Cracked Orb
	-- English: "Taking damage:#Unlocks all locked doors in the room#Reveals a random room on the map#Destroys all tinted and crawlspace rocks"

	[C_ID .. 676] = "{{EmptyHeart}} +1 Hộp tim trống khi ở 1 Trái tim Đỏ hoặc ít hơn khi bắt đầu tầng mới", -- Empty Heart
	-- English: "{{EmptyHeart}} +1 Empty heart container when at 1 Red Heart or less at the start of a new floor"

	[C_ID .. 677] = "{{Timer}} Nhận sát thương trong phòng chưa dọn cấp trong trận chiến:#Nước mắt xuyên tường#Bay được#Bỏ qua sát thương lần tiếp theo#Dừng thời gian trong 2 giây#Tăng mạnh tốc độ và tốc độ bắn trong 2 giây", -- Astral Projection
	-- English: "{{Timer}} Taking damage in an uncleared room grants for the fight:#Spectral tears#Flight#Negates the next damage taken#Stops time for 2 seconds#Greatly increases speed and fire rate for 2 seconds"

	[C_ID .. 678] = "{{Chargeable}} Thay nước mắt của Isaac bằng đòn tấn công sạc bắn nước mắt thai nhi tự dẫn đường, xuyên tường#{{Damage}} Nước mắt thai nhi gây khoảng 2.8x sát thương của Isaac mỗi giây", -- C Section
	-- English: "{{Chargeable}} Replaces Isaac's tears with a charge attack that shoots homing, spectral fetus tears#{{Damage}} Fetus tears deal about 2.8x Isaac's damage per second"

	[C_ID .. 679] = "{{Collectible399}} bạn đồng hành sạc và thả ra một vòng Maw of the Void#Nó gây 52.5 sát thương trong 1 giây", -- Lil Abaddon
	-- English: "{{Collectible399}} Familiar that charges and unleashes a Maw of the Void circle#It deals 52.5 damage over 1 second"

	[C_ID .. 680] = "{{Chargeable}} Bắn sạc lên một tia ngược tầm ngắn gây sát thương cao#Không thay thế nước mắt của Isaac", -- Montezuma's Revenge
	-- English: "{{Chargeable}} Firing charges up a short-ranged high damage backwards beam#Does not replace Isaac's tears"

	[C_ID .. 681] = "Gây sát thương tiếp xúc và bay về phía trước#Tiêu thụ vật phẩm nhặt trên đường đi#Mỗi vật phẩm nhặt tiêu thụ tăng kích thước, sát thương và tạo một con ruồi xanh#Tiêu thụ bốn vật phẩm nhặt tạo một cổng đến phòng chưa khám phá", -- Lil Portal
	-- English: "Deals contact damage and flies forward#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming four pickups spawns a portal to an unexplored room"

	[C_ID .. 682] = "Đôi khi chui ra khỏi mặt đất và túm lấy kẻ địch#Kẻ địch bị túm nhận 8 sát thương mỗi giây, bị làm chậm và không thể di chuyển", -- Worm Friend
	-- English: "Sometimes bursts out of the ground and grabs an enemy#Grabbed enemies take 8 damage per second, are slowed and cannot move"

	[C_ID .. 683] = "Kẻ địch tạo mảnh xương khi chết#Xương chặn đạn và gây sát thương tiếp xúc", -- Bone Spurs
	-- English: "Enemies spawn bone shards on death#Bones block projectiles and deal contact damage"

	[C_ID .. 684] = "Giết kẻ địch có cơ hội tạo một con ma#Ma đuổi theo kẻ địch, gây sát thương tiếp xúc và nổ sau 5 giây#Isaac không nhận sát thương từ vụ nổ", -- Hungry Soul
	-- English: "Killing an enemy has a chance to spawn a ghost#Ghosts chase enemies, deal contact damage and explode after 5 seconds#Isaac doesn't take damage from the explosion"

	[C_ID .. 685] = "Tạo một wisp ngẫu nhiên#Tạo thêm một wisp với mỗi lần sử dụng, tối đa 12", -- Jar of Wisps
	-- English: "Spawns a random wisp#Spawns one additional wisp with each use, up to 12"

	[C_ID .. 686] = "↑ Nhặt {{SoulHeart}} Trái tim Linh hồn cấp tăng chỉ số ngẫu nhiên vĩnh viễn", -- Soul Locket
	-- Full old Desc: "↑ Nhặt {{SoulHeart}} Trái tim Linh hồn cấp tăng chỉ số ngẫu nhiên vĩnh viễn#{{SoulHeart}} Tạo một Trái tim Linh hồn"
	-- English: "↑ Picking up {{SoulHeart}} Soul Hearts grants random permanent stat ups"

	[C_ID .. 687] = "Tạo một quái vật thân thiện ngẫu nhiên bắt chước chuyển động và tấn công của Isaac", -- Friend Finder
	-- English: "{{Friendly}} Spawns a random friendly monster that mimics Isaac's movements and attacks"

	[C_ID .. 688] = "Khi chết:#Hồi sinh Isaac trong cùng phòng với nửa trái tim#↑ {{Speed}} +0.2 Tốc độ#↑ Thu nhỏ kích thước đáng kể", -- Inner Child
	-- Full old Desc: "+1 Mạng#Khi chết:#Hồi sinh Isaac trong cùng phòng với nửa trái tim#↑ {{Speed}} +0.2 Tốc độ#↑ Thu nhỏ kích thước đáng kể"
	-- English: "Upon death:#Respawns Isaac in the same room with half a heart#↑ {{Speed}} +0.2 Speed#↑ Massive size down"

	[C_ID .. 689] = "Vật phẩm trên bệ nhanh chóng xoay vòng giữa 5 vật phẩm ngẫu nhiên", -- Glitched Crown
	-- English: "Item pedestals quickly cycle between 5 random items"

	[C_ID .. 690] = "Kẻ địch bị đẩy ra khỏi Isaac#50% cơ hội bỏ qua sát thương tiếp xúc#50% cơ hội đẩy lùi đạn kẻ địch", -- Belly Jelly
	-- English: "Enemies bounce off of Isaac#50% chance to negate contact damage#50% chance to deflect enemy projectiles"

	[C_ID .. 691] = "Ngăn vật phẩm Chất lượng {{Quality0}}/{{Quality1}} xuất hiện#Vật phẩm Chất lượng {{Quality2}} có 33% cơ hội bị đổi lại", -- Sacred Orb
	-- English: "Prevents Quality {{Quality0}}/{{Quality1}} items from spawning#Quality {{Quality2}} items have a 33% chance to be rerolled"

	[C_ID .. 692] = "Tạo một bộ gai trong {{DevilRoom}} Phòng Quỷ#Nhận sát thương trên gai cấp:#35%: Không có gì#33%: ↑ {{Damage}} +0.5 Sát thương#15%: 6 {{Coin}} đồng xu#10%: 2 {{BlackHeart}} Trái tim Đen#5%: {{DevilRoom}} Vật phẩm Quỷ ngẫu nhiên#2%: Biến hình Leviathan", -- Sanguine Bond
	-- English: "Spawns a set of spikes in the {{DevilRoom}} Devil Room#Taking damage on the spikes grants:#35%: Nothing#33%: ↑ {{Damage}} +0.5 Damage#15%: 6 {{Coin}} pennies#10%: 2 {{BlackHeart}} Black Hearts#5%: {{DevilRoom}} Random Devil item#2%: Leviathan transformation"

	[C_ID .. 693] = "Dọn phòng tạo một con ruồi mới#Ruồi biến thành ruồi xanh sau khi chặn một phát bắn", -- The Swarm
	-- Full old Desc: "Cấp 8 con ruồi vệ tinh#Dọn phòng tạo một con ruồi mới#Ruồi biến thành ruồi xanh sau khi chặn một phát bắn"
	-- English: "Clearing a room spawns a new fly#Flies turn into blue flies after blocking a shot"

	[C_ID .. 694] = "{{BrokenHeart}} Mỗi lần trúng chí mạng cấp +2 Trái tim Vỡ#Isaac chết ở 12 Trái tim Vỡ", -- Heartbreak
	-- Full old Desc: "↑ {{Damage}} +0.25 Sát thương cho mỗi Trái tim Vỡ#{{BrokenHeart}} +3 Trái tim Vỡ#{{BrokenHeart}} Mỗi lần trúng chí mạng cấp +2 Trái tim Vỡ#Isaac chết ở 12 Trái tim Vỡ"
	-- English: "↑ {{Damage}} +0.25 Damage for each Broken Heart#{{BrokenHeart}} Every fatal hit grants +2 Broken Hearts#Isaac dies at 12 Broken Hearts"

	[C_ID .. 695] = "Khi nhận sát thương, nhận trong tầng:#↑ {{Speed}} Tăng tốc độ#↑ {{Tears}} Tăng tốc độ bắn#Tối đa +1.02 tốc độ và +3 tốc độ bắn", -- Bloody Gust
	-- English: "When taking damage, receive for the floor:#↑ {{Speed}} Speed up#↑ {{Tears}} Fire rate up#Caps at +1.02 speed and +3 fire rate"

	[C_ID .. 696] = "Isaac được bao quanh bởi một vầng hào quang#Kẻ địch đứng trong hào quang quá lâu bị trúng tia sáng hình chữ thập#Nhận sát thương tăng kích thước hào quang trong tầng", -- Salvation
	-- English: "Isaac is surrounded by a halo#Enemies that stand in the halo for too long are hit by a cross-shaped beam of light#Taking damage increases the size of the halo for the floor"

	[C_ID .. 697] = "Vào phòng Boss tạo một bản sao của Boss#Đánh bại bản sao tạo thêm một vật phẩm#Bản sao chậm hơn và có 75% máu", -- Vanishing Twin
	-- English: "Entering a boss room spawns a clone of the boss#Defeating the clone spawns an extra item#The clone is slower and has 75% health"

	[C_ID .. 698] = "Hai bạn đồng hành bắn nước mắt với cùng chỉ số và hiệu ứng như Isaac#{{Damage}} Chúng gây 37.5% sát thương của Isaac", -- Twisted Pair
	-- English: "Two familiars that shoot tears with the same stats and effects as Isaac#{{Damage}} They deal 37.5% of Isaac's damage"

	[C_ID .. 699] = "{{Collectible118}} Dọn 4 phòng bắn một tia Brimstone lớn khi vào phòng tiếp theo", -- Azazel's Rage
	-- English: "{{Collectible118}} Clearing 4 rooms fires a large Brimstone beam upon entering the next room"

	[C_ID .. 700] = "Sử dụng một {{Rune}} rune, {{Card}} lá bài hoặc {{Pill}} viên thuốc cũng sử dụng bản sao của 3 rune/lá bài/viên thuốc cuối cùng đã dùng sau khi nhặt Echo Chamber", -- Echo Chamber
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill also uses a copy of the last 3 runes/cards/pills used after picking up Echo Chamber"

	[C_ID .. 701] = "Tạo một {{DirtyChest}} Rương Cũ ở đầu mỗi tầng#Rương Cũ cần chìa khóa để mở và có thể chứa {{SoulHeart}} Trái tim Linh hồn, {{Trinket}} trang sức hoặc vật phẩm của Mẹ, Bố và Thiên thần", -- Isaac's Tomb
	-- English: "Spawns an {{DirtyChest}} Old Chest at the start of every floor#Old Chests require a key to unlock and can contain {{SoulHeart}} Soul Hearts, {{Trinket}} trinkets or Mom, Dad and Angel items"

	[C_ID .. 702] = "Nhận sát thương tạo một wisp vệ tinh#Wisp bắn nước mắt, không chặn đạn và biến mất ở tầng tiếp theo#Tối đa 6 wisp", -- Vengeful Spirit
	-- English: "Taking damage spawns an orbital wisp#Wisps shoot tears, do not block shots and disappear on the next floor#Caps at 6 wisps"

	[C_ID .. 703] = "Chuyển đổi giữa nhân vật hiện tại và Esau Jr.#Esau Jr. có {{BlackHeart}} 3 Trái tim Đen, {{Damage}} +2 Sát thương, bay được, và vật phẩm ngẫu nhiên bằng số lượng vật phẩm người chơi có lần đầu sử dụng vật phẩm này#Nhân vật có vật phẩm và máu độc lập#{{Warning}} Chết với bất kỳ nhân vật nào kết thúc lần chạy", -- Esau Jr.
	-- English: "Swaps between the current character and Esau Jr.#Esau Jr. has {{BlackHeart}} 3 Black Hearts, {{Damage}} +2 Damage, flight, and random items equal to the number of items the player has the first time this item is used#Characters have independent items and health#{{Warning}} Dying as either character ends the run"

	[C_ID .. 704] = "{{Timer}} Mỗi lần giết tăng thời gian thêm 1 giây và cấp bất tử ngắn", -- Berserk!
	-- Full old Desc: "{{Battery}} Sạc bằng sát thương gây ra#{{Timer}} Nhận trong 5 giây:#↑ {{Speed}} +0.4 Tốc độ#↓ {{Tears}} x0.5 Hệ số tốc độ bắn#↑ {{Tears}} +2 Tốc độ bắn#↑ {{Damage}} +3 Sát thương#Hạn chế tấn công thành đánh cận chiến phản đạn#{{Timer}} Mỗi lần giết tăng thời gian thêm 1 giây và cấp bất tử ngắn"
	-- English: "{{Battery}} Charges with damage dealt#{VAR:TIMEDEFFECT}#Restricts attacks to a melee that reflects shots#{{Timer}} Each kill increases the duration by 1 second and grants brief invincibility"

	[C_ID .. 705] = "{VAR:EFFECTLIST}#↑ {{Speed}} +1 Tốc độ#Isaac có thể đi qua kẻ địch/đạn và làm tê liệt chúng#Khi hiệu ứng kết thúc, gây sát thương cho kẻ địch bị tê liệt, xóa đạn bị tê liệt và tạo vụ nổ tại vị trí Isaac", -- Dark Arts
	-- Full old Desc: "{{Timer}} Nhận trong 1 giây (hoặc đến khi bắn):#↑ {{Speed}} +1 Tốc độ#Isaac có thể đi qua kẻ địch/đạn và làm tê liệt chúng#Khi hiệu ứng kết thúc, gây sát thương cho kẻ địch bị tê liệt, xóa đạn bị tê liệt và tạo vụ nổ tại vị trí Isaac#Tấn công và vụ nổ mạnh hơn khi càng nhiều kẻ địch/đạn bị trúng"
	-- English: "{{Timer}} Receive for 1 second (or until shooting):#{VAR:EFFECTLIST}#Isaac can pass through enemies/projectiles and paralyzes them#When the effect ends, damages paralyzed enemies, removes paralyzed projectiles and creates a blast at Isaac's location#The attacks and blast are more powerful the more enemies/projectiles have been hit"

	[C_ID .. 706] = "Tiêu thụ tất cả vật phẩm trên bệ trong phòng và tạo một con châu chấu cho mỗi vật phẩm#Châu chấu gây sát thương của Isaac 2-3 lần mỗi đòn tấn công#Một số vật phẩm tạo châu chấu đặc biệt khi tiêu thụ", -- Abyss
	-- English: "Consumes all item pedestals in the room and spawns a locust familiar for each one#Locusts deal Isaac's damage 2-3 times an attack#Some items spawn a special locust when consumed"

	[C_ID .. 708] = "Tất cả nước mắt của Isaac được bắn từ mắt phải", -- Stapler
	-- Full old Desc: "↑ {{Damage}} +1 Sát thương#Tất cả nước mắt của Isaac được bắn từ mắt phải"
	-- English: "All of Isaac's tears are shot from the right eye"

	[C_ID .. 709] = "Isaac lao theo hướng di chuyển#Lao vào kẻ địch hoặc Boss sẽ nhấc chúng lên và đập xuống đất#Đập tạo sát thương và tạo sóng đá dựa trên kích thước của Isaac#Bạn bất tử trong lúc lao và đập", -- Suplex!
	-- English: "Isaac dashes in the direction he moves#Dashing into an enemy or boss picks it up and slams it into the ground#Slam deals damage and spawns rock waves based on Isaac's size#You're invincible during the dash and slam"

	[C_ID .. 710] = "Thu thập tối đa 8 vật phẩm nhặt, không thể thả#Sử dụng vật phẩm với 8 vật phẩm nhặt trong túi chế tạo một vật phẩm#Chất lượng vật phẩm dựa trên chất lượng của vật phẩm nhặt", -- Bag of Crafting
	-- English: "Collects up to 8 pickups which cannot be dropped#Using the item with 8 pickups in the bag crafts an item#Item quality is based on the quality of the pickups"

	[C_ID .. 711] = "Vào phòng có vật phẩm trên bệ hiển thị vật phẩm ma thứ hai trên bệ#Sử dụng vật phẩm đổi vật phẩm thật và ma#Sử dụng Flip sau khi lấy vật phẩm đầu tiên cho phép Isaac nhặt vật phẩm còn lại#{{Warning}} Vật phẩm ma ở một mình trên bệ biến mất sau khi rời phòng", -- Flip
	-- English: "Entering a room with item pedestals displays a ghostly second item on the pedestals#Using the item flips the real and ghostly item#Using Flip after taking the first item allows Isaac to pick up the other item#{{Warning}} Ghostly items alone on pedestals disappear after leaving the room"

	[C_ID .. 712] = "Tạo một vệ tinh cấp hiệu ứng của một vật phẩm ngẫu nhiên#Vật phẩm có 25% cơ hội từ nhóm vật phẩm phòng hiện tại và 75% cơ hội từ nhóm Kho báu, Boss hoặc Cửa hàng", -- Lemegeton
	-- English: "Spawns an orbital that grants a random item's effect#The items have a 25% chance to be from the current room's item pool and 75% chance to be from the Treasure, Boss or Shop pools"

	[C_ID .. 713] = "Loại bỏ nửa trái tim và tạo một cục máu#Cục máu sao chép nước mắt của Isaac#Mỗi loại trái tim tạo một cục máu với máu, sát thương và hiệu ứng nước mắt khác nhau", -- Sumptorium
	-- English: "Removes half a heart and creates a clot#Clots copy Isaac's tears#Each type of heart generates a clot with different HP, damage and tear effect"

	[C_ID .. 714] = "Lấy lại cơ thể của Forgotten từ bất kỳ khoảng cách nào#Hồn bất tử trong khi Forgotten đang quay lại", -- Recall
	-- English: "Retrieves the Forgotten's body from any distance#The Soul is invincible while the Forgotten is returning"

	[C_ID .. 715] = "Sử dụng vật phẩm khi trống để lưu trữ phân tiếp theo bên trong#Sử dụng vật phẩm với phân bên trong sử dụng phân đó", -- Hold
	-- English: "Using the item when empty stores the next poop inside#Using the item with a poop inside uses that poop"

	[C_ID .. 716] = "{{Shop}} Chi 3 đồng xu cấp hoặc:#{VAR:EFFECTLIST}", -- Keeper's Sack
	-- Full old Desc: "Tạo 3 {{Coin}} đồng xu và 1 {{Key}} chìa khóa#{{Shop}} Chi 3 đồng xu cấp hoặc:#↑ {{Speed}} +0.03 Tốc độ#↑ {{Damage}} +0.5 Sát thương#↑ {{Range}} +0.25 Tầm bắn"
	-- English: "{{Shop}} Spending 3 coins grants either:#{VAR:EFFECTLIST}"

	[C_ID .. 717] = "Đá và chướng ngại vật khác tạo 2 nhện xanh khi bị phá hủy#Đá đôi khi tạo nhện xanh trong phòng có kẻ địch", -- Keeper's Kin
	-- English: "Rocks and other obstacles spawn 2 blue spiders when destroyed#Rocks can occasionally spawn blue spiders in hostile rooms"

	[C_ID .. 719] = "{{Shop}} Tạo một vật phẩm/vật phẩm nhặt Cửa hàng ngẫu nhiên để mua", -- Keeper's Box
	-- English: "{{Shop}} Spawns a random Shop item/pickup to be purchased"

	[C_ID .. 720] = "Tạo vật phẩm nhặt dựa trên số lần sạc#Phần thưởng Sạc:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} Kích hoạt hiệu ứng ngẫu nhiên mạnh mẽ ở 12 lần sạc", -- Everything Jar
	-- English: "Spawns pickups based on the number of charges#Charge Rewards:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} Triggers a powerful random effect at 12 charges"

	[C_ID .. 721] = "Gây lỗi cho tất cả vật phẩm trong tương lai#Vật phẩm bị lỗi có hiệu ứng hoàn toàn ngẫu nhiên", -- TMTRAINER
	-- English: "Causes all future items to be glitched#Glitched items have completely random effects"

	[C_ID .. 722] = "Xích kẻ địch gần nhất trong 5 giây#Kẻ địch bị xích không thể di chuyển hoặc tấn công", -- Anima Sola
	-- English: "{{Chained}} Chains down the nearest enemy for 5 seconds#Chained enemies cannot move or attack"

	[C_ID .. 723] = "Đổi lại tất cả vật phẩm trong phòng bằng cách giảm ID nội bộ của chúng đi một", -- Spindown Dice
	-- English: "Rerolls all items in the room by decreasing their internal ID by one"

	[C_ID .. 724] = "{{Heart}} Nhận sát thương thả nửa hoặc một Trái tim Đỏ tùy thuộc vào lượng máu Isaac mất#Trái tim phóng ra và biến mất sau 1.5 giây", -- Hypercoagulation
	-- English: "{{Heart}} Taking damage drops a half or full Red Heart depending on how much Isaac lost#The hearts launch out and despawn after 1.5 seconds"

	[C_ID .. 725] = "Gây đủ sát thương khiến Isaac nhấp nháy đỏ#Thả nút bắn khi Isaac nhấp nháy hoặc:#Ném một phân ngẫu nhiên#Tạo chất lỏng tăng chỉ số#{{Poison}} Đánh rắm một đám mây độc#Tạo 5 quả bom sống", -- IBS
	-- English: "Dealing enough damage causes Isaac to flash red#Releasing the fire button while Isaac is flashing either:#Throws a random poop#Creates buffing creep#{{Poison}} Farts a poison cloud#Spawns 5 live bombs"

	[C_ID .. 726] = "Nhấn đúp phím bắn khiến Isaac hắt hơi máu#Hắt hơi gây 1.5x sát thương của Isaac#Hồi chiêu 1 giây#{{BrimstoneCurse}} Kẻ địch bị ảnh hưởng nhận thêm sát thương từ tia Brimstone", -- Hemoptysis
	-- English: "Double-tapping a fire button makes Isaac sneeze blood#The sneeze deals 1.5x Isaac's damage#1 second cooldown#{{BrimstoneCurse}} Affected enemies take extra damage from Brimstone beams"

	[C_ID .. 727] = "Bom của Isaac tạo ma đuổi theo kẻ địch#Ma gây 2x sát thương của Isaac mỗi giây và nổ sau 10 giây", -- Ghost Bombs
	-- Full old Desc: "{{Bomb}} +5 Bom#Bom của Isaac tạo ma đuổi theo kẻ địch#Ma gây 2x sát thương của Isaac mỗi giây và nổ sau 10 giây"
	-- English: "Isaac's bombs spawn ghosts that chase enemies#Ghosts deal 2x Isaac's damage per second and explode after 10 seconds"

	[C_ID .. 728] = "Một bạn đồng hành quỷ lao ra khỏi Isaac trong phòng#Con quỷ bắn về phía kẻ địch gần nhất, bắt chước nước mắt, chỉ số và hiệu ứng của Isaac#{{Damage}} Nước mắt của nó gây 75% sát thương của Isaac", -- Gello
	-- English: "A demon familiar bursts out of Isaac for the room#The demon shoots towards the nearest enemy, mimicing Isaac's tears, stats and effects#{{Damage}} Its tears deal 75% of Isaac's damage"

	[C_ID .. 729] = "Ném đầu của Isaac theo một hướng#Đầu gây sát thương tiếp xúc và bắn nước mắt từ nơi nó hạ cánh#Sử dụng vật phẩm lần nữa hoặc giẫm lên đầu sẽ gắn lại nó", -- Decap Attack
	-- English: "Throws Isaac's head in a direction#The head deals contact damage and shoots tears from where it lands#Using the item again or stepping on the head reattaches it"

	[C_ID .. 732] = "{{Rune}} Tạo một rune hoặc đá linh hồn ngẫu nhiên", -- Mom's Ring
	-- Full old Desc: "↑ {{Damage}} +1 Sát thương#{{Rune}} Tạo một rune hoặc đá linh hồn ngẫu nhiên"
	-- English: "{{Rune}} Spawns a random rune or soul stone"

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 15] = "{{Coin}} Phá đá có 33% cơ hội tạo ra đồng xu", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks has a 33% chance to spawn a coin"

	[T_ID .. 24] = "{{Coin}} 20% cơ hội cao hơn để đồng xu xuất hiện từ phân#{{Poison}} Nhặt đồng xu khiến Isaac xì hơi, gây độc và đẩy lùi kẻ thù cùng đạn", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#{{Poison}} Picking up coins makes Isaac fart, which poisons and knocks back enemies and projectiles"

	[T_ID .. 32] = "25% cơ hội nhận hiệu ứng nấm ngẫu nhiên mỗi phòng", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room"

	[T_ID .. 33] = "{{Collectible318}} Nhận sát thương có cơ hội cao tạo ra bạn đồng hành Gemini trong phòng", -- Umbilical Cord
	-- Full old Desc: "{{HalfHeart}} Có nửa Trái tim đỏ hoặc ít hơn sẽ nhận {{Collectible100}} Little Steven#{{Collectible318}} Nhận sát thương có cơ hội cao tạo ra bạn đồng hành Gemini trong phòng"
	-- English: "{{HalfHeart}} Having half a Red Heart or less grants {{NameC100}}#{{Collectible318}} Taking damage has a high chance to spawn a Gemini familiar for the room"

	[T_ID .. 48] = "Nhận sát thương có 5% cơ hội gây 80 sát thương cho tất cả kẻ thù trong phòng#{{Collectible35}} Trái tim đen và hiệu ứng kiểu Necronomicon gây sát thương gấp đôi", -- A Missing Page
	-- English: "Taking damage has a 5% chance to deal 80 damage to all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[T_ID .. 49] = "{{HalfHeart}} Nhặt đồng xu có 25% cơ hội tạo nửa Trái tim đỏ#Cơ hội cao hơn từ đồng 5 xu và 10 xu", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 25% chance to spawn a half Red Heart#Higher chance from nickels and dimes"

	[T_ID .. 50] = "{{Bomb}} Nhặt đồng xu có 25% cơ hội tạo bom#Cơ hội cao hơn từ đồng 5 xu và 10 xu", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 25% chance to spawn a bomb#Higher chance from nickels and dimes"

	[T_ID .. 51] = "{{Key}} Nhặt đồng xu có 25% cơ hội tạo chìa khóa#Cơ hội cao hơn từ đồng 5 xu và 10 xu", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 25% chance to spawn a key#Higher chance from nickels and dimes"

	[T_ID .. 69] = "Ngụy trang ngẫu nhiên cho Isaac#{{Confusion}} Gây rối kẻ thù#Có thể dùng để mở \"Cửa Lạ\" trong \"Depths II\"", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies#Can be used to open the "Strange Door" in "Depths II""

	[T_ID .. 92] = "↑ x1.33 Hệ số chỉ số (trừ tốc độ bắn) cho các chỉ số trên 1 {{Speed}} tốc độ, 2.73 {{Tears}} nước mắt, 3.5 {{Damage}} sát thương, 6.5 {{Range}} tầm bắn, 1 {{Shotspeed}} tốc độ đạn", -- Cracked Crown
	-- English: "↑ x1.33 Stat multiplier (except fire rate) for the stats that are above 1 {{Speed}} speed, 2.73 {{Tears}} tears, 3.5 {{Damage}} damage, 6.5 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 107] = "Nhận sát thương làm cạn Trái tim đỏ trước Trái tim hồn/đen#{{Warning}} Sát thương Trái tim đỏ có thể làm giảm cơ hội Phòng Quỷ/Thiên thần", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#{{Warning}} Taking Red Heart damage will reduce Devil/Angel Room chance"

	[T_ID .. 110] = "{{Shop}} Cửa hàng xuất hiện trong Womb và Corpse", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb and Corpse"

	[T_ID .. 111] = "{{TreasureRoom}} Phòng Kho báu xuất hiện trong Womb và Corpse", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb and Corpse"

	[T_ID .. 119] = "{{HealingRed}} Vào tầng mới hồi nửa số Trái tim đỏ/Xương trống của Isaac#{{HealingRed}} Hồi tối thiểu nửa trái tim", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half of Isaac's empty Red/Bone Hearts#{{HealingRed}} Heals half a heart minimum"

	[T_ID .. 131] = "{{HalfSoulHeart}} Nhặt đồng xu có 17% cơ hội tạo nửa Trái tim hồn#Cơ hội cao hơn từ đồng 5 xu và 10 xu", -- Blessed Penny
	-- English: "{{HalfSoulHeart}} Picking up a coin has a 17% chance to spawn a half Soul Heart#Higher chance from nickels and dimes"

	[T_ID .. 132] = "25% cơ hội nhận hiệu ứng ống tiêm ngẫu nhiên mỗi phòng", -- Broken Syringe
	-- English: "25% chance to get a random syringe effect each room"

	[T_ID .. 133] = "Bom của Isaac nổ nhanh hơn", -- Short Fuse
	-- English: "Isaac's bombs explode faster"

	[T_ID .. 134] = "Tăng kích thước xì hơi", -- Gigante Bean
	-- English: "Increases fart size"

	[T_ID .. 136] = "Cửa, khối chìa khóa và rương vàng có thể mở bằng vụ nổ#Vụ nổ cũng có thể mở \"Cửa Lạ\" trong \"Depths II\"", -- Broken Padlock
	-- English: "Doors, key blocks and golden chests can be opened with explosions#Explosions can also open the "Strange Door" in "Depths II""

	[T_ID .. 137] = "Vào tầng mới tạo tối đa 4 vật phẩm nhặt chưa lấy từ tầng trước trong phòng bắt đầu", -- Myosotis
	-- English: "Entering a new floor spawns up to 4 uncollected pickups from the previous floor in the starting room"

	[T_ID .. 138] = "Sử dụng vật phẩm hoạt động sẽ đổi lại nó", -- 'M
	-- English: "Using an active item rerolls it"

	[T_ID .. 139] = "{{Luck}} +4 May mắn cho các hiệu ứng nước mắt dựa trên may mắn", -- Teardrop Charm
	-- English: "{{Luck}} +4 Luck towards luck-based tear effects"

	[T_ID .. 140] = "Nhặt Trái tim đỏ có thể biến chúng thành nhện xanh#Hiệu ứng hoạt động ngay cả khi đầy máu#Hiệu ứng có thể tiêu thụ trái tim cần để hồi máu", -- Apple of Sodom
	-- English: "Picking up Red Hearts can convert them into blue spiders#Works even while at full health#Effect may consume hearts needed for healing"

	[T_ID .. 141] = "Gấp đôi tốc độ bắn của bạn đồng hành", -- Forgotten Lullaby
	-- English: "2x Fire rate for familiars"

	[T_ID .. 142] = "{{Collectible584}} Vào tầng mới tạo 4 wisp Book of Virtues", -- Beth's Faith
	-- English: "{{Collectible584}} Entering a new floor spawns 4 Book of Virtues wisps"

	[T_ID .. 144] = "Nước mắt xoay 90 độ để nhắm vào kẻ thù mà chúng có thể đã bỏ lỡ", -- Brain Worm
	-- English: "Tears turn 90 degrees to target enemies that they may have missed"

	[T_ID .. 145] = "Nhận sát thương phá hủy bùa", -- Perfection
	-- Full old Desc: "↑ {{Luck}} +10 May mắn#Nhận sát thương phá hủy bùa"
	-- English: "Taking damage destroys the trinket"

	[T_ID .. 146] = "{{RedTreasureRoom}} Vật phẩm Phòng Kho báu được thay bằng giao kèo quỷ", -- Devil's Crown
	-- English: "{{RedTreasureRoom}} Treasure Room items are replaced with devil deals"

	[T_ID .. 147] = "{{Battery}} Nhặt đồng xu có 17% cơ hội thêm 1 lần nạp cho vật phẩm hoạt động#Cơ hội cao hơn từ đồng 5 xu và 10 xu", -- Charged Penny
	-- English: "{{Battery}} Picking up a coin has a 17% chance to add 1 charge to the active item#Higher chance from nickels and dimes"

	[T_ID .. 148] = "Tất cả bạn đồng hành bay quanh Isaac", -- Friendship Necklace
	-- English: "All familiars orbit around Isaac"

	[T_ID .. 149] = "Ngay trước khi nhận sát thương, sử dụng vật phẩm hoạt động nếu đã nạp", -- Panic Button
	-- English: "Right before taking damage, uses the active item if it is charged"

	[T_ID .. 150] = "Cửa khóa có thể mở miễn phí, nhưng Isaac phải dọn một phòng từ tầng Hush trước khi vào phòng phía sau", -- Blue Key
	-- English: "Locked doors can be opened for free, but Isaac has to clear a room from the Hush floor before accessing the room behind them"

	[T_ID .. 151] = "Thu lại hầu hết gai nhọn, khiến chúng vô hại#Cũng ảnh hưởng đến cửa {{CursedRoom}} Phòng Nguyền, kẻ giả dạng và mọi chướng ngại gai", -- Flat File
	-- English: "Retracts most spikes, rendering them harmless#Also affects {{CursedRoom}} Curse Room doors, mimics and any spike obstacle"

	[T_ID .. 152] = "Thêm +15% cơ hội nếu chưa vào Phòng Thiên văn#Phòng Thiên văn có thể xuất hiện trong Womb và Corpse", -- Telescope Lens
	-- Full old Desc: "{{PlanetariumChance}} +9% cơ hội Phòng Thiên văn#Thêm +15% cơ hội nếu chưa vào Phòng Thiên văn#Phòng Thiên văn có thể xuất hiện trong Womb và Corpse"
	-- English: "Additional +15% chance if a Planetarium hasn't been entered yet#Planetariums can spawn in the Womb and Corpse"

	[T_ID .. 153] = "25% cơ hội nhận hiệu ứng vật phẩm Mom ngẫu nhiên mỗi phòng", -- Mom's Lock
	-- English: "25% chance for a random Mom item effect each room"

	[T_ID .. 154] = "50% cơ hội mỗi phòng mới nhận một xúc xắc dùng một lần#Xúc xắc biến mất khi rời đi#Xúc xắc không chiếm ô thuốc/lá bài", -- Dice Bag
	-- English: "50% chance per new room to grant a single use die consumable item#The die disappears when leaving#The die does not take up a pill/card slot"

	[T_ID .. 155] = "Tạo một {{TreasureRoom}} Phòng Kho báu và {{Shop}} Cửa hàng trong Cathedral", -- Holy Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Cathedral"

	[T_ID .. 156] = "{{Heart}} +1 Ô chứa trái tim khi giữ", -- Mother's Kiss
	-- English: "{{Heart}} +1 Heart container while held"

	[T_ID .. 158] = "Nhận sát thương khiến Isaac làm rơi 2 đồng xu, chìa khóa hoặc bom của mình#Vật phẩm nhặt có thể được thay bằng biến thể khác, như chìa khóa vàng, đồng 5 xu, 10 xu, v.v.", -- Torn Pocket
	-- English: "Taking damage makes Isaac drop 2 of his coins, keys or bombs#The pickups can be replaced with other variants, such as golden keys, nickels, dimes, etc."

	[T_ID .. 159] = "{{GoldenChest}} Rương vàng có thể chứa thêm lá bài, thuốc hoặc bùa", -- Gilded Key
	-- Full old Desc: "{{Key}} +1 Chìa khóa khi nhặt#{{GoldenChest}} Thay tất cả rương (trừ Cũ/Mega) bằng rương vàng#{{GoldenChest}} Rương vàng có thể chứa thêm lá bài, thuốc hoặc bùa"
	-- English: "{{GoldenChest}} Replaces all chests (except Old/Mega) with golden chests#{{GoldenChest}} Golden chests can contain extra cards, pills or trinkets"

	[T_ID .. 160] = "{{GrabBag}} Vào tầng mới tạo một bao tải", -- Lucky Sack
	-- English: "{{GrabBag}} Entering a new floor spawns a sack"

	[T_ID .. 161] = "Tạo một {{TreasureRoom}} Phòng Kho báu và {{Shop}} Cửa hàng trong Sheol", -- Wicked Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Sheol"

	[T_ID .. 162] = "{{Player7}} Dọn phòng có 50% cơ hội biến người chơi thành Azazel#{{Timer}} Hiệu ứng kéo dài đến khi dọn và rời một phòng khác", -- Azazel's Stump
	-- English: "{{Player7}} Clearing a room has a 33% chance to turn the player into Azazel#{{Timer}} Effect lasts until clearing and leaving another room"

	[T_ID .. 163] = "Tất cả kẻ thù Dip (phân nhỏ) đều thân thiện#Dọn phòng tạo 1 Dip ngẫu nhiên", -- Dingle Berry
	-- English: "All Dip (small poop) enemies are friendly#Clearing a room spawns 1 random Dip"

	[T_ID .. 164] = "{{Bomb}} Tạo thêm 1 bom cho mỗi bom đặt", -- Ring Cap
	-- English: "{{Bomb}} Spawns 1 extra bomb for each bomb placed"

	[T_ID .. 165] = "Từ Womb trở đi, thay tất cả đồng xu và chìa khóa bằng bom, trái tim, thuốc, lá bài, bùa, pin hoặc ruồi địch", -- Nuh Uh!
	-- English: "On Womb and beyond, replaces all coin and key spawns with a bomb, heart, pill, card, trinket, battery, or enemy fly"

	[T_ID .. 166] = "50% cơ hội nhận hiệu ứng của vật phẩm thụ động ngẫu nhiên mỗi phòng", -- Modeling Clay
	-- English: "50% chance to grant the effect of a random passive item each room"

	[T_ID .. 167] = "Dọn phòng có 25% cơ hội tạo một Bony thân thiện", -- Polished Bone
	-- English: "{{Friendly}} Clearing a room has a 25% chance to spawn a friendly Bony"

	[T_ID .. 168] = "{{EmptyBoneHeart}} Vào tầng mới nhận +1 Trái tim xương", -- Hollow Heart
	-- English: "{{EmptyBoneHeart}} Entering a new floor grants +1 Bone Heart"

	[T_ID .. 169] = "{{Guppy}} Được tính là 1 vật phẩm cho biến hình Guppy khi giữ", -- Kid's Drawing
	-- English: "{{Guppy}} Counts as 1 item towards the Guppy transformation while held"

	[T_ID .. 170] = "{{Collectible580}} Dọn phòng có 33% cơ hội tạo phòng Chìa khóa đỏ#Cơ hội thấp hơn khi ở phòng đỏ", -- Crystal Key
	-- English: "{{Collectible580}} Clearing a room has a 33% chance to create a Red Key room#Lower chance to occur when in a red room"

	[T_ID .. 171] = "{{DevilRoom}} 50% cơ hội để giao kèo quỷ tốn đồng xu thay vì trái tim", -- Keeper's Bargain
	-- English: "{{DevilRoom}} 50% chance for devil deals to cost coins instead of hearts"

	[T_ID .. 172] = "Nhặt đồng xu dịch chuyển Isaac đến một phòng ngẫu nhiên#Có thể dịch chuyển đến phòng bí mật", -- Cursed Penny
	-- English: "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms"

	[T_ID .. 173] = "{{DevilRoom}} Cho phép Isaac lấy 1 vật phẩm Phòng Quỷ miễn phí#{{Warning}} Giao kèo quỷ miễn phí vẫn ảnh hưởng đến cơ hội Phòng Thiên thần", -- Your Soul
	-- English: "{{DevilRoom}} Allows Isaac to take 1 Devil Room item for free#{{Warning}} The free Devil deal still affects Angel Room chance"

	[T_ID .. 174] = "Ngăn Krampus xuất hiện trong Phòng Quỷ#Phòng Quỷ là phiên bản đặc biệt với nhiều giao kèo, Trái tim đen và kẻ thù", -- Number Magnet
	-- Full old Desc: "{{DevilChance}} +10% cơ hội Phòng Quỷ#Ngăn Krampus xuất hiện trong Phòng Quỷ#Phòng Quỷ là phiên bản đặc biệt với nhiều giao kèo, Trái tim đen và kẻ thù"
	-- English: "Prevents Krampus from appearing in Devil Rooms#Devil Rooms are special variants with more deals, Black Hearts and enemies"

	[T_ID .. 175] = "Mở cửa đến tầng Hush bất kể thời gian", -- Strange Key
	-- Full old Desc: "Mở cửa đến tầng Hush bất kể thời gian#Sử dụng {{Collectible297}} Pandora's Box tiêu thụ chìa khóa và tạo 6 vật phẩm từ các nhóm ngẫu nhiên"
	-- English: "Opens the door to the Hush floor regardless of the timer#Using {{NameC297}} consumes the key and spawns 6 items from random pools"

	[T_ID .. 176] = "Tạo một cục máu đông bắt chước chuyển động của Isaac#Sao chép chỉ số, hiệu ứng nước mắt và 35% sát thương của Isaac#Hồi sinh mỗi phòng", -- Lil Clot
	-- English: "Spawns a blood clot that mimics Isaac's movement#Copies Isaac's stats, tear effects and 35% of his damage#Respawns each room"

	[T_ID .. 177] = "{{Chest}} Dọn {{ChallengeRoom}} Phòng Thử thách tạo một rương#Dọn {{BossRushRoom}} Phòng Thử thách Trùm tạo một vật phẩm", -- Temporary Tattoo
	-- English: "{{Chest}} Clearing a {{ChallengeRoom}} Challenge Room spawns a chest#Clearing a {{BossRushRoom}} Boss Challenge Room spawns an item"

	[T_ID .. 178] = "Nhận sát thương có 50% cơ hội khiến Isaac phát nổ#Không phá hủy Máy Hiến máu hoặc Confessionals, nhưng tạo vật phẩm nhặt như thể đã phá", -- Swallowed M80
	-- English: "Taking damage has a 50% chance for Isaac to explode#Doesn't destroy Blood Donation Machines or Confessionals, while spawning pickups as if it did"

	[T_ID .. 179] = "bạn đồng hành bắt chước chuyển động của Isaac#Giữ nút thả ({{ButtonRT}}) để giữ bạn đồng hành tại chỗ", -- RC Remote
	-- English: "Familiars mimic Isaac's movement#Hold the drop button ({{ButtonRT}}) to keep the familiars in place"

	[T_ID .. 180] = "Theo chuyển động của Isaac và bắn nước mắt quang phổ#Sao chép chỉ số, hiệu ứng nước mắt và 50% sát thương của Isaac#Sử dụng hầu hết vật phẩm hoạt động khi Isaac dùng#Chết trong một phát#Hồi sinh mỗi tầng", -- Found Soul
	-- English: "Follows Isaac's movement and shoots spectral tears#Copies Isaac's stats, tear effects and 50% of his damage#Uses most active items when Isaac does#Dies in one hit#Respawns each floor"

	[T_ID .. 181] = "Sử dụng vật phẩm hoạt động kích hoạt hiệu ứng của thêm 1-2 vật phẩm hoạt động nạp 1-2 lần", -- Expansion Pack
	-- English: "Using an active item triggers the effect of an additional 1-2 charge active item"

	[T_ID .. 182] = "Vào {{AngelRoom}} Phòng Thiên thần tạo 5 wisp#Quyên góp cho Người ăn xin có 25% cơ hội tạo wisp", -- Beth's Essence
	-- English: "Entering an {{AngelRoom}} Angel Room spawns 5 wisps#Donating to Beggars has a 25% chance to spawn a wisp"

	[T_ID .. 183] = "50% cơ hội nhân đôi một bạn đồng hành mỗi phòng", -- The Twins
	-- Full old Desc: "50% cơ hội nhân đôi một bạn đồng hành mỗi phòng#Tặng {{Collectible8}} Brother Bobby hoặc {{Collectible67}} Sister Maggy nếu Isaac không có bạn đồng hành nào"
	-- English: "50% chance to duplicate a familiar each room#Grants {{NameC8}} or {{NameC67}} if Isaac has no familiars"

	[T_ID .. 184] = "{{Shop}} Cửa hàng bán bạn đồng hành với giá 10 đồng xu", -- Adoption Papers
	-- English: "{{Shop}} Shops sell familiars for 10 coins"

	[T_ID .. 185] = "Giết kẻ thù có 17% cơ hội tạo một châu chấu ngẫu nhiên", -- Cricket Leg
	-- English: "Killing an enemy has a 17% chance to spawn a random locust"

	[T_ID .. 186] = "{{Collectible706}} Tặng 1 châu chấu Abyss", -- Apollyon's Best Friend
	-- English: "{{Collectible706}} Grants 1 Abyss locust"

	[T_ID .. 187] = "{{TreasureRoom}} 50% cơ hội thêm một vật phẩm mù trong Phòng Kho báu#50% cơ hội tiết lộ vật phẩm mù trong Phòng Kho báu đường phụ", -- Broken Glasses
	-- English: "{{TreasureRoom}} 50% chance of adding an extra blind item in Treasure Rooms#50% chance to reveal the blind item in alt path Treasure Rooms"

	[T_ID .. 188] = "{{Freezing}} Giết kẻ thù hóa đá sẽ đóng băng nó", -- Ice Cube
	-- Full old Desc: "Vào phòng có 20% cơ hội hóa đá kẻ thù ngẫu nhiên#{{Freezing}} Giết kẻ thù hóa đá sẽ đóng băng nó"
	-- English: "{{Petrify}} Entering a room has a {VAR:LUCKCHANCE}% chance to petrify random enemies#{{Freezing}} Killing a petrified enemy freezes it"

	[T_ID .. 189] = "Giết kẻ thù khiến Isaac bất tử trong 1 giây#Bất tử cộng dồn với các lần giết liên tiếp", -- Sigil of Baphomet
	-- English: "Killing an enemy makes Isaac invincible for 1 second#Invincibility stacks with successive enemy kills"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 18] = "{{TreasureRoom}} Dịch chuyển Isaac đến Phòng Kho báu#{{Planetarium}} Nếu có Phòng Thiên văn, dịch chuyển đến đó thay vì vậy", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room#{{Planetarium}} If there is a Planetarium, it teleports there instead"

	[Card_ID .. 20] = "{{CurseDarkness}} Xóa Lời nguyền Bóng tối", -- XIX - The Sun
	-- Full old Desc: "{{HealingRed}} Đầy máu#Gây 100 sát thương cho tất cả kẻ thù#{{Timer}} Hiệu ứng bản đồ đầy đủ cho tầng (trừ {{SuperSecretRoom}} Phòng Bí mật Đặc biệt / {{UltraSecretRoom}} Phòng Bí mật Tối thượng)#{{CurseDarkness}} Xóa Lời nguyền Bóng tối"
	-- English: "{{CurseDarkness}} Removes Curse of Darkness"

	[Card_ID .. 21] = "<MISSING>", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#5% chance for it to be a Key Master, Bomb Bum, Battery Bum, or Rotten Beggar"

	[Card_ID .. 27] = "{{Bomb}} Biến tất cả vật phẩm nhặt, rương và kẻ thù không phải trùm thành bom ngẫu nhiên", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups, chests and non-boss enemies into random bombs"

	[Card_ID .. 28] = "{{Coin}} Biến tất cả vật phẩm nhặt, rương và kẻ thù không phải trùm thành đồng xu ngẫu nhiên", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups, chests and non-boss enemies into random coins"

	[Card_ID .. 29] = "{{Key}} Biến tất cả vật phẩm nhặt, rương và kẻ thù không phải trùm thành chìa khóa ngẫu nhiên", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups, chests and non-boss enemies into random keys"

	[Card_ID .. 30] = "{{UnknownHeart}} Biến tất cả vật phẩm nhặt, rương và kẻ thù không phải trùm thành trái tim ngẫu nhiên", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups, chests and non-boss enemies into random hearts"

	[Card_ID .. 34] = "Tạo một cửa sập đến tầng tiếp theo#{{LadderRoom}} Tạo không gian bò nếu dùng trên ô trang trí (cỏ, đá nhỏ, giấy, ngọc, v.v.)", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[Card_ID .. 42] = "Ném lá bài theo hướng Isaac đang di chuyển khi sử dụng#Giết ngay lập tức BẤT KỲ kẻ thù nào nó chạm vào (trừ Delirium hoặc Beast)", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium or the Beast)"

	[Card_ID .. 51] = "{{HolyMantle}} Khiên Holy Mantle dùng một lần (ngăn sát thương một lần)", -- Holy Card
	-- English: "{{HolyMantle}} A one-use Holy Mantle shield (prevents damage once)"

	[Card_ID .. 55] = "{{Rune}} Kích hoạt hiệu ứng rune ngẫu nhiên#Hiệu ứng rune yếu hơn", -- Rune Shard
	-- English: "{{Rune}} Activates a random rune effect#The rune effect is weaker"

	[Card_ID .. 56] = "Làm rơi tất cả trái tim của Isaac trừ một và tất cả vật phẩm nhặt xuống sàn#Đồng xu và bom được làm rơi dưới dạng {{Collectible74}} The Quarter hoặc {{Collectible19}} Boom! nếu có thể", -- 0 - The Fool?
	-- English: "Drops all of Isaac's hearts but one and all of his pickups on the floor#Coins and bombs are dropped as {{Collectible74}} The Quarter or {{Collectible19}} Boom! if possible"

	[Card_ID .. 57] = "{{Timer}} Tặng hào quang đẩy lùi kẻ thù và đạn trong 60 giây", -- I - The Magician?
	-- English: "{{Timer}} Grants an aura that repels enemies and projectiles for 60 seconds"

	[Card_ID .. 58] = "{{Timer}} Chân của Mom cố dậm lên Isaac trong 60 giây", -- II - The High Priestess?
	-- English: "{{Timer}} Mom's Foot tries to stomp Isaac for 60 seconds"

	[Card_ID .. 60] = "Dịch chuyển Isaac đến một phòng Trùm phụ có thể đánh bại để nhận vật phẩm#Trùm được chọn từ hai tầng sâu hơn tầng hiện tại", -- IV - The Emperor?
	-- English: "Teleports Isaac to an extra Boss room that can be defeated for an item#The boss is chosen from two floors deeper than the current one"

	[Card_ID .. 62] = "Tạo một vật phẩm từ nhóm vật phẩm của phòng hiện tại#{{BrokenHeart}} Chuyển 1 ô chứa trái tim hoặc 2 Trái tim hồn thành Trái tim vỡ", -- VI - The Lovers?
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Converts 1 heart container or 2 Soul Hearts into a Broken Heart"

	[Card_ID .. 63] = "{VAR:TIMEDEFFECT}#Bất tử nhưng không thể di chuyển", -- VII - The Chariot?
	-- Full old Desc: "{{Timer}} Nhận trong 10 giây:#↑ {{Tears}} x4 Hệ số tốc độ bắn#Bất tử nhưng không thể di chuyển"
	-- English: "{VAR:TIMEDEFFECT}#Invincible but can't move"

	[Card_ID .. 64] = "{{GoldenChest}} Tạo 2-4 rương vàng", -- VIII - Justice?
	-- English: "{{GoldenChest}} Spawns 2-4 golden chests"

	[Card_ID .. 65] = "{{Coin}} Biến tất cả vật phẩm nhặt và vật phẩm trong phòng thành số đồng xu bằng giá trị Cửa hàng của chúng#Nếu không có gì để biến, tạo một Penny thay thế", -- IX - The Hermit?
	-- English: "{{Coin}} Turns all pickups and items in the room into a number of coins equal to their Shop value#If there is nothing to turn, spawns a Penny instead"

	[Card_ID .. 66] = "{{DiceRoom}} Kích hoạt hiệu ứng Phòng Xúc xắc ngẫu nhiên", -- X - Wheel of Fortune?
	-- English: "{{DiceRoom}} Triggers a random Dice Room effect"

	[Card_ID .. 67] = "{{Timer}} Kẻ thù trong phòng bị {{Slow}} làm chậm và nhận sát thương gấp đôi trong 30 giây", -- XI - Strength?
	-- English: "{{Timer}} Enemies in the room are {{Slow}} slowed and take double damage for 30 seconds"

	[Card_ID .. 68] = "{VAR:TIMEDEFFECT}#Bắn ba phát#{{Coin}} Kẻ thù bị giết làm rơi đồng xu", -- XII - The Hanged Man?
	-- Full old Desc: "{{Timer}} Nhận trong 30 giây:#↓ {{Speed}} -0.1 Tốc độ#Bắn ba phát#{{Coin}} Kẻ thù bị giết làm rơi đồng xu"
	-- English: "{VAR:TIMEDEFFECT}#Triple shot#{{Coin}} Killed enemies drop coins"

	[Card_ID .. 69] = "{{Collectible545}} Kích hoạt Book of the Dead#Tạo thực thể Xương cho mỗi kẻ thù bị giết trong phòng", -- XIII - Death?
	-- English: "{{Collectible545}} Activates Book of the Dead#{{Friendly}} Spawns friendly Bone entities for each enemy killed in room"

	[Card_ID .. 70] = "{{Pill}} Ép Isaac ăn 5 viên thuốc ngẫu nhiên", -- XIV - Temperance?
	-- English: "{{Pill}} Forces Isaac to eat 5 random pills"

	[Card_ID .. 71] = "{{Timer}} Nhận trong 60 giây:#{{Collectible33}} Kích hoạt The Bible (bay)#{{Collectible390}} bạn đồng hành Seraphim#{{MomsHeart}} Giết ngay lập tức Chân của Mom và Trái tim của Mom#{{Warning}} Giết Isaac khi dùng với Satan", -- XV - The Devil?
	-- English: "{{Timer}} Receive for 60 seconds:#{{Collectible33}} Activates The Bible (flight)#{{Collectible390}} Seraphim familiar#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[Card_ID .. 72] = "Tạo 7 cụm đá và chướng ngại vật ngẫu nhiên#Cụm thường chứa Đá Tinted", -- XVI - The Tower?
	-- English: "Spawns 7 clusters of random rocks and obstacles#Clusters often contain Tinted Rocks"

	[Card_ID .. 73] = "Loại bỏ vật phẩm thụ động lâu đời nhất của Isaac (bỏ qua vật phẩm khởi đầu)#Tạo 2 vật phẩm ngẫu nhiên từ nhóm vật phẩm của phòng hiện tại", -- XVII - The Stars?
	-- English: "Removes Isaac's oldest collected passive item (ignoring starting items)#Spawns 2 random items from the current room's item pool"

	[Card_ID .. 74] = "{{UltraSecretRoom}} Dịch chuyển Isaac đến Phòng Bí mật Tối thượng#Đường trở lại sẽ làm bằng các phòng đỏ", -- XVIII - The Moon?
	-- English: "{{UltraSecretRoom}} Teleports Isaac to the Ultra Secret Room#Pathway back will be made of red rooms"

	[Card_ID .. 75] = "{{CurseDarkness}} Lời nguyền Bóng tối", -- XIX - The Sun?
	-- Full old Desc: "{{Timer}} Nhận cho tầng:#↑ {{Damage}} +1.5 Sát thương#Bay và nước mắt quang phổ#{{BoneHeart}} Chuyển ô chứa trái tim thành Trái tim xương (hoàn nguyên)#{{CurseDarkness}} Lời nguyền Bóng tối"
	-- English: "{{Timer}} Receive for the floor:#{VAR:EFFECTLIST}#{{BoneHeart}} Converts heart containers into Bone Hearts (reverts)#{{CurseDarkness}} Curse of Darkness"

	[Card_ID .. 76] = "{{RestockMachine}} Tạo một Máy Đổi mới", -- XX - Judgement?
	-- English: "{{RestockMachine}} Spawns a Restock Machine"

	[Card_ID .. 77] = "{{LadderRoom}} Tạo một cửa sập đến không gian bò", -- XXI - The World?
	-- English: "{{LadderRoom}} Spawns a trapdoor to a crawlspace"

	[Card_ID .. 78] = "{{Collectible580}} Chìa khóa đỏ dùng một lần", -- Cracked Key
	-- English: "{{Collectible580}} Single-use Red Key"

	[Card_ID .. 80] = "Sao chép hiệu ứng của viên thuốc, lá bài, rune, đá hồn hoặc vật phẩm hoạt động được dùng gần đây nhất", -- Wild Card
	-- English: "Copies the effect of your most recently used pill, card, rune, soul stone or activated item"

	[Card_ID .. 81] = "Khiến tất cả bệ vật phẩm trong phòng chuyển đổi giữa hai vật phẩm khác nhau", -- Soul of Isaac
	-- English: "Makes all item pedestals in the room cycle between two different items"

	[Card_ID .. 82] = "{{Timer}} Hiệu ứng kéo dài trong phòng:#{{HalfHeart}} Kẻ thù bị giết làm rơi nửa Trái tim đỏ biến mất sau 2 giây", -- Soul of Magdalene
	-- English: "{{Timer}} Effect lasts for the room:#{{HalfHeart}} Enemies killed drop half Red Hearts that disappear after 2 seconds"

	[Card_ID .. 83] = "Mở tất cả cửa trong phòng#{{Collectible580}} Tạo phòng đỏ trên mọi tường có thể", -- Soul of Cain
	-- English: "Opens all doors in the room#{{Collectible580}} Creates red rooms on every wall possible"

	[Card_ID .. 84] = "{{Collectible705}} Kích hoạt Dark Arts với thời gian 3 giây#Tạm thời ↑ {{Damage}} tăng sát thương cho mỗi kẻ thù/đạn trúng", -- Soul of Judas
	-- English: "{{Collectible705}} Activates Dark Arts with a 3 second duration#Temporary ↑ {{Damage}} damage up for every enemy/projectile hit"

	[Card_ID .. 85] = "{{Poison}} Gây ra 8 tiếng xì hơi độc với vệt nâu, sau đó nhanh chóng tạo 7 Bom Mông#Đứng trên vệt nhận:#{VAR:EFFECTLIST}", -- Soul of ???
	-- Full old Desc: "{{Poison}} Gây ra 8 tiếng xì hơi độc với vệt nâu, sau đó nhanh chóng tạo 7 Bom Mông#Đứng trên vệt nhận:#↑ {{Tears}} +1.5 Tốc độ bắn#↑ {{Damage}} +1 Sát thương"
	-- English: "{{Poison}} Causes 8 poison farts with brown creep, then quickly spawns 7 Butt Bombs#Standing on the creep grants:#{VAR:EFFECTLIST}"

	[Card_ID .. 86] = "{{Timer}} 14 bạn đồng hành Chim Chết bay vào và tấn công kẻ thù trong phòng", -- Soul of Eve
	-- English: "{{Timer}} 14 Dead Bird familiars fly in and attack enemies for the room"

	[Card_ID .. 87] = "{{Collectible704}} Kích hoạt Berserk! trong 10 giây#{{Timer}} Mỗi lần giết tăng thời gian thêm 1 giây", -- Soul of Samson
	-- English: "{{Collectible704}} Activates Berserk! for 10 seconds#{{Timer}} Each kill increases the duration by 1 second"

	[Card_ID .. 88] = "{{Collectible441}} Bắn tia Mega Blast trong 7.5 giây", -- Soul of Azazel
	-- English: "{{Collectible441}} Fires a Mega Blast beam for 7.5 seconds"

	[Card_ID .. 89] = "Isaac chết và ngay lập tức hồi sinh với nửa trái tim#Vật phẩm này tự động được dùng khi nhận sát thương chí mạng (làm mạng phụ)", -- Soul of Lazarus
	-- English: "Isaac dies and immediately revives at half a heart#This item is automatically used upon taking fatal damage (acts as an extra life)"

	[Card_ID .. 90] = "Đổi lại bệ vật phẩm và vật phẩm nhặt trong phòng#Vật phẩm đổi lại đến từ các nhóm vật phẩm ngẫu nhiên", -- Soul of Eden
	-- English: "Rerolls item pedestals and pickups in the room#The rerolled items come from random item pools"

	[Card_ID .. 91] = "{{Player10}} Biến người chơi thành The Lost trong phòng#Cho phép lấy một vật phẩm {{DevilRoom}} Phòng Quỷ miễn phí#Cho phép vào cửa Mausoleum hoặc Gehenna miễn phí", -- Soul of the Lost
	-- English: "{{Player10}} Turns the player into The Lost for the room#Allows taking one {{DevilRoom}} Devil Room item for free#Allows entering the Mausoleum or Gehenna door for free"

	[Card_ID .. 92] = "Vĩnh viễn tặng một bạn đồng hành ngẫu nhiên", -- Soul of Lilith
	-- English: "Permanently grants a random familiar"

	[Card_ID .. 94] = "Tạo 15 châu chấu ngẫu nhiên", -- Soul of Apollyon
	-- English: "Spawns 15 random locusts"

	[Card_ID .. 95] = "{{Player16}} Tạo The Forgotten làm nhân vật phụ trong phòng", -- Soul of the Forgotten
	-- English: "{{Player16}} Spawns The Forgotten as a secondary character for the room"

	[Card_ID .. 96] = "{{Collectible584}} Tạo 6 wisp Book of Virtues ngẫu nhiên", -- Soul of Bethany
	-- English: "{{Collectible584}} Spawns 6 random Book of Virtues wisps"

	[Card_ID .. 97] = "{{Player20}} Tạo Esau làm nhân vật phụ trong phòng#Anh ta xuất hiện với số vật phẩm thụ động bằng người chơi", -- Soul of Jacob and Esau
	-- English: "{{Player20}} Spawns Esau as a secondary character for the room#He spawns with as many passive items as the player"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 4] = "Hoán đổi số lượng {{Bomb}} bom và {{Key}} chìa khóa của Isaac#Bom vàng và chìa khóa vàng cũng bị hoán đổi", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Golden bombs and keys are also swapped"

	[Pill_ID .. 38] = "{{Timer}} Làm mờ pixel màn hình trong 30 giây", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen for 30 seconds"

	[Pill_ID .. 42] = "{{Slow}} Làm chậm Isaac và tất cả kẻ thù trong phòng", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. 43] = "{{Timer}} Tăng tốc Isaac và tất cả kẻ thù trong phòng#Kích hoạt lại sau 30 và 60 giây", -- I'm Excited!!
	-- English: "{{Timer}} Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. 9999] = "Hiệu ứng thuốc ngẫu nhiên#Có cơ hội tự phá hủy sau mỗi lần dùng", -- Golden Pill
	-- English: "Random pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Horse Pills ----------

local HorseID = PillColor.PILL_GIANT_FLAG
local additionalHorsePillInformations = {
	[Pill_ID .. (HorseID + 1)] = "{{Poison}} Đầu độc cả phòng", -- Bad Gas
	-- English: "{{Poison}} Poisons the entire room"

	[Pill_ID .. (HorseID + 2)] = "{{Warning}} Gây 2 trái tim sát thương cho Isaac#Trở thành viên thuốc Hồi máu đầy đủ (+3 Trái tim hồn) khi còn 1 trái tim hoặc ít hơn", -- Bad Trip
	-- English: "{{Warning}} Deals 2 hearts of damage to Isaac#Becomes a Full Health horse pill (+3 Soul Hearts) at 1 heart or less"

	[Pill_ID .. (HorseID + 4)] = "Hoán đổi số lượng {{Bomb}} bom và {{Key}} chìa khóa của Isaac#Tăng số lượng bom và chìa khóa thêm 50%#Bom vàng và chìa khóa vàng cũng bị hoán đổi", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Increases bomb and key count by 50%#Golden bombs and keys are also swapped"

	[Pill_ID .. (HorseID + 5)] = "Tạo vài quả Bom Quỷ Mega tự tìm", -- Explosive Diarrhea
	-- English: "Spawns a few homing Mega Troll Bombs"

	[Pill_ID .. (HorseID + 7)] = "Trở thành viên thuốc Tăng máu khi còn 0 hoặc 1 ô chứa trái tim", -- Health Down
	-- Full old Desc: "↓ {{EmptyHeart}} -2 Máu#Trở thành viên thuốc Tăng máu khi còn 0 hoặc 1 ô chứa trái tim"
	-- English: "Becomes a Health Up horse pill at 0 or 1 heart containers"

	[Pill_ID .. (HorseID + 11)] = "{{Collectible279}} Tặng một vệ tinh Big Fan#Không giới hạn số lượng Big Fan mà Isaac có thể có", -- Pretty Fly
	-- English: "{{Collectible279}} Grants a Big Fan orbital#There is no limit on the number of Big Fans Isaac can have"

	[Pill_ID .. (HorseID + 21)] = "{{Battery}} Nạp đầy vật phẩm hoạt động", -- 48 Hour Energy!
	-- Full old Desc: "{{Battery}} Nạp đầy vật phẩm hoạt động#{{Battery}} Làm rơi 3-4 pin"
	-- English: "{{Battery}} Fully recharges active items"

	[Pill_ID .. (HorseID + 22)] = "{{EmptyHeart}} Rút hết ô chứa trái tim trừ một", -- Hematemesis
	-- Full old Desc: "{{EmptyHeart}} Rút hết ô chứa trái tim trừ một#{{Heart}} Tạo 1-4 Trái tim đỏ"
	-- English: "{{EmptyHeart}} Drains all but one heart container"

	[Pill_ID .. (HorseID + 23)] = "Ngăn Isaac di chuyển và bắn trong 4 giây", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 4 seconds"

	[Pill_ID .. (HorseID + 25)] = "{{Charm}} Biến mọi kẻ thù trong phòng thành thân thiện vĩnh viễn", -- Pheromones
	-- English: "{{Charm}} Turns every enemy in the room permanently friendly"

	[Pill_ID .. (HorseID + 27)] = "Tạo một vũng chất lỏng kích thước bằng phòng gây sát thương cho kẻ thù", -- Lemon Party
	-- English: "Spawns a puddle of creep the size of a room which damages enemies"

	[Pill_ID .. (HorseID + 28)] = "{{Timer}} Isaac bắn chéo trong 60 giây", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 60 seconds"

	[Pill_ID .. (HorseID + 31)] = "Isaac tạo phân phía sau trong 10 giây", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 10 seconds"

	[Pill_ID .. (HorseID + 32)] = "{{CurseMaze}} Hiệu ứng Lời nguyền Mê cung cho tầng", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. (HorseID + 33)] = "Tăng kích thước của Isaac rất nhiều#Không ảnh hưởng đến hộp va chạm của anh ta", -- One makes you larger
	-- English: "Greatly increases Isaac's size#Doesn't affect his hitbox"

	[Pill_ID .. (HorseID + 34)] = "Giảm kích thước của Isaac rất nhiều#Cũng giảm kích thước hộp va chạm của anh ta", -- One makes you small
	-- English: "Greatly decreases Isaac's size#Also decreases his hitbox's size"

	[Pill_ID .. (HorseID + 35)] = "Tạo 2 nhện xanh cho mỗi đống phân trong phòng", -- Infested!
	-- English: "Spawns 2 blue spiders for each poop in the room"

	[Pill_ID .. (HorseID + 36)] = "Tạo 2 nhện xanh cho mỗi kẻ thù trong phòng#Tạo 2-6 nhện xanh nếu không có kẻ thù trong phòng", -- Infested?
	-- English: "Spawn 2 blue spiders for each enemy in the room#Spawns 2-6 blue spiders if there are no enemies in the room"

	[Pill_ID .. (HorseID + 38)] = "Làm mờ pixel màn hình trong 90 giây", -- Retro Vision
	-- English: "Pixelates the screen for 90 seconds"

	[Pill_ID .. (HorseID + 40)] = "Tạo một vũng chất lỏng trơn trượt lâu dài", -- X-Lax
	-- English: "Spawns a pool of long lasting slippery creep"

	[Pill_ID .. (HorseID + 41)] = "{{Slow}} Tạo một vũng chất lỏng làm chậm lâu dài", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of long lasting slowing creep"

	[Pill_ID .. (HorseID + 42)] = "{{Slow}} Làm chậm Isaac và tất cả kẻ thù trong phòng", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. (HorseID + 43)] = "Tăng tốc Isaac và tất cả kẻ thù trong phòng#Kích hoạt lại sau 30 và 60 giây", -- I'm Excited!!
	-- English: "Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. (HorseID + 44)] = "Tiêu thụ bùa của Isaac và tặng hiệu ứng của nó vĩnh viễn", -- Gulp!
	-- English: "Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. (HorseID + 45)] = "{{Collectible149}} Bắn một cụm nước mắt Ipecac", -- Horf!
	-- English: "{{Collectible149}} Shoots a cluster of Ipecac tears"

	[Pill_ID .. (HorseID + 47)] = "Tạo viên thuốc cuối cùng Isaac dùng dưới dạng viên ngựa", -- Vurp!
	-- English: "Spawns the last pill Isaac used as a horse pill"

	[Pill_ID .. (HorseID + 50)] = "↑ Tăng 1 chỉ số ngẫu nhiên hai lần#↓ Giảm 1 chỉ số ngẫu nhiên hai lần", -- Experimental Pill
	-- English: "↑ Increases 1 random stat twice#↓ Decreases 1 random stat twice"

	[Pill_ID .. (HorseID + 9999)] = "Hiệu ứng viên ngựa ngẫu nhiên#Có cơ hội tự phá hủy sau mỗi lần dùng", -- Golden Pill
	-- English: "Random horse pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalHorsePillInformations, EID.descriptions[languageCode].AdditionalInformations)
