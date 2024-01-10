if not REPENTOGON then
	return
end
---@diagnostic disable: duplicate-set-field
local game = Game()

-- REPENTOGON: Use PersistentGameData to determine item collection status
-- Returns true if an item needs to be collected for the collection page
function EID:requiredForCollectionPage(itemID)
	if itemID >= CollectibleType.NUM_COLLECTIBLES or game:GetVictoryLap() > 0 or game:GetSeeds():IsCustomRun() then return false end
	return not Isaac.GetPersistentGameData():IsItemInCollection(itemID)
end

-- REPENTOGON: Function is no longer used since we can directly read the collection state from the game
function EID:checkPlayersForMissingItems() end

-- REPENTOGON: Function is no longer used since repentogon always has progress enabled.
function EID:AreAchievementsAllowed() return true end

-- REPENTOGON: Entity names can now be directly read from XML
-- returns the name of the given entity
function EID:GetEntityXMLName(Type, Variant, SubType)
	local xmlEntry = XMLData.GetEntityByTypeVarSub(Type, Variant, SubType)
	return xmlEntry and xmlEntry.name or EID.XMLEntityNames[Type .. "." .. Variant] or
		EID.XMLEntityNames[Type .. "." .. Variant .. "." .. SubType]
end

-- takes a string like "5.100.69"
function EID:GetEntityXMLNameByString(str)
	local sep = {}
	for i in string.gmatch(str, "([^.]+)") do
		table.insert(sep, i)
	end
	return EID:GetEntityXMLName(sep[1], sep[2], sep[3])
end

-- Render EID above hud, if REPENTOGON is installed
EID:RemoveCallback(ModCallbacks.MC_POST_RENDER, EID.OnRender)
EID:AddCallback(ModCallbacks.MC_HUD_RENDER, EID.OnRender)


-- render descriptions for items on the collection page

local oldPosInitFunc = EID.PositionLocalMode
function EID:PositionLocalMode(entity)
	oldPosInitFunc(entity)
	-- custom description position when describing collectionpage entries
	if not Isaac.IsInGame() and MenuManager:GetActiveMenu() == MainMenuType.COLLECTION then
		EID.CurrentScaleType = "MainMenu"
		EID.UsedPosition = Vector(10, 10)
	end
end

local skipItemIDs = {}
function EID:OnMenuRender()
	if MenuManager:GetActiveMenu() == MainMenuType.COLLECTION then
		if #skipItemIDs == 0 then -- build list of items not listed in the collectionpage
			local itemConfig = Isaac.GetItemConfig()
			for i = 1, EID:GetMaxCollectibleID(), 1 do
				if itemConfig:GetCollectible(i) == nil or itemConfig:GetCollectible(i).Hidden then
					table.insert(skipItemIDs, i)
				end
			end
		end

		local selectedPage = CollectionMenu.GetSelectedPage()
		local CollectibleId = selectedPage * (20 * 6) + CollectionMenu.GetSelectedElement() + 1
		for _, id in ipairs(skipItemIDs) do -- some items dont exist, so we need to "skip" those when counting
			if id < CollectibleId then
				CollectibleId = CollectibleId + 1
			end
		end
		local demoDescObj = EID:getDescriptionObj(5, 100, CollectibleId)
		if not Isaac.GetPersistentGameData():IsItemInCollection(CollectibleId) then
			EID:renderQuestionMark(nil)
			return
		end

		EID:printDescription(demoDescObj, nil)
	end
end

EID:AddCallback(ModCallbacks.MC_MAIN_MENU_RENDER, EID.OnMenuRender)
