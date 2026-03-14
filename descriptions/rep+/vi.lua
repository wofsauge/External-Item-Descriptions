---------------------------------------
-----  Basic Vietnamese descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "vi"

---------- Collectibles ----------

local collectibles = {
	-- Change: added "Creep persists until you exit the room"
	[56] = {"56", "Lemon Mishap", "Làm tràn một vũng chất nhầy#Vũng chất nhầy gây 24 sát thương mỗi giây#Chất nhầy tồn tại cho đến khi bạn rời phòng"}, -- Lemon Mishap
	-- Change: added "Persists between rooms if player is at 1/2 hearts"
	[117] = {"117", "Dead Bird", "TNhận sát thương sinh ra một con chim tấn công kẻ thù#Con chim gây 4.3 sát thương tiếp xúc mỗi giây#Tồn tại giữa các phòng nếu người chơi còn 1/2 trái tim"}, -- Dead Bird
	-- Change: Complete rewrite
	[351] = {"351", "Mega Bean", "Gây 100 sát thương và làm hóa đá tất cả kẻ thù trong phòng#{{Poison}} Gây 5 sát thương và đầu độc kẻ thù gần đó#Có thể mở phòng bí mật và phá đá"}, -- Mega Bean
	-- Change: Complete rewrite
	[436] = {"436", "Milk!", "Chặn đạn của kẻ thù#{{Tears}} Sau 10 lần trúng, nó vỡ và tăng Tears cho đến hết tầng"}, -- Milk!
	-- Change: Complete rewrite
	[447] = {"447", "Linger Bean", "Bắn liên tục trong 4 giây tạo ra một đám mây phân#Đám mây tăng kích thước trong 10 giây#Đám mây gây ít sát thương hơn khi lớn hơn#Có thể di chuyển nó bằng cách bắn vào"}, -- Linger Bean
	-- Change: added " and fires radial bursts of tears"
	[470] = {"470", "Hushy", "Nảy quanh phòng#Gây 30 sát thương tiếp xúc mỗi giây#Dừng di chuyển khi Isaac bắn#Chặn đạn khi dừng lại và bắn loạt nước mắt tỏa tròn"}, -- Hushy
	-- Change: added "Turns item pedestals into glitched items"
	[481] = {"481", "Dataminer", "↑ Tăng ngẫu nhiên một chỉ số#↓ Giảm ngẫu nhiên một chỉ số#{{Timer}} Hiệu ứng nước mắt ngẫu nhiên trong phòng#Biến bệ vật phẩm thành vật phẩm lỗi#{{Blank}} Làm hỏng tất cả hình ảnh và âm nhạc trong phòng"}, -- Dataminer
	-- Change: Complete rewrite
	[510] = {"510", "Delirious", "Tạo ra một phiên bản delirium thân thiện của một trùm#Tồn tại giữa các phòng#{{Warning}} Chỉ một trùm có thể hoạt động cùng lúc#Thanh nạp vật phẩm dựa trên chất lượng của trùm trước đó"}, -- Delirious
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = {"560", "It Hurts", "{{Timer}} Khi nhận sát thương, nhận được trong phòng:#↑ {{Tears}} +1.2 Tốc độ bắn ở lần trúng đầu tiên#↑ {{Tears}} +0.4 Tốc độ bắn cho mỗi lần trúng thêm#Thả một vòng 10 nước mắt quanh Isaac#Nước mắt để lại vũng chất nhầy khi chạm đất"}, -- It Hurts
	-- Change: Heals 2 hearts instead of 1/2
	[594] = {"594", "Jupiter", "↑ {{EmptyHeart}} +2 Hộp tim rỗng#↓ {{Speed}} -0.3 Tốc độ#{{HealingRed}} Hồi 2 tim#{{Speed}} Tốc độ tăng lên +0.5 khi đứng yên#{{Poison}} Di chuyển thả ra đám mây độc#{{Poison}} Miễn nhiễm độc"}, -- Jupiter
	-- Change: Complete rewrite
	[632] = {"632", "Evil Charm", "↑ {{Luck}} +2 May mắn#Miễn nhiễm với sát thương {{Burning}} lửa, {{Confusion}} gây rối, {{Fear}} sợ hãi, {{Slow}} mạng nhện và hiệu ứng {{Poison}} độc#Cấp 1 giây miễn nhiễm với chất nhầy"}, -- Evil Charm
	-- Change: Added Shop as a new destination
	[660] = {"660", "Card Reading", "STạo hai cổng trong phòng đầu tiên của mỗi tầng#Rời phòng làm cổng biến mất#{{Blank}} {{ColorRed}}Đỏ: {{CR}}{{BossRoom}} Phòng Trùm#{{Blank}} {{ColorYellow}}Vàng: {{CR}}{{TreasureRoom}} Phòng Vật phẩm#{{Blank}} {{ColorBlue}}Xanh dương: {{CR}}{{SecretRoom}} Phòng Bí mật#{{Blank}} {{ColorGreen}}Xanh lá: {{CR}}{{Shop}} Cửa hàng"}, -- Card Reading
	-- Change: Complete rewrite
	[681] = {"681", "Lil Portal", "Nhấn đúp nút bắn phóng cổng#Gây sát thương tiếp xúc khi phóng#Tiêu thụ các vật nhặt trên đường đi#Mỗi vật nhặt tiêu thụ tăng kích thước, sát thương và tạo một ruồi xanh#Tiêu thụ 2-3 vật nhặt tạo cổng đến phòng đặc biệt và vật quen thuộc biến mất đến hết tầng#Nội dung phòng tồn tại đến hết lượt chơi"}, -- Lil Portal
	-- Change: Added info about the damage based on item quality
	[706] = {"706", "Abyss", "Tiêu thụ tất cả bệ vật phẩm trong phòng và tạo một đồng hành châu chấu cho mỗi bệ#Một số vật phẩm tạo châu chấu đặc biệt khi bị tiêu thụ#{{Damage}} Châu chấu gây sát thương của Isaac nhân với chất lượng vật phẩm tiêu thụ:#{{Quality0}} - 0.5x#{{Quality1}} - 0.75x#{{Quality2}} - 1.0x#{{Quality3}} - 1.5x#{{Quality4}} - 2.0x"}, -- Abyss
}
EID:updateDescriptionsViaTable(collectibles, EID.descriptions[languageCode].collectibles)

---------- Trinkets ----------

local trinkets = {
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = {"53", "Tick", "{{HealingRed}} Hồi 1 tim khi vào {{BossRoom}} Phòng Trùm#-15% máu trùm#{{Warning}} Một khi nhặt lên, không thể bỏ#Chỉ có thể bỏ bằng {{Trinket41}} Match Stick, {{Trinket135}} A Lighter, hoặc nuốt"}, -- Tick
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = {"97", "Tonsil", "Nhận sát thương 6-12 lần tạo ra một đồng hành chặn đạn#Giới hạn tối đa 2 đồng hành"}, -- Tonsil
	-- Change: added "Bombs deal 15% more damage"
	[133] = {"133", "Short Fuse", "Bom của Isaac nổ nhanh hơn#Bom gây thêm 15% sát thương"}, -- Short Fuse
	-- Change: "2%" to "5%"
	[104] = {"104", "Wish Bone", "5% cơ hội bị phá hủy và tạo một bệ vật phẩm khi trúng đòn"}, -- Wish Bone
	-- Change: "2%" to "5%"
	[105] = {"105", "Bag Lunch", "{{Collectible22}} 5% cơ hội bị phá hủy và tạo Lunch khi trúng đòn"}, -- Bag Lunch
}
EID:updateDescriptionsViaTable(trinkets, EID.descriptions[languageCode].trinkets)

---------- Cards ----------

local cards = {
	-- Change: Complete rewrite
	[38] = {"38", "Berkano", "{{Collectible706}} Triệu hồi 3 châu chấu Abyss cho phòng"}, -- Berkano
}
EID:updateDescriptionsViaTable(cards, EID.descriptions[languageCode].cards)


---------- Conditions ----------
EID.descriptions[languageCode].ConditionalDescs["5.100.566"] = nil -- Dream Catcher (Greed) - In Rep+, the dream preview works in greed mode as well, so no changes needed

-- Special Locust effects when Item was eaten by Abyss. Entries here will override the auto-generated descriptions
local abyssSynergies = {
	[706] = "Tạo 16 châu chấu với màu sắc và hiệu ứng khác nhau", -- Abyss
}

-- Remove all entries from Repentance file, and only add special descriptions relevant to Repentance+
EID.descriptions[languageCode].abyssSynergies = {}
EID:updateDescriptionsViaTable(abyssSynergies, EID.descriptions[languageCode].abyssSynergies)


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
