local game = Game()

EID.TabPreviewID = 0
-- Modifiers switching the previewed description can cause infinite loops or undesired text, use this to help prevent it
local inPreview = false

-- Afterbirth+ modifiers
local collectiblesToCheck = { CollectibleType.COLLECTIBLE_VOID, }
local maxSlot = 1
-- Repentance modifiers
if REPENTANCE then
	maxSlot = 3
	--include the AB+ collectiblesToCheck in this table!
	collectiblesToCheck = { CollectibleType.COLLECTIBLE_VOID,
		CollectibleType.COLLECTIBLE_BINGE_EATER, CollectibleType.COLLECTIBLE_BOOK_OF_VIRTUES, CollectibleType.COLLECTIBLE_SPINDOWN_DICE, 
		CollectibleType.COLLECTIBLE_TAROT_CLOTH, CollectibleType.COLLECTIBLE_MOMS_BOX, 59, --Birthright Belial
		CollectibleType.COLLECTIBLE_BLANK_CARD, CollectibleType.COLLECTIBLE_CLEAR_RUNE, CollectibleType.COLLECTIBLE_PLACEBO, 
		CollectibleType.COLLECTIBLE_FALSE_PHD, CollectibleType.COLLECTIBLE_ABYSS, CollectibleType.COLLECTIBLE_FLIP,
	}
end
local collectiblesOwned = {}
local blackRuneOwned = false
local lastCheck = 0

local function CheckPlayersCollectibles()
	-- recheck the players' owned collectibles periodically, not every frame
	if EID.GameUpdateCount >= lastCheck + 15 then
		lastCheck = EID.GameUpdateCount
		local numPlayers = game:GetNumPlayers()
		local players = {}; for i = 0, numPlayers - 1 do players[i] = Isaac.GetPlayer(i) end
		for _,v in ipairs(collectiblesToCheck) do
			collectiblesOwned[v] = false
			for i = 0, numPlayers - 1 do
				if players[i]:HasCollectible(v) then
					collectiblesOwned[v] = i
					break
				end
			end
		end
		blackRuneOwned = false
		for i = 0, numPlayers - 1 do
			for j = 0, maxSlot do
				if players[i]:GetCard(j) == Card.RUNE_BLACK then
					blackRuneOwned = i
					break
				end
			end
		end
	end
end

local function TabCallback(descObj)
	if EID.TabPreviewID == 0 then return descObj end
	inPreview = true
	local descEntry = EID:getDescriptionObj(5, 100, EID.TabPreviewID)
	inPreview = false
	return descEntry
end

-- Handle Void (the only modifier that is applied to AB+ at the moment)
local voidStatUps = { 0.2, 0.5, 1, 0.5, 0.2, 1 }
if REPENTANCE then voidStatUps[4] = 1.5 end
local lastVoidCheck = -30
EID.VoidStatIncreases = {{},{},{}}
EID.BlackRuneStatIncreases = {{},{},{}}
EID.VoidOptionIndexes = {}

local function VoidCallback(descObj, isRune)
	-- Recheck RNG periodically (picking up passive collectibles will change the Void results without any easy trigger to track)
	-- Do both Void and Rune here since they could both be requested in the same frame
	if EID.GameUpdateCount >= lastVoidCheck + 30 or EID.RecheckVoid then
		EID:VoidRoomCheck()
		if collectiblesOwned[477] then EID:VoidRNGCheck(Isaac.GetPlayer(collectiblesOwned[477]), false) end
		if blackRuneOwned then EID:VoidRNGCheck(Isaac.GetPlayer(blackRuneOwned), true) end
		lastVoidCheck = EID.GameUpdateCount
		EID.RecheckVoid = false
	end
	
	local prefix = (isRune and "{{Card41}} ") or "{{Collectible477}} "
	local pickup = descObj.Entity and descObj.Entity:ToPickup()
	local isAltOption = false
	-- Test if this is an Option pedestal, Repentance only absorbs the lowest index one
	if REPENTANCE then
		local optionIndex = pickup and pickup.OptionsPickupIndex
		local firstOption = EID.VoidOptionIndexes[optionIndex]
		if (REPENTANCE and optionIndex and optionIndex ~= 0 and descObj.ObjSubType ~= firstOption) then
			EID:appendToDescription(descObj, "#" .. prefix .. "{{Collectible"..firstOption..
			"}}" .. EID:getObjectName(5, 100, firstOption) .. EID:getDescriptionEntry("VoidOptionText"))
			isAltOption = true
		end
	end
	-- Print Stat up info if Black Rune or non-active item
	if isRune or EID.itemConfig:GetCollectible(descObj.ObjSubType).Type ~= 3 then
		local shopItem = pickup and pickup:IsShopItem()
		-- Afterbirth+ really can't do anything with Void and a shop item, so just return
		if (not REPENTANCE and shopItem) then return descObj end
		
		local voidIntro = ((shopItem or isAltOption) and EID:getDescriptionEntry("VoidShopText")) or EID:getDescriptionEntry("VoidText")
		local voidNames = EID:getDescriptionEntry("VoidNames")
		-- Replace "Tears" with "Fire Rate"
		if REPENTANCE then voidNames[2] = EID:getDescriptionEntry("GlitchedItemText", 1) end
		
		local eidTable = (isRune and EID.BlackRuneStatIncreases) or EID.VoidStatIncreases
		local increases = ((isAltOption or not descObj.Entity) and eidTable[3]) or (shopItem and eidTable[2]) or eidTable[1]

		EID:appendToDescription(descObj, "#" .. prefix .. voidIntro .. "#")
		for i,v in ipairs(increases) do
			if v > 0 then
				EID:appendToDescription(descObj, prefix .. "+" .. string.format("%.4g",v*voidStatUps[i]) .. " " .. voidNames[i] .. "#")
			end
		end
	-- Print unique synergies with Void and Active Items
	elseif not isRune then
		
	end
	return descObj
end

local function BlackRuneCallback(descObj)
	return VoidCallback(descObj, true)
end


if REPENTANCE then
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
	
	-- Handle Spindown Dice description addition
	local function SpindownDiceCallback(descObj)
		-- get the ID of the player that owns the Spindown Dice
		local playerID = (collectiblesOwned[723] or (EID.absorbedItems[723] and collectiblesOwned[477]))
		EID:appendToDescription(descObj, "#{{Collectible723}} :")
		local refID = descObj.ObjSubType
		local hasCarBattery = Isaac.GetPlayer(playerID):HasCollectible(CollectibleType.COLLECTIBLE_CAR_BATTERY)
		local firstID = 0
		for i = 1,EID.Config["SpindownDiceResults"] do
			local spinnedID = EID:getSpindownResult(refID)
			if hasCarBattery then
				refID = spinnedID
				spinnedID = EID:getSpindownResult(refID)
			end
			refID = spinnedID
			if refID > 0 and refID < 4294960000 then
				if i == 1 then firstID = refID end
				EID:appendToDescription(descObj, "{{Collectible"..refID.."}}")
				if EID.itemUnlockStates[refID] == false then EID:appendToDescription(descObj, "?") end
				if EID.Config["SpindownDiceDisplayID"] then
					EID:appendToDescription(descObj, "/".. refID)
				end
				if EID.Config["SpindownDiceDisplayName"] then
					EID:appendToDescription(descObj, "/".. EID:getObjectName(5, 100, refID))
					if refID == 668 then break end
					if i ~= EID.Config["SpindownDiceResults"] then
						EID:appendToDescription(descObj, "#{{Blank}}")
					end
				end

				if refID == 668 then break end -- Dad's Note is not affected by Spindown Dice
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
		if firstID ~= 0 and EID.TabPreviewID == 0 then
			EID.TabPreviewID = firstID
			EID:appendToDescription(descObj, "#{{Blank}} ".. EID:getDescriptionEntry("FlipItemToggleInfo"))
		end
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
		if not flipItemID or flipItemID <= 0 then return descObj end
		-- Empty pedestal
		if descObj.ObjSubType == 0 then
			return EID:getDescriptionObj(5, 100, flipItemID)
		end
		
		local infoText = EID:getDescriptionEntry("FlipItemToggleInfo")
		local itemName = EID:getObjectName(5, 100, flipItemID)
		local appendText = "#{{Collectible711}} -> {{Collectible"..flipItemID.."}} "..itemName
		if EID.TabPreviewID == 0 then
			EID.TabPreviewID = flipItemID
			appendText = appendText .. "#{{Blank}} "..infoText
		end
		EID:appendToDescription(descObj, appendText)
		
		return descObj
	end
	
	-- Handle Item Collection description addition
	local function ItemCollectionPageCallback(descObj)
		descObj.Name = "{{"..EID.Config["ItemCollectionColor"].."}}"..descObj.Name
		local text = EID:getDescriptionEntry("CollectionPageInfo")
		
		EID:appendToDescription(descObj, "#{{Warning}} "..text)
		return descObj
	end
	--------------------------------
	-- Although individual conditions/callbacks work well for mods to be able to add through the API,
	-- As we kept adding callbacks for vanilla items, a lot of code got repeated over and over
	-- This one-condition setup fixes that and can only help performance
	-- It also allows us to pick the order that modifiers are appended to descriptions (stats/effects first, then reroll/flip/recharge info)
	
	local function EIDConditions(descObj)
		-- currently, only pickup descriptions have modifiers
		if descObj.ObjType ~= 5 then return false end
		
		CheckPlayersCollectibles()
		
		local callbacks = {}
		
		-- Collectible Pedestal Callbacks
		if descObj.ObjVariant == PickupVariant.PICKUP_COLLECTIBLE then
			-- Using magic numbers here in case it's slightly faster, and because the callback names give context
			-- Check Birthright first because it overwrites the description instead of appending to it
			if descObj.ObjSubType == 619 then table.insert(callbacks, BirthrightCallback) end

			if EID:requiredForCollectionPage(descObj.ObjSubType) then table.insert(callbacks, ItemCollectionPageCallback) end
			
			if collectiblesOwned[664] then table.insert(callbacks, BingeEaterCallback) end
			if collectiblesOwned[59] then table.insert(callbacks, BookOfBelialCallback) end
			if collectiblesOwned[584] then table.insert(callbacks, BookOfVirtuesCallback) end
			if collectiblesOwned[706] or (EID.absorbedItems[706] and collectiblesOwned[477]) then table.insert(callbacks, AbyssCallback) end
			
			if collectiblesOwned[711] and EID:getEntityData(descObj.Entity, "EID_FlipItemID") then table.insert(callbacks, FlipCallback) end
			if (collectiblesOwned[723] or (EID.absorbedItems[723] and collectiblesOwned[477])) and descObj.ObjSubType ~= 668 then table.insert(callbacks, SpindownDiceCallback) end
			
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

local function EIDConditionsAB(descObj)
	-- currently, only pickup descriptions have modifiers
	if descObj.ObjType ~= 5 then return false end
	
	CheckPlayersCollectibles()
	
	local callbacks = {}
	
	-- Collectible Pedestal Callbacks
	if descObj.ObjVariant == PickupVariant.PICKUP_COLLECTIBLE then
		if EID.Config["DisplayVoidStatInfo"] then
			if collectiblesOwned[477] then table.insert(callbacks, VoidCallback) end
			if blackRuneOwned then table.insert(callbacks, BlackRuneCallback) end
		end
	end
	
	return callbacks
end
EID:addDescriptionModifier("EID Afterbirth+", EIDConditionsAB, nil)

local function TabConditions(descObj)
	if EID.player and Input.IsActionPressed(ButtonAction.ACTION_MAP, EID.player.ControllerIndex) and not inPreview then return true end
	return false
end

EID:addDescriptionModifier("EID Tab Previews", TabConditions, TabCallback)
