--[[
EID features 6 tables for mods to define their descriptions:
__eidTrinketDescriptions for trinkets
__eidCardDescriptions for cards
__eidPillDescriptions for pills
__eidItemDescriptions for Collectibles / items
__eidItemTransformations assigns transformation-informations to collectibles
__eidEntityDescriptions for entities
__eidEntityDescriptions["ID.Variant.Subtype"] = {"HEADLINE","DESCRIPTION"};

To assign a unique description for a specific entity:    entity:GetData()["EID_Description"] = {"HEADLINE","DESCRIPTION"}   


For example: to add the item "My Item Name" and the Description "Most Fitting Description" do something like this:

-- 1. Get your itemid
local item = Isaac.GetItemIdByName("My Item Name");
-- 2. Make sure we're not adding to a nil table
if not __eidItemDescriptions then
  __eidItemDescriptions = {};
end
-- 3. Add the description
__eidItemDescriptions[item] = "Most Fitting Description";

--]]
-- Init variables for other mods to hand over Descriptions if they were not yet inited by another mod.
if not __eidItemDescriptions then
	__eidItemDescriptions = {}
end
if not __eidTrinketDescriptions then
	__eidTrinketDescriptions = {}
end
if not __eidCardDescriptions then
	__eidCardDescriptions = {}
end
if not __eidPillDescriptions then
	__eidPillDescriptions = {}
end
if not __eidItemTransformations then
	__eidItemTransformations = {}
end
if not __eidEntityDescriptions then
	__eidEntityDescriptions = {}
end

---------------------------------------------------------------------------
-------------------------Handle Custom Enum -----------------------------

--maps the Player transformation from the enum PlayerForm to the internal transformation table
-- Possible usages:		EID.TRANSFORMATION[ PlayerForm.PLAYERFORM_MUSHROOM ]
-- 						EID.TRANSFORMATION.MUSHROOM
EID.TRANSFORMATION = {
	["GUPPY"] = 1,
	["LORD_OF_THE_FLIES"] = 3,
	["MUSHROOM"] = 2,
	["ANGEL"] = 10,
	["BOB"] = 8,
	["SPUN"] = 5,
	["MOM"] = 6,
	["CONJOINED"] = 4,
	["LEVIATHAN"] = 9,
	["POOP"] = 7,
	["BOOKWORM"] = 12,
	["ADULT"] = 14,
	["SPIDERBABY"] = 13,
	["SUPERBUM"] = 11
}

-- List of item Types
EID.ItemTypeAnm2Names = {
"null", 	-- 1
"passive", 	-- 2
"active", 	-- 3
"familiar", -- 4
"trinket" 	-- 5
}
---------------------------------------------------------------------------
-------------------------Handle API Functions -----------------------------

-- Returns if EID is displaying text right now
function EID:isDisplayingText()
	return isDisplayingText
end

-- Returns true, if curse of blind is active
function EID:hasCurseBlind()
	return Game():GetLevel():GetCurses() & LevelCurse.CURSE_OF_BLIND > 0
end

-- returns the current text position
function EID:getTextPosition()
	return Vector(EIDConfig["XPosition"], EIDConfig["YPosition"])
end

-- returns the entity that is currently described. returns last described entity if currently not displaying text
function EID:getLastDescribedEntity()
	return lastDescriptionEntity
end

-- returns descriptions from the legacy mod descriptions if they exist
function EID:getLegacyModDescription(objTable, id)
	if objTable == "collectibles" then
		return __eidItemDescriptions[id]
	elseif objTable == "trinkets" then
		return __eidTrinketDescriptions[id]
	elseif objTable == "cards" then
		return __eidCardDescriptions[id]
	elseif objTable == "pills" then
		return __eidPillDescriptions[id]
	elseif objTable == "transformations" then
		return __eidItemTransformations[id]
	elseif objTable == "custom" then
		return __eidEntityDescriptions[id] and __eidEntityDescriptions[id][2]
	end
end

-- returns the specified object table in the current language. 
-- falls back to english if it doesnt exist 
function EID:getDescriptionTable(objTable)
	return EID.descriptions[EIDConfig["Language"]][objTable] or EID.descriptions["en_us"][objTable]
end

-- returns the description object of the specified object table translated with the current language
-- falls back to english if the objID isnt available
function EID:getDescriptionObj(objTable, objID)
	local tableEntry = EID.descriptions[EIDConfig["Language"]][objTable][objID] or EID.descriptions["en_us"][objTable][objID] or {}
	
	local description = {}
	description.ID = objID
	
	description.Name = EID:getObjectName(objID, objTable) or objTable
	
	local legacyModdedDescription = EID:getLegacyModDescription(objTable, objID)
	description.Description = legacyModdedDescription or tableEntry[4] or "MISSING DESCRIPTION"
	
	local legacyModdedTransformation = nil
	if objTable == "collectibles" then
		legacyModdedTransformation = EID:getLegacyModDescription("transformation", objID)
	end
	description.Transformation = legacyModdedTransformation or tableEntry[2] or "0"
	
	return description
end

--Get the name of the given transformation by its ID
function EID:getTransformationName(id)
	local str = "Custom"
	if tonumber(id) == nil then
		print("FAIL")
		return id
	end
	return EID:getObjectName(tonumber(id) + 1, "transformations") or str
end

-- tries to get the ingame name of an item based on its ID
function EID:getObjectName(objID, objType)
	local tableEntry = EID.descriptions[EIDConfig["Language"]][objType][objID] or EID.descriptions["en_us"][objType][objID]
	if objType == "collectibles" then
		if EIDConfig["Language"]~="en_us" and #tableEntry==4 then
			if tableEntry[3] ~= nil and tableEntry[3] ~= "" then
				return tableEntry[3]
			end
		end
		return EID.itemConfig:GetCollectible(objID).Name
	elseif objType == "trinkets" then
		if EIDConfig["Language"]~="en_us" and #tableEntry==3 then
			if tableEntry[3] ~= nil and tableEntry[3] ~= "" then
				return tableEntry[3]
			end
		end
		return EID.itemConfig:GetTrinket(objID).Name
	elseif objType == "cards" then
		if EIDConfig["Language"]~="en_us" and #tableEntry==3 then
			if tableEntry[3] ~= nil and tableEntry[3] ~= "" then
				return tableEntry[3]
			end
		end
		return EID.itemConfig:GetCard(objID).Name
	elseif objType == "pills" then
		if EIDConfig["Language"]~="en_us" and #tableEntry==3 then
			if tableEntry[3] ~= nil and tableEntry[3] ~= "" then
				return tableEntry[3]
			end
		end
		return EID.itemConfig:GetPillEffect(objID).Name
	elseif objType == "transformations" then
		return tableEntry
	elseif objType == "sacrifice" then
		return EID:getDescriptionTable("sacrificeHeader")
	elseif objType == "dice" then
		return EID:getDescriptionTable("diceHeader")
	elseif objType == "custom" then
		return __eidEntityDescriptions[objID][1] or tableEntry[1] or objID
	end
end

-- check if an entity is part of the describable entities
function EID:hasDescription(entity)
	local isAllowed = false
	if EIDConfig["EnableEntityDescriptions"] then
		isAllowed = __eidEntityDescriptions[entity.Type .. "." .. entity.Variant .. "." .. entity.SubType] ~= nil
		--isAllowed = isAllowed or type(entity:GetData()["EID_Description"]) ~= type(nil)
	end
	isAllowed = isAllowed or (entity.Variant == PickupVariant.PICKUP_COLLECTIBLE and EIDConfig["DisplayItemInfo"])
	isAllowed = isAllowed or (entity.Variant == PickupVariant.PICKUP_TRINKET and EIDConfig["DisplayTrinketInfo"])
	isAllowed = isAllowed or (entity.Variant == PickupVariant.PICKUP_TAROTCARD and EIDConfig["DisplayCardInfo"])
	isAllowed = isAllowed or (entity.Variant == PickupVariant.PICKUP_PILL and EIDConfig["DisplayPillInfo"])
	return entity.Type == EntityType.ENTITY_PICKUP and isAllowed and entity.SubType > 0
end

-- Replaces shorthand-representations of a character with the internal reference
function EID:replaceShortMarkupStrings(text)
	for _,pair in ipairs(EID.TextReplacementPairs) do
		text = string.gsub(text, pair[1], pair[2])
	end
	return text
end

-- Generates a string with the defined pixel-length using a custom 1px wide character
-- This will only work for this specific custom font
function EID:generatePlaceholderString(length)
	local placeholder = ""
	for i = 1, length do
		placeholder = placeholder .. "¤"
	end
	return placeholder
end

-- Returns the inlineIcon object of a given Iconstring
-- can be used to validate an iconstring
function EID:getIcon(str)
	if str == nil then print("F") return EID.InlineIcons["ERROR"] end
	local strTrimmed = string.gsub(str, "{{(.-)}}", function(a) return a end)
	if #strTrimmed <= #str then
		return EID.InlineIcons[strTrimmed] or EID.InlineIcons["ERROR"]
	else
		return EID.InlineIcons["ERROR"]
	end
end

-- Returns the width of a given string in Pixels
function EID:getStrWidth(str)
	return EID.font:GetStringWidthUTF8(str)
end

-- Searches thru the given string and replaces Iconplaceholders with icons.
-- Returns 2 values. the string without the placeholders but with an accurate space between lines. and a table of all Inline Sprites
function EID:filterMarkup(text, textPosX, textPosY)
	local spriteTable = {}
	for word in string.gmatch(text, "{{.-}}") do
		local textposition = string.find(text, word)
		local lookup = EID:getIcon(word)
		local preceedingTextWidth = EID:getStrWidth(string.sub(text, 0, textposition - 1))*EIDConfig["Scale"]
		table.insert(spriteTable,{lookup, preceedingTextWidth})
		text = string.gsub(text, word, EID:generatePlaceholderString(lookup[3]), 1)
	end
	return text, spriteTable
end

--renders a list of given inline sprite objects returned by the "EID:filterMarkup()" function
-- Table entry format: {EID.InlineIcons Object, Width of text preceeding the icon}
function EID:renderInlineIcons(spriteTable, posX, posY)
	for _,sprite in ipairs(spriteTable) do
		local Xoffset = sprite[1][5] or -1
		local Yoffset = sprite[1][6] or 0
		local spriteObj = sprite[1][7] or EID.InlineIconSprite
		spriteObj:SetFrame(sprite[1][1], sprite[1][2])
		spriteObj.Scale = Vector(EIDConfig["Scale"], EIDConfig["Scale"])
		spriteObj:Render(
			Vector((posX + sprite[2] + Xoffset), posY + Yoffset),
			Vector(0, 0),
			Vector(0, 0)
		)
	end
end

-- Returns the icon used for the bulletpoint. It will look at the first word in the given string.
function EID:handleBulletpointIcon(text)
	local firstWord = string.match(text, "([^%s]+)")
	if EID:getIcon(firstWord) ~=  EID.InlineIcons["ERROR"] then
		return firstWord
	end
	return "\007"
end

--needs to be called in a render Callback
-- args: string, Vector(int, int), Vector(float,float), KColor obj, bool
function EID:renderString(str, position, scale, kcolor)
	str = EID:replaceShortMarkupStrings(str)
	str, spriteTable = EID:filterMarkup(str, position.X, position.Y)
	EID:renderInlineIcons(spriteTable, position.X, position.Y)
	EID.font:DrawStringScaledUTF8(str, position.X, position.Y, scale.X, scale.Y, kcolor, 0, false)
end

-- Get KColor object of "Entity Name" texts
function EID:getNameColor()
	return KColor(
		EIDConfig["ItemNameColor"][1],
		EIDConfig["ItemNameColor"][2],
		EIDConfig["ItemNameColor"][3],
		EIDConfig["Transparency"],
		0,
		0,
		0
	)
end

-- Get KColor object of "Description" texts
function EID:getTextColor()
	return KColor(
		EIDConfig["TextColor"][1],
		EIDConfig["TextColor"][2],
		EIDConfig["TextColor"][3],
		EIDConfig["Transparency"],
		0,
		0,
		0
	)
end

-- Get KColor object of "Transformation" texts
function EID:getTransformationColor()
	return KColor(
		EIDConfig["TransformationColor"][1],
		EIDConfig["TransformationColor"][2],
		EIDConfig["TransformationColor"][3],
		EIDConfig["Transparency"],
		0,
		0,
		0
	)
end

-- Get KColor object of "Error" texts
function EID:getErrorColor()
	return KColor(
		EIDConfig["ErrorColor"][1],
		EIDConfig["ErrorColor"][2],
		EIDConfig["ErrorColor"][3],
		EIDConfig["Transparency"],
		0,
		0,
		0
	)
end
