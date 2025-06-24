-- This file handles creating glitched item descriptions.
-- It requires installing REPENTOGON to give fully accurate descriptions.
-- https://repentogon.com/install.html

-- glitched items start at 4294967295
local maxNumber = 4294967296
local lastEffectTrigger = "chain"

local triggerColors = {
	chain = "{{ColorSilver}}",
	active = "{{ColorLime}}",
	pickup_collected = "{{ColorYellow}}",
	enemy_kill = "{{ColorRed}}",
	damage_taken = "{{ColorRed}}",
	entity_spawned = "",
	tear_fire = "{{ColorCyan}}",
	enemy_hit = "{{ColorEIDError}}",
	room_clear = "{{ColorOrange}}",
}

-- Convert REPENTOGON's action/trigger enums to the text used in EID's localization files
local actions = { [0] = "use_active_item", "add_temporary_effect", "convert_entities", "area_damage", "spawn_entity", "fart" }
local triggers = { [0] = "active", "tear_fire", "enemy_hit", "enemy_kill", "damage_taken", "room_clear", "entity_spawned", "pickup_collected", "chain" }

local function entityToName(Type, Variant, plural)
	-- -1 is often used as an "any of this type", even if there's only one of that type, so converting it to 0 can help find names
	-- the string.format is in case this receives the type/variant as a Lua float
	local e = string.format("%d",Type) .. "." .. string.format("%d",Variant)
	local eWithZero = string.gsub(e, "-1", "0")
	
	local localizedNames = EID:getDescriptionEntry("GlitchedItemText")
	local name = localizedNames[e] or localizedNames[eWithZero] or EID:GetEntityXMLName(Type, Variant, 0) or e

	--print out entities with no name yet
	if name == e then Isaac.DebugString("No name found for " .. e .. " (could be modded)") end

	-- pluralize Entity name
	if plural then
		name = name .."{pluralize}"
		name = EID:TryPluralizeString(name, 2)
		-- remove temporary variable, if language did not replace it
		name = EID:ReplaceVariableStr(name, "pluralize", "")
	end

	return name
end

-- attributes we need to check on the glitched item's ItemConfig
local itemConfigItemAttributes = { "AddMaxHearts", "AddHearts", "AddSoulHearts", "AddBlackHearts", "AddBombs", "AddCoins", "AddKeys", "CacheFlags" }
-- REPENTOGON's ProceduralItem functions, in the same order as English's VoidNames text we'll be using
local getFunctions = { "GetSpeed", "GetFireDelay", "GetDamage", "GetRange", "GetShotSpeed", "GetLuck" }
-- The items have a value between 0 and 1, and multiplied by these before being added to the player's stats
local statMult = { 0.2, 1, 1, 1.5, 0.2, 1 }

-- Obtains information about glitched items from the ItemConfig (hearts added on pickup, cacheflags affected), returns string of info
function EID:CheckGlitchedItemConfig(id)
	local itemConfig = EID.itemConfig:GetCollectible(id)
	if not itemConfig then return "" end
	
	local localizedNames = EID:getDescriptionEntry("GlitchedItemText")
	local localizedNamesEnglish = EID:getDescriptionEntryEnglish("GlitchedItemText")
	local attributes = "#"
	
	-- Check the base item config for the Hearts/Bombs/Coins/Keys this item adds,
	-- as well as what cache flags it affects if we're not using REPENTOGON
	for _,v in ipairs(itemConfigItemAttributes) do
		local val = itemConfig[v]
		if val ~= 0 then
			if v == "CacheFlags" then
				if not REPENTOGON then -- we don't need to check these if we have REPENTOGON
					local flagString = localizedNames["cacheFlagStart"] or localizedNamesEnglish["cacheFlagStart"]
					if val == CacheFlag.CACHE_ALL then
						flagString = flagString .. localizedNames[16] or localizedNamesEnglish[16]
					else
						for i=0, 13 do
							if 2^i & val ~= 0 then
								flagString = flagString .. localizedNames[i] or localizedNamesEnglish[i] .. ", "
							end
						end
						flagString = string.sub(flagString, 0, -3) -- remove final comma
					end
					attributes = attributes .. flagString .. "#"
				end
			else
				-- the Add Heart attributes count half a heart as 1, so divide the value in half
				if string.find(v, "Hearts") then val = val / 2 end
				-- the g flag removes .0 in numbers like 1.0 (caused by the hearts division)
				local s = string.format("%.4g",val)
				local prefix = "↑ "
				if val > 0 then s = "+" .. s else prefix = "↓ " end
				attributes = attributes .. prefix .. EID:ReplaceVariableStr(localizedNames[v] or localizedNamesEnglish[v], 1, s)
				attributes = attributes .. "#"
			end
			-- pluralize
			attributes = EID:TryPluralizeString(attributes, val)
		end
	end
	
	if REPENTOGON then
		-- Use REPENTOGON to print what base item this glitched item gives, and its stat increases
		local item = ProceduralItemManager.GetProceduralItem(maxNumber - 1 - id)
		if item:GetTargetItem() then
			-- Glitched items grant a random collectible/trinket
			-- It can be a bit weird though (granting A Quarter doesn't give you 25 coins, cause that's an on pickup thing)
			local innerItem = item:GetTargetItem()
			local itemText = "{{Collectible"
			local itemType = 100
			if innerItem:IsTrinket() then
				itemText = "{{Trinket"
				itemType = 350
			end
			local grantsStr = localizedNames["grants"] or localizedNamesEnglish["grants"]
			attributes = attributes .. grantsStr .. itemText .. innerItem.ID .. "}} " .. EID:getObjectName(5, itemType, innerItem.ID) .. "#"
		end
		-- If it's an active, these are given to you upon using the item, so let's print an "On use:" first
		if itemConfig.Type == ItemType.ITEM_ACTIVE then
			lastEffectTrigger = "active"
			local activeStr = localizedNames["active"] or localizedNamesEnglish["active"]
			attributes = attributes .. "#{{Blank}} " .. triggerColors["active"] .. activeStr
		end
		local voidNames = EID:getDescriptionEntry("VoidNames")
		for i,func in ipairs(getFunctions) do
			local val = item[func](item) * statMult[i]
			if val ~= 0 then
				local s = string.format("%.2g",EID:SimpleRound(val))
				local prefix = "↑ "
				if val > 0 then s = "+" .. s else prefix = "↓ " end
				attributes = attributes .. prefix .. EID:ReplaceVariableStr(voidNames[i], 1, s) .. "#"
			end
		end
		
		-- Use REPENTOGON to print out the glitched effects this item has
		local triggerReplacements = {}
		local replacements = {}
		
		-- cheeck the effects
		local count = item:GetEffectCount()
		for i=0,count-1 do
			local effect = item:GetEffect(i)
			
			local effectTrigger = triggers[effect:GetConditionType()]
			local effectTriggerProp = effect:GetConditionProperty()
			if effectTrigger == "entity_spawned" then
				triggerReplacements[1] = "{{ColorEIDObjName}}" .. entityToName(effectTriggerProp.type, effectTriggerProp.variant) .. "{{CR}}"
			end
			
			local effectType = actions[effect:GetActionType()]
			local effectProp = effect:GetActionProperty()
			if effectType == "add_temporary_effect" or effectType == "use_active_item" then
				replacements[1] = "{{Collectible" .. effectProp.id .. "}} " .. EID:getObjectName(5, 100, effectProp.id)
			elseif effectType == "convert_entities" then
				replacements[1] = "{{ColorGray}}" .. entityToName(effectProp.fromType, effectProp.fromVariant, true) .. "{{CR}}"
				replacements[2] = "{{ColorGray}}" .. entityToName(effectProp.toType, effectProp.toVariant) .. "{{CR}}"
			elseif effectType == "spawn_entity" then
				replacements[1] = "{{ColorGray}}" .. entityToName(effectProp.type, effectProp.variant) .. "{{CR}}"
			elseif effectType == "fart" then
				--I think the fart scale is strictly visual and therefore useless
				--replacements[1] = EID:SimpleRound(effectProp.scale)
				replacements[1] = string.format("%.4g",EID:SimpleRound(effectProp.radius))
			elseif effectType == "area_damage" then
				replacements[1] = string.format("%.4g",EID:SimpleRound(effectProp.damage))
				--Fart scales are all small numbers and seem to be tiles; area damage is huge numbers, but still tiles?
				--so area damage is almost always the entire room
				replacements[2] = string.format("%.4g",EID:SimpleRound(effectProp.radius))
			end
			
			if effectTrigger ~= lastEffectTrigger then
				if effectTrigger ~= "chain" then attributes = attributes .. "#{{Blank}} " end
				local effectTriggerStr = localizedNames[effectTrigger] or localizedNamesEnglish[effectTrigger]
				attributes = attributes .. triggerColors[effectTrigger] .. effectTriggerStr
			elseif effectTrigger ~= "chain" then
				attributes = attributes .. "#"
			end
			attributes = attributes .. localizedNames[effectType] or localizedNamesEnglish[effectType] .. "#"
			for k,v in ipairs(triggerReplacements) do attributes = EID:ReplaceVariableStr(attributes, "T" .. k, v) end
			for k,v in ipairs(replacements) do attributes = EID:ReplaceVariableStr(attributes, k, v) end

			if effectTrigger ~= "chain" then lastEffectTrigger = effectTrigger end
		end
	end
	
	-- print the glitchy part of the description at the end if it's not "complete"
	if not REPENTOGON then
		attributes = attributes .. itemConfig.Description
	end
	lastEffectTrigger = "chain"
	
	return attributes
	
end






-- shh. it's a non-obtrusive april fools joke for the 1% of people with luadebug
-- this made more sense when this file was only executed when --luadebug was present
-- https://www.youtube.com/watch?v=msDuNZyYAIQ
if (debug and os.date("%m/%d") == "04/01") then
	EID.descriptions[EID.DefaultLanguageCode].sacrifice[1][3] = "{{Coin}} 50% chance of winning 1 coin at Sacrifice#75% chance if you're a genetic freak#!!! If you add Kurt Angle to the mix, your chances of winning drastically go down"
end
