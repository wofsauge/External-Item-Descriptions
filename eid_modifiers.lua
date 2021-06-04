if REPENTANCE then
local game = Game()

	-- Handle Birthright
	local function BirthrightCondition(descObj)
		return descObj.ItemType == 5 and descObj.ItemVariant == PickupVariant.PICKUP_COLLECTIBLE and descObj.ID == 619
	end
	local function BirthrightCallback(descObj)
		descObj.Description = ""
		for i = 0,game:GetNumPlayers() - 1 do
			local player = Isaac.GetPlayer(i)
			if not player:IsSubPlayer() and player:GetMainTwin( ):GetPlayerType() == player:GetPlayerType() then
				local playerID = player:GetPlayerType() + 1
				local translatedDesc = EID.descriptions[EID.Config["Language"]]["birthright"]
				local birthrightDesc = (translatedDesc and translatedDesc[playerID]) or EID.descriptions["en_us"]["birthright"][playerID] or nil
				if birthrightDesc ~=nil then
					local playerName = birthrightDesc[1] or player:GetName()
					descObj.Description = descObj.Description.."{{CustomTransformation}} {{ColorGray}}"..playerName.."{{CR}}#"..birthrightDesc[3].."#"
				end
			end
		end
		return descObj
	end
	EID:addDescriptionModifier("Birthright", BirthrightCondition, BirthrightCallback)
	
	
	
	-- Handle Bingeeater description addition
	local function BingeeaterCondition(descObj)
		if descObj.ItemType ~= 5 or descObj.ItemVariant ~= PickupVariant.PICKUP_COLLECTIBLE then
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
		local translatedDesc = EID.descriptions[EID.Config["Language"]]["bingeEaterBuffs"]
		local bingeBuff = (translatedDesc and translatedDesc[descObj.ID]) or EID.descriptions["en_us"]["bingeEaterBuffs"][descObj.ID] or nil
		if bingeBuff ~= nil then
			local bingeStr = "#{{Collectible664}} "
			descObj.Description = descObj.Description..bingeStr..bingeBuff[3]:gsub("#",bingeStr)
		end
		return descObj
	end
	EID:addDescriptionModifier("Bingeeater", BingeeaterCondition, BingeeaterCallback)
	
	
	
	-- Handle Spindown Dice description addition
	local function SpindownDiceCondition(descObj)
		if descObj.ItemType ~= 5 or descObj.ItemVariant ~= PickupVariant.PICKUP_COLLECTIBLE then
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
		descObj.Description = descObj.Description.."#{{Collectible723}} :"
		local refID = descObj.ID
		for i = 1,EID.Config["SpindownDiceResults"] do
			local spinnedID = EID:getSpindownResult(refID)
			refID = spinnedID
			if spinnedID > 0 then
				descObj.Description = descObj.Description.."{{Collectible"..spinnedID.."}}"
				if i ~= EID.Config["SpindownDiceResults"] then
					descObj.Description = descObj.Description.." ->"
				end
			else
				local errorMsg = EID.descriptions[EID.Config["Language"]]["spindownError"] or EID.descriptions["en_us"]["spindownError"] or nil
				descObj.Description = descObj.Description..errorMsg
				break
			end
		end
		return descObj
	end
	EID:addDescriptionModifier("Spindown Dice", SpindownDiceCondition, SpindownDiceCallback)
	
	
	-- Handle Tarot Cloth description addition
	local function TarotClothCondition(descObj)
		if descObj.ItemType ~= 5 or descObj.ItemVariant ~= PickupVariant.PICKUP_TAROTCARD then
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
		local translatedDesc = EID.descriptions[EID.Config["Language"]]["tarotClothBuffs"] or EID.descriptions["en_us"]["tarotClothBuffs"]
		local clothBuff = (translatedDesc and translatedDesc[descObj.ID]) or ( translatedDesc and translatedDesc[descObj.ID]) or nil
		if clothBuff ~= nil then
			local bingeStr = "#{{Collectible451}} "
			descObj.Description = descObj.Description..bingeStr..clothBuff[3]:gsub("#",bingeStr)
		end
		return descObj
	end
	EID:addDescriptionModifier("Tarot Cloth", TarotClothCondition, TarotClothCallback)
	
	
end