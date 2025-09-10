--[[
"Guppy",				-- 1
"Fun Guy",				-- 2
"Lord of the Flies",	-- 3
"Conjoined",			-- 4
"Spun",					-- 5
"Mom",					-- 6
"Oh Crap",				-- 7
"Bob",					-- 8
"Leviathan",			-- 9
"Seraphim",				-- 10
"Super Bum",			-- 11
"Bookworm",				-- 12
"Spider Baby",			-- 13
"Adult",				-- 14
"Stompy",				-- 15
"Necromancer",				-- 16
]]--

-- Repentance transformations
-- Format: [ID.VARIANT.SUBTYPE] = "Transformation string"
local transformations = {
	-- Collectibles
	["5.100.519"] =  "4",	-- Lil Delirium: Conjoined
	["5.100.35"] =  "12,16",	-- The Necronomicon: Necromancer
	["5.100.262"] =  "16",	-- Missing Page 2: Necromancer
	["5.350.48"] =  "16",	-- A Missing Page: Necromancer
}
EID:updateDescriptionsViaTable(transformations, EID.EntityTransformations)
