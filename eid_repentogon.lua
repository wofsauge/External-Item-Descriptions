if not REPENTOGON then
    return
end
---@diagnostic disable: duplicate-set-field
local game = Game()

-- R+: Use PersistentGameData to determine item collection status
-- Returns true if an item needs to be collected for the collection page
function EID:requiredForCollectionPage(itemID)
	if itemID >= CollectibleType.NUM_COLLECTIBLES or game:GetVictoryLap() > 0 or game:GetSeeds():IsCustomRun() then return false end
	return not Isaac.GetPersistentGameData():IsItemInCollection(itemID)
end

-- R+: Function is no longer used since we can directly read the collection state from the game
function EID:checkPlayersForMissingItems() end

-- R+: Function is no longer used since repentogon always has progress enabled
function EID:AreAchievementsAllowed() return true end

-- R+: Entity names can now be directly read from XML
-- returns the name of the given entity
function EID:GetEntityXMLName(Type, Variant, SubType)
    local xmlEntry = XMLData.GetEntityByTypeVarSub(Type, Variant, SubType)
	return xmlEntry and xmlEntry.name or EID.XMLEntityNames[Type.."."..Variant] or EID.XMLEntityNames[Type.."."..Variant.."."..SubType]
end