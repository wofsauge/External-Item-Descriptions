if REPENTANCE then
	local game = Game()

	-- Handle Birthright
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
					EID:appendToDescription(descObj, (EID:getIcon("Player"..playerID) ~= EID.InlineIcons["ERROR"] and "{{Player"..playerID.."}}" or "{{CustomTransformation}}").." {{ColorGray}}"..playerName.."{{CR}}#"..birthrightDesc[3].."#")
				end
			end
		end
		return descObj
	end
	
	-- Handle Bingeeater description addition
	local function BingeEaterCallback(descObj)
		local bingeBuff = EID:getDescriptionEntry("bingeEaterBuffs", descObj.ObjSubType)
		if bingeBuff ~= nil then
			local iconStr = "#{{Collectible664}} "
			EID:appendToDescription(descObj, iconStr..bingeBuff:gsub("#",iconStr))
		end
		return descObj
	end

	-- Handle Book of Belial description for Judas' Birthright addition
	local function BookOfBelialCallback(descObj)
		local belialBuff = EID:getDescriptionEntry("bookOfBelialBuffs", descObj.ObjSubType)
		if belialBuff ~= nil then
			local iconStr = "#{{Collectible34}} "
			EID:appendToDescription(descObj, iconStr..belialBuff:gsub("#",iconStr))
		end
		return descObj
	end
	
	-- Handle Book of Virtues description addition
	local function BookOfVirtuesCallback(descObj)
		local wispType = EID:getDescriptionEntry("bookOfVirtuesWisps", descObj.ObjSubType)
		if wispType ~= nil then
			local iconStr = "#{{Collectible584}} "
			EID:appendToDescription(descObj, iconStr..wispType:gsub("#",iconStr))
		end
		return descObj
	end
	
	local inSpindownPreview = false
	-- Handle Spindown Dice description addition
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
				if i == 1 and Input.IsActionPressed(ButtonAction.ACTION_MAP, EID.player.ControllerIndex) then
					inSpindownPreview = true
					local descEntry = EID:getDescriptionObj(5, 100, refID)
					inSpindownPreview = false
					return descEntry
				end
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
		EID:appendToDescription(descObj, "#{{Blank}} ".. EID:getDescriptionEntry("FlipItemToggleInfo"))
		return descObj
	end
	
	-- Handle Tarot Cloth description addition
	local function TarotClothCallback(descObj)
		local clothBuff = EID:getDescriptionEntry("tarotClothBuffs", descObj.ObjSubType)
		if clothBuff ~= nil then
			local iconStr = "#{{Collectible451}} "
			EID:appendToDescription(descObj, iconStr..clothBuff:gsub("#",iconStr))
		end
		return descObj
	end
	
	
	local hasBox = false
	local isGolden = false
	
	-- Handle Golden Trinket / Mom's Box description addition	
	local function GoldenTrinketCallback(descObj)
		local trinketID = descObj.ObjSubType % TrinketType.TRINKET_GOLDEN_FLAG
		local data = EID.GoldenTrinketData[trinketID]
		local multiplier = 2
		local textChoice = 1
		if isGolden and hasBox then
			multiplier = 3
			textChoice = 3
		elseif hasBox then
			textChoice = 2
		end
		local count = 0
		
		if data then
			if type(data) == "number" then data = {t={data}} end
			if data.goldenOnly and not isGolden then return descObj end
			
			--custom multipliers (either manually defined, or just changing the max multiplier
			if data.mults then
				if isGolden and hasBox then multiplier = data.mults[2]
				else multiplier = data.mults[1] end
			elseif data.mult and ((isGolden and hasBox) or data.mult < 2) then multiplier = data.mult end
			
			--replacing numeric text based on our multiplier
			if (data.t) then
				for _,v in ipairs(data.t) do
					count = 0
					--"%d*%.?%d+" will grab every number group (1, 10, 0.5), this will allow us to not replace the "1" in "10" erroneously
					descObj.Description = string.gsub(descObj.Description, "%d*%.?%d+", function(s)
						if (s == tostring(v) and count == 0) then
							count = count + 1
							if v == 17 then
								if multiplier == 2 then v = 16.5
								elseif multiplier == 3 then v = (1/6)*100 end -- convert 17% to 33% or 50%
							elseif v == 33 and (multiplier == 1.5 or multiplier == 3) then v = (1/3)*100 end -- convert 33% to 50% or 100%
							return "{{ColorGold}}" .. string.format("%.4g",v*multiplier) .. "{{CR}}"
						end
					end)
				end
			--replacing a phrase, such as "half a heart"
			elseif data.findReplace then
				local textTable = EID:getDescriptionEntry("goldenTrinketEffects", trinketID)
				if textTable then
					descObj.Description, count = string.gsub(descObj.Description, textTable[1], "{{ColorGold}}" .. textTable[multiplier] .. "{{ColorText}}", 1)
				end
			--append some new text to the description
			elseif data.append then
				local textTable = EID:getDescriptionEntry("goldenTrinketEffects", trinketID)
				if textTable then
					textChoice = math.min(textChoice, #textTable) -- some items have only 1 append description
					descObj.Description = descObj.Description .. "#{{ColorGold}}" .. textTable[textChoice]
					count = 1
				end
			--the nuclear option: replacing the entire description; 1 = Gold, 2 = Mom's Box, 3 = Both
			--only replace if the chosen language has defined it
			elseif data.fullReplace then
				local textTable = EID:getDescriptionEntry("goldenTrinketEffects", trinketID, true)
				if (textTable) then
					textChoice = math.min(textChoice, #textTable)
					descObj.Description = textTable[textChoice]
					count = 1
				end
			end
			-- we didn't replace everything; maybe English (Detailed) or other language didn't have the number? append a simple "effect is doubled/tripled"
			if count == 0 and multiplier > 1 then
				local goldenDesc = EID:getDescriptionEntry("goldenTrinket") or ""
				if multiplier == 3 then goldenDesc = EID:getDescriptionEntry("tripledTrinket") or ""
				elseif multiplier == 4 then goldenDesc = EID:getDescriptionEntry("quadrupledTrinket") end
				descObj.Description = descObj.Description .. "#" .. "{{ColorGold}}"..goldenDesc
			end
		end
		return descObj
	end
	
	-- Handle Blank Card description addition
	local blankCardHidden = {[32]=true,[33]=true,[34]=true,[35]=true,[36]=true,[37]=true,[38]=true,[39]=true,[40]=true,[41]=true,[49]=true,[50]=true,[55]=true,[78]=true}
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

	-- Handle Clear Rune description addition
	local runeIDs = {[32]=true,[33]=true,[34]=true,[35]=true,[36]=true,[37]=true,[38]=true,[39]=true,[40]=true,[41]=true,[55]=true,[81]=true,[82]=true,[83]=true,[84]=true,[85]=true,[86]=true,[87]=true,[88]=true,[89]=true,[90]=true,[91]=true,[92]=true,[93]=true,[94]=true,[95]=true,[96]=true,[97]=true,}
	local function ClearRuneCallback(descObj)
		local text = EID:getDescriptionEntry("ClearRuneCharge")
		local charge = EID.cardMetadata[descObj.ObjSubType]
		if text ~= nil and charge ~= nil then
			local iconStr = "#{{Collectible263}} {{ColorSilver}}"
			EID:appendToDescription(descObj, iconStr..text.." {{"..charge.mimiccharge.."}}{{Battery}}")
		end
		return descObj
	end

	-- Handle Placebo description addition
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
	
	-- Handle False PHD description addition
	local function FalsePHDCallback(descObj)
		local adjustedID = EID:getAdjustedSubtype(descObj.ObjType, descObj.ObjVariant, descObj.ObjSubType)
		local horse = descObj.ObjSubType > 2048
		local data = EID.pillMetadata[adjustedID-1]
		if data ~= nil then
			local damageUp = string.find(data.class,"3") and (string.find(data.class,"-") or adjustedID-1 == PillEffect.PILLEFFECT_EXPERIMENTAL)
			-- why doesn't I'm Excited have a - in the xml data yet spawn a black heart...
			local blackHeart = (string.find(data.class,"2") or string.find(data.class,"1")) and (string.find(data.class,"-") or adjustedID-1 == PillEffect.PILLEFFECT_IM_EXCITED)
			local text = ""
			if damageUp and horse then text = EID:getDescriptionEntry("FalsePHDHorseDamage")
			elseif damageUp then text = EID:getDescriptionEntry("FalsePHDDamage")
			elseif blackHeart then text = EID:getDescriptionEntry("FalsePHDHeart") end
			if text ~= "" then
				local iconStr = "#{{Collectible654}} "
				EID:appendToDescription(descObj, iconStr..text)
			end
		end
		return descObj
	end

	-- Handle Abyss description addition
	local function AbyssCallback(descObj)
		local text = EID:getDescriptionEntry("abyssSynergies", descObj.ObjSubType)
		if text ~= nil then
			local iconStr = "#{{Collectible706}} {{ColorRed}}"
			EID:appendToDescription(descObj, iconStr..text)
		end
		return descObj
	end

	-- Handle Flip description addition
	local function FlipCallback(descObj)
		local flipItemID = EID:getEntityData(descObj.Entity, "EID_FlipItemID")
		if flipItemID <= 0 then return descObj end
		if descObj.ObjSubType == 0 or Input.IsActionPressed(ButtonAction.ACTION_MAP, EID.player.ControllerIndex) then
			local descEntry = EID:getDescriptionObj(5, 100, flipItemID)
			return descEntry
		end

		local infoText = EID:getDescriptionEntry("FlipItemToggleInfo")
		if flipItemID ~= nil or infoText ~= nil then
			local itemName = EID:getObjectName(5, 100, flipItemID)
			local appendText = "#{{Collectible711}} -> {{Collectible"..flipItemID.."}} "..itemName
			appendText = appendText .. "#{{Blank}} "..infoText
			EID:appendToDescription(descObj, appendText)
		end
		return descObj
	end
	
	
	--------------------------------
	-- Although individual conditions/callbacks work well for mods to be able to add through the API,
	-- As we kept adding callbacks for vanilla items, a lot of code got repeated over and over
	-- This one-condition setup fixes that and can only help performance
	-- It also allows us to pick the order that modifiers are appended to descriptions (stats/effects first, then reroll/flip/recharge info)
	
	local collectiblesToCheck = { CollectibleType.COLLECTIBLE_BINGE_EATER, CollectibleType.COLLECTIBLE_BOOK_OF_VIRTUES,
		CollectibleType.COLLECTIBLE_SPINDOWN_DICE, CollectibleType.COLLECTIBLE_VOID,
		CollectibleType.COLLECTIBLE_TAROT_CLOTH, CollectibleType.COLLECTIBLE_MOMS_BOX,
		CollectibleType.COLLECTIBLE_BLANK_CARD, CollectibleType.COLLECTIBLE_CLEAR_RUNE, CollectibleType.COLLECTIBLE_PLACEBO, 
		CollectibleType.COLLECTIBLE_FALSE_PHD, CollectibleType.COLLECTIBLE_ABYSS, CollectibleType.COLLECTIBLE_FLIP,
	}
	local collectiblesOwned = {}
	local lastCheck = 0
	
	local function EIDConditions(descObj)
		-- currently, only pickup descriptions have modifiers
		if descObj.ObjType ~= 5 then return false end
		
		-- recheck the players' owned collectibles periodically, not every frame
		if EID.GameUpdateCount >= lastCheck + 15 then
			lastCheck = EID.GameUpdateCount
			local numPlayers = game:GetNumPlayers()
			local players = {}; for i = 0, numPlayers - 1 do players[i] = Isaac.GetPlayer(i) end
			for _,v in ipairs(collectiblesToCheck) do
				collectiblesOwned[v] = false
				for i = 0, numPlayers - 1 do
					if players[i]:HasCollectible(v) then
						collectiblesOwned[v] = true
						break
					end
				end
			end
			-- Birthright Book of Belial
			collectiblesOwned[59] = false
			for i = 0, numPlayers - 1 do
				local playerType = players[i]:GetPlayerType()
				if (playerType == PlayerType.PLAYER_JUDAS or playerType == PlayerType.PLAYER_BLACKJUDAS) and players[i]:HasCollectible(CollectibleType.COLLECTIBLE_BIRTHRIGHT) then
					collectiblesOwned[59] = true
					break
				end
			end
			
		end
		
		local callbacks = {}
		
		-- Collectible Pedestal Callbacks
		if descObj.ObjVariant == PickupVariant.PICKUP_COLLECTIBLE then
			-- Using magic numbers here in case it's slightly faster, and because the callback names give context
			-- Check Birthright first because it overwrites the description instead of appending to it
			if descObj.ObjSubType == 619 then table.insert(callbacks, BirthrightCallback) end
			
			if collectiblesOwned[664] then table.insert(callbacks, BingeEaterCallback) end
			if collectiblesOwned[59] then table.insert(callbacks, BookOfBelialCallback) end
			if collectiblesOwned[584] then table.insert(callbacks, BookOfVirtuesCallback) end
			if collectiblesOwned[706] then table.insert(callbacks, AbyssCallback) end
			
			if (collectiblesOwned[723] or (EID.absorbedSpindown and collectiblesOwned[477])) and not inSpindownPreview then table.insert(callbacks, SpindownDiceCallback) end
			if collectiblesOwned[711] and EID:getEntityData(descObj.Entity, "EID_FlipItemID") then table.insert(callbacks, FlipCallback) end
		-- Card / Rune Callbacks
		elseif descObj.ObjVariant == PickupVariant.PICKUP_TAROTCARD then
			if collectiblesOwned[451] then table.insert(callbacks, TarotClothCallback) end
			
			if collectiblesOwned[286] and not blankCardHidden[descObj.ObjSubType] and descObj.ObjSubType <= 80 then table.insert(callbacks, BlankCardCallback) end
			if collectiblesOwned[263] and runeIDs[descObj.ObjSubType] then table.insert(callbacks, ClearRuneCallback) end
		-- Pill Callbacks
		elseif descObj.ObjVariant == PickupVariant.PICKUP_PILL then
			if collectiblesOwned[654] then table.insert(callbacks, FalsePHDCallback) end
			
			if collectiblesOwned[348] then table.insert(callbacks, PlaceboCallback) end
		-- Trinket Callbacks
		elseif descObj.ObjVariant == PickupVariant.PICKUP_TRINKET then
			-- Golden Trinket / Mom's Box
			isGolden = (descObj.ObjSubType > TrinketType.TRINKET_GOLDEN_FLAG)
			hasBox = collectiblesOwned[439]
			if isGolden or hasBox then table.insert(callbacks, GoldenTrinketCallback) end
		end
		
		return callbacks
	end
	EID:addDescriptionModifier("EID Repentance", EIDConditions, nil)

end
