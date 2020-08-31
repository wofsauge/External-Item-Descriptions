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

---------------------------------------------------------------------------
-------------------------Handle API Functions -----------------------------

-- Returns if EID is displaying text right now
function EID:isDisplayingText()
	return isDisplayingText
end

-- returns the current text position
function EID:getTextPosition()
	return Vector(EIDConfig["XPosition"], EIDConfig["YPosition"])
end

-- returns the entity that is currently described. returns last described entity if currently not displaying text
function EID:getLastDescribedEntity()
	return lastDescriptionEntity
end

function EID:getModDescription(list, id)
	return (list) and (list[id])
end

--Get the name of the given transformation by its ID
function EID:getTransformation(id)
	local str = "Custom"
	if (tonumber(id) <= #transformations - 1) then
		return transformations[tonumber(id) + 1]
	end
	return str
end

-- check if an entity is part of the describable entities
function EID:hasDescription(entity)
	local isAllowed = false
	if EIDConfig["EnableEntityDescriptions"] then
		isAllowed =
			isAllowed or
			(__eidEntityDescriptions[entity.Type .. "." .. entity.Variant .. "." .. entity.SubType] ~= nil) --[[or type(entity:GetData()["EID_Description"]) ~= type(nil)]]
	end
	isAllowed = isAllowed or (entity.Variant == PickupVariant.PICKUP_COLLECTIBLE and EIDConfig["DisplayItemInfo"])
	isAllowed = isAllowed or (entity.Variant == PickupVariant.PICKUP_TRINKET and EIDConfig["DisplayTrinketInfo"])
	isAllowed = isAllowed or (entity.Variant == PickupVariant.PICKUP_TAROTCARD and EIDConfig["DisplayCardInfo"])
	isAllowed = isAllowed or (entity.Variant == PickupVariant.PICKUP_PILL and EIDConfig["DisplayPillInfo"])
	return entity.Type == EntityType.ENTITY_PICKUP and isAllowed and entity.SubType > 0
end

-- Replaces shorthand-representations of a character with the internal reference
function EID:replaceMarkupStrings(text)
	text = string.gsub(text, "!!!", "ǃ") -- Turn 3 Exclamations into Warning
	text = string.gsub(text, "\1", "↑") -- Legacy Up Arrow
	text = string.gsub(text, "\2", "↓") -- Legacy Down Arrow
	text = string.gsub(text, "\3", "ǃ") -- Legacy Warning
	text = string.gsub(text, "\6", "\2HEART\2") -- Legacy Heart
	text = string.gsub(text, "\5", "\2KEY\2") -- Legacy Key
	text = string.gsub(text, "\015", "\2COIN\2") -- Legacy Coin
	text = string.gsub(text, "\8\189", "\2BOMB\2") -- Legacy BOMB
	return text
end

-- Returns the icon used for the bulletpoint. It will look at the first character in the given string.
EID.bulletIcons = {"↑", "↓", "!", "ǃ"}
function EID:getBulletpointIcon(text)
	for i, v in ipairs(EID.bulletIcons) do
		local iconPos = string.find(text, v)
		if iconPos == 1 or iconPos == 2 then
			return v
		end
	end
	return "\007"
end

--needs to be called in a render Callback
-- args: string, Vector(int, int), Vector(float,float), KColor obj, bool
function EID:renderString(str, position, scale, kcolor, centered)
	EID.font:DrawStringScaledUTF8(
		str,
		position.X,
		position.Y,
		scale.X,
		scale.Y,
		kcolor,
		EID.font:GetStringWidthUTF8(str),
		centered
	)
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
