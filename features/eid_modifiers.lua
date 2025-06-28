local game = Game()

EID.TabPreviewID = 0
-- Modifiers switching the previewed description can cause infinite loops or undesired text, use this to help prevent it
EID.inModifierPreview = false
-- The "Item Reminder" needs to know if it shouldn't display because we're in a Hold Tab desc
EID.TabDescThisFrame = false
-- Some modifiers (e.g. Glitched Crown) want to know if Tab was pressed/released, rather than held
EID.TabHeldThisFrame = false
EID.TabHeldLastFrame = false

-- Returns true if Tab was pressed this frame, false otherwise
function EID:TabPressed()
	return EID.TabHeldThisFrame and not EID.TabHeldLastFrame
end
-- Returns true if Tab was released this frame, false otherwise
function EID:TabReleased()
	return EID.TabHeldLastFrame and not EID.TabHeldThisFrame
end

-- List of collectible IDs for us to check if a player owns them; feel free to add to this in mods that add description modifiers!
EID.collectiblesToCheck[CollectibleType.COLLECTIBLE_VOID] = true
EID.collectiblesToCheck["5.300.41"] = true -- Black Rune
-- Repentance modifiers
if EID.isRepentance then
	EID.collectiblesToCheck[CollectibleType.COLLECTIBLE_BOOK_OF_VIRTUES] = true
	EID.collectiblesToCheck[CollectibleType.COLLECTIBLE_SPINDOWN_DICE] = true
	EID.collectiblesToCheck[CollectibleType.COLLECTIBLE_MOMS_BOX] = true
	EID.collectiblesToCheck[CollectibleType.COLLECTIBLE_BLANK_CARD] = true
	EID.collectiblesToCheck[CollectibleType.COLLECTIBLE_CLEAR_RUNE] = true
	EID.collectiblesToCheck[CollectibleType.COLLECTIBLE_PLACEBO] = true
	EID.collectiblesToCheck[CollectibleType.COLLECTIBLE_FALSE_PHD] = true
	EID.collectiblesToCheck[CollectibleType.COLLECTIBLE_FLIP] = true
	EID.collectiblesToCheck[CollectibleType.COLLECTIBLE_GLOWING_HOUR_GLASS] = true
	EID.collectiblesToCheck[CollectibleType.COLLECTIBLE_GLITCHED_CROWN] = true
	EID.collectiblesToCheck[CollectibleType.COLLECTIBLE_ABYSS] = true
end
EID.collectiblesOwned = {}
EID.collectiblesAbsorbed = {}

EID.LastCollectibleCheck = 0
-- Check if any players own a collectible, returns true if at least one player has it
function EID:CheckPlayersCollectibles()
	-- recheck the players' owned collectibles periodically, not every frame
	-- (has to be checked regularly due to mechanics like D4 / Tainted Eden)
	if EID.GameUpdateCount >= EID.LastCollectibleCheck + 15 then
		EID.LastCollectibleCheck = EID.GameUpdateCount
		for v,_ in pairs(EID.collectiblesToCheck) do
			EID.collectiblesOwned[v] = false
			EID.collectiblesAbsorbed[v] = false
			-- Check for any player having the item, set collectiblesOwned to that player's ID
			local result, player, playerNum = EID:PlayersHaveItem(v)
			if result then EID.collectiblesOwned[v] = playerNum
			-- Check for the item being inside a player's Void if it's a collectible
			-- note: currently Absorb checks are only done as a backup, will always be false if it's owned legitimately
			elseif type(v) == "number" then
				result, player, playerNum = EID:PlayersVoidedCollectible(v)
				if result then EID.collectiblesAbsorbed[v] = playerNum end
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
		if EID.collectiblesOwned["5.300.41"] then EID:VoidRNGCheck(Isaac.GetPlayer(EID.collectiblesOwned["5.300.41"]), true) end
		lastVoidCheck = EID.GameUpdateCount
		EID.RecheckVoid = false
	end

	local prefix = (isRune and "{{Card41}} ") or "{{Collectible477}} "
	local pickup = descObj.Entity and descObj.Entity:ToPickup()
	local isAltOption = false
	local shopItem = pickup and pickup:IsShopItem()
	-- Test if this is an Option pedestal, Repentance only absorbs the lowest index one
	-- (Don't check for options if it's a shop item, e.g. Tainted Keeper choice pedestals)
	if EID.isRepentance and not shopItem then
		local optionIndex = pickup and pickup.OptionsPickupIndex
		local firstOption = EID.VoidOptionIndexes[optionIndex]
		if (optionIndex and optionIndex ~= 0 and firstOption and descObj.ObjSubType ~= firstOption) then
			EID:appendToDescription(descObj, "#" .. prefix .. "{{NameC"..firstOption.."}}" .. EID:getDescriptionEntry("VoidOptionText"))
			isAltOption = true
		end
	end
	-- Print Stat up info if Black Rune or non-active item
	if isRune or EID.itemConfig:GetCollectible(descObj.ObjSubType).Type ~= 3 then
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
				statIncreaseStr, replaceCount = EID:ReplaceVariableStr(statIncreaseStr, 1, "+" .. string.format("%.4g",v*voidStatUps[i]))
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

-- Map each text block of Pandora's Box to the AbsoluteStage number. Second entry is the block used for Alt-Stages
local pandoraStages = {
	[1] = { 1, 1 }, -- B1
	[2] = { 2, 2 }, -- B2
	[3] = { 3, 3 }, -- C1
	[4] = { 4, 4 }, -- C2
	[5] = { 5, 5 }, -- D1
	[6] = { 6, 6 }, -- D2
	[7] = { 7, 7 }, -- W1
	[8] = { 8, 8 }, -- W2
	[9] = { 9, 9 }, -- ???
	[10] = { 10, 11 }, -- Sheol, Cathedral
	[11] = { 12, 13 }, -- Dark Room, Chest
	[12] = { 9, 9 }, -- Void
	[13] = { 14, 14 }, -- Home
}
local pandoraGreedStages = {
	[1] = { 2, 2, 1 }, -- Basement
	[2] = { 4, 4, 2 }, -- Cellar
	[3] = { 6, 6, 3 }, -- Depths
	[4] = { 8, 8, 4 }, -- Womb
	[5] = { 10, 10, 5 }, -- Sheol
	[6] = { 13, 13, 6 }, -- Shop
	[7] = { 13, 13, 6 }, -- Chest
}

local function PandorasBoxCallback(descObj)
	local hasModifier = game:IsGreedMode() and EID:getDescriptionEntry("ConditionalDescs", "5.100.297 (Greed)", true)

	local level = game:GetLevel()
	local stageNum = game:IsGreedMode() and level:GetStage() or level:GetAbsoluteStage()

	local stageTable = game:IsGreedMode() and pandoraGreedStages or pandoraStages
	local textBlockToUse = stageTable[stageNum][hasModifier and 3 or level:IsAltStage() and 2 or 1]

	-- floor result information must be separated by line breaks or semicolons in localizations
	local levelDescriptions = {}
	local hasVoidEntry = false
	for lvlDesc in string.gmatch(descObj.Description, "([^#;]+)") do
		table.insert(levelDescriptions, lvlDesc)
		if lvlDesc:find("???") then
			hasVoidEntry = true
		end
	end

	-- Some languages are missing the ???/Void entry or more. We account for that
	if not hasVoidEntry and not hasModifier then
		-- void entry is supposed to be highlighted, but its missing, or the description is lacking multiple entries
		if textBlockToUse == 9 or (#levelDescriptions < 15 and textBlockToUse > 9) then
			return descObj
		end
		-- void entry is missing and a later entry should be highlighted. We adjust the id accordingly
		if textBlockToUse > 9 then
			textBlockToUse = textBlockToUse - 1
		end
	end

	-- look up the line to highlight. skip the first 2 lines, because they are generic item infos
	local textBlockToHighlight = levelDescriptions[textBlockToUse + 2]
	if textBlockToHighlight then
		-- Escape the content of the string, because gsub() expects pattern definitions
		local clearedTextBlock = string.gsub(textBlockToHighlight, "%p", "%%%0")
		local replacementText = "{{ColorBagComplete}}" .. textBlockToHighlight .. "{{CR}}"
		descObj.Description = string.gsub(descObj.Description, clearedTextBlock, replacementText)
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

-- Handle Black Feather dynamic damage up text
local function BlackFeatherCallback(descObj)
	for i = 1,#EID.coopAllPlayers do
		local player = EID.coopAllPlayers[i]
		local playerType = player:GetPlayerType()
		
		local itemCounter = 0
		for itemID, _ in pairs(EID.blackFeatherItems) do
			itemCounter = itemCounter + player:GetCollectibleNum(itemID)
		end
		for trinketID, _ in pairs(EID.blackFeatherTrinkets) do
			if EID.isRepentance then
				itemCounter = itemCounter + player:GetTrinketMultiplier(trinketID)
			else
				if player:HasTrinket(trinketID) then itemCounter = itemCounter + 1 end
			end
		end
		
		local hasBox = player:HasCollectible(439)
		local isGolden = EID.isRepentance and ((descObj.ObjSubType & TrinketType.TRINKET_GOLDEN_FLAG) == TrinketType.TRINKET_GOLDEN_FLAG)
		local base = EID.isRepentance and 0.5 or 0.2
		local damageMultiplied = base * itemCounter * (hasBox and 2 or 1) * (isGolden and 2 or 1)
		local dmgColor = itemCounter == 0 and "CR" or (hasBox or isGolden) and "ColorGold" or "BlinkGray"

		local description = EID:getDescriptionEntry("BlackFeatherInformation")
		description, _ = EID:ReplaceVariableStr(description, 1, tostring(itemCounter))
		description, _ =  EID:ReplaceVariableStr(description, 2, "{{"..dmgColor.."}}"..damageMultiplied.."{{CR}}")
		if #EID.coopAllPlayers > 1 then description =  EID:GetPlayerIcon(playerType, "P" .. i .. ":") .. " " .. description end
		
		EID:appendToDescription(descObj, "#"..description)
	end
	return descObj
end

-- Handle VURP description addition
local function VurpCallback(descObj)
	local adjustedID = EID:getAdjustedSubtype(descObj.ObjType, descObj.ObjVariant, descObj.ObjSubType)
	if adjustedID - 1 ~= PillEffect.PILLEFFECT_VURP then return descObj end

	for i = 1,#EID.coopAllPlayers do
		local player = EID.coopAllPlayers[i]
		local playerID = EID:getPlayerID(player, true)
		local playerType = player:GetPlayerType()
		local pickupHistory = EID.PlayerItemInteractions[playerID].pickupHistory
		if pickupHistory then
			local lastUsedPill = PillEffect.PILLEFFECT_VURP + 1
			local lastUsedPillColor = 1
			local j = 1
			while (j <= #pickupHistory) do
				local entry = pickupHistory[j]
				-- ignore the pill if the pill color is Golden
				if entry[1] == "pill" and entry[2] % 2048 ~= 14 then
					lastUsedPill = entry[3]
					lastUsedPillColor = entry[2]
					break
				end
				j = j + 1
			end
			local tableName = EID:getTableName(descObj.ObjType, descObj.ObjVariant, descObj.ObjSubType)
			local name = EID:getPillName(lastUsedPill, tableName == "horsepills")
			if #EID.coopAllPlayers == 1 then EID:appendToDescription(descObj, "#{{Pill" .. lastUsedPillColor .. "}}")
			else EID:appendToDescription(descObj, "#" .. EID:GetPlayerIcon(playerType, "P" .. i .. ":")) end
			EID:appendToDescription(descObj, " {{ColorPill}}" .. name)
		end
	end
	return descObj
end

-- Handle dynamic Luck chance modifiers
local function LuckChanceCallback(descObj)
	for i = 1,#EID.coopAllPlayers do
		local player = EID.coopAllPlayers[i]
		if player.Luck ~= 0 then
			local playerType = player:GetPlayerType()
			
			local result = math.max(math.min(EID.LuckFormulas[descObj.fullItemString](player.Luck), 100), 0)
			local luckLine = EID:getDescriptionEntry("LuckModifier")
			luckLine = EID:ReplaceVariableStr(luckLine, 1, string.format("%.3g", result))
			luckLine = EID:ReplaceVariableStr(luckLine, 2, "{{BlinkGreen}}" .. string.format("%.3g", player.Luck) .. "{{CR}}")
			
			if #EID.coopAllPlayers == 1 then EID:appendToDescription(descObj, "#{{Luck}} ")
			else EID:appendToDescription(descObj, "#" .. EID:GetPlayerIcon(playerType, "P" .. i .. ":") .. " ") end
			EID:appendToDescription(descObj, "{{NoLB}}" .. luckLine)
		end
	end
	return descObj
end

-- Handle changing health up text for non-red HP players
local function HealthUpCallback(descObj)
	if not EID.Config["DynamicHealthUps"] then return descObj end
	local adjustedSubtype = EID:getAdjustedSubtype(descObj.ObjType, descObj.ObjVariant, descObj.ObjSubType)
	if descObj.ObjVariant == 70 and descObj.ObjSubType > 2048 then adjustedSubtype = adjustedSubtype + 2048 end -- horsepill exception
	local typeVarSub = descObj.ObjType.."."..descObj.ObjVariant.."."..adjustedSubtype
	
	local closestPlayer = EID:ClosestPlayerTo(descObj.Entity)
	local playerType = closestPlayer:GetPlayerType()
	local heartType = EID.CharacterToHeartType[playerType] or "Red"
	if heartType ~= "Red" then
		-- find/replace Health Up lines
		local numHearts = EID.HealthUpData[typeVarSub] or 1
		local text = EID:getDescriptionEntry("RedToX", "Red to " .. heartType)
		
		local pos = 1
		while pos <= #text do
			-- replace {1} with the number of hearts and {2} with the plural character
			local toFind = EID:ReplaceVariableStr(text[pos], numHearts)
			if text[pos + 1] then
				local replaceWith = EID:ReplaceVariableStr(text[pos + 1], numHearts)
				descObj.Description = EID:SimpleReplace(descObj.Description, tostring(toFind), replaceWith, 1)
			end
			pos = pos + 2
		end
		-- pluralize
		descObj.Description = EID:TryPluralizeString(descObj.Description, numHearts)
		
		-- remove HealingRed lines entirely for Soul/Black/None health chars
		descObj.Description = descObj.Description .. "#" -- gsub finds final lines better if the desc ends with a line break
		if EID.HealthTypesWithoutHealing[heartType] then
			-- Find any lines containing {{HealingRed}} or {{HealingHalfRed}} and remove the line
			descObj.Description = descObj.Description:gsub("{{HealingRed}}(.-)#", "")
			descObj.Description = descObj.Description:gsub("{{HealingHalfRed}}(.-)#", "")
		end
		
		-- check if we just made the description blank
		if descObj.Description:gsub("#", "") == "" then
			local noEffectStr = EID:getDescriptionEntry("ConditionalDescs", "No Effect")
			local playerName = "{{ColorIsaac}}"..EID:getPlayerName(playerType) .. "{{CR}}"
			descObj.Description = EID:GetPlayerIcon(playerType) .. " " .. EID:ReplaceVariableStr(noEffectStr, playerName)
		end
	end
	
	-- test the other players for if they have a different effect
	-- todo: this simple check could have false positives (i.e. Yum Heart is identical for Soul and Black, but this thinks they'll be different)
	for i = 1, #EID.coopAllPlayers do
		local t = EID.coopAllPlayers[i]:GetPlayerType()
		local playerHeartType = EID.CharacterToHeartType[t] or "Red"
		if playerHeartType ~= heartType then
			table.insert(EID.DifferentEffectPlayers, t)
		end
	end
	
	return descObj
end

-- Handle Single use Item description add-on
local function SingleUseCallback(descObj)
	local infoText = EID:getDescriptionEntry("SingleUseInfo")
	descObj.Description = infoText .. "#" .. descObj.Description

	return descObj
end

if EID.isRepentance then
	-- Handle Birthright
	local function BirthrightCallback(descObj)
		descObj.Description = ""
		if EID.InsideItemReminder then
			local player = EID.ItemReminderPlayerEntity
			local playerID = player:GetPlayerType()
			local birthrightDesc = EID:getDescriptionEntry("birthright", playerID+1)
			if birthrightDesc ~= nil then
				local playerName = birthrightDesc[1] or player:GetName()
				EID:appendToDescription(descObj, EID:GetPlayerIcon(playerID) .. " {{ColorIsaac}}"..playerName.."{{CR}}#"..birthrightDesc[3].."#")
			end
			return descObj
		end
		local describedPlayerTypes = {}
		for i = 1, #EID.coopAllPlayers do
			local player = EID.coopAllPlayers[i]
			local playerID = player:GetPlayerType()
			if descObj.Entity and playerID == PlayerType.PLAYER_CAIN_B and not EID.isDeathCertRoom then
				-- Don't add a description if Tainted Cain is looking at a Birthright pedestal, he can't get it...
			else
				if not player:IsSubPlayer() and player:GetMainTwin( ):GetPlayerType() == playerID and not describedPlayerTypes[playerID] then
					describedPlayerTypes[playerID] = true
					local birthrightDesc = EID:getDescriptionEntry("birthright", playerID+1)
					if birthrightDesc ~= nil then
						local playerName = birthrightDesc[1] or player:GetName()
						EID:appendToDescription(descObj, EID:GetPlayerIcon(playerID) .. " {{ColorIsaac}}"..playerName.."{{CR}}#"..birthrightDesc[3].."#")
					end
				end
			end
		end
		return descObj
	end

	-- Handle Glowing Hourglass changed back into Hourglass description
	local function GlowingHourglassCallback(descObj)
		if REPENTOGON and EID.collectiblesOwned[422] then
			local transformedText = EID:getDescriptionEntry("GlowingHourglassTransformed")
			local numUses = Isaac.GetPlayer(EID.collectiblesOwned[422]):GetActiveItemDesc().VarData
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

	-- 3 coins, 1 bomb, 1 key, 1 soul heart, 2 red hearts
	local consolationPickups = { "5.20", "5.40", "5.30", "5.10.3", "5.10" }
	local consolationQuantity = { "3", "1", "1", "1", "2" }

	-- Handle Consolation Prize stat prediction
	local function ConsolationPrizeCallback(descObj)
		for p = 1,#EID.coopAllPlayers do
			local player = EID.coopAllPlayers[p]
			local playerID = player:GetPlayerType()
			local playerName = EID:getPlayerName(player:GetPlayerType())

			local playerStats = {}
			playerStats[1] = EID:SimpleRound((player.MoveSpeed * 4.5) - 2)
			playerStats[2] = EID:SimpleRound((((30/(player.MaxFireDelay + 1))^0.75) * 2.120391) - 2)
			playerStats[3] = EID:SimpleRound(((player.Damage^0.56)*2.231179) - 2)
			playerStats[4] = EID:SimpleRound(((player.TearRange - 230) / 60) + 2)

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

			local newStr = "#" .. EID:GetPlayerIcon(playerID) .. " {{ColorGray}}"..playerName.."{{CR}}#"

			local voidNames = EID:getDescriptionEntry("VoidNames")
			for i,v in ipairs(statsToDisplay) do
				local statIncreaseStr = "↑ " .. voidStatIcons[v] .. " " .. voidNames[v]
				local replaceCount = 0
				statIncreaseStr, replaceCount = EID:ReplaceVariableStr(statIncreaseStr, 1, "+" .. string.format("%.4g",voidStatUps[v]))
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
		-- don't display in item reminder, or if we've already printed it earlier in the desc
		if EID.InsideItemReminder or string.match(descObj.Description, "#{{Collectible723}} :") then return descObj end
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
			EID:appendToDescription(descObj, " " .. EID:ReplaceVariableStr(EID:getDescriptionEntry("ResultsWithX"), 1, "{{Collectible356}}"))
		end
		if firstID ~= 0 and EID.TabPreviewID == 0 then
			EID.TabPreviewID = firstID
			EID:appendToDescription(descObj, "#{{Blank}} ".. EID:getDescriptionEntry("FlipItemToggleInfo"))
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

			--custom additions table (manually defined)
			-- index 1 is 2x, index 2 is 3x, index 3 is 4x
			local addition = 0
			if data.additions then
				if hasBox then
					addition = data.additions[textChoice-1] or 0
				else
					addition = data.additions[textChoice]
				end
			end

			--replacing numeric text based on our multiplier
			if (data.t) then
				local numReplacements = 0
				--"%d*%.?%d+" will grab every number group (1, 10, 0.5), this will allow us to not replace the "1" in "10" erroneously
				descObj.Description = string.gsub(descObj.Description, "%d*%.?%d+", function(s)
					count = 0
					for _, v in ipairs(data.t) do
						if (s == tostring(v) and count == 0) then
							count = count + 1
							numReplacements = numReplacements + 1
							if v == 17 then
								if multiplier == 2 then v = 16.5
								elseif multiplier == 3 then v = (1/6)*100 end -- convert 17% to 33% or 50%
							elseif v == 33 and (multiplier == 1.5 or multiplier == 3) then v = (1/3)*100 end -- convert 33% to 50% or 100%
							return "{{ColorGold}}" .. string.format("%.4g",v * multiplier + addition) .. "{{CR}}"
						end
					end
				end)
				count = count + numReplacements
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
			-- we didn't replace everything; maybe the language didn't have the number? append a simple "effect is doubled/tripled"
			if count == 0 and multiplier > 1 then
				local goldenDesc = EID:getDescriptionEntry("goldenTrinket") or ""
				if multiplier == 3 then goldenDesc = EID:getDescriptionEntry("tripledTrinket") or ""
				elseif multiplier == 4 then goldenDesc = EID:getDescriptionEntry("quadrupledTrinket") end
				descObj.Description = descObj.Description .. "#" .. "{{ColorGold}}"..goldenDesc
			end
		end
		return descObj
	end
	
	-- Handle Wild Card description addition
	local function WildCardCallback(descObj)
		for i = 1,#EID.coopAllPlayers do
			local player = EID.coopAllPlayers[i]
			local playerID = EID:getPlayerID(player, true)
			local playerType = player:GetPlayerType()
			if EID.WildCardEffects[playerID] then
				EID:appendToDescription(descObj, "#")
				
				if #EID.coopAllPlayers > 1 then EID:appendToDescription(descObj, EID:GetPlayerIcon(playerType, "P" .. i .. ":") .. " ") end
				if EID.WildCardPillColor[playerID] then -- show the correct pill color; unnecessary attention to detail but why not
					EID:appendToDescription(descObj, "{{Pill" .. EID.WildCardPillColor[playerID] .. "}} {{NameOnly" .. EID.WildCardEffects[playerID] .. "}}")
				else EID:appendToDescription(descObj, "{{Name" .. EID.WildCardEffects[playerID] .. "}}") end
			end
		end
		return descObj
	end
	
	-- Handle The Stars? description addition
	local function TheStarsCallback(descObj)
		EID:UpdateAllPlayerPassiveItems()
		local modified = false
		for i = 1,#EID.coopAllPlayers do
			local player = EID.coopAllPlayers[i]
			local playerID = EID:getPlayerID(player, true)
			local playerType = player:GetPlayerType()
			if EID.OldestItemIndex[playerID] and EID.RecentlyTouchedItems[playerID] then
				local repetitions = player:HasCollectible(451) and 2 or 1 -- Tarot Cloth removes 2 items
				for indexOffset = 0, repetitions - 1 do
					local oldestItem = EID.RecentlyTouchedItems[playerID][EID.OldestItemIndex[playerID] + indexOffset]
					if oldestItem then
						-- when inside the item reminder's overview, wipe the description before appending the results
						if EID.InsideSpecialDescriptions and not modified then
							descObj.Description = ""
							modified = true
						end
						EID:appendToDescription(descObj, "#")
						if #EID.coopAllPlayers > 1 then EID:appendToDescription(descObj, EID:GetPlayerIcon(playerType, "P" .. i .. ":") .. " ") end
						EID:appendToDescription(descObj, "{{NameC" .. oldestItem .. "}}")
					end
				end
			end
		end
		return descObj
	end
	
	local function VariableCharge(descObj, config, collID, chargeText)
		local text = EID:getDescriptionEntry(chargeText or "VariableCharge")
		if text ~= nil and config ~= nil and config.MimicCharge and config.MimicCharge ~= -1 and descObj.SubType ~= 48 then
			text = EID:ReplaceVariableStr(text, 1, "{{NameOnlyC" .. collID .. "}}")
			EID:appendToDescription(descObj, "#{{Collectible" .. collID .. "}} " .. text .. " {{"..config.MimicCharge.."}}{{Battery}}")
		end
	end
	
	local hasTarot = false
	-- Handle Blank Card description addition
	local function BlankCardCallback(descObj)
		VariableCharge(descObj, EID.itemConfig:GetCard(descObj.ObjSubType), 286)
		-- If the player has Tarot Cloth and Blank Card, display additional text
		if hasTarot then
			local text = EID:getDescriptionEntry("BlankCardEffect")
			local buffText = EID:getDescriptionEntry("tarotClothBlankCardBuffs", descObj.ObjSubType)
			if buffText then EID:appendToDescription(descObj, "#{{Collectible286}} " .. text .. " " .. buffText) end
		end
		return descObj
	end

	-- Handle Clear Rune description addition
	local function ClearRuneCallback(descObj)
		VariableCharge(descObj, EID.itemConfig:GetCard(descObj.ObjSubType), 263)
		return descObj
	end

	-- Handle Placebo description addition
	local function PlaceboCallback(descObj)
		local adjustedID = EID:getAdjustedSubtype(descObj.ObjType, descObj.ObjVariant, descObj.ObjSubType)
		VariableCharge(descObj, EID.itemConfig:GetPillEffect(adjustedID-1), 348)
		return descObj
	end
	
	-- Handle Experimental Pill description addition
	local function ExperimentalPillCallback(descObj)
		local adjustedID = EID:getAdjustedSubtype(descObj.ObjType, descObj.ObjVariant, descObj.ObjSubType)
		if adjustedID - 1 ~= PillEffect.PILLEFFECT_EXPERIMENTAL then return descObj end
		local horse = descObj.ObjSubType > 2048

		for i = 1,#EID.coopAllPlayers do
			local player = EID.coopAllPlayers[i]
			local playerType = player:GetPlayerType()
			local pillModifierID = 0
			local goodAndBad = false
			
			-- Check for PHD, Lucky Foot, Virgo, and False PHD
			if player:HasCollectible(75) then pillModifierID = 75
			elseif player:HasCollectible(46) then pillModifierID = 46
			elseif player:HasCollectible(303) then pillModifierID = 303
			end
			-- Check for False PHD, and if we have good AND bad pills, just print the damage up text
			if player:HasCollectible(654) then
				if pillModifierID ~= 0 then goodAndBad = true end
				pillModifierID = 654
			end
			if pillModifierID ~= 0 then
				local expPillString = ""
				if pillModifierID == 654 then
					local damageUpString = ""
					if horse then damageUpString = EID:getDescriptionEntry("FalsePHDHorseDamage")
					else damageUpString = EID:getDescriptionEntry("FalsePHDDamage") end
					if goodAndBad then
						expPillString = damageUpString
					else
						expPillString = EID:getDescriptionEntry("ExperimentalPillFalsePHD") .. "#{{Collectible654}} " .. damageUpString
					end
				else expPillString = EID:getDescriptionEntry("ExperimentalPillPHD") end
				EID:appendToDescription(descObj, "#")
				if #EID.coopAllPlayers > 1 then EID:appendToDescription(descObj,  EID:GetPlayerIcon(playerType, "P" .. i .. ":")) end
				EID:appendToDescription(descObj, "{{Collectible" .. pillModifierID .. "}} " .. expPillString)
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
			local damageUp = string.find(data.class,"3") and string.find(data.class,"-")
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
				EID:appendToDescription(descObj, "#" .. EID:GetPlayerIcon(playerID, "P" .. i .. ":") .." {{ColorObjName}}"..pillObj.Name .."{{CR}}#"..pillObj.Description)
			end
		end
		EID.pillPlayer = nil
		return descObj
	end

	-- Handle Flip description addition
	local function FlipCallback(descObj)
		local flipItemID = EID:getEntityData(descObj.Entity, "EID_FlipItemID")
		if not flipItemID or flipItemID <= 0 or not EID.Config["DisplayFlipItemDescriptions"] then return descObj end
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
	
	-- Handle Tainted Cain pedestals
	local function TaintedCainPedestalCallback(descObj)
		if game.Challenge == Challenge.CHALLENGE_CANTRIPPED or EID.isDeathCertRoom or not descObj.Entity or not EID.Config["DisplayTCainSalvageResults"] then return descObj end
		local item = EID.itemConfig:GetCollectible(descObj.ObjSubType)
		if (item.Tags and item.Tags & ItemConfig.TAG_QUEST == ItemConfig.TAG_QUEST) then return descObj end
		
		local closestPlayer = EID:ClosestPlayerTo(descObj.Entity)
		local playerType = closestPlayer:GetPlayerType()
		
		if playerType == PlayerType.PLAYER_CAIN_B then
			-- Construct the Salvage description
			local hasBirthright = closestPlayer:HasCollectible(619)
			local salvageDesc = hasBirthright and EID:getDescriptionEntry("TaintedCainPedestalBaseBirthright") or EID:getDescriptionEntry("TaintedCainPedestalBase")
			local pickupNames = EID:getDescriptionEntry("PickupNames")

			-- add T-Cain icon at start of line
			salvageDesc = "{{Player23}} ".. salvageDesc
			
			-- Guaranteed items from room type
			local roomType = game:GetLevel():GetCurrentRoomDesc().Data.Type
			local roomPool = game:GetItemPool():GetPoolForRoom(roomType, 69)
			if roomType ~= RoomType.ROOM_ERROR and EID.SalvageRoomTypes[roomPool] then
				local newLine = EID.RoomTypeToMarkup[roomType] .. " " .. EID:getDescriptionEntry("TaintedCainPedestalGuaranteed")
				newLine = EID:ReplaceVariableStr(newLine, 1, pickupNames[EID.SalvageRoomTypes[roomPool]]:gsub("{{[.-}}]+ ", ""))
				newLine = EID:ReplaceVariableStr(newLine, "n", EID.PickupStartsWithVowel[EID.SalvageRoomTypes[roomPool]] and "n" or "")
				salvageDesc = salvageDesc .. "#" .. newLine
			end
			
			-- Bonus items from trinkets
			for trinketID,pickupID in pairs(EID.SalvageTrinkets) do
				if closestPlayer:HasTrinket(trinketID) then
					local newLine = "{{Trinket" .. trinketID .. "}} " .. EID:getDescriptionEntry("TaintedCainPedestalBonus")
					newLine = EID:ReplaceVariableStr(newLine, 1, pickupNames[pickupID]:gsub("{{[.-}}]+ ", ""))
					salvageDesc = salvageDesc .. "#" .. newLine
				end
			end
			
			-- Bonus item from Lucky Toe
			if closestPlayer:HasTrinket(42) then
				local newLine = "{{Trinket42}} " .. (hasBirthright and EID:getDescriptionEntry("TaintedCainPedestalLuckyToeBirthright") or EID:getDescriptionEntry("TaintedCainPedestalLuckyToe"))
				salvageDesc = salvageDesc .. "#" .. newLine
			end
			
			-- Daemon's Tail reduces hearts
			if closestPlayer:HasTrinket(22) then
				local newLine = "{{Trinket22}} " .. EID:getDescriptionEntry("TaintedCainPedestalDaemonsTail")
				salvageDesc = salvageDesc .. "#" .. newLine
			end
			descObj.Description = salvageDesc
			descObj.Transformation = nil -- remove transformation info. useless for T-Cain because item will not count towards transformations

			for i = 1, #EID.coopAllPlayers do
				local t = EID.coopAllPlayers[i]:GetPlayerType()
				if t ~= PlayerType.PLAYER_CAIN_B then
					table.insert(EID.DifferentEffectPlayers, t)
				end
			end
		else
			table.insert(EID.DifferentEffectPlayers, PlayerType.PLAYER_CAIN_B)
		end
		
		return descObj
	end
	
	-- Handle Glitched Crown style pedestals
	local currentSelection = {} -- keep track of which description we're looking at for a given pedestal
	local goingToSpindown = false
	local inGlitchedCrown = false
	local function GlitchedCrownCallback(descObj)
		if not descObj.Entity or inGlitchedCrown then return descObj end
		local entity = descObj.Entity
		local curRoomIndex = game:GetLevel():GetCurrentRoomIndex()
		local pedestalID = descObj.Entity.InitSeed .. descObj.Entity.Index

		if EID.GlitchedCrownCheck[curRoomIndex] and EID.GlitchedCrownCheck[curRoomIndex][pedestalID] then
			-- this table has collectible ID keys that define the first frame and most recent frame that that ID has been seen on this pedestal
			-- we need to filter out items that haven't been seen in a while (due to a reroll perhaps), then sort by first frame

			local items = EID.GlitchedCrownCheck[curRoomIndex][pedestalID]
			local sortedItems = {}
			for id, frames in pairs(items) do
				if EID.GameUpdateCount - frames[2] > 120 then
					items[id] = nil
				else
					table.insert(sortedItems, { id, frames[1] })
				end
			end
			if #sortedItems < 5 then return descObj end
			table.sort(sortedItems, function(a, b) return a[2] < b[2] end)

			inGlitchedCrown = true
			currentSelection[pedestalID] = currentSelection[pedestalID] or 0

			-- watch for Tab being pressed to advance our selection by 1
			-- when spindown dice is involved, watch for tab being released instead of pressed, it makes more sense
			if goingToSpindown and EID:TabReleased() or not goingToSpindown and EID:TabPressed() then
				currentSelection[pedestalID] = currentSelection[pedestalID] + 1
				if currentSelection[pedestalID] > #sortedItems then currentSelection[pedestalID] = 0 end
			end

			-- display the overview description
			if currentSelection[pedestalID] == 0 then
				descObj = EID:getDescriptionObj(5, 100, 689, nil, false)
				descObj.Description = ""
				for _, item in ipairs(sortedItems) do
					descObj.Description = descObj.Description .. "{{Collectible" .. item[1] .. "}} {{NameOnlyC" .. item[1] .. "}}#"
				end
				
			-- display a specific description
			else
				descObj = EID:getDescriptionObj(5, 100, sortedItems[currentSelection[pedestalID]][1])
			end
			
			descObj.Entity = entity
			
			local nextIcon = "{{Collectible689}}"
			if currentSelection[pedestalID] + 1 <= #sortedItems then nextIcon = "{{Collectible" ..
				sortedItems[currentSelection[pedestalID] + 1][1] .. "}}" end
			EID:appendToDescription(descObj,
				"#{{Blank}} " .. EID:ReplaceVariableStr(EID:getDescriptionEntry("GlitchedCrownToggleInfo"), 1, nextIcon))

			-- manually apply Flip; changing the description's item stops future callbacks to avoid infinite loops, but we want Flip still, it works fine
			if descObj.ObjSubType ~= entity.SubType then
				if EID.collectiblesOwned[711] then descObj = FlipCallback(descObj) end
				-- manually apply Tainted Cain
				if EID:PlayersHaveCharacter(PlayerType.PLAYER_CAIN_B) then descObj = TaintedCainPedestalCallback(descObj) end
			end
			
		end
		inGlitchedCrown = false
		return descObj
	end
	
	-----------------------------
	-- Abyss Locust Handling-----
	-----------------------------
	local function GetChanceString(effectID, chance1, chance2, chance3)
		local chanceText = ""
		local chance = (effectID == 3 and chance3 < 1 and chance3) or (effectID == 2 and chance2 < 1 and chance2) or chance1 or 1
		if chance ~= 1 then
			chanceText = EID:getDescriptionEntry("AbyssTexts", "Chance")
			local chancePercent = string.format("%.2f", chance * 100):gsub("%.?0+$", "") -- formated and without trailing zeros
			chanceText = EID:ReplaceVariableStr(chanceText, chancePercent)
		end
		return chanceText
	end

	local function GetFlagString(id, tableName, color, flagArray, chance1, chance2, chance3)
		local text = ""
		for _, locustFlag in ipairs(flagArray) do
			local locustEffectText = EID:getDescriptionEntry(tableName, locustFlag)
			if locustEffectText then
				text = text .. "#".. color .. locustEffectText .. GetChanceString(id, chance1, chance2, chance3)
			end
			if not EID.isRepentancePlus then
				-- In Repentance, there is a bug where only the first flag of the array is able to trigger
				return text
			end
		end
		return text
	end

	local function AbyssCallback(descObj)
		local textColor = "{{ColorRed}}"
		-- Display explicit "abyssSynergies" table entry, if present
		local overrideDesc = EID:getDescriptionEntry("abyssSynergies", descObj.ObjSubType)
		if overrideDesc then
			EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. overrideDesc)
			return descObj
		end
		-- Display automatically generated description

		-- Default locust Data
		local locustData = { 1, 1, 1, { -1 }, { -1 }, { -1 }, { -1 }, { -1 }, { -1 }, 1, 1, 1, 1, 1 }
		-- Check if an XML entry exists and load if exists
		if EID.XMLLocusts and EID.XMLLocusts[descObj.ObjSubType] then
			locustData = EID.XMLLocusts[descObj.ObjSubType]
		end
		local descriptionText = ""
		local amount = locustData[1]
		local scale = locustData[2]
		local speed = locustData[3]
		local locustFlags1 = locustData[4] -- array
		local locustFlags2 = locustData[5] -- array
		local locustFlags3 = locustData[6] -- array
		local tearFlags1 = locustData[7] -- array
		local tearFlags2 = locustData[8] -- array
		local tearFlags3 = locustData[9] -- array
		local procChance1 = locustData[10]
		local procChance2 = locustData[11]
		local procChance3 = locustData[12]
		local damageMultiplier1 = locustData[13]
		local damageMultiplier2 = locustData[14]

		-- base damage via Quality and multiplier
		local damageText = EID:getDescriptionEntry("AbyssTexts", "DamageMult")
		local dmg = (EID.isRepentancePlus and EID.QualityToLocustDamageMultiplier[descObj.Quality] or 1) * damageMultiplier1
		damageText = EID:ReplaceVariableStr(damageText, dmg)

		-- size
		local scaleText = ""
		if scale < 1 then scaleText = EID:getDescriptionEntry("AbyssTexts", "SizeSmall")
		elseif scale > 1 then scaleText = EID:getDescriptionEntry("AbyssTexts", "SizeBig") end
		-- speed
		local speedText = ""
		if speed < 1 then speedText = EID:getDescriptionEntry("AbyssTexts", "SpeedSlow")
		elseif speed >=6 then speedText = EID:getDescriptionEntry("AbyssTexts", "SpeedDash")
		elseif speed > 1 then speedText = EID:getDescriptionEntry("AbyssTexts", "SpeedFast") end

		-- overview / headline
		local infoText = amount > 1 and EID:getDescriptionEntry("AbyssTexts", "InfoTextPlural") or EID:getDescriptionEntry("AbyssTexts", "InfoText")
		descriptionText = "#{{Collectible706}} " .. textColor .. infoText
		descriptionText = EID:ReplaceVariableStr(descriptionText, "amount", amount)
		descriptionText = EID:ReplaceVariableStr(descriptionText, "size", scaleText)
		descriptionText = EID:ReplaceVariableStr(descriptionText, "speed", speedText)
		descriptionText = EID:ReplaceVariableStr(descriptionText, "dmg", damageText)

		-- damage multiplier based on proc chance
		if damageMultiplier2 ~= 1 then
			local dmgText2 = EID:ReplaceVariableStr(EID:getDescriptionEntry("AbyssTexts", "DamageMult"), damageMultiplier2)
			descriptionText = descriptionText .. "#"..textColor  .. dmgText2 .. GetChanceString(1, procChance1, procChance2, procChance3)
		end
		-- create list of locust effect descriptions
		descriptionText = descriptionText .. GetFlagString(1, "AbyssLocustEffects", textColor, locustFlags1, procChance1, procChance2, procChance3)
		descriptionText = descriptionText .. GetFlagString(2, "AbyssLocustEffects", textColor, locustFlags2, procChance1, procChance2, procChance3)
		descriptionText = descriptionText .. GetFlagString(3, "AbyssLocustEffects", textColor, locustFlags3, procChance1, procChance2, procChance3)

		-- create list of tear effect descriptions
		descriptionText = descriptionText .. GetFlagString(1, "TearFlagNames", textColor, tearFlags1, procChance1, procChance2, procChance3)
		descriptionText = descriptionText .. GetFlagString(2, "TearFlagNames", textColor, tearFlags2, procChance1, procChance2, procChance3)
		descriptionText = descriptionText .. GetFlagString(3, "TearFlagNames", textColor, tearFlags3, procChance1, procChance2, procChance3)

		-- pluralize
		descriptionText = EID:TryPluralizeString(descriptionText, amount)
		-- Put everything together
		EID:appendToDescription(descObj, descriptionText)

		return descObj
	end
	---------------------------------------
	---- Book of Virtues Wisp Handling-----
	---------------------------------------

	local function BookOfVirtuesWispDescriptionBuilder(descObj, itemID)
		local textColor = "{{ColorPastelBlue}}"
		-- Get explicit "bookOfVirtuesWisps" table entry, if present
		local additionalDesc = EID:getDescriptionEntry("bookOfVirtuesWisps", itemID)

		-- Display automatically generated description

		-- Check if an XML entry exists and load if exists
		if not EID.XMLWisps or not EID.XMLWisps[itemID] then
			if additionalDesc then -- try to display additional Description if available
				EID:appendToDescription(descObj, "#{{VirtuesCollectible"..itemID.."}} " .. textColor .. additionalDesc)
			end
			return descObj
		end
		-- Disable removal of stat up icons for this description object
		descObj.IgnoreBulletPointIconConfig = true

		-- read xml data
		local wispData = EID.XMLWisps[itemID]
		local descriptionText = ""
		local hp = wispData[1]
		local layer = wispData[2]
		local damage = wispData[3]
		local stageDamage = wispData[4]
		local damageMultiplier2 = wispData[5]
		local shotSpeed = wispData[6]
		local fireDelay = wispData[7]
		local procChance = wispData[8]
		local canShoot = wispData[9] and fireDelay ~= -1
		local amount = wispData[10]
		local tearFlags = wispData[11] -- array
		local tearFlags2 = wispData[12] -- array

		-- Display "No Wisp" text if defined. else, display more detailed description
		if EID.WispData.NoWisp[itemID] then
			local noWispsText = EID:getDescriptionEntry("BookOfVirtuesWispTexts", "NoWisps")
			descriptionText = "#{{VirtuesCollectible"..itemID.."}} " .. textColor .. noWispsText
		else
			-- base damage via damage, stage damage and firedelay
			local damageText = ""
			if canShoot then
				damageText = EID:getDescriptionEntry("BookOfVirtuesWispTexts", "Damage")
				local dmg = (damage + (stageDamage * (game:GetLevel():GetAbsoluteStage() - 1))) * (30 / fireDelay)
				local dmgTxt = string.format("%.2f", dmg):gsub("%.?0+$", "") -- formated and without trailing zeros
				damageText = EID:ReplaceVariableStr(damageText, dmgTxt)
			else
				-- Display "Cant Shoot" text instead of damage values
				damageText = EID:getDescriptionEntry("BookOfVirtuesWispTexts", "CantShoot")
			end

			-- HP Text
			local hpText = EID:getDescriptionEntry("BookOfVirtuesWispTexts", "Health")
			hpText = EID:ReplaceVariableStr(hpText, hp)

			-- layer
			local ringTable = EID:getDescriptionEntry("BookOfVirtuesWispTexts", "Ring")
			local ringText = ringTable[layer] or ringTable[1]
			-- overview / headline
			descriptionText = "#{{VirtuesCollectible"..itemID.."}} " .. textColor .. ringText
			descriptionText = EID:ReplaceVariableStr(descriptionText, "amount", amount ~= 0 and amount or "")

			-- HP and damage text
			local statText = EID:getDescriptionEntry("BookOfVirtuesWispTexts", "StatDescription")
			statText = EID:ReplaceVariableStr(statText, "health", textColor .. hpText) -- TODO: Fix issue where color definition before icon definition causes 1 extra space
			statText = EID:ReplaceVariableStr(statText, "damage", damageText)
			descriptionText = descriptionText .. "#" .. statText

			-- Single room warning
			if EID.WispData.SingleRoom[itemID] then
				local singleRoomText = EID:getDescriptionEntry("BookOfVirtuesWispTexts", "SingleRoom")
				descriptionText = descriptionText .. "#{{Warning}} " .. textColor .. singleRoomText
			end

			if canShoot then
				-- shot speed
				if shotSpeed ~= 1 then
					local shotSpeedText = EID:getDescriptionEntry("BookOfVirtuesWispTexts", "Shotspeed")
					local shotSpeedtxt = string.format("%.2f", shotSpeed * 100):gsub("%.?0+$", "") -- formated and without trailing zeros
					shotSpeedText = EID:ReplaceVariableStr(shotSpeedText, shotSpeedtxt)
					descriptionText = descriptionText .. "#{{Shotspeed}} " .. textColor .. shotSpeedText
				end
	
				-- damage multiplier based on proc chance
				if damageMultiplier2 ~= 1 then
					local damageText2 = EID:ReplaceVariableStr(EID:getDescriptionEntry("BookOfVirtuesWispTexts", "Damage"), damageMultiplier2)
					descriptionText = descriptionText .. "#" .. textColor .. damageText2 .. GetChanceString(2, procChance, procChance, 0)
				end
				-- create list of tear effect descriptions
				descriptionText = descriptionText .. GetFlagString(1, "TearFlagNames", "{{Shotspeed}} " .. textColor, tearFlags, procChance, procChance)
				descriptionText = descriptionText .. GetFlagString(2, "TearFlagNames", "{{Shotspeed}} " .. textColor, tearFlags2, procChance, procChance)
			end
		end

		-- add additional descriptions. Do a loop to ensure correct line color
		if additionalDesc then
			for line in string.gmatch(additionalDesc, "([^#]+)") do
				descriptionText = descriptionText .. "#" .. textColor .. line
			end
		end

		-- pluralize
		descriptionText = EID:TryPluralizeString(descriptionText, amount)
		-- Put everything together
		EID:appendToDescription(descObj, descriptionText)
		return descObj
	end

	-- Handle Book of Virtues description addition
	local function BookOfVirtuesCallback(descObj)
		-- Display players' current active item's wisp effect when looking at a Book of Virtues pedestal
		if descObj.ObjSubType == 584 and not EID.InsideItemReminder then
			for i = 1,#EID.coopAllPlayers do
				local player = EID.coopAllPlayers[i]
				local activeItemID = player:GetActiveItem()
				if activeItemID > 0 then
					descObj = BookOfVirtuesWispDescriptionBuilder(descObj, activeItemID)
				end
			end
			return descObj
		end
		-- Display wisp effect of a pedestal / your active while holding Book of Virtues
		return BookOfVirtuesWispDescriptionBuilder(descObj, descObj.ObjSubType)
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
			if (REPENTOGON or EID.collectiblesOwned[689]) and EID.Config["GlitchedCrownSummary"] then table.insert(callbacks, GlitchedCrownCallback) end
			
			-- Glowing Hourglass overwrites the description when used three times
			if REPENTOGON and descObj.ObjSubType == 422 then table.insert(callbacks, GlowingHourglassCallback) end
			if descObj.ObjSubType == 644 then table.insert(callbacks, ConsolationPrizeCallback) end
			if EID.collectiblesOwned[584] or descObj.ObjSubType == 584 then table.insert(callbacks, BookOfVirtuesCallback) end
			
			if EID:PlayersHaveCharacter(PlayerType.PLAYER_CAIN_B) then table.insert(callbacks, TaintedCainPedestalCallback) end
			if EID.collectiblesOwned[711] and EID:getEntityData(descObj.Entity, "EID_FlipItemID") then table.insert(callbacks, FlipCallback) end
			if EID.collectiblesOwned[706] then table.insert(callbacks, AbyssCallback) end
			if EID.Config["SpindownDiceResults"] > 0 and (EID.collectiblesOwned[723] or EID.collectiblesAbsorbed[723]) and descObj.ObjSubType ~= 668 then
				goingToSpindown = true
				table.insert(callbacks, SpindownDiceCallback)
			else goingToSpindown = false end
			
		-- Card / Rune Callbacks
		elseif descObj.ObjVariant == PickupVariant.PICKUP_TAROTCARD then
			hasTarot = EID.collectiblesOwned[451]

			if EID.collectiblesOwned[286] and EID.itemConfig:GetCard(descObj.ObjSubType) and EID.itemConfig:GetCard(descObj.ObjSubType):IsCard() then table.insert(callbacks, BlankCardCallback) end
			if EID.collectiblesOwned[263] and EID.itemConfig:GetCard(descObj.ObjSubType) and EID.itemConfig:GetCard(descObj.ObjSubType):IsRune() then table.insert(callbacks, ClearRuneCallback) end
			if descObj.ObjSubType == 80 then table.insert(callbacks, WildCardCallback) end
			if descObj.ObjSubType == 73 then table.insert(callbacks, TheStarsCallback) end
		-- Pill Callbacks
		elseif descObj.ObjVariant == PickupVariant.PICKUP_PILL then
			if EID.collectiblesOwned[654] then table.insert(callbacks, FalsePHDCallback) end
			if EID.collectiblesOwned[348] and EID.itemConfig:GetPillEffect(descObj.ObjSubType) then table.insert(callbacks, PlaceboCallback) end
			table.insert(callbacks, ExperimentalPillCallback)

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
	-- currently, only pickup descriptions have modifiers
	if descObj.ObjType ~= 5 then return false end

	EID:CheckPlayersCollectibles()

	local callbacks = {}

	if EID.LuckFormulas[descObj.fullItemString] then table.insert(callbacks, LuckChanceCallback) end
	local adjustedSubtype = EID:getAdjustedSubtype(descObj.ObjType, descObj.ObjVariant, descObj.ObjSubType)
	local typeVarSub = descObj.ObjType.."."..descObj.ObjVariant.."."..adjustedSubtype
	if EID.HealthUpData[typeVarSub] or EID.HealingItemData[typeVarSub] then table.insert(callbacks, HealthUpCallback) end
	-- Collectible Pedestal Callbacks
	if descObj.ObjVariant == PickupVariant.PICKUP_COLLECTIBLE then
		if EID.Config["ItemCollectionIndicator"] and EID:requiredForCollectionPage(descObj.ObjSubType) then table.insert(callbacks, ItemCollectionPageCallback) end

		if EID.SingleUseCollectibles[descObj.ObjSubType] then table.insert(callbacks, SingleUseCallback) end

		if descObj.ObjSubType == 297 then table.insert(callbacks, PandorasBoxCallback) end

		if EID.Config["DisplayVoidStatInfo"] then
			if EID.collectiblesOwned[477] then table.insert(callbacks, VoidCallback) end
			if EID.collectiblesOwned["5.300.41"] then table.insert(callbacks, BlackRuneCallback) end
		end
		
	elseif descObj.ObjVariant == PickupVariant.PICKUP_TRINKET then
		if descObj.ObjSubType == 80 then table.insert(callbacks, BlackFeatherCallback) end
	elseif descObj.ObjVariant == PickupVariant.PICKUP_PILL then
		table.insert(callbacks, VurpCallback)
	end
	return callbacks
end
EID:addDescriptionModifier("EID Afterbirth+", EIDConditionsAB, nil, 1)

-- should this be done differently so that mods can add tab previews? (tab conditions is done last, but would be done before callbacks mods add, maybe tab should be checked in EID:getDescriptionObj
local function TabConditions(_)
	if EID.TabHeldThisFrame and not EID.inModifierPreview then return true end
	EID.TabPreviewID = 0
	return false
end
EID:addDescriptionModifier("EID Tab Previews", TabConditions, TabCallback)

-- If an item has a radically different effect for 2 players, show the effect for the closest player, then append what chars have a different effect here
-- This is the final change made to the desc, after all other conditionals and modifiers
local function CoopDifferentEffectCallback(descObj)
	local displayedChars = {}
	local differentEffectText = EID:getDescriptionEntry("ConditionalDescs", "Different Effect")
	for _,v in ipairs(EID.DifferentEffectPlayers) do
		if not displayedChars[v] then
			descObj.Description = descObj.Description .. "#" .. EID:GetPlayerIcon(v) .. " " .. EID:ReplaceVariableStr(differentEffectText, EID:getPlayerName(v))
		end
		displayedChars[v] = true
	end
	EID.DifferentEffectPlayers = {} -- avoid appending this twice
	return descObj
end
local function CoopDifferentEffectConditions(_)
	return #EID.DifferentEffectPlayers > 0
end
EID:addDescriptionModifier("EID Different Effect Players", CoopDifferentEffectConditions, CoopDifferentEffectCallback)
