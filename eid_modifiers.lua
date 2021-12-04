if REPENTANCE then
local game = Game()

	-- Handle Birthright
	local function BirthrightCondition(descObj)
		return descObj.ObjType == 5 and descObj.ObjVariant == PickupVariant.PICKUP_COLLECTIBLE and descObj.ObjSubType == 619
	end
	
	local function BirthrightCallback(descObj)
		descObj.Description = ""
		local describedPlayerTypes = {}
		for i = 0,game:GetNumPlayers() - 1 do
			local player = Isaac.GetPlayer(i)
			local playerID = player:GetPlayerType()
			if not player:IsSubPlayer() and player:GetMainTwin( ):GetPlayerType() == playerID and not describedPlayerTypes[playerID] then
				describedPlayerTypes[playerID] = true
				local birthrightDesc = EID:getDescriptionEntry("birthright", playerID+1)
				if birthrightDesc ~=nil then
					local playerName = birthrightDesc[1] or player:GetName()
					EID:appendToDescription(descObj, "{{CustomTransformation}} {{ColorGray}}"..playerName.."{{CR}}#"..birthrightDesc[3].."#")
				end
			end
		end
		return descObj
	end
	EID:addDescriptionModifier("Birthright", BirthrightCondition, BirthrightCallback)
	
	
	
	-- Handle Bingeeater description addition
	local function BingeeaterCondition(descObj)
		if descObj.ObjType ~= 5 or descObj.ObjVariant ~= PickupVariant.PICKUP_COLLECTIBLE then
			return false
		end
		for i = 0,game:GetNumPlayers() - 1 do
			local player = Isaac.GetPlayer(i)
			if player:HasCollectible(CollectibleType.COLLECTIBLE_BINGE_EATER) then
				return true
			end
		end
		return false
	end
	
	local function BingeeaterCallback(descObj)
		local bingeBuff = EID:getDescriptionEntry("bingeEaterBuffs", descObj.ObjSubType)
		if bingeBuff ~= nil then
			local iconStr = "#{{Collectible664}} "
			EID:appendToDescription(descObj, iconStr..bingeBuff[3]:gsub("#",iconStr))
		end
		return descObj
	end
	EID:addDescriptionModifier("Bingeeater", BingeeaterCondition, BingeeaterCallback)



	-- Handle Book of Belial description for Judas' Birthright addition
	local function BookofBelialCondition(descObj)
		if descObj.ObjType ~= 5 or descObj.ObjVariant ~= PickupVariant.PICKUP_COLLECTIBLE then
			return false
		end
		for i = 0,game:GetNumPlayers() - 1 do
			local player = Isaac.GetPlayer(i)
			local playerType = player:GetPlayerType()

			if (playerType == PlayerType.PLAYER_JUDAS or playerType == PlayerType.PLAYER_BLACKJUDAS) and player:HasCollectible(CollectibleType.COLLECTIBLE_BIRTHRIGHT) then
				return true
			end
		end
		return false
	end
	
	local function BookofBelialCallback(descObj)
		local belialBuff = EID:getDescriptionEntry("bookOfBelialBuffs", descObj.ObjSubType)
		if belialBuff ~= nil then
			local iconStr = "#{{Collectible34}} "
			EID:appendToDescription(descObj, iconStr..belialBuff[3]:gsub("#",iconStr))
		end
		return descObj
	end
	EID:addDescriptionModifier("BookofBelial", BookofBelialCondition, BookofBelialCallback)
	
	
	
		-- Handle Book of Virtues description addition
	local function BookOfVirtuesCondition(descObj)
		if descObj.ObjType ~= 5 or descObj.ObjVariant ~= PickupVariant.PICKUP_COLLECTIBLE then
			return false
		end
		for i = 0,game:GetNumPlayers() - 1 do
			local player = Isaac.GetPlayer(i)
			if player:HasCollectible(CollectibleType.COLLECTIBLE_BOOK_OF_VIRTUES) then
				return true
			end
		end
		return false
	end
	
	local function BookOfVirtuesCallback(descObj)
		local wispType = EID:getDescriptionEntry("bookOfVirtuesWisps", descObj.ObjSubType)
		if wispType ~= nil then
			local iconStr = "#{{Collectible584}} "
			EID:appendToDescription(descObj, iconStr..wispType[1]:gsub("#",iconStr))
		end
		return descObj
	end
	EID:addDescriptionModifier("Book of Virtues", BookOfVirtuesCondition, BookOfVirtuesCallback)
	
	
	
	-- Handle Spindown Dice description addition
	local function SpindownDiceCondition(descObj)
		if descObj.ObjType ~= 5 or descObj.ObjVariant ~= PickupVariant.PICKUP_COLLECTIBLE then
			return false
		end
		for i = 0,game:GetNumPlayers() - 1 do
			local player = Isaac.GetPlayer(i)
			if player:HasCollectible(CollectibleType.COLLECTIBLE_SPINDOWN_DICE) then
				return true
			end
		end
		return false
	end
	
	local function SpindownDiceCallback(descObj)
		EID:appendToDescription(descObj, "#{{Collectible723}} :")
		local refID = descObj.ObjSubType
		local hasCarBattery = EID.player:HasCollectible(CollectibleType.COLLECTIBLE_CAR_BATTERY)
		for i = 1,EID.Config["SpindownDiceResults"] do
			local spinnedID = EID:getSpindownResult(refID)
			if hasCarBattery then
				refID = spinnedID
				spinnedID = EID:getSpindownResult(refID)
			end
			refID = spinnedID
			if refID > 0 and refID < 4294960000 then
				EID:appendToDescription(descObj, "{{Collectible"..refID.."}}")
				if EID.itemUnlockStates[refID] == false then EID:appendToDescription(descObj, "?") end
				if i ~= EID.Config["SpindownDiceResults"] then
					EID:appendToDescription(descObj, " ->")
				end
			else
				local errorMsg = EID:getDescriptionEntry("spindownError") or ""
				EID:appendToDescription(descObj, errorMsg)
				break
			end
		end
		if hasCarBattery then
			EID:appendToDescription(descObj, " (Results with {{Collectible356}})")
		end
		return descObj
	end
	EID:addDescriptionModifier("Spindown Dice", SpindownDiceCondition, SpindownDiceCallback)
	
	
	
	-- Handle Tarot Cloth description addition
	local function TarotClothCondition(descObj)
		if descObj.ObjType ~= 5 or descObj.ObjVariant ~= PickupVariant.PICKUP_TAROTCARD then
			return false
		end
		for i = 0,game:GetNumPlayers() - 1 do
			local player = Isaac.GetPlayer(i)
			if player:HasCollectible(CollectibleType.COLLECTIBLE_TAROT_CLOTH) then
				return true
			end
		end
		return false
	end
	
	local function TarotClothCallback(descObj)
		local clothBuff = EID:getDescriptionEntry("tarotClothBuffs", descObj.ObjSubType)
		if clothBuff ~= nil then
			local iconStr = "#{{Collectible451}} "
			EID:appendToDescription(descObj, iconStr..clothBuff[3]:gsub("#",iconStr))
		end
		return descObj
	end
	EID:addDescriptionModifier("Tarot Cloth", TarotClothCondition, TarotClothCallback)
	
	
	-- Handle Golden Trinket description addition
	local function GoldenTrinketCondition(descObj)
		return descObj.ObjType == 5 and descObj.ObjVariant == PickupVariant.PICKUP_TRINKET and descObj.ObjSubType > TrinketType.TRINKET_GOLDEN_FLAG
	end
	
	local function GoldenTrinketCallback(descObj)
		local goldenDesc = EID:getDescriptionEntry("goldenTrinket") or ""
		descObj.Description = "{{ColorGold}}"..goldenDesc.."#"..descObj.Description
		return descObj
	end
	EID:addDescriptionModifier("Golden Trinket", GoldenTrinketCondition, GoldenTrinketCallback)
	
	
	
	-- Handle ItemID
	local function ItemIDCondition(descObj)
		return EID.Config["ShowObjectID"] and descObj.ObjType > 0
	end
	
	local function ItemIDCallback(descObj)
		descObj.Name = descObj.Name.."{{ColorGray}} "..descObj.ObjType.."."..descObj.ObjVariant.."."..descObj.ObjSubType
		return descObj
	end
	EID:addDescriptionModifier("ItemID", ItemIDCondition, ItemIDCallback)
end
