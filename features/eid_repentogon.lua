if not REPENTOGON then
	return
end
---@diagnostic disable: duplicate-set-field
local game = Game()
local maxVanillaItemID = CollectibleType.NUM_COLLECTIBLES -- sanity backup

-- REPENTOGON: Use PersistentGameData to determine item collection status
-- Returns true if an item needs to be collected for the collection page
function EID:requiredForCollectionPage(itemID)
	if itemID >= maxVanillaItemID or game:GetVictoryLap() > 0 or game:GetSeeds():IsCustomRun() then return false end
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
	oldPosInitFunc(_, entity)
	-- custom description position when describing collectionpage entries
	if not Isaac.IsInGame() and MenuManager:GetActiveMenu() == MainMenuType.COLLECTION then
		EID.CurrentScaleType = "MainMenu"
		EID.UsedPosition = Vector(10, 10)
	end
end

local skipItemIDs = {}
function EID:OnMenuRender()
	if EID.Config["RGON_ShowOnCollectionPage"] and MenuManager:GetActiveMenu() == MainMenuType.COLLECTION then
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
			if id <= CollectibleId then
				CollectibleId = CollectibleId + 1
			end
		end
		local demoDescObj = EID:getDescriptionObj(5, 100, CollectibleId, nil, false)
		if CollectibleId < maxVanillaItemID and not Isaac.GetPersistentGameData():IsItemInCollection(CollectibleId) then
			EID:printDescription({Icon = EID.InlineIcons["QuestionMark"], Description = description or "", Entity = entity}, nil)
			return
		end

		EID:printDescription(demoDescObj, nil)
	end
end

EID:AddCallback(ModCallbacks.MC_MAIN_MENU_RENDER, EID.OnMenuRender)

--------------------------Gulped items-----------------------------------

-- REPENTOGON: Gulped trinkets can be read directly from the game
function EID:ItemReminderHeldPlusGulped(player)
	local newTable = {}
	for i=0, 1 do
		local trinket = player:GetTrinket(i)
		if trinket > 0 then table.insert(newTable, trinket) end
	end

	-- Use GetSmeltedTrinkets() to aquire player smelted trinkets infos, instead of keeping a separate table
	for id, dataTable in pairs(player:GetSmeltedTrinkets()) do
		if dataTable then
			local sumTrinket = dataTable.trinketAmount + dataTable.goldenTrinketAmount
			if sumTrinket > 0 then
				table.insert(newTable, id)
			end
		end
	end
	return newTable
end

-- Remove callback, since we dont need to track smelter usage in Repentogon
EID:RemoveCallback(ModCallbacks.MC_PRE_USE_ITEM, EID.OnUseSmelter)

-- remove function. No longer needed
function EID:UpdateAllPlayerTrinkets() end

---------------------------BAG OF CRAFTING-------------------------------
-- Directly read bag of crafting content
function EID:BoCCheckForPickups()
	EID.BoC.BagItems = {}
	for key, value in pairs(EID.bagPlayer:GetBagOfCraftingContent()) do
		if value <= 0 then return end -- no more items in the bag
		EID.BoC.BagItems[key] = value
	end
end

-- Deactivate manual tracking code
function EID:BoCTrackBagHolding() end

function EID:BoCDetectBagContentShift() end

-- read room items directly from room data when changing rooms, to ensure floor item counter doesnt desync
function EID:BoCOnNewRoom_Repentogon(_)
	EID.BoCOnNewRoom(_)
	local lastRoomDesc = game:GetLevel():GetLastRoomDesc()
	local lastRoomEntities = lastRoomDesc:GetEntitiesSaveState()

	local roomItems = {}
	for id = 0, #lastRoomEntities - 1 do
		local entitySaveState = lastRoomEntities:Get(id)
		if entitySaveState:GetType() == 5 and entitySaveState:GetI3() == 0 then -- is pickup and not shop item
			local craftingIDs = EID:getBagOfCraftingID(entitySaveState:GetVariant(), entitySaveState:GetSubType())
			if craftingIDs ~= nil then
				for _,v in ipairs(craftingIDs) do
					table.insert(roomItems, v)
				end
			end
		end
	end
	EID.BoC.RoomQueries[lastRoomDesc.ListIndex .. ""] = { roomItems, lastRoomDesc.Data.Variant }
end
EID:RemoveCallback(ModCallbacks.MC_POST_NEW_ROOM, EID.BoCOnNewRoom)
EID:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, EID.BoCOnNewRoom_Repentogon)

-----------------------Descriptions & Modifiers --------------------------
local oldHasDescription = EID.hasDescription
function EID:hasDescription(entity)
	local oldReturnVal = oldHasDescription(_,entity)
	-- repentogon related checks

	-- check if donation machines should have a description
	if entity.Type == 6 and (entity.Variant == 8 or entity.Variant == 11) and entity.SubType == 0 then
		local isGreed = entity.Variant == 11
		local eventCounter = isGreed and EventCounter.GREED_DONATION_MACHINE_COUNTER or
			EventCounter.DONATION_MACHINE_COUNTER
		local maxDonations = isGreed and 1000 or 999
		local totalDonations = Isaac.GetPersistentGameData():GetEventCounter(eventCounter)

		return EID.Config["RGON_DonationMachineDescriptions"] and totalDonations < maxDonations
	end
	return oldReturnVal
end


local requirementsDonationMachine = {
	{ 10,  Achievement.BLUE_MAP },
	{ 20,  Achievement.STORE_UPGRADE_LV1 },
	{ 50,  Achievement.THERES_OPTIONS },
	{ 100, Achievement.STORE_UPGRADE_LV2 },
	{ 150, Achievement.BLACK_CANDLE },
	{ 200, Achievement.STORE_UPGRADE_LV3 },
	{ 400, Achievement.RED_CANDLE },
	{ 600, Achievement.STORE_UPGRADE_LV4 },
	{ 900, Achievement.BLUE_CANDLE },
	{ 999, Achievement.STOP_WATCH }
}

local requirementsGreedDonationMachine = {
	{ 2,    Achievement.LUCKY_PENNIES },
	{ 14,   Achievement.SPECIAL_HANGING_SHOPKEEPERS },
	{ 33,   Achievement.WOODEN_NICKEL },
	{ 68,   Achievement.CAIN_HOLDS_PAPERCLIP },
	{ 111,  Achievement.EVERYTHING_IS_TERRIBLE_2 },
	{ 234,  Achievement.SPECIAL_SHOPKEEPERS },
	{ 439,  Achievement.EVE_HOLDS_RAZOR_BLADE },
	{ 500,  Achievement.GREEDIER },
	{ 666,  Achievement.STORE_KEY },
	{ 879,  Achievement.LOST_HOLDS_HOLY_MANTLE },
	{ 999,  Achievement.GENEROSITY },
	{ 1000, Achievement.KEEPER }
}

local function DonationMachineCallback(descObj)
	local isGreed = descObj.ObjVariant == 11
	local eventCounter = isGreed and EventCounter.GREED_DONATION_MACHINE_COUNTER or
		EventCounter.DONATION_MACHINE_COUNTER
	local rewardsTable = isGreed and requirementsGreedDonationMachine or requirementsDonationMachine
	local totalDonations = Isaac.GetPersistentGameData():GetEventCounter(eventCounter)

	local coinsNeeded = 0
	for _, value in ipairs(rewardsTable) do
		if totalDonations < value[1] and not Isaac.GetPersistentGameData():Unlocked(value[2]) then
			coinsNeeded = value[1]
			break
		end
	end
	
	descObj.Description = EID:ReplaceVariableStr(descObj.Description, 1, coinsNeeded)
	descObj.Description = EID:ReplaceVariableStr(descObj.Description, 2, coinsNeeded - totalDonations)
	descObj.Icon = EID.InlineIcons["DonationMachine"]
	return descObj
end

local function RepentogonModifierConditions(descObj)
	-- Donation machine and Greed donation machine description
	if descObj.ObjType == 6 and (descObj.ObjVariant == 8 or descObj.ObjVariant == 11) then
		return { DonationMachineCallback }
	end

	return false
end
EID:addDescriptionModifier("EID Repentogon", RepentogonModifierConditions, nil)
