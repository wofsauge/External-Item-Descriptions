
-- Repentance transformations
-- Format: [ID.VARIANT.SUBTYPE] = "Transformation string"
local repTransformations = {
    -- Collectibles
    ["5.100.95"] = "4",
    ["5.100.163"] = "4",
    ["5.100.174"] = "4",
    ["5.100.275"] = "4",
    ["5.100.360"] = "4",
    ["5.100.439"] = "6",
    ["5.100.492"] = "3",
    ["5.100.576"] = "7",
    ["5.100.581"] = "3",
    ["5.100.584"] = "12",
    ["5.100.604"] = "6",
    ["5.100.608"] = "4",
    ["5.100.629"] = "3",
    ["5.100.652"] = "4",
    ["5.100.665"] = "1",
    ["5.100.680"] = "7",
    ["5.100.693"] = "3",
    -- Trinkets
    ["5.350.169"] = "1",
}
EID:updateDescriptionsViaTable(repTransformations, EID.EntityTransformations, true)
