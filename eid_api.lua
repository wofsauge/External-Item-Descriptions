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
  __eidItemDescriptions = {};
end
if not __eidTrinketDescriptions then
  __eidTrinketDescriptions = {};
end
if not __eidCardDescriptions then
  __eidCardDescriptions = {};
end
if not __eidPillDescriptions then
  __eidPillDescriptions = {};
end
if not __eidItemTransformations then
  __eidItemTransformations = {};
end
if not __eidEntityDescriptions then
  __eidEntityDescriptions = {};
end


---------------------------------------------------------------------------
-------------------------Handle API Functions -----------------------------

function EID:isDisplayingText()
	return isDisplayingText
end

function EID:getTextPosition()
	return Vector(EIDConfig["XPosition"],EIDConfig["YPosition"])
end

function EID:getLastDescribedEntity()
	return lastDescriptionEntity
end

function EID:getModDescription(list, id)
  return (list) and (list[id])
end

--needs to be called in a render Callback
-- args: string, Vector(int, int), Vector(float,float), KColor obj, bool
function EID:renderString(str, position, scale, kcolor, centered)
  	EID.font:DrawStringScaledUTF8(str, position.X, position.Y, scale.X ,scale.Y ,kcolor ,EID.font:GetStringWidthUTF8(str), centered)
end

function EID:getNameColor()
	return KColor(EIDConfig["ItemNameColor"][1] , EIDConfig["ItemNameColor"][2], EIDConfig["ItemNameColor"][3],EIDConfig["Transparency"],0,0,0)
end

function EID:getTextColor()
	return KColor(EIDConfig["TextColor"][1] , EIDConfig["TextColor"][2], EIDConfig["TextColor"][3],EIDConfig["Transparency"],0,0,0)
end

function EID:getTransformationColor()
	return KColor(EIDConfig["TransformationColor"][1] , EIDConfig["TransformationColor"][2], EIDConfig["TransformationColor"][3],EIDConfig["Transparency"],0,0,0)
end

function EID:getErrorColor()
	return KColor(EIDConfig["ErrorColor"][1] , EIDConfig["ErrorColor"][2], EIDConfig["ErrorColor"][3],EIDConfig["Transparency"],0,0,0)
end