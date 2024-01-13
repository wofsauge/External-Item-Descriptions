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
		if CollectibleId < CollectibleType.NUM_COLLECTIBLES and not Isaac.GetPersistentGameData():IsItemInCollection(CollectibleId) then
			EID:renderQuestionMark(nil)
			return
		end

		EID:printDescription(demoDescObj, nil)
	end
end

EID:AddCallback(ModCallbacks.MC_MAIN_MENU_RENDER, EID.OnMenuRender)


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
		local totalDonations = Isaac.GetPersistentGameData():GetEventCounter(eventCounter)

		return EID.Config["RGON_DonationMachineDescriptions"] and totalDonations < 1000
	end
	return oldReturnVal
end


local requirementsDonationMachine = { 10, 20, 50, 100, 150, 200, 400, 600, 900, 999 }
local requirementsGreedDonationMachine = { 2, 14, 33, 68, 111, 234, 439, 500, 666, 879, 999, 1000 }
local function DonationMachineCallback(descObj)
	local isGreed = descObj.ObjVariant == 11
	local eventCounter = isGreed and EventCounter.GREED_DONATION_MACHINE_COUNTER or
		EventCounter.DONATION_MACHINE_COUNTER
	local rewardsTable = isGreed and requirementsGreedDonationMachine or requirementsDonationMachine
	local totalDonations = Isaac.GetPersistentGameData():GetEventCounter(eventCounter)

	local coinsNeeded = 0
	for _, value in ipairs(rewardsTable) do
		if totalDonations < value then
			coinsNeeded = value
			break
		end
	end
	descObj.Description = string.gsub(descObj.Description, "{1}", coinsNeeded)
	descObj.Description = string.gsub(descObj.Description, "{2}", coinsNeeded - totalDonations)
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
