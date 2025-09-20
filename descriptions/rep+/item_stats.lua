-- Repentance Modular Descriptions
-- Generates item descriptions based on stat changes defined in statValues
local C_ID = "5.100."

local repentancePlusItemStats = {
    [C_ID .. 281] = { BlockProjectiles = true }, -- Punching Bag
    [C_ID .. 329] = { ShotSpeed = 0.2 }, -- The Ludovico Technique
    [C_ID .. 554] = { Tears = 0.5, ShotSpeed = 0.2 },  -- 2Spooky
}
EID:updateDescriptionsViaTable(repentancePlusItemStats, EID.ItemStats)