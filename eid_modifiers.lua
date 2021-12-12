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


	
	-- Handle Blank Card description addition
	local blankCardHidden = {[32]=true,[33]=true,[34]=true,[35]=true,[36]=true,[37]=true,[38]=true,[39]=true,[40]=true,[41]=true,[49]=true,[50]=true,[55]=true,[78]=true}
	local function BlankCardCondition(descObj)
		if not REPENTANCE or descObj.ObjType ~= 5 or descObj.ObjVariant ~= PickupVariant.PICKUP_TAROTCARD or blankCardHidden[descObj.ObjSubType] or descObj.ObjSubType > 80 then
			return false
		end
		for i = 0, game:GetNumPlayers() - 1 do
			local player = Isaac.GetPlayer(i)
			if player:HasCollectible(CollectibleType.COLLECTIBLE_BLANK_CARD) then
				return true
			end
		end
		return false
	end
	
	local function BlankCardCallback(descObj)
		local text = EID:getDescriptionEntry("BlankCardCharge")
		local charge = EID.cardMetadata[descObj.ObjSubType]
		if text ~= nil and charge ~= nil then
			local iconStr = "#{{Collectible286}} {{ColorSilver}}"
			if descObj.ObjSubType == 48 then -- ? card
				text = EID:getDescriptionEntry("BlankCardQCard")
				EID:appendToDescription(descObj, iconStr..text:gsub("#",iconStr))
			else
				EID:appendToDescription(descObj, iconStr..text.." {{"..charge.mimiccharge.."}}{{Battery}}")
			end
		end
		return descObj
	end
	EID:addDescriptionModifier("Blank Card", BlankCardCondition, BlankCardCallback)
	


	-- Handle Clear Rune description addition
	local runeIDs = {[32]=true,[33]=true,[34]=true,[35]=true,[36]=true,[37]=true,[38]=true,[39]=true,[40]=true,[41]=true,[55]=true,[81]=true,[82]=true,[83]=true,[84]=true,[85]=true,[86]=true,[87]=true,[88]=true,[89]=true,[90]=true,[91]=true,[92]=true,[93]=true,[94]=true,[95]=true,[96]=true,[97]=true,}
	local function ClearRuneCondition(descObj)
		if not REPENTANCE or descObj.ObjType ~= 5 or descObj.ObjVariant ~= PickupVariant.PICKUP_TAROTCARD or not runeIDs[descObj.ObjSubType] then
			return false
		end
		for i = 0, game:GetNumPlayers() - 1 do
			local player = Isaac.GetPlayer(i)
			if player:HasCollectible(CollectibleType.COLLECTIBLE_CLEAR_RUNE) then
				return true
			end
		end
		return false
	end
	
	local function ClearRuneCallback(descObj)
		local text = EID:getDescriptionEntry("ClearRuneCharge")
		local charge = EID.cardMetadata[descObj.ObjSubType]
		if text ~= nil and charge ~= nil then
			local iconStr = "#{{Collectible263}} {{ColorSilver}}"
			EID:appendToDescription(descObj, iconStr..text.." {{"..charge.mimiccharge.."}}{{Battery}}")
		end
		return descObj
	end
	EID:addDescriptionModifier("Clear Rune", ClearRuneCondition, ClearRuneCallback)
	


	-- Handle Placebo description addition
	local function PlaceboCondition(descObj)
		if not REPENTANCE or descObj.ObjType ~= 5 or descObj.ObjVariant ~= PickupVariant.PICKUP_PILL then
			return false
		end
		for i = 0, game:GetNumPlayers() - 1 do
			local player = Isaac.GetPlayer(i)
			if player:HasCollectible(CollectibleType.COLLECTIBLE_PLACEBO) then
				return true
			end
		end
		return false
	end
	
	local function PlaceboCallback(descObj)
		local text = EID:getDescriptionEntry("PlaceboCharge")
		local adjustedID = EID:getAdjustedSubtype(descObj.ObjType, descObj.ObjVariant, descObj.ObjSubType)
		local charge = EID.pillMetadata[adjustedID-1]
		if text ~= nil and charge ~= nil then
			local iconStr = "#{{Collectible348}} {{ColorSilver}}"
			EID:appendToDescription(descObj, iconStr..text.." {{"..charge.mimiccharge.."}}{{Battery}}")
		end
		return descObj
	end
	EID:addDescriptionModifier("Placebo", PlaceboCondition, PlaceboCallback)


	-- Handle Abyss description addition
	local function AbyssCondition(descObj)
		if not REPENTANCE or descObj.ObjType ~= 5 or descObj.ObjVariant ~= PickupVariant.PICKUP_COLLECTIBLE then
			return false
		end
		for i = 0, game:GetNumPlayers() - 1 do
			local player = Isaac.GetPlayer(i)
			if player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then
				return true
			end
		end
		return false
	end
	
	local function AbyssCallback(descObj)
		local text = EID:getDescriptionEntry("abyssSynergies", descObj.ObjSubType)
		if text ~= nil then
			local iconStr = "#{{Collectible706}} {{ColorRed}}"
			EID:appendToDescription(descObj, iconStr..text)
		end
		return descObj
	end
	EID:addDescriptionModifier("Abyss", AbyssCondition, AbyssCallback)

end
