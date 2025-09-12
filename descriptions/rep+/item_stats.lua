-- Repentance Modular Descriptions
-- Generates item descriptions based on stat changes defined in statValues
local C_ID = "5.100."

local repentancePlusItemStats = {
    [C_ID .. 141] = { Spawns = {RandomCoin = 7} }, -- Pageant Boy
}
EID:updateDescriptionsViaTable(repentancePlusItemStats, EID.ItemStats)