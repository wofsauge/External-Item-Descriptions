-- Specific strings that will be replaced with something else. This is used to convert Shortcuts into internal markup.
EID.TextReplacementPairs = {
	{"!!!", "{{Warning}}"}, -- Turn 3 Exclamations into Warning
	{"↑", "{{ArrowUp}}"}, -- Up Arrow
	{"↓", "{{ArrowDown}}"}, -- Down Arrow
	{"\1", "{{ArrowUp}}"}, -- Legacy Up Arrow
	{"\2", "{{ArrowDown}}"}, -- Legacy Down Arrow
	{"\3", "{{Warning}}"}, -- Legacy Warning
	{"\6", "{{Heart}}"}, -- Legacy Heart
	{"\5", "{{Key}}"}, -- Legacy Key
	{"\015", "{{Coin}}"}, -- Legacy Coin
	{"\8\189", "{{Bomb}}"}, -- Legacy BOMB
	{"{{Hashtag}}", "ǂ"}, -- Hashtag
}

--Format: [SHORTCUT]= {Animationname, Frame, Width, Height, LeftOffset [Default: -1], TopOffset [Default: 0], SpriteObject [Default: EID.InlineIconSprite]}
EID.InlineIcons = {
    ["ERROR"] = {"ERROR", 0, 10, 10},
    ["ArrowUp"] = {"ArrowUp", 0, 8, 9},
    ["ArrowDown"] = {"ArrowDown", 0, 8, 9},
    ["Warning"] = {"Warning", 0, 4, 9},
    -- Numbers
    ["0"] = {"numbers", 0, 5, 7},
    ["1"] = {"numbers", 1, 4, 7},
    ["2"] = {"numbers", 2, 5, 7},
    ["3"] = {"numbers", 3, 5, 7},
    ["4"] = {"numbers", 4, 5, 7},
    ["5"] = {"numbers", 5, 5, 7},
    ["6"] = {"numbers", 6, 5, 7},
    ["7"] = {"numbers", 7, 5, 7},
    ["8"] = {"numbers", 8, 5, 7},
    ["9"] = {"numbers", 9, 5, 7},
    ["10"] = {"numbers", 10, 7, 7},
    ["11"] = {"numbers", 11, 7, 7},
    ["12"] = {"numbers", 12, 7, 7},
    -- Hearts
    ["Heart"] = {"hearts", 0, 9, 9},
    ["HalfHeart"] = {"hearts", 1, 9, 9},
    ["EthernalHeart"] = {"hearts", 2, 9, 9},
    ["EmptyHeart"] = {"hearts", 3, 9, 9},
    ["BlendedHeart"] = {"hearts", 4, 9, 9},
    ["BoneHeart"] = {"hearts", 5, 9, 9},
    ["HalfBoneHeart"] = {"hearts", 6, 9, 9},
    ["EmptyBoneHeart"] = {"hearts", 7, 9, 9},
    ["SoulHeart"] = {"hearts", 8, 9, 9},
    ["HalfSoulHeart"] = {"hearts", 9, 9, 9},
    ["BlackHeart"] = {"hearts", 10, 9, 9},
    ["HalfBlackHeart"] = {"hearts", 11, 9, 9},
    ["GoldenHeart"] = {"hearts", 12, 9, 9},
    ["CoinHeart"] = {"hearts", 13, 9, 9},
    ["HalfCoinHeart"] = {"hearts", 14, 9, 9},
    ["EmptyCoinHeart"] = {"hearts", 15, 9, 9},
    -- Pickups
    ["Key"] = {"pickups", 0, 7, 9},
    ["GoldenKey"] = {"pickups", 1, 7, 9},
    ["Bomb"] = {"pickups", 2, 10, 9},
    ["GoldenBomb"] = {"pickups", 3, 10, 9},
    ["Coin"] = {"pickups", 4, 7, 9},
    ["Rune"] = {"pickups", 5, 8, 9},
    ["Card"] = {"pickups", 6, 11, 11},
    ["RedCard"] = {"pickups", 7, 11, 11},
    ["Pill"] = {"pickups", 8, 9, 9},
    ["Battery"] = {"pickups", 9, 8, 9},
    ["Collectible"] = {"Collectible", 0, 7, 7},
    ["Trinket"] = {"Trinket", 0, 7, 7},
    ["Slotmachine"] = {"Slotmachine", 0, 7, 7},
    -- Room Icons
    ["Shop"] = {"roomicons", 0, 7, 9},
    ["SecretRoom"] = {"roomicons", 1, 7, 9},
    ["SuperSecretRoom"] = {"roomicons", 2, 7, 9},
    ["Library"] = {"roomicons", 3, 8, 9},
    ["TreasureRoom"] = {"roomicons", 4, 7, 9},
    ["AngelRoom"] = {"roomicons", 5, 7, 9},
    ["DevilRoom"] = {"roomicons", 6, 7, 9},
    ["MiniBoss"] = {"roomicons", 7, 7, 9},
    ["BossRoom"] = {"roomicons", 8, 9, 9},
    ["ChallengeRoom"] = {"roomicons", 9, 7, 9},
    ["BossRushRoom"] = {"roomicons", 10, 7, 9},
    ["CursedRoom"] = {"roomicons", 11, 7, 9},
    ["SacrificeRoom"] = {"roomicons", 12, 7, 9},
    ["ArcadeRoom"] = {"roomicons", 13, 7, 9},
    ["GreedTreasureRoom"] = {"roomicons", 14, 7, 9},
    ["DiceRoom"] = {"roomicons", 15, 8, 9},
    ["ChestRoom"] = {"roomicons", 16, 8, 9},
    ["IsaacsRoom"] = {"roomicons", 17, 8, 9},
    ["BarrenRoom"] = {"roomicons", 18, 8, 9},
    -- Roomshape Icons
    ["Room"] = {"roomshape", 0, 9, 9},
    ["RoomSmallHorizontal"] = {"roomshape", 1, 9, 9},
    ["RoomSmallVertical"] = {"roomshape", 2, 7, 6},
    ["RoomLongVertical"] = {"roomshape", 3, 7, 9},
    ["RoomLongHorizontal"] = {"roomshape", 4, 11, 9},
    ["RoomLongThinVertical"] = {"roomshape", 5, 5, 9},
    ["RoomLongThinHorizontal"] = {"roomshape", 6, 11, 9},
    ["RoomXL"] = {"roomshape", 7, 11, 11},
    ["RoomL"] = {"roomshape", 8, 10, 10},
    ["RoomLTopLeft"] = {"roomshape", 9, 10, 10},
    ["RoomLBottomLeft"] = {"roomshape", 10, 10, 10},
    ["RoomLBottomRight"] = {"roomshape", 11, 10, 10},
	-- Transformation Icons
	["CustomTransformation"] = {"TransformationCustom",0,11,14, 1, -1, EID.IconSprite},
	["Guppy"] = {"Transformation1",0,10,13, 1, -1, EID.IconSprite},
	["FunGuy"] = {"Transformation2",0,12,13, 0, -1, EID.IconSprite},
	["LordoftheFlies"] = {"Transformation3",0,12,14, 0, -1, EID.IconSprite},
	["Conjoined"] = {"Transformation4",0,16,15, -2, -1, EID.IconSprite},
	["Spun"] = {"Transformation5",0,6,15, 4, -1, EID.IconSprite},
	["Mom"] = {"Transformation6",0,6,16, 5, -1, EID.IconSprite},
	["OhCrap"] = {"Transformation7",0,13,14, -1, -1, EID.IconSprite},
	["Bob"] ={"Transformation8",0,12,13, 0, -1, EID.IconSprite},
	["Leviathan"] = {"Transformation9",0,12,15, 0, -1, EID.IconSprite},
	["Seraphim"] = {"Transformation10",0,19,14, -6, -1, EID.IconSprite},
	["SuperBum"] = {"Transformation11",0,14,15, -1, -1, EID.IconSprite},
	["Bookworm"] = {"Transformation12",0,10,14, 2, -1, EID.IconSprite},
	["SpiderBaby"] = {"Transformation13",0,12,16, 1, -1, EID.IconSprite},
	--["Adult"] = {"Transformation14",0,0,13, -1, -1, EID.IconSprite},
	--["Stompy"] = {"Transformation15",0,0,13, -1, -1, EID.IconSprite},
}