local game = Game()

EID.TabPreviewID = 0
-- Modifiers switching the previewed description can cause infinite loops or undesired text, use this to help prevent it
EID.inModifierPreview = false
-- The "Hold Map Helper" needs to know if it shouldn't display because we're in a Hold Tab desc
EID.TabDescThisFrame = false

-- List of collectible IDs for us to check if a player owns them; feel free to add to this in mods that add description modifiers!
EID.collectiblesToCheck = { CollectibleType.COLLECTIBLE_VOID, CollectibleType.COLLECTIBLE_CAR_BATTERY }
local maxSlot = 1
-- Repentance modifiers
if EID.isRepentance then
	maxSlot = 3
	--include the AB+ collectiblesToCheck in this table! (wish there was an easy way to merge two tables)
	EID.collectiblesToCheck = { CollectibleType.COLLECTIBLE_VOID,
		CollectibleType.COLLECTIBLE_BINGE_EATER, CollectibleType.COLLECTIBLE_BOOK_OF_VIRTUES, CollectibleType.COLLECTIBLE_SPINDOWN_DICE,
		CollectibleType.COLLECTIBLE_TAROT_CLOTH, CollectibleType.COLLECTIBLE_MOMS_BOX, 59, --Birthright Belial
		CollectibleType.COLLECTIBLE_BLANK_CARD, CollectibleType.COLLECTIBLE_CLEAR_RUNE, CollectibleType.COLLECTIBLE_PLACEBO,
		CollectibleType.COLLECTIBLE_FALSE_PHD, CollectibleType.COLLECTIBLE_ABYSS, CollectibleType.COLLECTIBLE_FLIP, CollectibleType.COLLECTIBLE_CAR_BATTERY
	}
end
EID.collectiblesOwned = {}
EID.collectiblesAbsorbed = {}
EID.blackRuneOwned = false
EID.blankCardHidden = {[32]=true,[33]=true,[34]=true,[35]=true,[36]=true,[37]=true,[38]=true,[39]=true,[40]=true,[41]=true,[49]=true,[50]=true,[55]=true,[78]=true,[81]=true,[82]=true,[83]=true,[84]=true,[85]=true,[86]=true,[87]=true,[88]=true,[89]=true,[90]=true,[91]=true,[92]=true,[93]=true,[94]=true,[95]=true,[96]=true,[97]=true,}
EID.runeIDs = {[32]=true,[33]=true,[34]=true,[35]=true,[36]=true,[37]=true,[38]=true,[39]=true,[40]=true,[41]=true,[55]=true,[81]=true,[82]=true,[83]=true,[84]=true,[85]=true,[86]=true,[87]=true,[88]=true,[89]=true,[90]=true,[91]=true,[92]=true,[93]=true,[94]=true,[95]=true,[96]=true,[97]=true,}

local lastCheck = 0

function EID:CheckPlayersCollectibles()
	-- recheck the players' owned collectibles periodically, not every frame
	-- (has to be checked regularly due to mechanics like D4 / Tainted Eden)
	if EID.GameUpdateCount >= lastCheck + 15 then
		lastCheck = EID.GameUpdateCount
		local numPlayers = game:GetNumPlayers()
		local players = {}; for i = 0, numPlayers - 1 do players[i] = Isaac.GetPlayer(i) end
		for _,v in ipairs(EID.collectiblesToCheck) do
			EID.collectiblesOwned[v] = false
			EID.collectiblesAbsorbed[v] = false
			for i = 0, numPlayers - 1 do
				if players[i]:HasCollectible(v) then
					EID.collectiblesOwned[v] = i
					break
				-- Check for the item being inside this player's Void
				-- note: currently Absorb checks are only done as a backup, will always be false if it's owned legitimately
				elseif EID.absorbedItems[tostring(i)] and EID.absorbedItems[tostring(i)][tostring(v)] and players[i]:HasCollectible(477) then
					EID.collectiblesAbsorbed[v] = i
				end
			end
		end
		-- other Card in inventory checks could be done in this loop here if ever desired
		EID.blackRuneOwned = false
		for i = 0, numPlayers - 1 do
			for j = 0, maxSlot do
				if players[i]:GetCard(j) == Card.RUNE_BLACK then
					EID.blackRuneOwned = i
					break
				end
			end
		end
	end
end

-- Handle description changes that occur while holding Map
local function TabCallback(descObj)
	if EID.TabPreviewID == 0 then return descObj end
	EID.TabDescThisFrame = true

	EID.inModifierPreview = true
	local descEntry = EID:getDescriptionObj(5, 100, EID.TabPreviewID)
	EID.inModifierPreview = false
	descEntry.Entity = descObj.Entity
	EID.TabPreviewID = 0
	return descEntry
end

-- Handle Void
local voidStatUps = { 0.2, 0.5, 1, 0.5, 0.2, 1 }
local voidStatIcons = {"{{Speed}}", "{{Tears}}", "{{Damage}}", "{{Range}}", "{{Shotspeed}}", "{{Luck}}"}
if EID.isRepentance then voidStatUps[4] = 2.5 end
local lastVoidCheck = -30
EID.VoidStatIncreases = {{},{},{}}
EID.BlackRuneStatIncreases = {{},{},{}}
EID.VoidOptionIndexes = {}

local function VoidCallback(descObj, isRune)
	if EID.InsideItemReminder then return descObj end
	-- Recheck RNG periodically (picking up passive collectibles will change the Void results without any easy trigger to track)
	-- Do both Void and Rune here since they could both be requested in the same frame
	if EID.GameUpdateCount >= lastVoidCheck + 30 or EID.RecheckVoid then
		EID:VoidRoomCheck()
		if EID.collectiblesOwned[477] then EID:VoidRNGCheck(Isaac.GetPlayer(EID.collectiblesOwned[477]), false) end
		if EID.blackRuneOwned then EID:VoidRNGCheck(Isaac.GetPlayer(EID.blackRuneOwned), true) end
		lastVoidCheck = EID.GameUpdateCount
		EID.RecheckVoid = false
	end

	local prefix = (isRune and "{{Card41}} ") or "{{Collectible477}} "
	local pickup = descObj.Entity and descObj.Entity:ToPickup()
	local isAltOption = false
	-- Test if this is an Option pedestal, Repentance only absorbs the lowest index one
	if EID.isRepentance then
		local optionIndex = pickup and pickup.OptionsPickupIndex
		local firstOption = EID.VoidOptionIndexes[optionIndex]
		if (EID.isRepentance and optionIndex and optionIndex ~= 0 and descObj.ObjSubType ~= firstOption) then
			EID:appendToDescription(descObj, "#" .. prefix .. "{{Collectible"..firstOption..
			"}}" .. EID:getObjectName(5, 100, firstOption) .. EID:getDescriptionEntry("VoidOptionText"))
			isAltOption = true
		end
	end
	-- Print Stat up info if Black Rune or non-active item
	if isRune or EID.itemConfig:GetCollectible(descObj.ObjSubType).Type ~= 3 then
		local shopItem = pickup and pickup:IsShopItem()
		-- Afterbirth+ really can't do anything with Void and a shop item, so just return
		if (not EID.isRepentance and shopItem) then return descObj end

		local voidIntro = ((shopItem or isAltOption) and EID:getDescriptionEntry("VoidShopText")) or EID:getDescriptionEntry("VoidText")
		local voidNames = EID:getDescriptionEntry("VoidNames")

		local eidTable = (isRune and EID.BlackRuneStatIncreases) or EID.VoidStatIncreases
		local increases = ((isAltOption or not descObj.Entity) and eidTable[3]) or (shopItem and eidTable[2]) or eidTable[1]

		EID:appendToDescription(descObj, "#" .. prefix .. voidIntro .. "#")
		for i,v in ipairs(increases) do
			if v > 0 then
				local statIncreaseStr = "↑ " .. voidStatIcons[i] .. " " .. voidNames[i] .. "#"
				local replaceCount = 0
				statIncreaseStr, replaceCount = string.gsub(statIncreaseStr, "{1}", "+" .. string.format("%.4g",v*voidStatUps[i]))
				if replaceCount == 0 then statIncreaseStr = "↑ " .. voidStatIcons[i] .. " +" .. string.format("%.4g",v*voidStatUps[i]) .. " " .. voidNames[i] .. "#" end
				EID:appendToDescription(descObj, statIncreaseStr)
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

-- Map each text block of Pandora's Box to the AbsoluteStage number it's watching for
-- Exception: 9 (???) should also watch for 12 (The Void)
-- Localizations must have their text blocks in this order:
-- B1, B2, C1, C2, D1, D2, W1, W2, ???/The Void, Sheol, Cathedral, Dark Room, The Chest, Home
local pandorasStages = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 11, 11, 13 }
-- Stage numbers where whether it's alt or not matters for Pandora's Box
local altStages = { [10] = false, [11] = true, [12] = false, [13] = true }
-- Greed Mode Absolute Stage / Pandora's Box Behavior: 1: B2, 3: C2, 5: D2, 7: W1, 10: Sheol, 0: Chest
local greedStages = { -1, 1, -1, 3, -1, 5, 7, -1, -1, 10, -1, -1, 0, -1 }

local function PandorasBoxCallback(descObj)
	local strangeKeyOwned = EID.isRepentance and EID:PlayersHaveTrinket(175)
	local pandoraCount = 0
	local level = game:GetLevel()
	local stageNum = level:GetAbsoluteStage()
	local altStage = level:IsAltStage()
	local doMarkup = false
	-- Greed Mode has different Pandora's Box rules and stage numbers
	local stageCheck = game:IsGreedMode() and greedStages or pandorasStages
	local altCheck = game:IsGreedMode() and {} or altStages

	-- floor result information must be separated by line breaks or semicolons in localizations
	local totalCount = 0
	for w in string.gmatch(descObj.Description, "([^#;]+)") do
		if totalCount > 0 or string.find(w,"2") then
			totalCount = totalCount + 1
		end
	end
	local skip9and12 = false
	-- many localizations do not have the ???/Void entry and the Dark Room entry
	-- this seemed better than forcing them to have it
	if totalCount == (EID.isRepentance and 12 or 11) then
		skip9and12 = true
	end

	for w in string.gmatch(descObj.Description, "([^#;]+)") do
		doMarkup = false
		-- the first captured group to care about is the one that contains a 2 (2 soul hearts)
		if pandoraCount > 0 or string.find(w,"2") then
			pandoraCount = pandoraCount + 1
			if skip9and12 and (pandoraCount == 9 or pandoraCount == 12) then
				pandoraCount = pandoraCount + 1
			end
			if (altCheck[pandoraCount] == nil or altStage == altCheck[pandoraCount]) then
				if stageCheck[pandoraCount] == stageNum then doMarkup = true
				--special exception for ???/The Void
				elseif pandoraCount == 9 and stageNum == 12 then doMarkup = true
				end
			end
			if doMarkup then
				-- gsub behaves very poorly with punctuation so you need a punctuation-escaping gsub helper...
				descObj.Description = string.gsub(descObj.Description, w:gsub("([^%w])", "%%%1"), "{{ColorBagComplete}}" .. w .. "{{CR}}")
			end
			-- don't check any lines of the description after Home
			if pandoraCount	== (EID.isRepentance and 14 or 13) then break end
		end
	end
	if strangeKeyOwned then
		descObj.Description = descObj.Description .. "#{{Trinket175}} " .. EID:getDescriptionEntry("PandorasBoxStrangeKeyEffect")
	end
	return descObj
end

-- Handle Item Collection description addition
local function ItemCollectionPageCallback(descObj)
	descObj.Name = "{{"..EID.Config["ItemCollectionColor"].."}}"..descObj.Name
	local text = EID:getDescriptionEntry("CollectionPageInfo")

	EID:appendToDescription(descObj, "#{{Warning}} "..text)
	return descObj
end

-- Handle Sacrifice room payout
local function SacrificeRoomCallback(descObj)
	local curCounter = descObj.ObjSubType or 1
	if curCounter <= 2 then
		--Remove B1 Bomb drop info when not on B1
		if game:GetLevel():GetAbsoluteStage() > 1 then
			local splitPoint = string.find(descObj.Description, '#', 1)
			descObj.Description = descObj.Description:sub(1,splitPoint-1)
		end
	end
	return descObj
end

-- Handle Car Battery description addition
local function CarBatteryCallback(descObj)
	local carBatteryBuff = EID:getDescriptionEntry("carBattery", descObj.ObjSubType)
	if carBatteryBuff ~= nil then
		-- String = append
		if type(carBatteryBuff) == "string" then
			local iconStr = "#{{Collectible356}} "
			EID:appendToDescription(descObj, iconStr..carBatteryBuff:gsub("#",iconStr))
		-- Table with 1 entry = replace
		elseif #carBatteryBuff == 1 then
			descObj.Description = carBatteryBuff[1]
		-- Table with 2+ entries = find and replace
		-- Entry 1 is replaced with entry 2, entry 3 is replaced with entry 4, etc.
		else
			local pos = 1
			while pos < #carBatteryBuff do
				local toFind = carBatteryBuff[pos]
				local replaceWith = carBatteryBuff[pos+1]
				
				--"%d*%.?%d+" will grab every number group (1, 10, 0.5), this will allow us to not replace the "1" in "10" erroneously
				if (type(toFind) == "number") then
					local count = 0
					descObj.Description = string.gsub(descObj.Description, "%d*%.?%d+", function(s)
						if (s == tostring(toFind) and count == 0) then
							count = count + 1
							return "{{BlinkYellowGreen}}" .. replaceWith .. "{{CR}}"
						end
					end)
				-- Basic find+replace for non-numbers
				else
					descObj.Description = string.gsub(descObj.Description, tostring(toFind), "{{BlinkYellowGreen}}" .. replaceWith .. "{{CR}}", 1)
				end
				pos = pos + 2
			end
		end
	end
	return descObj
end


if EID.isRepentance then
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

  -- Handle Glowing Hourglass description
  local function GlowingHourglassCallback(descObj)
    if REPENTOGON then
      local transformedText = EID:getDescriptionEntry("GlowingHourglassTransformed")
      local numUses = Isaac.GetPlayer():GetActiveItemDesc().VarData
      if numUses == 3 then
        -- Replace with the description of The Hourglass
        descObj.Description = EID:getDescriptionObj(5, 100, 66).Description
        if transformedText ~= nil then
          EID:appendToDescription(descObj, "#{{Warning}} "..transformedText)
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

	--simple decimal rounding
	local function SimpleRound(num, dp)
		dp = dp or 2
		local mult = 10^dp
		return math.floor(num * mult + 0.5)/mult
	end

	-- 3 coins, 1 bomb, 1 key, 1 soul heart, 2 red hearts
	local consolationPickups = { "5.20", "5.40", "5.30", "5.10.3", "5.10" }
	local consolationQuantity = { "3", "1", "1", "1", "2" }

	-- Handle Consolation Prize stat prediction
	local function ConsolationPrizeCallback(descObj)
		for p = 1,#EID.coopAllPlayers do
			local player = EID.coopAllPlayers[p]
			local playerID = player:GetPlayerType()
			local playerName = player:GetName()

			local playerStats = {}
			playerStats[1] = SimpleRound((player.MoveSpeed * 4.5) - 2)
			playerStats[2] = SimpleRound((((30/(player.MaxFireDelay + 1))^0.75) * 2.120391) - 2)
			playerStats[3] = SimpleRound(((player.Damage^0.56)*2.231179) - 2)
			playerStats[4] = SimpleRound(((player.TearRange - 230) / 60) + 2)

			local playerPickups = {}
			playerPickups[1] = player:GetNumCoins()
			playerPickups[2] = player:GetNumBombs() * 3
			playerPickups[3] = player:GetNumKeys() * 3
			playerPickups[4] = playerID == 18 and (player:GetSoulCharge() * 2) - 1 or 9999
			playerPickups[5] = playerID == 36 and (player:GetBloodCharge() * 2) - 1 or 9999

			local statsToDisplay = { 1 }
			local lowestStat = playerStats[1]
			for i = 2,4 do
				if playerStats[i] == lowestStat then table.insert(statsToDisplay, i)
				elseif playerStats[i] < lowestStat then
					statsToDisplay = { i }
					lowestStat = playerStats[i]
				end
			end

			local pickupsToDisplay = { 1 }
			lowestStat = playerPickups[1]
			for i = 2,5 do
				if playerPickups[i] == lowestStat then table.insert(pickupsToDisplay, i)
				elseif playerPickups[i] < lowestStat then
					pickupsToDisplay = { i }
					lowestStat = playerPickups[i]
				end
			end

			local newStr = "#" .. (EID:getIcon("Player"..playerID) ~= EID.InlineIcons["ERROR"] and "{{Player"..playerID.."}} " or "") .. " {{ColorGray}}"..playerName.."{{CR}}#"

			local voidNames = EID:getDescriptionEntry("VoidNames")
			for i,v in ipairs(statsToDisplay) do
				local statIncreaseStr = "↑ " .. voidStatIcons[v] .. " " .. voidNames[v]
				local replaceCount = 0
				statIncreaseStr, replaceCount = string.gsub(statIncreaseStr, "{1}", "+" .. string.format("%.4g",voidStatUps[v]))
				if replaceCount == 0 then statIncreaseStr = "↑ " .. voidStatIcons[v] .. " +" .. string.format("%.4g",voidStatUps[v]) .. " " .. voidNames[v] end
				newStr = newStr .. statIncreaseStr
				if #statsToDisplay > 1 then newStr = newStr .. "?" end
				newStr = newStr .. "#"
			end
			local pickupNames = EID:getDescriptionEntry("PickupNames")
			for i,v in ipairs(pickupsToDisplay) do
				local statIncreaseStr = pickupNames[consolationPickups[v]]
				-- Insert the quantity that will spawn after the icon, if there is an icon
				local replaceCount = 0
				statIncreaseStr, replaceCount = string.gsub(statIncreaseStr, "}} ", "}} " .. consolationQuantity[v] .. " ")
				if replaceCount == 0 then statIncreaseStr = consolationQuantity[v] .. " " .. pickupNames[consolationPickups[v]] end
				newStr = newStr .. statIncreaseStr
				if #pickupsToDisplay > 1 then newStr = newStr .. "?" end
				newStr = newStr .. "#"
			end
			EID:appendToDescription(descObj, newStr)

		end
		return descObj
	end

	-- Handle Spindown Dice description addition
	local function SpindownDiceCallback(descObj)
		if EID.InsideItemReminder then return descObj end
		-- get the ID of the player that owns the Spindown Dice
		local playerID = (EID.collectiblesOwned[723] or EID.collectiblesAbsorbed[723])
		EID:appendToDescription(descObj, "#{{Collectible723}} :")
		local refID = descObj.ObjSubType
		local hasCarBattery = Isaac.GetPlayer(playerID):HasCollectible(CollectibleType.COLLECTIBLE_CAR_BATTERY)
		local firstID = 0
		for i = 1,EID.Config["SpindownDiceResults"] do
			local spinnedID = EID:getSpindownResult(refID)
			if hasCarBattery and spinnedID ~= 668 then
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
			EID:appendToDescription(descObj, " " .. EID:getDescriptionEntry("ResultsWithX"):gsub("{1}", "{{Collectible356}}"))
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
			-- String = append
			if type(clothBuff) == "string" then
				local iconStr = "#{{Collectible451}} "
				EID:appendToDescription(descObj, iconStr..clothBuff:gsub("#",iconStr))
			-- Table with 1 entry = replace
			elseif #clothBuff == 1 then
				descObj.Description = clothBuff[1]
			-- Table with 2+ entries = find and replace
			-- Entry 1 is replaced with entry 2, entry 3 is replaced with entry 4, etc.
			else
				local pos = 1
				while pos < #clothBuff do
					local toFind = clothBuff[pos]
					local replaceWith = clothBuff[pos+1]
					
					--"%d*%.?%d+" will grab every number group (1, 10, 0.5), this will allow us to not replace the "1" in "10" erroneously
					if (type(toFind) == "number") then
						local count = 0
						descObj.Description = string.gsub(descObj.Description, "%d*%.?%d+", function(s)
							if (s == tostring(toFind) and count == 0) then
								count = count + 1
								return "{{ColorShinyPurple}}" .. replaceWith .. "{{CR}}"
							end
						end)
					-- Basic find+replace for non-numbers
					else
						descObj.Description = string.gsub(descObj.Description, tostring(toFind), "{{ColorShinyPurple}}" .. replaceWith .. "{{CR}}", 1)
					end
					pos = pos + 2
				end
			end
		end
		return descObj
	end


	local hasBox = false
	local isGolden = false

	-- Handle Golden Trinket / Mom's Box description addition
	local function GoldenTrinketCallback(descObj)
		local trinketID = descObj.ObjSubType % TrinketType.TRINKET_GOLDEN_FLAG
		local data = EID:getDescriptionEntry("goldenTrinketData", trinketID) or EID.GoldenTrinketData[trinketID]
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
			end
			--replacing a phrase, such as "half a heart"
			if data.findReplace then
				local textTable = EID:getDescriptionEntry("goldenTrinketEffects", trinketID)
				if textTable then
					descObj.Description, count = string.gsub(descObj.Description, textTable[1], "{{ColorGold}}" .. textTable[multiplier] .. "{{ColorText}}", 1)
				end
			end
			--append some new text to the description
			if data.append then
				local textTable = EID:getDescriptionEntry("goldenTrinketEffects", trinketID)
				if textTable then
					textChoice = math.min(textChoice, #textTable) -- some items have only 1 append description
					if textTable[textChoice] ~= "" then
						descObj.Description = descObj.Description .. "#{{ColorGold}}" .. textTable[textChoice]
						count = 1
					end
				end
			end
			--the nuclear option: replacing the entire description; 1 = Gold, 2 = Mom's Box, 3 = Both
			--only replace if the chosen language has defined it
			if data.fullReplace then
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
	
	local hasTarot = false
	
	-- Handle Blank Card description addition
	local function BlankCardCallback(descObj)
		local text = EID:getDescriptionEntry("BlankCardCharge")
		local charge = EID.cardMetadata[descObj.ObjSubType]
		local iconStr = "#{{Collectible286}} {{ColorSilver}}"
		if text ~= nil and charge ~= nil and charge.mimiccharge and charge.mimiccharge ~= -1 then
			if descObj.ObjSubType == 48 then -- ? card
				text = EID:getDescriptionEntry("BlankCardQCard")
				EID:appendToDescription(descObj, iconStr..text:gsub("#",iconStr))
			else
				EID:appendToDescription(descObj, iconStr..text.." {{"..charge.mimiccharge.."}}{{Battery}}")
			end
		end
		-- If the player has Tarot Cloth and Blank Card, display additional text
		if hasTarot then
			text = EID:getDescriptionEntry("BlankCardEffect")
			local buffText = EID:getDescriptionEntry("tarotClothBlankCardBuffs", descObj.ObjSubType)
			if buffText then EID:appendToDescription(descObj, iconStr .. text .. " " .. buffText) end
		end
		return descObj
	end

	-- Handle Clear Rune description addition
	local function ClearRuneCallback(descObj)
		local text = EID:getDescriptionEntry("ClearRuneCharge")
		local charge = EID.cardMetadata[descObj.ObjSubType]
		if text ~= nil and charge ~= nil and charge.mimiccharge and charge.mimiccharge ~= -1 then
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
		if text ~= nil and charge ~= nil and charge.mimiccharge and charge.mimiccharge ~= -1 then
			local iconStr = "#{{Collectible348}} {{ColorSilver}}"
			EID:appendToDescription(descObj, iconStr..text.." {{"..charge.mimiccharge.."}}{{Battery}}")
		end
		return descObj
	end

	-- Handle VURP description addition
	local function VurpCallback(descObj)
		local adjustedID = EID:getAdjustedSubtype(descObj.ObjType, descObj.ObjVariant, descObj.ObjSubType)
		if adjustedID - 1 ~= PillEffect.PILLEFFECT_VURP then return descObj end

		for i = 1,#EID.coopAllPlayers do
			local player = EID.coopAllPlayers[i]
			local playerID = EID:getPlayerID(player)
			local playerType = player:GetPlayerType()
			local pickupHistory = EID.PlayerItemInteractions[playerID].pickupHistory
			-- Dead Tainted Lazarus exception
			if playerType == 38 then
				pickupHistory = EID.PlayerItemInteractions[playerID].altPickupHistory or pickupHistory
			end
			if pickupHistory then
				local lastUsedPill = PillEffect.PILLEFFECT_VURP + 1
				local j = 1
				while (j <= #pickupHistory) do
					local entry = pickupHistory[j]
					-- ignore the pill if the pill color is Golden
					if entry[1] == "pill" and entry[2] ~= 14 then
						lastUsedPill = entry[3]
						break
					end
					j = j + 1
				end
				local tableName = EID:getTableName(descObj.ObjType, descObj.ObjVariant, descObj.ObjSubType)
				local name = EID:getPillName(lastUsedPill, tableName == "horsepills")
				if #EID.coopAllPlayers == 1 then EID:appendToDescription(descObj, "#{{Pill}}")
				else EID:appendToDescription(descObj, "#" .. (EID:getIcon("Player"..playerType) ~= EID.InlineIcons["ERROR"] and "{{Player"..playerType.."}}" or ("P" .. i .. ":"))) end
				EID:appendToDescription(descObj, " {{ColorSilver}}" .. name)
			end
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
			if adjustedID-1 == PillEffect.PILLEFFECT_SHOT_SPEED_DOWN then damageUp = true end
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

	-- Handle co-op players seeing different pill effects
	local function CoopPillCallback(descObj)
		-- Don't do this check when holding Tab for pill effects
		if not descObj.Entity then return descObj end
		local printedDescs = { [descObj.Name] = true }

		for i = 1,#EID.coopAllPlayers do
			local player = EID.coopAllPlayers[i]
			EID.pillPlayer = player
			local playerID = player:GetPlayerType()
			-- Regrab the pill description object with this player
			local pillObj = EID:getDescriptionObjByEntity(descObj.Entity)

			-- only print a given pill description once, even if it affects multiple players
			-- if it's 4P co-op and P1 has PHD, and P2/P3/P4 all get same effect, no one wants to see that 3 times
			if not printedDescs[pillObj.Name] then
				-- new pill effect to print
				printedDescs[pillObj.Name] = true
				EID:appendToDescription(descObj, "#" .. (EID:getIcon("Player"..playerID) ~= EID.InlineIcons["ERROR"] and "{{Player"..playerID.."}}" or ("P" .. i .. ":")).." {{ColorObjName}}"..pillObj.Name .."{{CR}}#"..pillObj.Description)
			end
		end
		EID.pillPlayer = nil
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

	--------------------------------
	-- Although individual conditions/callbacks work well for mods to be able to add through the API,
	-- As we kept adding callbacks for vanilla items, a lot of code got repeated over and over
	-- This one-condition setup fixes that and can only help performance
	-- It also allows us to pick the order that modifiers are appended to descriptions (stats/effects first, then reroll/flip/recharge info)

	-- REPENTANCE-ONLY MODIFIERS
	local function EIDConditions(descObj)
		-- currently, only pickup descriptions have modifiers
		if descObj.ObjType ~= 5 then return false end

		EID:CheckPlayersCollectibles()

		local callbacks = {}

		-- Collectible Pedestal Callbacks
		if descObj.ObjVariant == PickupVariant.PICKUP_COLLECTIBLE then
			-- Using magic numbers here in case it's slightly faster, and because the callback names give context
			-- Check Birthright first because it overwrites the description instead of appending to it
			if descObj.ObjSubType == 619 then table.insert(callbacks, BirthrightCallback) end
      -- Glowing Hourglass overwrites the description when used three times
			if REPENTOGON and descObj.ObjSubType == 422 then table.insert(callbacks, GlowingHourglassCallback) end
			if descObj.ObjSubType == 644 then table.insert(callbacks, ConsolationPrizeCallback) end

			if EID.collectiblesOwned[664] then table.insert(callbacks, BingeEaterCallback) end
			if EID.collectiblesOwned[59] then table.insert(callbacks, BookOfBelialCallback) end
			if EID.collectiblesOwned[584] then table.insert(callbacks, BookOfVirtuesCallback) end
			if EID.collectiblesOwned[706] or EID.collectiblesAbsorbed[706] then table.insert(callbacks, AbyssCallback) end

			if EID.collectiblesOwned[711] and EID:getEntityData(descObj.Entity, "EID_FlipItemID") then table.insert(callbacks, FlipCallback) end
			if EID.Config["SpindownDiceResults"] > 0 and (EID.collectiblesOwned[723] or EID.collectiblesAbsorbed[723]) and descObj.ObjSubType ~= 668 then table.insert(callbacks, SpindownDiceCallback) end

		-- Card / Rune Callbacks
		elseif descObj.ObjVariant == PickupVariant.PICKUP_TAROTCARD then
			hasTarot = EID.collectiblesOwned[451]
			if hasTarot then table.insert(callbacks, TarotClothCallback) end

			if EID.collectiblesOwned[286] and not EID.blankCardHidden[descObj.ObjSubType] and EID.cardMetadata[descObj.ObjSubType] then table.insert(callbacks, BlankCardCallback) end
			if EID.collectiblesOwned[263] and EID.runeIDs[descObj.ObjSubType] and EID.cardMetadata[descObj.ObjSubType] then table.insert(callbacks, ClearRuneCallback) end
		-- Pill Callbacks
		elseif descObj.ObjVariant == PickupVariant.PICKUP_PILL then
			if EID.collectiblesOwned[654] then table.insert(callbacks, FalsePHDCallback) end
			if EID.collectiblesOwned[348] then table.insert(callbacks, PlaceboCallback) end
			table.insert(callbacks, VurpCallback)

			if EID.pillPlayer == nil and #EID.coopAllPlayers > 1 then
				table.insert(callbacks, CoopPillCallback)
			end
		-- Trinket Callbacks
		elseif descObj.ObjVariant == PickupVariant.PICKUP_TRINKET then
			-- Golden Trinket / Mom's Box
			isGolden = ((descObj.ObjSubType & TrinketType.TRINKET_GOLDEN_FLAG) == TrinketType.TRINKET_GOLDEN_FLAG)
			hasBox = EID.collectiblesOwned[439]
			if isGolden or hasBox then table.insert(callbacks, GoldenTrinketCallback) end
		end

		return callbacks
	end
	EID:addDescriptionModifier("EID Repentance", EIDConditions, nil)

end

-- AFTERBIRTH+ OR REPENTANCE MODIFIERS
local function EIDConditionsAB(descObj)
	-- handle Sacrifice room
	if descObj.ObjType == -999 and descObj.ObjVariant == -1 then return {SacrificeRoomCallback} end
	-- currently, only pickup descriptions have modifiers
	if descObj.ObjType ~= 5 then return false end

	EID:CheckPlayersCollectibles()

	local callbacks = {}

	-- Collectible Pedestal Callbacks
	if descObj.ObjVariant == PickupVariant.PICKUP_COLLECTIBLE then
		if EID.Config["ItemCollectionIndicator"] and EID:requiredForCollectionPage(descObj.ObjSubType) then table.insert(callbacks, ItemCollectionPageCallback) end

		if descObj.ObjSubType == 297 then table.insert(callbacks, PandorasBoxCallback) end

		if EID.Config["DisplayVoidStatInfo"] then
			if EID.collectiblesOwned[477] then table.insert(callbacks, VoidCallback) end
			if EID.blackRuneOwned then table.insert(callbacks, BlackRuneCallback) end
		end
		if EID.collectiblesOwned[356] then table.insert(callbacks, CarBatteryCallback) end
	end

	return callbacks
end
EID:addDescriptionModifier("EID Afterbirth+", EIDConditionsAB, nil)

-- should this be done differently so that mods can add tab previews? (tab conditions is done last, but would be done before callbacks mods add, maybe tab should be checked in EID:getDescriptionObj
local function TabConditions(_)
	if EID:PlayersActionPressed(EID.Config["BagOfCraftingToggleKey"]) and not EID.inModifierPreview then return true end
	EID.TabPreviewID = 0
	return false
end

EID:addDescriptionModifier("EID Tab Previews", TabConditions, TabCallback)
