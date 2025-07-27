-- Init legacy global variables for other mods to hand over Descriptions
if not __eidItemDescriptions then
	__eidItemDescriptions = {}
end
setmetatable(__eidItemDescriptions,
	{ __newindex = function(_, k, v) EID:addCollectible(k, v) end })
if not __eidTrinketDescriptions then
	__eidTrinketDescriptions = {}
end
setmetatable(__eidTrinketDescriptions,
	{ __newindex = function(_, k, v) EID:addTrinket(k, v) end })
if not __eidCardDescriptions then
	__eidCardDescriptions = {}
end
setmetatable(__eidCardDescriptions,
	{ __newindex = function(_, k, v) EID:addCard(k, v) end })
if not __eidPillDescriptions then
	__eidPillDescriptions = {}
end
setmetatable(__eidPillDescriptions,
	{ __newindex = function(_, k, v) EID:addPill(k, v) end })
if not __eidItemTransformations then
	__eidItemTransformations = {}
end
setmetatable(__eidItemTransformations,
	{ __newindex = function(_, k, v) EID:assignTransformation("collectible", k, v) end })
if not __eidEntityDescriptions then
	__eidEntityDescriptions = {}
end
setmetatable(__eidEntityDescriptions,
	{ __newindex = function(_, k, v)
		local entityID = {}
		for id in string.gmatch(k, "([^.]+)") do
			table.insert(entityID, id)
		end
		EID:addEntity(entityID[1], entityID[2], entityID[3], v[1], v[2])
	end })
---------------------------------------------------------------------------
-------------------------Handle API Functions -----------------------------
EID.Pathfinder = require("features.pathfinder.luafinding")

local nullVector = Vector(0,0)
local game = Game()
local maxCardID = Card.NUM_CARDS - 1
local maxPillID = PillColor.NUM_PILLS - 1
local dynamicSpriteCache = {} -- used to store sprite objects of collectible icons etc.

--#region Luadoc definitions

---@alias EID_PillClass "3-"|"2-"|"1-"|"0"|"1+"|"2+"|"3+"

---@alias EID_TypeVariantAlias
---| "collectible" @ "5.100"
---| "collectibles" @ "5.100"
---| "trinket" @ "5.350"
---| "trinkets" @ "5.350"
---| "card" @ "5.300"
---| "cards" @ "5.300"
---| "pill" @ "5.70"
---| "pills" @ "5.70"
---| "horsepills" @ "5.70"
---| "horsepill" @ "5.70"
---| "dice" @ "1000.76"
---| "entity" @ Indicates that a full entity identifier is used

---@alias EID_Dimension
---| 0 @Normal dimension
---| 1 @Secondary dimension, used by Downpour mirror dimension and Mines escape sequence
---| 2 @Death Certificate dimension

---@class EID_GoldenTrinketData
---@field t number[]? @The numbers inside the text that should be multiplied
---@field mult number? @Max multiplier applied. assumed to be 3.
---@field mults number[]? @Custom multipliers. A Missing Page's damage goes from 80 to 120 to 160; so its multipliers are 1.5 and 2, instead of 2 and 3
---@field append boolean? @If true, text is added to the description
---@field findReplace boolean? @If true, the text is replaced
---@field fullReplace boolean? @If true, description is fully replaced
---@field goldenOnly boolean? @If true, the description is modified only when the trinket is golden
---@field additions number? @Add a value to the number in the text, similar to multiplier. Expects a table of 3 values, 1: double, 2: triple, 3: quadruple effect

---@class EID_Icon
---@field [1] string @Animation name
---@field [2] integer @Animation frame
---@field [3] integer @Width
---@field [4] integer @Height
---@field [5] integer? @Left offset
---@field [6] integer? @Top offset
---@field [7] Sprite @Sprite object

---@class EID_DescObj
---@field ObjType integer
---@field ObjVariant integer
---@field ObjSubType integer
---@field fullItemString string @String in `Type.Variant.SubType` format
---@field Name string
---@field Description string
---@field Transformation string
---@field ModName string
---@field Quality integer
---@field Icon EID_Icon
---@field Entity Entity?
---@field ShowWhenUnidentified boolean?
---@field PermanentTextEnglish string?
---@field IgnoreBulletPointIconConfig boolean?
---@field ItemType integer?
---@field ChargeType integer?
---@field Charges integer? @Max charges

---@alias EID_Anchor "TOP"|"BOTTOM"|"LEFT"|"RIGHT"

---@class EID_HudElement
---@field x number
---@field y number
---@field width number
---@field height number
---@field anchors EID_Anchor[]
---@field descriptionObj fun(): EID_DescObj

--#endregion

---Adds a description for a collectible.
---@param id CollectibleType
---@param description string
---@param itemName string?
---@param language EID_LanguageCode? @Default: "en_us"
function EID:addCollectible(id, description, itemName, language)
	itemName = itemName or nil
	language = language or EID.DefaultLanguageCode
	if id == -1 then
		EID:WriteErrorMsg("Trying to add collectible description to id = -1, which is not allowed! (Name: "..tostring(itemName).."; Description: "..tostring(description)..")")
		return
	end
	local modName = EID._currentMod
	-- Glitched Items exception so they don't have a mod name
	if id > 4294960000 then modName = nil end
	EID:CreateDescriptionTableIfMissing("custom", language)
	EID.descriptions[language].custom["5.100." .. id] = {id, itemName, description, modName}
end

---Adds a description for a trinket.
---@param id TrinketType
---@param description string
---@param itemName? string
---@param language? EID_LanguageCode @Default: "en_us"
function EID:addTrinket(id, description, itemName, language)
	itemName = itemName or nil
	language = language or EID.DefaultLanguageCode
	if id == -1 then
		EID:WriteErrorMsg("Trying to add trinket description to id = -1, which is not allowed! (Name: "..tostring(itemName).."; Description: "..tostring(description)..")")
		return
	end
	EID:CreateDescriptionTableIfMissing("custom", language)
	EID.descriptions[language].custom["5.350." .. id] = {id, itemName, description, EID._currentMod}
end

---Adds character specific information, which can be viewed in the Item Reminder
---@param characterId PlayerType
---@param description string
---@param playerName? string @Default: "Modded Character"
---@param language? EID_LanguageCode @Default: "en_us"
function EID:addCharacterInfo(characterId, description, playerName, language)
	playerName = playerName or "Modded Character"
	language = language or EID.DefaultLanguageCode
	if characterId == -1 then
		EID:WriteErrorMsg("Trying to add character description to id = -1, which is not allowed! (Name: "..tostring(playerName).."; Description: "..tostring(description)..")")
		return
	end
	EID:CreateDescriptionTableIfMissing("CharacterInfo", language)
	EID.descriptions[language].CharacterInfo[characterId] = {playerName, description}
end

---Adds information about appending text and multiplying numbers in a modded trinket's Golden/Mom's Box description. All three variables are optional, set to ""/0 or nil to not include them
---@param appendText? string | string[] @Text to be appended onto the description. Can be one string, or a table of two strings; one for doubling and one for tripling
---@param numbersToMultiply? number | number[] @The number inside the text that should be multiplied. can be one number, or a table of numbers
---@param maxMultiplier? number @Is what tripling (Golden+Mom's Box) should multiply the numbers by, normally 3. If it's less than 2, it also applies to doubling
---@param language? EID_LanguageCode @Default: "en_us"
-- Example: My modded trinket gives +0.5 range and when tripled, adds homing instead of tripling the range boost:
--- ```lua
--- EID:addGoldenTrinketMetadata(Isaac.GetTrinketIdByName("Cool Trinket"), {"", "Homing tears"}, 0.5, 2)
--- ```
function EID:addGoldenTrinketMetadata(id, appendText, numbersToMultiply, maxMultiplier, language)
	maxMultiplier = maxMultiplier or 3
	language = language or EID.DefaultLanguageCode

	if appendText == "" then appendText = nil
	elseif type(appendText) == "string" then appendText = {appendText} end

	if numbersToMultiply == 0 then numbersToMultiply = nil
	elseif type(numbersToMultiply) == "number" then numbersToMultiply = {numbersToMultiply} end

	EID.GoldenTrinketData[id] = {t = numbersToMultiply, mult = maxMultiplier, append = appendText and true}
	if appendText then
		EID:CreateDescriptionTableIfMissing("goldenTrinketEffects", language)
		EID.descriptions[language].goldenTrinketEffects[id] = { appendText[1], appendText[1], appendText[2] or appendText[1] }
	end
end
---Adds information about appending text and adding to numbers in a modded trinket's Golden/Mom's Box description. All three variables are optional, set to ""/0 or nil to not include them
---@param id TrinketType
---@param appendText? string | string[] @Text to be appended onto the description. Can be one string, or a table of two strings; one for doubling and one for tripling
---@param numbersToChange? number | number[] @The number inside the text that gets added towards. can be one number, or a table of numbers
---@param additiveValues? number @Table of values that should be added to the number, if its doubled, tripled, or quadrupled
---@param language? EID_LanguageCode @Default: "en_us"
-- Example: My modded trinket gives +5 range and when tripled, adds homing instead of tripling the range boost:
--- ```lua
--- EID:addGoldenTrinketMetadataAdditive(Isaac.GetTrinketIdByName("Cool Trinket"), {"", "Homing tears"}, 5, {1,2,3})
--- ```
function EID:addGoldenTrinketMetadataAdditive(id, appendText, numbersToChange, additiveValues, language)
	language = language or EID.DefaultLanguageCode

	if appendText == "" then appendText = nil
	elseif type(appendText) == "string" then appendText = {appendText} end

	if numbersToChange == 0 then numbersToChange = nil
	elseif type(numbersToChange) == "number" then numbersToChange = {numbersToChange} end

	additiveValues = type(additiveValues) == "number" and {additiveValues, additiveValues, additiveValues} or additiveValues or {1, 2, 3}
	EID.GoldenTrinketData[id] = {t = numbersToChange, additions = additiveValues, mults = {1,1,1}, append = appendText and true}
	if appendText then
		EID:CreateDescriptionTableIfMissing("goldenTrinketEffects", language)
		EID.descriptions[language].goldenTrinketEffects[id] = { appendText[1], appendText[1], appendText[2] or appendText[1] }
	end
end

---@see EID_GoldenTrinketData
---Add a fully custom data table to the table of Golden Trinket effects.
---Check GoldenTrinketCallback in [eid_modifiers.lua](eid_modifiers.lua) to see the specifics of how it works.
---You may also want to add text entries into `EID.descriptions[languageCode].goldenTrinketEffects`
---@param id TrinketType
---@param dataTable EID_GoldenTrinketData
function EID:addGoldenTrinketTable(id, dataTable)
	EID.GoldenTrinketData[id] = dataTable
end

---Adds a description for a card/rune
---@param id Card
---@param description string
---@param itemName? string
---@param language? EID_LanguageCode @Default: "en_us"
function EID:addCard(id, description, itemName, language)
	itemName = itemName or nil
	language = language or EID.DefaultLanguageCode
	if id == -1 then
		EID:WriteErrorMsg("Trying to add card description to id = -1, which is not allowed! (Name: "..tostring(itemName).."; Description: "..tostring(description)..")")
		return
	end
	EID:CreateDescriptionTableIfMissing("custom", language)
	EID.descriptions[language].custom["5.300." .. id] = {id, itemName, description, EID._currentMod}
end

-- DEPRECATED! Does nothing! Don't use!
---@deprecated
---@diagnostic disable-next-line: unused-local
function EID:addCardMetadata(id, mimicCharge, isRune)
end

---Adds a description for a PillEffect id
---@param id PillEffect
---@param description string
---@param itemName? string
---@param language? EID_LanguageCode @Default: "en_us"
function EID:addPill(id, description, itemName, language)
	itemName = itemName or nil
	language = language or EID.DefaultLanguageCode
	if id == -1 then
		EID:WriteErrorMsg("Trying to add pill description to id = -1, which is not allowed! (Name: "..tostring(itemName).."; Description: "..tostring(description)..")")
		return
	end
	EID:CreateDescriptionTableIfMissing("pills", language)
	EID:CreateDescriptionTableIfMissing("horsepills", language)
	EID.descriptions[language].pills[id+1] = {id, itemName, description, EID._currentMod}
	-- Default the horsepill to the same description as the base pill, for mods that only define the base pill
	if EID.isRepentance and EID.descriptions[language].horsepills[id+1] == nil then
		EID.descriptions[language].horsepills[id+1] = {id, itemName, description, EID._currentMod}
	end
end

---Adds a horsepill-specific description for a PillEffect
---@param id PillEffect
---@param description string
---@param itemName? string
---@param language? EID_LanguageCode @Default: "en_us"
function EID:addHorsePill(id, description, itemName, language)
	if not EID.isRepentance then return end
	itemName = itemName or nil
	language = language or EID.DefaultLanguageCode
	if id == -1 then
		EID:WriteErrorMsg("Trying to add horsepill description to id = -1, which is not allowed! (Name: "..tostring(itemName).."; Description: "..tostring(description)..")")
		return
	end
	EID:CreateDescriptionTableIfMissing("horsepills", language)
	EID.descriptions[language].horsepills[id+1] = {id, itemName, description, EID._currentMod}
end

---Adds a metadata for a pilleffect. Used for Placebo/False PHD
---@param id PillEffect
---@param mimicCharge integer @DEPRECATED, does nothing
---@param class? EID_PillClass @Default: "0". With False PHD, "3-" gives +0.6 Damage, "2-" and "1-" spawn a Black Heart
---@diagnostic disable-next-line: unused-local
function EID:addPillMetadata(id, mimicCharge, class)
	EID.pillMetadata[id] = {
		class = class or "0",
	}
end

---Adds a character specific description for the item "Birthright"
---@param characterId PlayerType
---@param description string
---@param playerName? string
---@param language? EID_LanguageCode @Default: "en_us"
function EID:addBirthright(characterId, description, playerName, language)
	playerName = playerName or nil
	language = language or EID.DefaultLanguageCode
	if characterId == -1 then
		EID:WriteErrorMsg("Trying to add Birthright description to id = -1, which is not allowed! (Name: "..tostring(characterId).."; Description: "..tostring(description)..")")
		return
	end
	EID:CreateDescriptionTableIfMissing("birthright", language)
	EID.descriptions[language].birthright[characterId + 1] = {playerName, "", description}
end

---Creates a new transformation with a given unique name and a display name
---@param uniqueName string
---@param displayName string
---@param language? EID_LanguageCode @Default: "en_us"
function EID:createTransformation(uniqueName, displayName, language)
	language = language or EID.DefaultLanguageCode
	if EID.CustomTransformations[uniqueName] == nil then
		EID.CustomTransformations[uniqueName] = {}
	end
	EID.CustomTransformations[uniqueName][language] = displayName
end

---Assigns transformations to an entity (Adds to existing transformations)
---Target entity identifier is in `Type.Variant.SubType` format and is formed based on `targetType` and `targetIdentifier`<br>
---Example: adding "My Transformation" to Sad Onion:
--- ```lua
--- EID:assignTransformation("collectible", 1, "My Transformation")
--- ```
---@param targetType EID_TypeVariantAlias @Alias for a `Type.Variant` of entity
---@param targetIdentifier integer | string @If valid `targetType` is specified, `SubType` of the entity. Otherwise, the full entity identifier
---@param transformationString string @Transformation name
function EID:assignTransformation(targetType, targetIdentifier, transformationString)
	local entryID = EID:getIDVariantString(targetType)
	if entryID ~= nil then
		entryID = entryID.."."..targetIdentifier
	else
		---@cast targetIdentifier string
		entryID = targetIdentifier
	end
	EID:removeEntryFromString(EID.CustomTransformAssignments, entryID, transformationString)
	if EID.CustomTransformAssignments[entryID] == nil then
		EID.CustomTransformAssignments[entryID] = transformationString
	else
		EID.CustomTransformAssignments[entryID] = EID.CustomTransformAssignments[entryID]..","..transformationString
	end
	EID:removeEntryFromString(EID.CustomTransformRemovals, entryID, transformationString)
end

---Try to automatically assign vanilla transformations to the entity
---@param collectibleID CollectibleType
function EID:tryAutodetectTransformationsCollectible(collectibleID) --?Should this be in API?
	if not EID.isRepentance then return end
	local config = EID.itemConfig:GetCollectible(collectibleID)
	local transformations = {}
	transformations[EID.TRANSFORMATION.ANGEL] = config:HasTags(ItemConfig.TAG_ANGEL) or nil
	transformations[EID.TRANSFORMATION.BOB] = config:HasTags(ItemConfig.TAG_BOB) or nil
	transformations[EID.TRANSFORMATION.BOOKWORM] = config:HasTags(ItemConfig.TAG_BOOK) or nil
	transformations[EID.TRANSFORMATION.CONJOINED] = config:HasTags(ItemConfig.TAG_BABY) or nil
	transformations[EID.TRANSFORMATION.GUPPY] = config:HasTags(ItemConfig.TAG_GUPPY) or nil
	transformations[EID.TRANSFORMATION.LEVIATHAN] = config:HasTags(ItemConfig.TAG_DEVIL) or nil
	transformations[EID.TRANSFORMATION.LORD_OF_THE_FLIES] = config:HasTags(ItemConfig.TAG_FLY) or nil
	transformations[EID.TRANSFORMATION.MOM] = config:HasTags(ItemConfig.TAG_MOM) or nil
	transformations[EID.TRANSFORMATION.MUSHROOM] = config:HasTags(ItemConfig.TAG_MUSHROOM) or nil
	transformations[EID.TRANSFORMATION.POOP] = config:HasTags(ItemConfig.TAG_POOP) or nil
	transformations[EID.TRANSFORMATION.SPIDERBABY] = config:HasTags(ItemConfig.TAG_SPIDER) or nil
	transformations[EID.TRANSFORMATION.SPUN] = config:HasTags(ItemConfig.TAG_SYRINGE) or nil
	-- these dont have a tag : ADULT, STOMPY, SUPERBUM
	for k, _ in pairs(transformations) do
		EID:assignTransformation("collectible", collectibleID, k)
	end
end

---Removes a transformation of an entity
---Target entity identifier is in `Type.Variant.SubType` format and is formed based on `targetType` and `targetIdentifier`<br>
---Example: removing "My Transformation" from Sad Onion:
---```lua
---EID:removeTransformation("collectible", 1, "My Transformation")
---```
---@param targetType EID_TypeVariantAlias @Alias for a `Type.Variant` of entity
---@param targetIdentifier integer | string @If valid `targetType` is specified, `SubType` of the entity. Otherwise, the full entity identifier
---@param transformationString string @Transformation name
function EID:removeTransformation(targetType, targetIdentifier, transformationString)
	local entryID = EID:getIDVariantString(targetType)
	if entryID ~= nil then
		entryID = entryID.."."..targetIdentifier
	else
		---@cast targetIdentifier string
		entryID = targetIdentifier
	end
	EID:removeEntryFromString(EID.CustomTransformRemovals, entryID, transformationString)
	if EID.CustomTransformRemovals[entryID] == nil then
		EID.CustomTransformRemovals[entryID] = transformationString
	else
		EID.CustomTransformRemovals[entryID] = EID.CustomTransformRemovals[entryID]..","..transformationString
	end
	EID:removeEntryFromString(EID.CustomTransformAssignments, entryID, transformationString)
end

---Removes a given value from the string inside a table. Example: "1,2,3", removing 2 will return "1,3"
---@param sourceTable table<any, string>
---@param entryKey any
---@param entryValue string
function EID:removeEntryFromString(sourceTable, entryKey, entryValue)
	if sourceTable[entryKey] == nil then return end
	local newEntry = "" ---@type string|nil
	for str in string.gmatch(sourceTable[entryKey], "([^,]+)") do
		local addToList = true
		for removeStr in string.gmatch(entryValue, "([^,]+)") do
			if removeStr == str then
				addToList = false
			end
		end
		if addToList then
			newEntry = newEntry..","..str
		end
	end
	---@cast newEntry string
	newEntry = newEntry:sub(2)
	if newEntry == "" then newEntry = nil end
	sourceTable[entryKey] = newEntry
end

---Adds a description for a an arbitrary Entity
---@param id EntityType
---@param variant integer
---@param subtype? integer @If `nil` or `-1`, it will affect all subtypes of that entity
---@param entityName string
---@param description string
---@param language? EID_LanguageCode @Default: "en_us"
function EID:addEntity(id, variant, subtype, entityName, description, language)
	subtype = subtype or -1
	language = language or EID.DefaultLanguageCode
	if id == EntityType.ENTITY_EFFECT then
		EID.effectList[variant] = true
	end
	EID:CreateDescriptionTableIfMissing("custom", language)
	EID.descriptions[language].custom[id .. "." .. variant .. "." .. subtype] = {
		subtype,
		entityName,
		description
	}
end

---Adds a new icon object with the shortcut defined in the "shortcut" variable (e.g. "{{shortcut}}" = your icon).
---Shortcuts are case sensitive! Shortcuts can be overriden with this function to allow for full control over everything
---@param shortcut string
---@param animationName string
---@param animationFrame integer @-1 to play the animation
---@param width integer
---@param height integer
---@param leftOffset? integer @Default: -1
---@param topOffset? integer @Default: 0
function EID:addIcon(shortcut, animationName, animationFrame, width, height, leftOffset, topOffset, spriteObject)
	leftOffset = leftOffset or -1
	topOffset = topOffset or 0
	EID.InlineIcons[shortcut] = {animationName, animationFrame, width, height, leftOffset, topOffset, spriteObject}
end

---Adds a custom poop spell to T???'s poop descriptions.
---This spell should be added with the "Custom Poop API" library to actually appear in-game.
---Example:
---```lua
---EID:addCustomPoopSpell("MYPOOP", "I Made This Poop", "{{PoopSpell1}}", "Can be throwed to deal damage", "en_us")
---```
---@param token string @The name of the spell in the Custom Poop API code
---@param name string @The name of the spell as it should appear in the description
---@param icon string @Markup icon of the poop
---@param description string
---@param language? EID_LanguageCode @Default: "en_us"
function EID:addCustomPoopSpell(token, name, icon, description, language)
	EID.descriptions[language]["poopSpells"][token] = {icon, name, description, EID._currentMod}
end

---Adds a new color object with the shortcut defined in the "shortcut" variable (e.g. "{{shortcut}}" = your color)
---Shortcuts are case sensitive! Shortcuts can be overriden with this function to allow for full control over everything
---Either `kColor` or `callback` must be provided
---@param shortcut string
---@param kColor? KColor @Constant color
---@param callback? fun(color:KColor):KColor @Called whenever the color markup is interpreted
function EID:addColor(shortcut, kColor, callback)
	if callback ~= nil then
		EID.InlineColors[shortcut] = callback
	else
		EID.InlineColors[shortcut] = kColor
	end
end

---Overrides all potentially displayed texts and permanently displays the given texts
---@see EID.hidePermanentText @Hides permanently displayed text object.
---@param descriptionObject EID_DescObj @Description object to display
---@param permName1 string
---@param permName2 string?
function EID:displayPermanentText(descriptionObject, permName1, permName2)
	descriptionObject.PermanentTextEnglish = EID:getDescriptionEntryEnglish(permName1, permName2)
	EID.permanentDisplayTextObj = descriptionObject
	EID.isDisplayingPermanent = true
end

---Hides permanently displayed text objects if they exist.
function EID:hidePermanentText()
	EID.permanentDisplayTextObj = nil
	EID.isDisplayingPermanent = false
end

---Turns entity type names into actual ingame ID.Variant pairs
---@param typeName EID_TypeVariantAlias
function EID:getIDVariantString(typeName)
	if typeName == "collectible" or typeName == "collectibles" then return "5.100"
	elseif typeName == "trinket" or typeName == "trinkets" then return "5.350"
	elseif typeName == "card" or typeName == "cards" then return "5.300"
	elseif typeName == "pill" or typeName == "pills" or typeName == "horsepills" or typeName == "horsepill" then return "5.70"
	elseif typeName == "dice" then return "1000.76"
	end
	return nil
end

---Turns entity type and variant into their EID table-name
---@param Type EntityType
---@param Variant integer
---@param SubType integer
---@return string
function EID:getTableName(Type, Variant, SubType)
	local idString = Type.."."..Variant
	if idString == "5.100" then return "collectibles"
	elseif idString == "5.350" then return "trinkets"
	elseif idString == "5.300" then return "cards"
	elseif idString == "5.70" then
		if SubType <2049 then
			return "pills"
		else
			return "horsepills"
		end
	elseif idString == "1000.76" then return "dice"
	elseif idString == "1.0" then return "players"
	else return "custom"
	end
end

---Loads a given font from a given file path and use it to render text
---@param fontFileName string
---@return boolean @True if the font was loaded successfully
function EID:loadFont(fontFileName)
	---@diagnostic disable
	EID.font:Load(fontFileName, "") -- GoG Version of game somehow wants a string as the second argument
	EID.font:SetMissingCharacter(2)
	---@diagnostic enable
	if not EID.font:IsLoaded() then
		EID:WriteErrorMsg("Could not load font from '" .. EID.modPath .. "resources/font/default.fnt" .. "'")
		return false
	end
	return true
end

---Returns if EID is displaying text right now
---@return boolean
function EID:isDisplayingText()
	return EID.isDisplaying
end

---Returns true, if curse of blind is active
---@return boolean
function EID:hasCurseBlind()
	return game:GetLevel():GetCurses() & LevelCurse.CURSE_OF_BLIND > 0
end

---Returns the current text position
---@return Vector
function EID:getTextPosition()
	local posVector = Vector(EID.UsedPosition.X, EID.UsedPosition.Y)
	-- Only apply position modifiers when not in Local Mode
	if EID.CurrentScaleType == "Size" then
		for _, modifier in pairs(EID.PositionModifiers) do
			posVector = posVector + modifier
		end
	end
	return posVector
end

---Adds a text position modifier Vector, which will be applied to the text position variable.
---Useful to add small offsets. For example: for schoolbag HUD
---@param identifier string
---@param modifierVector Vector
function EID:addTextPosModifier(identifier, modifierVector)
	EID.PositionModifiers[identifier] = modifierVector
end

---Removes a text position modifier Vector
---@param identifier string
function EID:removeTextPosModifier(identifier)
	EID.PositionModifiers[identifier] = nil
end

---Changes the initial position of all eid descriptions
---Useful to totally alter and override the current initial Overlay position
---@param newPosVector Vector
function EID:alterTextPos(newPosVector)
	EID.UsedPosition = newPosVector
end

---Returns the entity that is currently described. Returns last described entity if currently not displaying text
---@return Entity?
function EID:getLastDescribedEntity()
	return EID.lastDescriptionEntity
end

---Appends a given string to the description of a given Description object
---@param descObj EID_DescObj
---@param appendString string
function EID:appendToDescription(descObj, appendString)
	descObj.Description = descObj.Description..appendString
end

---Returns the description object of a specific entity.
---Falls back to english if the objID isnt available
---@param entity Entity
function EID:getDescriptionObjByEntity(entity)
	return EID:getDescriptionObj(entity.Type, entity.Variant, entity.SubType, entity)
end

---Returns the description object of the specified entity.
---Falls back to english if the objID isnt available
---@param Type EntityType | integer
---@param Variant integer
---@param SubType integer
---@param entity? Entity
---@param checkModifiers? boolean @Default: true
---@return EID_DescObj
function EID:getDescriptionObj(Type, Variant, SubType, entity, checkModifiers)
	local description = {}
	description.ObjType = Type
	description.ObjVariant = Variant
	description.ObjSubType = SubType
	description.fullItemString = Type.."."..Variant.."."..SubType
	description.Name = EID:getObjectName(Type, Variant, SubType)
	description.Entity = entity or nil

	local tableEntry = EID:getDescriptionData(Type, Variant, SubType)
	description.Description = tableEntry and tableEntry[3] or EID:getXMLDescription(Type, Variant, SubType)

	description.Transformation = EID:getTransformation(Type, Variant, SubType)

	description.ModName = tableEntry and tableEntry[4]
	description.Quality = EID:getObjectQuality(description)
	description.Icon = EID:getObjectIcon(description)
	description.ItemPoolType = EID:getObjectItemPool(description)
	EID:getObjectItemTypeAndCharge(description)
	
	EID.DifferentEffectPlayers = {}
	if checkModifiers ~= false then
		description = EID:applyConditionals(description)
		description = EID:applyDescriptionModifier(description, SubType)
	end
	return description
end

---Returns description Object from the legacy mod descriptions if they exist
---@param Type EntityType
---@param Variant integer
---@param SubType integer
---@return [string, string, string]?
function EID:getLegacyModDescription(Type, Variant, SubType)
	local tableName = EID:getTableName(Type, Variant, SubType)
	local customDesc = __eidEntityDescriptions[Type.."."..Variant.."."..SubType]
	if tableName == "collectibles" and __eidItemDescriptions[SubType] then
		return {"","",__eidItemDescriptions[SubType]}
	elseif tableName == "trinkets" and __eidTrinketDescriptions[SubType] then
		return{"","", __eidTrinketDescriptions[SubType]}
	elseif tableName == "cards" and __eidCardDescriptions[SubType] then
		return {"","",__eidCardDescriptions[SubType]}
	elseif tableName == "pills" and __eidPillDescriptions[SubType-1] then
		return {"","",__eidPillDescriptions[SubType-1]}
	elseif customDesc~=nil then
		return {"", customDesc[1], customDesc[2]}
	end
	return nil
end

---Apply Description Modifier to a given description object
---@param description EID_DescObj
---@param SubType integer
---@return EID_DescObj
function EID:applyDescriptionModifier(description, SubType)
	for _,modifier in ipairs(EID.DescModifiers) do
		local result = modifier.condition(description)
		if type(result) == "table" then
			for _,callback in ipairs(result) do
				-- If the modifier loads a different description obj (which also goes through the modifier checks), we should stop our checks so text doesn't get printed twice
				if description.ObjSubType ~= SubType then break end
				description = callback(description)
			end
		elseif result then
			description = modifier.callback(description)
		end
	end
	return description
end

---Returns the icon and mod name of a given EID description object as a preformatted description string
---@param descObj EID_DescObj
---@return string
function EID:getModNameString(descObj)
	local modString = ""
	if EID.Config["ModIndicatorDisplay"] == "Both" or EID.Config["ModIndicatorDisplay"] == "Name only" then
		local modName = EID.ModIndicator[descObj.ModName] and EID.ModIndicator[descObj.ModName].Name or descObj.ModName
		modString = modString .. " {{"..EID.Config["ModIndicatorTextColor"].."}}" .. modName
	end
	local modIcon = EID.ModIndicator[descObj.ModName] and EID.ModIndicator[descObj.ModName].Icon
	if (EID.Config["ModIndicatorDisplay"] == "Both" or EID.Config["ModIndicatorDisplay"] == "Icon only") and modIcon then
		modString = modString .. "{{".. modIcon .."}}"
	end
	return modString
end

---Attempts to merge two given Description objects into one
---@param oldDescObj EID_DescObj
---@param newDescObj EID_DescObj
---@return EID_DescObj
function EID:mergeDescriptionObjects(oldDescObj, newDescObj)
	for k,v in pairs(oldDescObj) do
		if not newDescObj[k] then
			newDescObj[k] = v
		end
	end
	return newDescObj
end

---Writes charge-related information to a given description object
---@param descObj EID_DescObj
function EID:getObjectItemTypeAndCharge(descObj)
	if not (descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType ~= nil) then
		return
	end
	local itemConfig = EID.itemConfig:GetCollectible(descObj.ObjSubType)
	if not itemConfig then return end
	descObj.ItemType = itemConfig.Type or -1

	if descObj.ItemType == ItemType.ITEM_ACTIVE then
		descObj.ChargeType = itemConfig.ChargeType or 0
		descObj.Charges = itemConfig.MaxCharges or 0
		-- Special handling for dynamic charge items
		if EID.isRepentance and (descObj.ObjSubType == CollectibleType.COLLECTIBLE_BLANK_CARD or descObj.ObjSubType == CollectibleType.COLLECTIBLE_PLACEBO or
		descObj.ObjSubType == CollectibleType.COLLECTIBLE_CLEAR_RUNE or descObj.ObjSubType == CollectibleType.COLLECTIBLE_D_INFINITY) then
			descObj.ChargeType = ItemConfig.CHARGE_SPECIAL
		end
	end
end

---Returns the specified object string in the current language.
---Falls back to english if it doesnt exist, unless `noFallback` is true
---@param objTable string
---@param objIdentifier? integer | string
---@param noFallback? boolean
---@return string
function EID:getDescriptionEntry(objTable, objIdentifier, noFallback)
	if not objIdentifier then
		if noFallback then return EID.descriptions[EID:getLanguage()][objTable]
		else return EID.descriptions[EID:getLanguage()][objTable] or EID.descriptions[EID.DefaultLanguageCode][objTable] end
	else
		local translatedTable = EID.descriptions[EID:getLanguage()][objTable]
		local description
		if noFallback then description = translatedTable and translatedTable[objIdentifier]
		else description = (translatedTable and translatedTable[objIdentifier]) or (EID.descriptions[EID.DefaultLanguageCode][objTable] and EID.descriptions[EID.DefaultLanguageCode][objTable][objIdentifier]) end
		--Try looking for a -1 that would encompass all subtypes of the variant
		-- Safety check for if the identifier contains "."(dot) 1-2 times and only contains numbers
		local strNoDots, numDots = string.gsub(objIdentifier, "%.","")
		if not description and tonumber(strNoDots) and (numDots == 1 or numDots == 2) then
			local subtype
			for i = string.len(objIdentifier), 1, -1 do
				if string.sub(objIdentifier, i, i) == "." then
					subtype = string.sub(objIdentifier, i + 1, -1)
					objIdentifier = string.gsub(objIdentifier, "." .. subtype, "") .. ".-1"
					if subtype ~= "-1" then
						return EID:getDescriptionEntry(objTable, objIdentifier, noFallback)
					end
					break
				end
			end
		end
		return description
	end
end

---Returns the specified object string in english.
---@param objTable string
---@param objID? any
---@return string
function EID:getDescriptionEntryEnglish(objTable, objID)
	if not objID then
		return EID.descriptions[EID.DefaultLanguageCode][objTable]
	else
		return EID.descriptions[EID.DefaultLanguageCode][objTable] and EID.descriptions[EID.DefaultLanguageCode][objTable][objID]
	end
end

---Returns the description data table related to a given id, variant and subtype.
---Falls back to english if it doesnt exist
---@param Type EntityType
---@param Variant integer
---@param SubType integer
---@return string
function EID:getDescriptionData(Type, Variant, SubType)
	local fullString = Type.."."..Variant
	local adjustedID = EID:getAdjustedSubtype(Type, Variant, SubType)
	local moddedDesc = EID:getDescriptionEntry("custom", fullString.."."..adjustedID)
	local tableName = EID:getTableName(Type, Variant, SubType)
	local legacyModdedDescription = EID:getLegacyModDescription(Type, Variant, adjustedID)
	local defaultDesc = EID:getDescriptionEntry(tableName, adjustedID)

	return moddedDesc or legacyModdedDescription or defaultDesc
end

---Returns an adjusted SubType for special cases like Horse Pills and Golden Trinkets
---@param Type EntityType
---@param Variant integer
---@param SubType integer
---@return integer
function EID:getAdjustedSubtype(Type, Variant, SubType)
	local tableName = EID:getTableName(Type, Variant, SubType)
	if tableName == "trinkets" then
		if EID.isRepentance then
			return (SubType & TrinketType.TRINKET_ID_MASK)
		end
	elseif tableName == "pills" or tableName == "horsepills" then
		-- The effect of a pill varies depending on what player is looking at it in co-op
		-- EID.pillPlayer is a way to recheck a pill for what different players will turn it into
		local player = EID.pillPlayer or EID.player
		if EID.isRepentance and SubType % PillColor.PILL_GIANT_FLAG == PillColor.PILL_GOLD then
			return 9999
		end
		local pool = game:GetItemPool()
		if EID.isRepentance and player:GetPlayerType() == PlayerType.PLAYER_THESOUL_B then
			SubType = pool:GetPillEffect(SubType, player:GetOtherTwin() or player) + 1
		else SubType = pool:GetPillEffect(SubType, player) + 1 end
	end
	return SubType
end

---Get the transformation uniqueName / ID of a given entity
---Example:
---```lua
---EID:getTransformation(5,100,34) --Returns "12" which is the id for Bookworm
---```
---@param id EntityType
---@param variant integer
---@param subType integer
---@return string
function EID:getTransformation(id, variant, subType)
	local adjustedSubtype = EID:getAdjustedSubtype(id, variant, subType)
	local entityString = id.."."..variant.."."..adjustedSubtype
	local listToTest = ""
	local default = EID.EntityTransformations[entityString]
	if default~= nil then listToTest = default end

	if id == 5 and variant == 100 then
		local customLegacy = __eidItemTransformations[adjustedSubtype]
		if customLegacy~= nil then listToTest = listToTest..","..customLegacy end
	end

	local custom = EID.CustomTransformAssignments[entityString]
	if custom~= nil then listToTest = listToTest..","..custom end

	local transformationList = ""
	local removedList = EID.CustomTransformRemovals[entityString]
	for transform in string.gmatch(listToTest, "([^,]+)") do
		local isRemoved = false
		if removedList ~= nil then
			for removedTransform in string.gmatch(removedList, "([^,]+)") do
				if transform == removedTransform then isRemoved = true end
			end
		end
		if not isRemoved then transformationList = transformationList..","..transform end
	end
	return transformationList
end

---Get the name of the given transformation by its uniqueName / ID
---@param id string
---@return string
function EID:getTransformationName(id)
	local str = "Custom"
	if tonumber(id) == nil then
		-- get translated custom name
		local customTransform = EID.CustomTransformations[id]
		if customTransform ~= nil then
			return customTransform[EID:getLanguage()] or customTransform[EID.DefaultLanguageCode] or id
		end
		return id
	end
	return EID:getDescriptionEntry("transformations")[tonumber(id) + 1] or str
end

---Tries to get the ingame name of an item based on its ID
---@param Type EntityType
---@param Variant integer
---@param SubType integer
---@return string
function EID:getObjectName(Type, Variant, SubType)
	local tableName = EID:getTableName(Type, Variant, SubType)
	local tableEntry = EID:getDescriptionData(Type, Variant, SubType)
	local name = nil
	if tableEntry ~= nil then
		if tableEntry[2] ~= nil and tableEntry[2] ~= "" and tableEntry[2] ~= EID.descriptions[EID.DefaultLanguageCode][tableName][SubType] then
			name = tableEntry[2]
		end
	end
	local fallbackName = Type.."."..Variant.."."..SubType
	if tableName == "collectibles" then
		if EID.itemConfig:GetCollectible(SubType) == nil then return fallbackName end
		local vanillaName = EID.itemConfig:GetCollectible(SubType).Name
		local englishName = EID.descriptions[EID.DefaultLanguageCode][tableName][SubType] and EID.descriptions[EID.DefaultLanguageCode][tableName][SubType][2]
		return name or (not string.find(vanillaName, "^#") and vanillaName) or englishName or vanillaName
	elseif tableName == "trinkets" then
		local adjustedSubtype = EID:getAdjustedSubtype(Type, Variant, SubType)
		if EID.itemConfig:GetTrinket(adjustedSubtype) == nil then return fallbackName end
		local vanillaName = EID.itemConfig:GetTrinket(adjustedSubtype).Name
		local englishName = EID.descriptions[EID.DefaultLanguageCode][tableName][adjustedSubtype] and EID.descriptions[EID.DefaultLanguageCode][tableName][adjustedSubtype][2]
		return name or (not string.find(vanillaName, "^#") and vanillaName) or englishName or vanillaName
	elseif tableName == "cards" then
		if EID.itemConfig:GetCard(SubType) == nil then return fallbackName end
		local vanillaName = EID.itemConfig:GetCard(SubType).Name
		local englishName = EID.descriptions[EID.DefaultLanguageCode][tableName][SubType] and EID.descriptions[EID.DefaultLanguageCode][tableName][SubType][2]
		return name or (not string.find(vanillaName, "^#") and vanillaName) or englishName or vanillaName
	elseif tableName == "pills" or tableName == "horsepills" then
		local adjustedSubtype = EID:getAdjustedSubtype(Type, Variant, SubType)
		return EID:getPillName(adjustedSubtype, tableName == "horsepills")
	elseif tableName == "dice" then
		return EID:getDescriptionEntry("diceHeader").." ("..SubType..")"
	elseif tableName == "players" then
		return EID:getPlayerName(SubType)
	elseif tableName == "custom" then
		local xmlName = EID:GetEntityXMLName(Type, Variant, SubType)
		return name or xmlName or fallbackName
	end
	return fallbackName
end

---Returns the name of a player based on their ID
---@param id PlayerType
---@param altFallback? string
---@return string
function EID:getPlayerName(id, altFallback)
	local playerInfo = EID:getDescriptionEntry("CharacterInfo")[id]
	local birthrightInfo = EID.isRepentance and EID:getDescriptionEntry("birthright")[id+1]
	return (playerInfo and playerInfo[1]) or (birthrightInfo and birthrightInfo[1]) or altFallback or EID:findPlayerName(id) or "???"
end

---Get the name of a given player ID by checking for a matching EntityPlayer.
---This is for modded characters, whose name is best found by doing EntityPlayer:GetName()
---@param id PlayerType
---@return string?
function EID:findPlayerName(id)
	local _, entityPlayer = EID:PlayersHaveCharacter(id, false)
	if entityPlayer then return entityPlayer:GetName() end
end

---Returns the name of a pill based on the pilleffect id
---@param pillID PillEffect | integer
---@param isHorsepill boolean
---@return string
function EID:getPillName(pillID, isHorsepill)
	local moddedDesc = EID:getDescriptionEntry("custom", "5.70."..pillID)
	local legacyModdedDescription = EID:getLegacyModDescription(5, 70, pillID)
	local tableName = isHorsepill and "horsepills" or "pills"
	local defaultDesc = EID:getDescriptionEntry(tableName, pillID)

	local name = moddedDesc or legacyModdedDescription or defaultDesc

	local vanillaName = ""
	if pillID == 9999 then
		vanillaName = "Golden Pill" -- only used for languages that haven't defined a Golden Pill name
	else
		vanillaName = EID.itemConfig:GetPillEffect(pillID - 1).Name
	end
	name = name and name[2] or (not string.find(vanillaName, "^#") and vanillaName) or EID.descriptions[EID.DefaultLanguageCode][tableName][pillID][2] or vanillaName
	name = string.gsub(name,"I'm Excited!!!","I'm Excited!!") -- prevent markup trigger
	return name
end

---Tries to get the ingame description of an object, based on their description in the XML files
---@param Type EntityType
---@param Variant integer
---@param SubType integer
---@return string
function EID:getXMLDescription(Type, Variant, SubType)
	local tableName = EID:getTableName(Type, Variant, SubType)
	if SubType == 0 then return "(no description available)" end
	local itemConfig = nil
	if tableName == "collectibles" then
		itemConfig = EID.itemConfig:GetCollectible(SubType)
	elseif tableName == "trinkets" then
		itemConfig = EID.itemConfig:GetTrinket(SubType)
	elseif tableName == "cards" and EID.itemConfig:GetCard(SubType) then
		itemConfig = EID.itemConfig:GetCard(SubType)
	end
	return itemConfig and itemConfig.Description or "(no description available)"
end

---Check if an entity is part of the describable entities
---@param entity Entity | GridEntity
---@return boolean
---@diagnostic disable: param-type-mismatch
---@diagnostic disable-next-line: duplicate-set-field
function EID:hasDescription(entity)
	if not EID:EntitySanityCheck(entity) then return false end
	
	if EID:IsGridEntity(entity) then
		return EID:CheckGridEntityHasDescription(entity)
	end
	local isAllowed = false
	local entityString = entity.Type .. "." .. entity.Variant .. "." .. entity.SubType

	-- dont describe entity when EID_Hide data is set
	if EID:getEntityData(entity, "EID_Hide") then
		return false
	end

	if EID.IgnoredEntities[entity.Type .. "." .. entity.Variant] or EID.IgnoredEntities[entityString] then return false end

	if EID.Config["EnableEntityDescriptions"] and EID:getTableName(entity.Type, entity.Variant, entity.SubType) == "custom" then
		isAllowed = isAllowed or __eidEntityDescriptions[entityString] ~= nil
		isAllowed = isAllowed or EID:getDescriptionData(entity.Type, entity.Variant, entity.SubType) ~= nil
		isAllowed = isAllowed or EID:getEntityData(entity, "EID_Description") ~= nil
	end
	if entity.Type == EntityType.ENTITY_PICKUP then
		if entity.SubType == 0 and EID:getDescriptionData(entity.Type, entity.Variant, entity.SubType) ~= nil then
			-- allow pickups with subtype 0 to have a description, if its explictly defined
			return true
		end
		isAllowed = isAllowed or (entity.Variant == PickupVariant.PICKUP_COLLECTIBLE and EID.Config["DisplayItemInfo"])
		isAllowed = isAllowed or (entity.Variant == 110 and entity:GetSprite():IsPlaying("Idle") and EID.Config["DisplayItemInfo"]) -- Broken Shovel
		isAllowed = isAllowed or (entity.Variant == PickupVariant.PICKUP_TRINKET and EID.Config["DisplayTrinketInfo"])
		isAllowed = isAllowed or (entity.Variant == PickupVariant.PICKUP_TAROTCARD and EID.Config["DisplayCardInfo"])
		isAllowed = isAllowed or (entity.Variant == PickupVariant.PICKUP_PILL and EID.Config["DisplayPillInfo"])
		---@diagnostic disable-next-line: return-type-mismatch
		return isAllowed and (entity.SubType > 0 or
			-- For Flip descriptions, allow 5.100.0 pedestals to have descriptions under VERY specific criteria!
			(EID.isRepentance and EID:getEntityData(entity, "EID_FlipItemID") and EID:PlayersHaveCollectible(CollectibleType.COLLECTIBLE_FLIP)))
	end
	if entity.Type == 6 and entity.Variant == 16 and EID.Config["DisplayCraneInfo"] and EID.isRepentance then
		if REPENTOGON then
			isAllowed = not entity:GetSprite():IsPlaying("Broken") and not entity:GetSprite():IsPlaying("OutOfPrizes") and entity:ToSlot():GetPrizeCollectible() ~= -1 			
		else
			isAllowed = not entity:GetSprite():IsPlaying("Broken") and not entity:GetSprite():IsPlaying("OutOfPrizes") and (EID.CraneItemType[entity.InitSeed.."Drop"..entity.DropSeed] or EID.CraneItemType[tostring(entity.InitSeed)])
		end

	end

	if entity.Type == 1000 then
		-- Handle Card Reading Portals
		if entity.Variant == 161 then
			if entity.SubType <= 2 or (EID.isRepentancePlus and entity.SubType == 3) then
				isAllowed = true
			end
		end
		-- Dice floor information
		if entity.Variant == EffectVariant.DICE_FLOOR and EID.Config["DisplayDiceInfo"] then
			isAllowed = true
		end
	end
	return isAllowed
end

---Replaces shorthand-representations of a character with the internal reference
---@param text string
---@return string
function EID:replaceShortMarkupStrings(text)
	for _, pair in ipairs(EID.TextReplacementPairs) do
		text = string.gsub(text, pair[1], pair[2])
	end
	return text
end

local VariantToColorText = { [100] = "{{ColorYellow}}", [350] = "{{ColorYellow}}", [300] = "{{ColorCard}}", [70] = "{{ColorPill}}" }
---Replaces name markup objects with the actual name
---@param text string
---@return string
function EID:replaceNameMarkupStrings(text)
	for word in string.gmatch(text, "{{Name.-}}") do
		local strTrimmed = string.gsub(word, "{{Name(.-)}}", function(a) return a end)
		local showIcon = true
		-- If the markup is {{NameOnlyX###}}, do not print an icon before the name
		if string.find(text, "NameOnly") then
			strTrimmed = string.gsub(word, "{{NameOnly(.-)}}", function(a) return a end)
			showIcon = false
		end
		local indicator = string.sub(strTrimmed, 1, 1)
		local id = tonumber(string.sub(strTrimmed, 2, -1)) ---@cast id integer
		local name = ""
		if tonumber(indicator) then
			local entityID = {}
			for e in string.gmatch(strTrimmed, "([^.]*)") do
				table.insert(entityID, tonumber(e))
			end
			local iconText = ""
			local colorText = ""
			if entityID[1] == 1 then
				if showIcon then iconText = EID:GetPlayerIcon(entityID[3]) .. " " end
				colorText = "{{ColorIsaac}}"
			else
				if showIcon then iconText = "{{" .. EID:GetIconNameByVariant(entityID[2]) .. entityID[3] .. "}} " end
				colorText = VariantToColorText[entityID[2]] or ""
			end
			if entityID[2] == 70 then name = iconText .. colorText .. EID:getPillName(entityID[3], false) .. "{{CR}}"
			else name = iconText .. colorText .. EID:getObjectName(entityID[1], entityID[2], entityID[3]) .. "{{CR}}" end
		elseif indicator == "C" then -- Collectible
			name = (showIcon and "{{Collectible"..id.."}} " or "") .. "{{ColorYellow}}" .. EID:getObjectName(5, 100, id) .. "{{CR}}"
		elseif indicator == "T" then -- Trinket
			name = (showIcon and "{{Trinket"..id.."}} " or "") .. "{{ColorYellow}}" .. EID:getObjectName(5, 350, id) .. "{{CR}}"
		elseif indicator == "P" then -- Pills
			name = (showIcon and "{{Pill"..id.."}} " or "") .. "{{ColorPill}}" .. EID:getPillName(id, false) .. "{{CR}}"
		elseif indicator == "K" then -- Card
			name = (showIcon and "{{Card"..id.."}} " or "") .. "{{ColorCard}}" .. EID:getObjectName(5, 300, id) .. "{{CR}}"
		elseif indicator == "I" then -- Player (I for Isaac)
			name = (showIcon and EID:GetPlayerIcon(id) .. " " or "") .. "{{ColorIsaac}}" .. EID:getPlayerName(id) .. "{{CR}}"
		end
		text = string.gsub(text, word, name, 1)
	end
	return text
end

---Generates a string with the defined pixel-length using a custom 1px wide character.
---This will only work for this specific custom font.
---@param length integer
---@return string
function EID:generatePlaceholderString(length)
	return string.rep("¤", length)
end

---Returns the inlineIcon object of a given Iconstring.
---Can be used to validate an iconstring
---@param str string
---@return EID_Icon
function EID:getIcon(str)
	if str == nil then
		return EID.InlineIcons["ERROR"]
	end
	local strTrimmed = string.gsub(str,"{{(.-)}}",function(a) return a end )
	if #strTrimmed <= #str then
		local itemIconObj = EID:createItemIconObject(strTrimmed)
		---@diagnostic disable-next-line: return-type-mismatch
		if itemIconObj then return itemIconObj end

		if type(EID.InlineIcons[strTrimmed]) == "function" then
			return EID.InlineIcons[strTrimmed](str) or EID.InlineIcons["ERROR"]
		end

		---@diagnostic disable-next-line: return-type-mismatch
		return EID.InlineIcons[strTrimmed] or EID.InlineIcons["ERROR"]
	else
		return EID.InlineIcons["ERROR"]
	end
end

---Tries to read special markup used to generate icons for all Collectibles/Trinkets and the default Cards/Pills
---Returns an inlineIcon Object or nil if no parsing was possible
---@param str string
---@return EID_Icon?
function EID:createItemIconObject(str)
	local item = nil
	local backgroundImage = ""
	local subTypeIdentifier = 0

	-- Check for {{Item#.##.###}} markup; easiest way to handle it is to just call this function again
	local itemID,numReplaceGeneric = string.gsub(str, "Item", "")
	if numReplaceGeneric > 0 and itemID ~= "" then
		local Type, Var, Sub = EID:SplitTVS(itemID)
		if Type == 1 then return EID:getIcon("Player" .. Sub)
		elseif Type == 5 then
			local iconName = EID:GetIconNameByVariant(Var)
			if iconName then
				return EID:createItemIconObject(iconName .. Sub)
			end
		end
	end

	-- Add background image to Icon, if the keyword can be found in the markup string
	for keyword, imagePath in pairs(EID.MarkupBackgroundKeywords) do
		if string.find(str, keyword) then
			str = string.gsub(str, keyword, "")
			backgroundImage = imagePath
			break
		end
	end

	---@diagnostic disable
	local collID,numReplace = string.gsub(str, "Collectible", "")
	if numReplace > 0 and collID ~= "" and tonumber(collID) ~= nil then
		item = EID.itemConfig:GetCollectible(tonumber(collID))
		subTypeIdentifier = tonumber(collID)
	end
	local trinketID,numReplace2 = string.gsub(str, "Trinket", "")
	if numReplace2 > 0 and trinketID ~= "" and tonumber(trinketID) ~= nil then
		item = EID.itemConfig:GetTrinket(tonumber(trinketID))
		subTypeIdentifier = tonumber(trinketID)
	end
	local cardID,numReplace3 = string.gsub(str, "Card", "")
	if numReplace3 > 0 and cardID ~= "" and tonumber(cardID) ~= nil then
		if tonumber(cardID) > maxCardID then return EID.InlineIcons[str] or EID.InlineIcons["Card"] end
		return {"Cards", tonumber(cardID)-1, 8, 8, 0, 1, EID.CardPillSprite}
	end
	local pillID,numReplace4 = string.gsub(str, "Pill", "")
	if numReplace4 > 0 and pillID ~= "" and tonumber(pillID) ~= nil then
		if tonumber(pillID % 2048) > maxPillID then return EID.InlineIcons[str] or EID.InlineIcons["Pill"] end
		return {"Pills", tonumber(pillID % 2048)-1, 9, 8, 0, 1, EID.CardPillSprite}
	end
	---@diagnostic enable
	if item == nil then
		return nil
	end
	if dynamicSpriteCache[backgroundImage .. str] then
		return dynamicSpriteCache[backgroundImage .. str]
	else
		local spriteDummy = Sprite()
		spriteDummy:Load("gfx/eid_inline_icons.anm2", true)
		spriteDummy:ReplaceSpritesheet(0, backgroundImage)
		spriteDummy:ReplaceSpritesheet(1, item.GfxFileName)
		spriteDummy:LoadGraphics()
		local newDynamicSprite = { "ItemIcon", subTypeIdentifier, 11, 8, -2, -2, spriteDummy }
		dynamicSpriteCache[backgroundImage .. str] = newDynamicSprite
		return newDynamicSprite
	end
end

---Returns the icon for a given transformation name or ID
---@param str string
---@return EID_Icon
function EID:getTransformationIcon(str)
	if str == nil then
		return EID.InlineIcons["ERROR"]
	end
	if tonumber(str) ~= nil then
		str = EID.descriptions[EID.DefaultLanguageCode].transformations[tonumber(str + 1)]
	end
	local transformSprite = EID:getIcon(str:gsub(" ", ""))
	if transformSprite[1] == "ERROR" then
		transformSprite = EID:getIcon("CustomTransformation")
	end
	return transformSprite
end

---Returns the width of a given string in Pixels
---@param str string
---@return integer
function EID:getStrWidth(str)
	return EID.font:GetStringWidthUTF8(str)
end

---Searches through the given string and replaces Icon placeholders with icons.
---Returns 2 values. the string without the placeholders but with an accurate space between lines. And a table of all Inline Sprites
---@param text string
---@param renderBulletPointIcon boolean?
---@return string, [EID_Icon, integer, function?][]
function EID:filterIconMarkup(text, renderBulletPointIcon)
	local spriteTable = {}
	for word in string.gmatch(text, "{{.-}}") do
		local textposition = string.find(text, word) or 1

		local callback = EID._NextIconModifier
		EID._NextIconModifier = nil

		local lookup = EID:getIcon(word)
		local preceedingTextWidth = EID:getStrWidth(string.sub(text, 0, textposition - 1)) * EID.Scale

		-- Center the small bullet point icons by adding an extra left offset to them.
		-- If the icon has a positive left offset, that means the offset is already included in the icon itself and we should not add it again
		if renderBulletPointIcon and lookup[3] < 11 and (#lookup < 5 or lookup[5] <= 0)  then
			preceedingTextWidth  = preceedingTextWidth + math.floor((12 - lookup[3]) / 2) * EID.Scale
		end

		table.insert(spriteTable, {lookup, preceedingTextWidth, callback})
		text = string.gsub(text, word, EID:generatePlaceholderString(lookup[3]), 1)
	end
	return text, spriteTable
end

---Renders a list of given inline sprite objects returned by the "EID:filterIconMarkup()" function
---@param spriteTable [EID_Icon, integer?, fun(spriteObj:Sprite)?][]
---@param posX integer
---@param posY integer
function EID:renderInlineIcons(spriteTable, posX, posY)
	for _, sprite in ipairs(spriteTable) do
		local Xoffset = sprite[1][5] or -1
		local Yoffset = sprite[1][6] or 0
		local additionalXOffset = sprite[2] or 0
		local spriteObj = (type(sprite[1][7]) == "function" and sprite[1][7]()) or sprite[1][7] or EID.InlineIconSprite
		if sprite[1][2] >= 0 then
			spriteObj:SetFrame(sprite[1][1], sprite[1][2])
		elseif not spriteObj:IsPlaying(sprite[1][1]) or spriteObj:IsFinished(sprite[1][1]) then
			spriteObj:Play(sprite[1][1],true)
		else
			spriteObj:Update()
		end

		EID:renderIcon(spriteObj, posX + additionalXOffset + Xoffset * EID.Scale, posY + Yoffset * EID.Scale, sprite[3], sprite[1][1], sprite[1][2])
	end
end

---Helper function to render Icons in specific EID settings
---@param spriteObj Sprite
---@param posX integer
---@param posY integer
---@param callback fun(spriteObj: Sprite) | nil
---@param animName string | nil
---@param animFrame integer | nil
function EID:renderIcon(spriteObj, posX, posY, callback, animName, animFrame)
	spriteObj.Scale = Vector(EID.Scale, EID.Scale)
	spriteObj.Color = Color(1, 1, 1, EID.Config["Transparency"], 0, 0, 0)
	if callback then
		callback(spriteObj)
	end

	if EID.CachingDescription then
		table.insert(EID.CachedIcons[#EID.CachedIcons], {spriteObj, posX, posY, callback, animName, animFrame})
	end

	spriteObj:Render(Vector(posX, posY), nullVector, nullVector)
end

---Returns the icon used for the bulletpoint. It will look at the first word in the given string.
---Also returns the first word if it was rejected (so it can be removed from the line)
---@param text string
---@return string, string?
function EID:handleBulletpointIcon(text, ignoreBPConfig)
	-- Find the position where '}}' is followed by a space or letter
	local firstMarkupPos, _ = string.find(text, "{{.-}}")
	local startPos, endPos = string.find(text, "}}%s")

	-- check if string starts with markup and has 
	if firstMarkupPos and startPos and firstMarkupPos == 1 then
		-- The split should be right after '}}', so adjust the position
		local firstWord = string.sub(text, 1, endPos - 1)
		firstWord = EID:removeColorMarkup(firstWord)
		if EID:getIcon(firstWord) ~= EID.InlineIcons["ERROR"] and string.find(firstWord, "{{.-}}")~=nil then
			if ignoreBPConfig and not EID.Config["StatAndPickupBulletpoints"] and EID.StatPickupBulletpointBlacklist[firstWord] then
				return "\007", firstWord
			end
			return firstWord
		end
	end
	return "\007"
end

local colorFunc = nil
---Gets a KColor from a Markup-string (example Input: "{{ColorText}}").
---Returns the KColor object and a boolean value indicating if the given string was a color markup or not
---@param str string
---@param baseKColor KColor
---@return KColor, boolean
function EID:getColor(str, baseKColor)
	local color = baseKColor ---@type KColor | function
	local isColorMarkup = false
	if str ~= nil then
		local strTrimmed = string.gsub(str,"{{(.-)}}",function(a) return a end, 1)
		if #strTrimmed <= #str then
			if type(EID.InlineColors[strTrimmed]) == "function" then
				colorFunc = EID.InlineColors[strTrimmed]
				color = EID.InlineColors[strTrimmed](color)
			else
				if EID.InlineColors[strTrimmed] then colorFunc = nil end
				color = EID.InlineColors[strTrimmed] or color
				if EID.Config["ColorblindMode"] > 0 then
					color = EID.ColorBlindColors[EID.Config["ColorblindMode"]][strTrimmed] or color
				end
			end
			isColorMarkup = type(EID.InlineColors[strTrimmed]) ~= type(nil)
		end
	end
	---@cast color KColor
	color = EID:copyKColor(color)
	color.Alpha = math.min(color.Alpha, EID.Config["Transparency"])

	return color, isColorMarkup
end

---Filters a given string and looks for Colormarkup. Splits the text into subsections limited by them.
---Returns: Table of subsections of the text, their respective KColor, and the width of the subsection
---@param text string
---@param baseKColor KColor
---@return [string, KColor, integer][]
function EID:filterColorMarkup(text, baseKColor)
	local textPartsTable = {}
	local lastColor = baseKColor
	local lastFunc = colorFunc
	local lastPosition = 0
	for word in string.gmatch(text, "{{.-}}") do
		local textposition = string.find(text, word) ---@cast textposition integer
		local lookup, isColor = EID:getColor(word, lastColor)
		if isColor then
			local preceedingText = string.sub(text, lastPosition, textposition - 1)
			local preceedingTextWidth = EID:getStrWidth(preceedingText) * EID.Scale
			lastPosition = textposition
			table.insert(textPartsTable, {preceedingText, lastColor, preceedingTextWidth, lastFunc})
			lastColor = lookup
			lastFunc = colorFunc
			text = string.gsub(text, word, "", 1)
		end
	end

	table.insert(textPartsTable, {string.sub(text, lastPosition), lastColor, 0, lastFunc})
	return textPartsTable
end

---Removes color markup, preserves bulletpoint icons after start-of-line color markup
---@param text string
---@return string
function EID:removeColorMarkup(text)
	for word in string.gmatch(text, "{{Color.-}}") do
		text = string.gsub(text, word, "", 1)
	end
	return text
end

---Replaces all markup {{ }} with placeholder strings, to use in fitTextToWidth
---@param text string
---@param checkBulletpoint? boolean
---@return string, integer?
function EID:replaceAllMarkupWithSpaces(text, checkBulletpoint)
	if checkBulletpoint then
		-- Check for the text to just be a bulletpoint icon, which should be considered as zero width
		-- (fixTextToWidth uses this function one word at a time)
		if EID:getIcon(text:gsub(" ", "")) ~= EID.InlineIcons["ERROR"] and string.find(text, "{{.-}}")~=nil then
			return ""
		end
	end
	-- iconsFound is used to make the next space after a markup icon be immune to line breaks, but only if it's just one icon with no other text
	local iconsFound = 0; if text:gsub(" ", ""):gsub("{{.-}}","") ~= "" then iconsFound = math.mininteger end
	
	for word in string.gmatch(text, "{{.-}}") do
		local lookup = EID:getIcon(word)
		if lookup[1] ~= "ERROR" then
			text = string.gsub(text, word, EID:generatePlaceholderString(lookup[3]), 1)
			iconsFound = iconsFound + 1
		else
			text = string.gsub(text, word, "", 1)
		end
	end
	return text, iconsFound
end

---Fits a given string to a specific width
---@param str string
---@param textboxWidth integer
---@param breakUtf8Chars boolean
---@return string[] @Input string split into lines
function EID:fitTextToWidth(str, textboxWidth, breakUtf8Chars)
	local formattedLines = {}
	-- Lines with a {{NoLineBreak}} tag should be left in one continuous line
	if str:find("{{NoLineBreak}}") or str:find("{{NoLB}}") then
		str = str:gsub("{{NoLineBreak}}",""):gsub("{{NoLB}}","")
		table.insert(formattedLines,str)
		return formattedLines
	end
	local curLength = 0
	local text = {}
	-- the first word we run into might actually be a bulletpoint icon, which should be zero width
	local isBulletpoint = true
	-- if we find an icon by itself, we should skip the following space
	local previousWordWasIcon = false
	local cursor = 1
	local word_begin_index = 1

	local byte = string.byte -- for speed up
	local sub = string.sub
	local byte_space = string.byte(' ')

	while cursor <= #str do
		-- ascii word: 0x0xxxxxxx
		-- utf8 word (sequence): 0x11xxxxxx 0x10xxxxxx 0x10xxxxxx ... 0x10xxxxxx
		-- see https://en.wikipedia.org/wiki/UTF-8
		-- we can only break after space, or before 0x11xxxxxx
		local cur, next = byte(str,cursor), byte(str,cursor+1)
		if
			-- cond#1: we can break at the end of string
			cursor == #str or
			-- cond#2: we can break after space
		 	cur == byte_space or
			-- handle utf8 characters
			(breakUtf8Chars and(
			 -- cond#3: we can break if the next character is 0x11xxxxxx
			 ((next & 0xC0) == 0xC0) or
			 -- cond#4: we can also break if the current is 0x10xxxxxx while the next is ascii but not space
			 (((cur & 0xC0) == 0x80) and (next~= byte_space and (next & 0x80) == 0x00))
			))
			then
				--[[
					-------------------ascii only---------------
					word will be separated by spaces.
					wordA |wordB  |wordC |^%@&Q%#^&#@!! |aksldj
					      ↑
					      cond#2
					we may break after every space.
					spaces | | | | | |woops
					       ↑
					       cond#2
					-------------------UTF8 only----------------
					word is 0x11xxxxxx followed by several 0x10xxxxxx until the next 0x11xxxxxx (not included)
					你|好|，|世|界|！|↑|↑|↑|↑
					  ↑
					  cond#3
					byte data of a word:
					[0x11xxxxxx,0x10xxxxxx,0x10xxxxxx, (next is 0x11xxxxxx, cond#3)]
					--------------------ascii->utf8------------
					utf8 word must start with 0x11xxxxxx, so cond#3 split before it.
					word|世|界
					    |  ↑
					    ↑  cond#3
					    cond#3

					world |means |世|界
					             ↑
					             cond#2
					-------------------utf8->ascii--------------
					世|界|是|world
					     | ↑
					     ↑ cond#4
					     cond#3
					世|界|是 |world
					     |   ↑
					     ↑   cond#2
					     cond#3
				]]

				-- we can break after str[cursor]
				local word = sub(str, word_begin_index, cursor)
				local wordFiltered, iconsFound = EID:replaceAllMarkupWithSpaces(word, isBulletpoint)
				isBulletpoint = false
				local wordLength = EID:getStrWidth(wordFiltered)

				if curLength + wordLength <= textboxWidth or curLength < 17 or previousWordWasIcon then
					table.insert(text, word)
					curLength = curLength + wordLength
				else
					table.insert(formattedLines, table.concat(text))
					text = { word }
					curLength = wordLength
				end
				previousWordWasIcon = (iconsFound == 1)
				-- next word starts here
				word_begin_index = cursor + 1
		end
		cursor = cursor + 1
	end

	-- fix this function applying crafting icon green tint to the start of the printed line
	EID._NextIconModifier = nil

	table.insert(formattedLines, table.concat(text))
	return formattedLines
end

---Renders a given string using the EID Custom font. This will also apply any markup and render icons
---Should be called in a render callback
---@param str string
---@param position Vector
---@param scale Vector
---@param kcolor KColor
---@param renderBulletPointIcon boolean?
---@return KColor
function EID:renderString(str, position, scale, kcolor, renderBulletPointIcon)
	str = EID:replaceShortMarkupStrings(str)
	local textPartsTable = EID:filterColorMarkup(str, kcolor)
	local offsetX = 0
	for _, textPart in ipairs(textPartsTable) do
		local strFiltered, spriteTable = EID:filterIconMarkup(textPart[1], renderBulletPointIcon)
		EID:renderInlineIcons(spriteTable, position.X + offsetX, position.Y)
		if strFiltered then -- prevent possible crash when strFiltered is nil
			EID.font:DrawStringScaledUTF8(strFiltered, position.X + offsetX, position.Y, scale.X, scale.Y, textPart[2], 0, false)
			if EID.CachingDescription then
				table.insert(EID.CachedStrings[#EID.CachedStrings], {strFiltered, position.X + offsetX, position.Y, textPart[2], textPart[4], EID.Config["Transparency"]})
			end
			offsetX = offsetX + EID:getStrWidth(strFiltered) * scale.X
		end
	end
	return textPartsTable[#textPartsTable][2]
end

---Adds Description object modifiers such as Spindown dice or Tarot Cloth
---@param modifierName string
---@param condition fun(descObj: EID_DescObj): boolean
---@param callback fun(descObj: EID_DescObj): EID_DescObj
---@param position? integer
function EID:addDescriptionModifier(modifierName, condition, callback, position)
	position = position or #EID.DescModifiers + 1
	for _,v in ipairs(EID.DescModifiers) do
		if v["name"] == modifierName then
			v["condition"] = condition
			v["callback"] = callback
			return
		end
	end
	table.insert(EID.DescModifiers, position, {
		name = modifierName,
		condition = condition,
		callback = callback
	})
end

---Removes a Description object modifier
---@see EID.addDescriptionModifier
---@param modifierName string
function EID:removeDescriptionModifier(modifierName)
	for i,v in ipairs(EID.DescModifiers) do
		if v["name"] == modifierName then
			table.remove(EID.DescModifiers,i)
			return
		end
	end
end

---Interpolates between 2 KColors with a given fraction.
---@param kColor1 KColor
---@param kColor2 KColor
---@param fraction number @Range: [0,1]
---@return KColor
function EID:interpolateColors(kColor1, kColor2, fraction)
	local t =
		KColor(
		(kColor2.Red - kColor1.Red) * fraction + kColor1.Red,
		(kColor2.Green - kColor1.Green) * fraction + kColor1.Green,
		(kColor2.Blue - kColor1.Blue) * fraction + kColor1.Blue,
		(kColor2.Alpha - kColor1.Alpha) * fraction + kColor1.Alpha
	)
	return t
end

---Replaces all values in `changeTable` with the values in `tableToUpdate`.
---If a value is an empty string, it will be removed.
---@param changeTable table
---@param tableToUpdate table
function EID:updateDescriptionsViaTable(changeTable, tableToUpdate)
	for k,v in pairs(changeTable) do
		if v == "" then
			tableToUpdate[k] = nil
		else
			tableToUpdate[k] = v
		end
	end
end

---Converts e.g. "5.100.69" format strings into `5, 100, 69`. Returns 0 for any not included
---@param tvsString string
---@return integer, integer, integer
function EID:SplitTVS(tvsString)
	local Type, Var, Sub = 0, 0, 0
	local tvsTable = {}
	for i in string.gmatch(tvsString, "[^.]+") do table.insert(tvsTable, tonumber(i)) end
	Type = tvsTable[1] or Type; Var = tvsTable[2] or Var; Sub = tvsTable[3] or Sub;
	return Type, Var, Sub
end

---Checks if any player has a given item ID (or anyone is a given player ID)
---@param Type string | integer | EntityType
---@param Var integer | nil
---@param Sub integer | nil
---@return boolean, EntityPlayer?, integer?
function EID:PlayersHaveItem(Type, Var, Sub)
	-- convert "5.100.69" format strings into type, var, sub
	if type(Type) == "string" then
		Type, Var, Sub = EID:SplitTVS(Type)
	-- assume collectible if only Type was given
	elseif Var == nil then Sub = Type; Type = 5; Var = 100 end
	if Type == 1 and Sub then return EID:PlayersHaveCharacter(Sub)
	elseif Type == 5 and Sub then
		if Var == 100 then return EID:PlayersHaveCollectible(Sub)
		elseif Var == 350 then return EID:PlayersHaveTrinket(Sub)
		elseif Var == 300 then return EID:PlayersHaveCard(Sub)
		elseif Var == 70 then return EID:PlayersHavePill(Sub)
		end
	end
	return false
end

---Checks if the given player has the given item ID (or is the given player ID)
---@param player EntityPlayer
---@param Type EntityType | string
---@param Var integer?
---@param Sub integer?
---@return boolean
function EID:PlayerHasItem(player, Type, Var, Sub)
	-- convert "5.100.69" format strings into type, var, sub
	if type(Type) == "string" then
		Type, Var, Sub = EID:SplitTVS(Type)
	-- assume collectible if only Type was given
	elseif Var == nil then Sub = Type; Type = 5; Var = 100 end
	if Type == 1 and Sub then return player:GetPlayerType() == Sub
	elseif Type == 5 and Sub then
		if Var == 100 then return player:HasCollectible(Sub)
		elseif Var == 350 then return player:HasTrinket(Sub)
		elseif Var == 300 then return EID:PlayerHasCard(player, Sub)
		elseif Var == 70 then return EID:PlayerHasPill(player, Sub)
		end
	end
	return false
end

---Checks if any player has a given collectible ID, for modifiers
---@param collectibleID CollectibleType
---@return boolean, EntityPlayer?, integer?
function EID:PlayersHaveCollectible(collectibleID)
	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		if player:HasCollectible(collectibleID) then
			return true, player, i
		end
	end
	return false
end

---Returns true, if any player has a given voided collectible
---@param collectibleID CollectibleType
---@return boolean, EntityPlayer?
function EID:PlayersVoidedCollectible(collectibleID)
	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		return EID:PlayerVoidedCollectible(player, collectibleID)
	end
	return false
end

---Returns true, if the player has a given voided collectible
---@param player EntityPlayer
---@param collectibleID CollectibleType
---@return boolean, EntityPlayer?
function EID:PlayerVoidedCollectible(player, collectibleID)
	local playerNum = EID:getPlayerID(player, true)
	local isCollectibleAbsorbed = EID.absorbedItems[tostring(playerNum)] and EID.absorbedItems[tostring(playerNum)][tostring(collectibleID)]
	if player:HasCollectible(477) and isCollectibleAbsorbed then
		return true, player
	end
	return false
end

---Checks if any player has a given trinket ID, for modifiers
---@param trinketID TrinketType
---@return boolean, EntityPlayer?, integer?
function EID:PlayersHaveTrinket(trinketID)
	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		if player:HasTrinket(trinketID) then
			return true, player, i
		end
	end
	return false
end

---Returns true, if any player has a given card
---@param cardID Card
---@return boolean, EntityPlayer?
function EID:PlayersHaveCard(cardID)
	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		return EID:PlayerHasCard(player, cardID)
	end
	return false
end

---Returns true, if the player has a given card
---@param player EntityPlayer
---@param cardID Card
---@return boolean, EntityPlayer?, integer?
function EID:PlayerHasCard(player, cardID)
	local playerNum = EID:getPlayerID(player, true)
	for j = 0, (EID.isRepentance and 3 or 1) do
		if player:GetCard(j) == cardID then
			return true, player, playerNum
		end
	end
	return false
end

---Returns true, if any player has a given pill color
---@param pillID PillColor
---@return boolean, EntityPlayer?
function EID:PlayersHavePill(pillID)
	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		return EID:PlayerHasPill(player, pillID)
	end
	return false
end

---Returns true, if the player has a given pill color
---@param player EntityPlayer
---@param pillID PillColor
---@return boolean, EntityPlayer?, integer?
function EID:PlayerHasPill(player, pillID)
	local playerNum = EID:getPlayerID(player, true)
	for j = 0, (EID.isRepentance and 3 or 1) do
		if player:GetPill(j) == pillID then
			return true, player, playerNum
		end
	end
	return false
end

---Checks if someone is playing as a certain character, for modifiers
---@param playerType PlayerType
---@param includeTainted? boolean @If true, doesn't care if the player is tainted or not
---@return boolean, EntityPlayer?, integer?
function EID:PlayersHaveCharacter(playerType, includeTainted)
	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		if player:GetPlayerType() == playerType then
			return true, player, i
		end
		if includeTainted and EID.isRepentance and EID.TaintedToRegularID[player:GetPlayerType()] == playerType then
			return true, player, i
		end
	end
	return false
end

---Converts a given CollectibleID into the respective Spindown dice result
---@param collectibleID CollectibleType
---@return CollectibleType
function EID:getSpindownResult(collectibleID)
	if collectibleID <= 0 or collectibleID > 4294960000 then return 0 end
	local newID = collectibleID
	local attempts = 0
	repeat
		newID = newID - 1
		attempts = attempts + 1
	--note: the order of the SkipLocked check statement is important so that the item is checked for being in a pool either way (to display a ? if it isn't)
	until (EID.itemConfig:GetCollectible(newID) and (EID:isCollectibleUnlocked(newID) or not EID.Config["SpindownDiceSkipLocked"]) and not EID.itemConfig:GetCollectible(newID).Hidden and EID:isCollectibleAllowed(newID)) or newID == CollectibleType.COLLECTIBLE_NULL or attempts > 10
	return newID
end

local maxCollectibleID = nil -- cache after first use. this number will not change mid game
---Returns the maximum collectible id, including modded items
---@return CollectibleType
function EID:GetMaxCollectibleID()
	if maxCollectibleID then
		return maxCollectibleID
	end
	local id = CollectibleType.NUM_COLLECTIBLES-1
	local step = 16
	while step > 0 do
		if EID.itemConfig:GetCollectible(id+step) ~= nil then
			id = id + step
		else
			step = step // 2
		end
	end
	maxCollectibleID = id
	return id
end

local maxTrinketID = nil
---Returns the maximum trinket id, including modded trinkets
---@return TrinketType
function EID:GetMaxTrinketID()
	if maxTrinketID then
		return maxTrinketID
	end
	local id = TrinketType.NUM_TRINKETS-1
	local step = 16
	while step > 0 do
		if EID.itemConfig:GetTrinket(id+step) ~= nil then
			id = id + step
		else
			step = step // 2
		end
	end
	maxTrinketID = id
	return id
end

---@return boolean
function EID:DetectModdedItems()
	if EID:GetMaxCollectibleID() > EID.XMLMaxItemID then
		return true
	end
	if EID.itemConfig:GetCollectible(EID.XMLMaxItemID) == nil then
		return true
	end
	return false
end

---REPENTANCE ONLY! Return whether the collectible is considered available.
---Bag of Crafting rerolls unavailable items; this function is kept brief to help BoC speed
---@param collectibleID CollectibleType
---@return boolean
function EID:isCollectibleAvailable(collectibleID)
	if EID.itemAvailableStates[collectibleID] == nil then
		EID.itemAvailableStates[collectibleID] = EID.itemConfig:GetCollectible(collectibleID):IsAvailable()
	end
	return EID.itemAvailableStates[collectibleID]
end

---REPENTANCE ONLY! Return our best guess on whether an achievement-locked collectible is unlocked
---(Things like Tainted Lost and Sacred Orb give false negatives)
---Spindown Dice skips over locked items, but not unavailable items
---@param collectibleID CollectibleType
---@return boolean
function EID:isCollectibleUnlocked(collectibleID)
	local item = EID.itemConfig:GetCollectible(collectibleID)
	if item == nil then return false end
	if EID.itemUnlockStates[collectibleID] == nil then
		--whitelist all quest items and items with no associated achievement
		if item.AchievementID == -1 or (item.Tags and item.Tags & ItemConfig.TAG_QUEST == ItemConfig.TAG_QUEST) then
			EID.itemUnlockStates[collectibleID] = true
			return true
		end
		--blacklist all hidden items
		if item.Hidden then
			EID.itemUnlockStates[collectibleID] = false
			return false
		end
		--check the item's IsAvailable status if the function exists
		if item.IsAvailable then EID.itemUnlockStates[collectibleID] = item:IsAvailable()
		else EID.itemUnlockStates[collectibleID] = true end
		return EID.itemUnlockStates[collectibleID]
	else
		return EID.itemUnlockStates[collectibleID]
	end
end
EID.isCollectibleUnlockedAnyPool = EID.isCollectibleUnlocked -- old name before ItemConfig:IsAvailable was added

---REPENTANCE ONLY! Return whether the collectible is completely disallowed by the current game mode.
---Bag of Crafting and Spindown Dice skip over disallowed items entirely
---@param collectibleID CollectibleType
---@return boolean
function EID:isCollectibleAllowed(collectibleID)
	local item = EID.itemConfig:GetCollectible(collectibleID)
	if item == nil then return false
	elseif item.Tags == nil then return true
	else
		if game:IsGreedMode() and item:HasTags(ItemConfig.TAG_NO_GREED) then return false
		elseif game.Challenge > 0 and item:HasTags(ItemConfig.TAG_NO_CHALLENGE) then return false
		else return true end
		-- no need to check TAG_NO_DAILY because mods are disabled for Dailies
	end
end

---Achievements Locked Check (do we have Cube of Meat or Book of Revelations unlocked?)
---@return boolean
---@diagnostic disable-next-line: duplicate-set-field
function EID:AreAchievementsAllowed()
	-- Tainted characters have definitely beaten Mom!
	-- (Fixes Tainted Lost's item pools, and potentially modded character's mechanics, ruining this check)
	if EID.player:GetPlayerType() < 21 then
		-- Challenge runs and TMTrainer might break the pool, so ignore them.
		if not game:GetSeeds():IsCustomRun() and not EID:PlayersHaveCollectible(CollectibleType.COLLECTIBLE_TMTRAINER) then
			---@diagnostic disable-next-line: undefined-field
			local hasBookOfRevelationsUnlocked = EID:isCollectibleUnlocked(CollectibleType.COLLECTIBLE_BOOK_OF_REVELATIONS or CollectibleType.COLLECTIBLE_BOOK_REVELATIONS)
			if not hasBookOfRevelationsUnlocked then
				local hasCubeOfMeatUnlocked = EID:isCollectibleUnlocked(CollectibleType.COLLECTIBLE_CUBE_OF_MEAT)
				if not hasCubeOfMeatUnlocked then
					return false
				end
			end
		end
	end
	return true
end

---Returns the dimension ID the player is currently in.
---@param level Level
---@return EID_Dimension?
function EID:GetDimension(level)
	local roomIndex = level:GetCurrentRoomIndex()

    for i = 0, 2 do
        if GetPtrHash(level:GetRoomByIdx(roomIndex, i)) == GetPtrHash(level:GetRoomByIdx(roomIndex, -1)) then
            return i
        end
    end

    return nil
end

local emptyPickupTable = {}
for i=1, 29 do emptyPickupTable[i] = 0 end

---Converts a given table into a string containing the crafting icons of the table
---Example input: {1,2,3,4,5,6,7,8}
---Result: "{{Crafting1}}{{Crafting2}}{{Crafting3}}{{Crafting4}}{{Crafting5}}{{Crafting6}}{{Crafting7}}{{Crafting8}}"
---@param craftTable integer[]
---@param indicateCompleteContent boolean
---@return string
function EID:tableToCraftingIconsFull(craftTable, indicateCompleteContent)
	local sortedList = {table.unpack(craftTable)}
	table.sort(sortedList, function(a, b) return a < b end)
	local visitedItemCount = {table.unpack(emptyPickupTable)}

	local iconString = ""
	for _, nr in ipairs(sortedList) do
		visitedItemCount[nr] = visitedItemCount[nr] + 1
		local containsItemResult = EID:bagContainsItem(nr, visitedItemCount[nr])
		local completedColoring = indicateCompleteContent and containsItemResult and containsItemResult >= 1 and "{{IconGreenTint}}" or ""
		iconString = iconString..completedColoring.."{{Crafting"..nr.."}}"
	end
	return iconString
end

---Converts a given table into a string containing the crafting icons of the table, which are also grouped to reduce render lag
---@param craftTable integer[] @Example: {1,1,1,2,2,3,3,3}
---@param indicateCompleteContent boolean?
---@return string @Example: "3{{Crafting1}}2{{Crafting2}}3{{Crafting3}}"
function EID:tableToCraftingIconsMerged(craftTable, indicateCompleteContent)
	local sortedList = {table.unpack(craftTable)}
	local filteredList = {table.unpack(emptyPickupTable)}
	for _, nr in ipairs(sortedList) do
		filteredList[nr] = filteredList[nr] + 1
	end
	local iconString = ""
	for nr, count in ipairs(filteredList) do
		if (count > 0) then
			local coloring = ""
			if indicateCompleteContent then
				local bagContainsItem = EID:bagContainsItem(nr, count)
				if bagContainsItem == 1 then
					coloring = "{{ColorBagComplete}}"
				elseif bagContainsItem == 2 then
					coloring = "{{ColorBagOverfill}}"
				end
			end

			iconString = iconString..coloring..count.."{{Crafting"..nr.."}}{{CR}}"
		end
	end
	return iconString
end

---Checks how many of an item there are in the bag
---@param itemID integer
---@param itemCount integer
---@return
---|false @Item is not in the bag
---| 0 @There are fewer items than the target amount
---| 1 @There are exactly the target amount
---| 2 @There are more items than the target amount
function EID:bagContainsItem(itemID, itemCount)
	local foundCount = 0
	local bagItems = EID.BoC.BagItemsOverride or EID.BoC.BagItems
	for _, bagItem in ipairs(bagItems) do
		if bagItem == itemID then
			foundCount = foundCount + 1
		end
	end

	if foundCount == 0 then
		return false
	elseif foundCount < itemCount then
		return 0
	elseif foundCount == itemCount then
		return 1
	else
		return 2
	end
end

---Get the number of pickups in the given recipe table that are inside our bag
---Is for checking if a recipe is possible to create if you need to use every item in your bag
---@param craftTable integer[]
---@return integer
function EID:bagContainsCount(craftTable)
	local count = 0
	local ingredCount = {table.unpack(emptyPickupTable)}
	for _, id in ipairs(craftTable) do
		ingredCount[id] = ingredCount[id] + 1
	end
	local bagItems = EID.BoC.BagItemsOverride or EID.BoC.BagItems
	for _, bagItem in ipairs(bagItems) do
		if ingredCount[bagItem] > 0 then
			count = count + 1
			ingredCount[bagItem] = ingredCount[bagItem] - 1
		end
	end
	return count
end

---@param hudElement EID_HudElement
---@return EID_HudElement
function EID:handleHUDElement(hudElement)
	local alteredHudElement = {}
	for k,v in pairs(hudElement) do
		alteredHudElement[k] = v
	end
	local screenSize = EID:getScreenSize()
	local hudOffset = EID.Config["HUDOffset"]
	if EID.isRepentance then
		hudOffset = (Options.HUDOffset * 10)
	end
	for _,v in ipairs(hudElement.anchors) do
		if v == "TOP" then
			alteredHudElement.y = hudElement.y + hudOffset * 2
		elseif v == "LEFT" then
			alteredHudElement.x = hudElement.x + hudOffset * 2
		elseif v == "BOTTOM" then
			alteredHudElement.y = screenSize.Y*2 - alteredHudElement.y - alteredHudElement.height
			alteredHudElement.y = alteredHudElement.y - hudOffset * 2
		elseif v == "RIGHT" then
			alteredHudElement.x = screenSize.X*2 - alteredHudElement.x  - alteredHudElement.width
			alteredHudElement.x = alteredHudElement.x - hudOffset * 2
		end
	end
	return alteredHudElement
end

---@return Vector
function EID:getScreenSize()
	local room = game:GetRoom()
	local pos = room:WorldToScreenPosition(Vector(0,0)) - room:GetRenderScrollOffset() - game.ScreenShakeOffset

	local rx = pos.X + 60 * 26 / 40
	local ry = pos.Y + 140 * (26 / 40)

	return Vector(rx*2 + 13*26, ry*2 + 7*26)
end

---@param entity Entity
---@return any?
function EID:getEntityData(entity, str)
	if EID:EntitySanityCheck(entity) and not EID:IsGridEntity(entity) and entity:GetData() ~= nil and type(entity:GetData()) == "table" then
		return entity:GetData()[str]
	end
	return nil
end

---@param entity Entity
---@param str string
---@param value any
function EID:setEntityData(entity, str, value)
	if EID:EntitySanityCheck(entity) and not EID:IsGridEntity(entity) and entity:GetData() ~= nil and type(entity:GetData()) == "table" then
		entity:GetData()[str] = value
	end
end

---Function to fix font compatibility. Resets config font to a value compatible with your current language
---@param forceRefresh boolean | nil
---@return boolean @True if the font was changed
function EID:fixDefinedFont(forceRefresh)
	local curLang = EID:getLanguage()
	local curFont = EID.Config["FontType"]
	
	-- If the textbox width is set to the default, make it match the selected language's default
	-- Fixes language selection not respecting the language's textbox width, although it also prevents 130 from being used as the width with those languages
	if EID.Config["TextboxWidth"] == EID.DefaultConfig["TextboxWidth"] then
		EID.Config["TextboxWidth"] = EID.descriptions[curLang].fonts[1].textboxWidth or EID.DefaultConfig["TextboxWidth"]
	end

	-- If our currently loaded font is still valid, we don't need to reset values
	for _, v in ipairs(EID.descriptions[curLang].fonts) do
		if curFont == v.name then
			-- Load the new language's line height / textbox width
			if (forceRefresh) then
				EID.Config["LineHeight"] = EID.descriptions[curLang].fonts[1].lineHeight or EID.DefaultConfig["LineHeight"]
				EID.Config["TextboxWidth"] = EID.descriptions[curLang].fonts[1].textboxWidth or EID.DefaultConfig["TextboxWidth"]
			end
			return false
		end
	end
	EID.Config["FontType"] = EID.descriptions[curLang].fonts[1].name
	-- On new font load, reset line height / textbox width to the default values if there's no defined height/width
	EID.Config["LineHeight"] = EID.descriptions[curLang].fonts[1].lineHeight or EID.DefaultConfig["LineHeight"]
	EID.Config["TextboxWidth"] = EID.descriptions[curLang].fonts[1].textboxWidth or EID.DefaultConfig["TextboxWidth"]
	return true
end

---Check if a given font name is valid for the currently selected language
---@param fontType string
---@return boolean
function EID:canUseFontType(fontType)
	local curLang = EID:getLanguage()
	for _, v in ipairs(EID.descriptions[curLang].fonts) do
		if fontType == v.name then
			return true
		end
	end
	return false
end

---Creates a copy of a KColor object. This prevents overwriting existing KColor objects
---@param colorObj KColor
---@return KColor
function EID:copyKColor(colorObj)
	return KColor(colorObj.Red, colorObj.Green, colorObj.Blue, colorObj.Alpha)
end

---Compares two KColors. Returns true if they are equal
---@param c1 KColor
---@param c2 KColor
---@return boolean
function EID:areColorsEqual(c1, c2)
	return c1.Red == c2.Red and c1.Green == c2.Green and c1.Blue == c2.Blue and c1.Alpha == c2.Alpha
end

---Get KColor object of "Entity Name" texts
---@return KColor, boolean
function EID:getNameColor()
	return EID:getColor(EID.Config["ItemNameColor"], EID.InlineColors["ColorEIDObjName"])
end

---Get KColor object of "Description" texts
---@return KColor, boolean
function EID:getTextColor()
	return EID:getColor(EID.Config["TextColor"], EID.InlineColors["ColorEIDText"])
end

---Get KColor object of "Transformation" texts
---@return KColor, boolean
function EID:getTransformationColor()
	return EID:getColor(EID.Config["TransformationColor"], EID.InlineColors["ColorEIDTransform"])
end

---Get KColor object of "Error" texts
---@return KColor, boolean
function EID:getErrorColor()
	return EID:getColor(EID.Config["ErrorColor"], EID.InlineColors["ColorEIDError"])
end

---Specify the name of the mod which will be displayed next to the item name
---By default EID takes the mod name
---@param newName string
function EID:setModIndicatorName(newName)
	EID.ModIndicator[EID._currentMod].Name = newName
end

---Set an icon for the mod which will be displayed next to the item name
---@param iconMarkup string
---@param override? boolean @Default: true
function EID:setModIndicatorIcon(iconMarkup, override)
	if override == nil then override = true end -- overide previous value if not specified
	if EID.ModIndicator[EID._currentMod].Icon ~= nil and override == false then return end
	EID.ModIndicator[EID._currentMod].Icon = iconMarkup
end

EID.Coroutines = {}
---Add a coroutine to be ran 60 times a second
---@param name string
---@param func fun()
---@param overwrite? boolean @Default: false
function EID:addCoroutine(name, func, overwrite)
	if overwrite or EID.Coroutines[name] == nil then EID.Coroutines[name] = coroutine.create(func) end
end

---Remove a coroutine from the coroutine list
---@param name string
function EID:removeCoroutine(name)
	EID.Coroutines[name] = nil
end

---Resumes all coroutines.
---Ran 60 times a second in main game render
function EID:resumeCoroutines()
	for k,v in pairs(EID.Coroutines) do
		if coroutine.resume(v) == false then EID:removeCoroutine(k) end
	end
end

---Returns true if an item needs to be collected for the collection page
---@param itemID CollectibleType
---@return boolean
---@diagnostic disable-next-line: duplicate-set-field
function EID:requiredForCollectionPage(itemID)
	if not EID.SaveGame or EID.Config["SaveGameNumber"] == 0 or itemID >= CollectibleType.NUM_COLLECTIBLES or game:GetVictoryLap() > 0 or game:GetSeeds():IsCustomRun() then return false end
	return EID.SaveGame[EID.Config["SaveGameNumber"]].ItemNeedsPickup[itemID]
end

---Updates the item collection state of the players, based on the QueuedItem value.
---TODO: also check for D100 / MissingNo Item collections
---@diagnostic disable-next-line: duplicate-set-field
function EID:checkPlayersForMissingItems()
	if not EID.SaveGame or EID.Config["SaveGameNumber"] == 0 or game:GetVictoryLap() > 0 or game:GetSeeds():IsCustomRun() then return end
	if EID.GameUpdateCount % 5 ~= 0 then return end

	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		if player.QueuedItem.Item and EID.SaveGame[EID.Config["SaveGameNumber"]].ItemNeedsPickup[player.QueuedItem.Item.ID] then
			table.insert(EID.CollectedItems, player.QueuedItem.Item.ID)
			EID.SaveGame[EID.Config["SaveGameNumber"]].ItemNeedsPickup[player.QueuedItem.Item.ID] = nil
		end
	end
end

---@param entityPlayer EntityPlayer
---@param lazarusAdjust? boolean
---@return integer
function EID:getPlayerID(entityPlayer, lazarusAdjust)
	if not entityPlayer then return 0 end
	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		if GetPtrHash(player) == GetPtrHash(entityPlayer) then
			-- Dead Tainted Lazarus exceptions
			if lazarusAdjust and EID.isRepentance then
				if player:GetPlayerType() == 38 then
					-- Check for Birthright to make the ghostly form use the same base ID as the main form
					if player:GetMainTwin() then
						if GetPtrHash(player:GetMainTwin()) ~= GetPtrHash(player) then
							i = EID:getPlayerID(player:GetMainTwin())
						end
					end
					-- Increase the ID by 666 if Dead Tainted Lazarus
					i = i + 666
				end
			end
			return i
		end
	end
	return 0
end

---@param itemID CollectibleType
function EID:AddToCollectiblesToCheckList(itemID)
	EID.collectiblesToCheck[itemID] = true
end

---Add a specific entity to be ignored by EID.
---Set entitySubType to -1 in order to ignore all entities with this type+variant combination.
---@param entityType EntityType
---@param entityVariant integer
---@param entitySubType integer
function EID:addIgnoredEntity(entityType, entityVariant, entitySubType)
	if entitySubType == -1 then
		EID.IgnoredEntities[entityType.."."..entityVariant] = true
	else
		EID.IgnoredEntities[entityType.."."..entityVariant.."."..entitySubType] = true
	end
end

---Remove a specific entity from the ignored List of EID.
---@param entityType EntityType
---@param entityVariant integer
---@param entitySubType integer
function EID:removeIgnoredEntity(entityType, entityVariant, entitySubType)
	if entitySubType == -1 then
		EID.IgnoredEntities[entityType.."."..entityVariant] = nil
	else
		EID.IgnoredEntities[entityType.."."..entityVariant.."."..entitySubType] = nil
	end
end

---Returns if this is a frame we should refresh our descriptions
---@return boolean
function EID:RefreshThisFrame()
	if EID.GameRenderCount % (60 / EID.Config["RefreshRate"]) == 0 then
		return true
	end
	return false
end

---Returns true if any player is pressing the given button (you can also specify any of the input functions)
---@generic BTN
---@param button BTN
---@param inputFunc nil | fun(button: BTN, playerIndex: integer): boolean
---@return boolean, integer?
function EID:PlayersActionPressed(button, inputFunc)
	inputFunc = inputFunc or Input.IsActionPressed
	for k,v in pairs(EID.controllerIndexes) do
		if inputFunc(button, k) then return true, v end
	end
	return false
end

---Replaces markup icons with ones of a different size based on the current config
---@param description string
---@return string
function EID:replaceMarkupSize(description)
	if EID.Config["StatChangeIcons"] == false then
		description = string.gsub(description, "{{ArrowUp}} ({{[.-}}]+)", "{{ArrowUp}} ")
		description = string.gsub(description, "{{ArrowDown}} ({{[.-}}]+)", "{{ArrowDown}} ")
		-- Remove double spaces after markup removal
		description = string.gsub(description, "  ", " ")
		description = string.gsub(description, "# ", "#")
	end
	if EID.Config["MarkupSize"] == "small" then
		for normal, small in pairs(EID.MarkupSizeMap) do
			description = string.gsub(description, normal, small)
		end
	elseif EID.Config["MarkupSize"] == "big" then
		for normal, small in pairs(EID.MarkupSizeMap) do
			description = string.gsub(description, small, normal)
		end
	end

	return description
end

EID.TransformationLookup = {}
-- Creates a table that contains all objects a transformation is associated with.
function EID:buildTransformationTables()
	EID.TransformationLookup = {}
	for entityString, transformationData in pairs(EID.EntityTransformations) do
		EID:alterTransformationLookup(entityString, transformationData, true)
	end
	-- legacy
	for subType, transformationData in pairs(__eidItemTransformations) do
		EID:alterTransformationLookup("5.100."..subType, transformationData, true)
	end
	-- add custom
	for entityString, transformationData in pairs(EID.CustomTransformAssignments) do
		EID:alterTransformationLookup(entityString, transformationData, true)
	end
	-- custom remove
	for entityString, transformationData in pairs(EID.CustomTransformRemovals) do
		EID:alterTransformationLookup(entityString, transformationData, nil)
	end
end

---@param entityString string
---@param transformString string
---@param addToList? boolean
function EID:alterTransformationLookup(entityString, transformString, addToList)
	for transformation in string.gmatch(transformString, '([^,]+)') do
		if EID.TransformationLookup[transformation] == nil then
			EID.TransformationLookup[transformation] = {}
		end
		EID.TransformationLookup[transformation][entityString] = addToList
	end
end

EID.TransformationProgress = {}
---Given a transformation identifier, iterates over every player and count the number of items they have which count towards that transformation
---@param transformation string
function EID:evaluateTransformationProgress(transformation)
	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		local id = EID:getPlayerID(player, true) -- Dead Tainted Lazarus exception
		EID.TransformationProgress[id] = {}
		EID.TransformationProgress[id][transformation] = 0
		local transformData = EID.TransformationData[transformation]

		if not EID.TransformationLookup[transformation] then return end

		if REPENTOGON and transformData and transformData.VanillaForm then
			 -- REPENTOGON lets us ignore everything else for vanilla transformation progress
			EID.TransformationProgress[id][transformation] = player:GetPlayerFormCounter(transformData.VanillaForm)
		elseif transformData and transformData.VanillaForm and player:HasPlayerForm(transformData.VanillaForm) then
			EID.TransformationProgress[id][transformation] = transformData.NumNeeded or 3
		else
			local pickupHistory = EID.PlayerItemInteractions[id].pickupHistory
			local pillsTable = {}
			if pickupHistory then
				for j = 1, #pickupHistory do
					if pickupHistory[j][1] == "pill" then
						local pillSubType = tostring(pickupHistory[j][3])
						if not pillsTable[pillSubType] then
							pillsTable[pillSubType] = 0
						end
						pillsTable[pillSubType] = pillsTable[pillSubType] + 1 -- collect pill SubType
					end
				end
			end

			local activesTable = EID.PlayerItemInteractions[id].actives
			for entityString, _ in pairs(EID.TransformationLookup[transformation]) do
				local eType, eVariant, eSubType = entityString:match("([^.]+).([^.]+).([^.]+)")
				if tonumber(eType) == EntityType.ENTITY_PICKUP then
					if tonumber(eVariant) == PickupVariant.PICKUP_COLLECTIBLE then
						local currentCount = EID.TransformationProgress[id][transformation]
						if activesTable[tostring(eSubType)] then
							EID.TransformationProgress[id][transformation] = EID.TransformationProgress[id][transformation] + activesTable[tostring(eSubType)]
						else
							local collCount = player:GetCollectibleNum(eSubType, true)
							if EID.PlayerItemInteractions[id].rerollItems then
								collCount = collCount - (EID.PlayerItemInteractions[id].rerollItems[tostring(eSubType)] or 0)
							end
							EID.TransformationProgress[id][transformation] = EID.TransformationProgress[id][transformation] + collCount

							-- Undo the Book of Virtues active item getting counted here
							if EID.isRepentance and tonumber(eSubType) == 584 and player:GetActiveItem() == 584 then
								EID.TransformationProgress[id][transformation] = EID.TransformationProgress[id][transformation] - 1
							end
						end
						-- In AB+, only one copy of a given collectible is counted for trans
						if not EID.isRepentance and EID.TransformationProgress[id][transformation] > currentCount + 1 then
							EID.TransformationProgress[id][transformation] = currentCount + 1
						end
					elseif tonumber(eVariant) == PickupVariant.PICKUP_TRINKET and player:HasTrinket(eSubType) then
						EID.TransformationProgress[id][transformation] = EID.TransformationProgress[id][transformation] + player:GetTrinketMultiplier(eSubType)
					elseif tonumber(eVariant) == PickupVariant.PICKUP_PILL then
						if pillsTable[tostring(eSubType)] then
							EID.TransformationProgress[id][transformation] = EID.TransformationProgress[id][transformation] + pillsTable[tostring(eSubType)]
						end
					end
				end
			end
		end
	end
end

---Create a list of all grid entities in the room that have an EID description
function EID:CheckCurrentRoomGridEntities()
	EID.CurrentRoomGridEntities = {}
	local room = game:GetRoom()
	for i = 1, room:GetGridSize(), 1 do
		local gridEntity = room:GetGridEntity(i)
		if gridEntity and EID:hasDescription(gridEntity) then
			EID.CurrentRoomGridEntities[i] = gridEntity
		end
	end
end

EID.PlayerHeldPill = {}
---Workaround function to get the currently held pill of the players. Used to map Pill ID to pill color and vise versa
function EID:evaluateHeldPill()
	EID.PlayerHeldPill = {}
	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		EID.PlayerHeldPill[i] = player:GetPill(0)
		-- Magdalene starts with an identified pill. We need to account for that
		if player:GetPlayerType() == PlayerType.PLAYER_MAGDALENE and player.FrameCount <= 1 then
			EID.UsedPillColors[tostring(EID.PlayerHeldPill[i])] = true
		end
	end
end

EID.PlayerItemInteractions = {}
EID.RecentlyTouchedItems = {}
local hadQueuedItem = {}
---Watch for a player's queued item (holding an item over their head) to track active item touches
---Used for Transformation Progress and for tracking Recently Touched Items
function EID:evaluateQueuedItems()
	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		local id = EID:getPlayerID(player, true)
		EID:InitItemInteractionIfAbsent(id)
		
		if player.QueuedItem then
			-- Refresh our descriptions and grid entity list upon a queued passive item being added to a player
			if not player.QueuedItem.Item and hadQueuedItem[id] then
				EID.ForceRefreshCache = true
				EID:CheckCurrentRoomGridEntities()
			end
			hadQueuedItem[id] = player.QueuedItem.Item ~= nil
			if EID.PlayerItemInteractions[id].LastTouch + 45 >= game:GetFrameCount() and player.QueuedItem.Item then
				return
			else
				EID.PlayerItemInteractions[id].LastTouch = 0
			end

			if not player.QueuedItem.Touched and player.QueuedItem.Item then
				EID.PlayerItemInteractions[id].LastTouch = game:GetFrameCount()
				local itemIDStr = tostring(player.QueuedItem.Item.ID)
				-- Add touched active items to our transformation progress table
				if player.QueuedItem.Item.Type == ItemType.ITEM_ACTIVE then
					-- A new active item was touched; initiate its touch count to 0 for all players
					-- (Fixes co-op bugs, compared to only initiating it for the toucher)
					EID:InitActiveItemInteraction(itemIDStr)
					
					local activesTable = EID.PlayerItemInteractions[id].actives
					EID.ForceRefreshCache = true
					activesTable[itemIDStr] = activesTable[itemIDStr] + 1
				elseif player.QueuedItem.Item.Type ~= ItemType.ITEM_TRINKET then
					-- In AB+, Halo of Flies is counted as an active item due to inaccuracy with GetCollectibleNum
					if (not EID.isRepentance and itemIDStr == "10") then
						EID.PlayerItemInteractions[id].actives[itemIDStr] = EID.PlayerItemInteractions[id].actives[itemIDStr] + 1
					end
					-- Put non-active item pickups into the recent item list, for printing in the Item Reminder
					local playerID = i
					if EID.isRepentance and player:GetPlayerType() == 38 then playerID = playerID + 666 end
					table.insert(EID.RecentlyTouchedItems[playerID], player.QueuedItem.Item.ID)
					EID:ResetItemReminderSelectedItems("Passives")
				end
			end
		end
	end
end

---If the player ItemInteraction table doesnt exist, create it with its init values
---@param playerID integer
function EID:InitItemInteractionIfAbsent(playerID)
	playerID = playerID % 666 -- dead tainted lazarus exception
	if not EID.PlayerItemInteractions[playerID] then
		EID.PlayerItemInteractions[playerID] = { LastTouch = 0, actives = {}, pickupHistory = {}, rerollItems = {} }
		-- in AB+, initiate Halo of Flies as an active item (collectible ID 10 is used for ALL Pretty Flies)
		if not EID.isRepentance then
			EID.PlayerItemInteractions[playerID].actives["10"] = 0
		end
	end
	if not EID.PlayerItemInteractions[playerID+666] then
		EID.PlayerItemInteractions[playerID+666] = { LastTouch = 0, actives = {}, pickupHistory = {}, rerollItems = {} }
	end
	EID.RecentlyTouchedItems[playerID] = EID.RecentlyTouchedItems[playerID] or {}
	EID.RecentlyTouchedItems[playerID+666] = EID.RecentlyTouchedItems[playerID+666] or {}
end

---Initialize a touched active item to 0 count for all players
---(Fixes co-op bugs, compared to only initiating it for the toucher)
---@param itemIDStr string
function EID:InitActiveItemInteraction(itemIDStr)
	for playerID = 0, game:GetNumPlayers() - 1 do
		EID:InitItemInteractionIfAbsent(playerID)
		EID.PlayerItemInteractions[playerID].actives[itemIDStr] = EID.PlayerItemInteractions[playerID].actives[itemIDStr] or 0
		EID.PlayerItemInteractions[playerID+666].actives[itemIDStr] = EID.PlayerItemInteractions[playerID+666].actives[itemIDStr] or 0
	end
end


---Returns the quality of the described entity
---@param descObj EID_DescObj
---@return integer?
function EID:getObjectQuality(descObj)
	local subType = tonumber(descObj.ObjSubType) ---@cast subType number
	if EID.isRepentance and descObj.ObjType == 5 and descObj.ObjVariant == 100 and EID.itemConfig:GetCollectible(subType) then
		return tonumber(EID.itemConfig:GetCollectible(subType).Quality)
	end
end

---Returns the item pool of the described entity
---@param descObj EID_DescObj
---@return integer?
function EID:getObjectItemPool(descObj)
	if EID.isRepentance and descObj.ObjType == 5 and descObj.ObjVariant == 100 then
		if EID.isRepentancePlus then
			-- TODO (maybe will require REPENTOGON?)
			-- Since D4 exploit is completely fixed in 1.9.7.11, this is no longer viable for full-reroll effect
			-- (still useful for initial item pool from rooms though)
			return game:GetItemPool():GetLastPool() -- remove this if item pool function should not appear on 1.9.7.11 patch
		else
			return game:GetItemPool():GetLastPool()
		end
	end
end

EID.ObjectIcon = {}
---Returns the Inline Icon definition object for a given object.
---@param descObj EID_DescObj
---@return EID_Icon?
function EID:getObjectIcon(descObj)
	-- custom object icon
	if EID.ObjectIcon[descObj.ObjType.."."..descObj.ObjVariant.."."..descObj.ObjSubType] then
		return EID.ObjectIcon[descObj.ObjType.."."..descObj.ObjVariant.."."..descObj.ObjSubType]
	end

	if descObj.ObjType == 5 then
		local iconName = EID:GetIconNameByVariant(descObj.ObjVariant)
		if iconName then
			return EID:createItemIconObject(iconName .. descObj.ObjSubType)
		end
	-- Handle Dice Room Floor
	elseif descObj.ObjType == 1000 and descObj.ObjVariant == 76 then
		---@diagnostic disable-next-line: return-type-mismatch
		return EID.InlineIcons["DiceFace" .. descObj.ObjSubType]
	end
end

---Adds an EID Icon to an Object
---@param eType EntityType
---@param eVariant integer
---@param eSubType integer
---@param iconName string
function EID:AddIconToObject(eType, eVariant, eSubType, iconName)
	EID.ObjectIcon[eType.."."..eVariant.."."..eSubType] = EID.InlineIcons[iconName]
end

---Set a pilleffect to be permanently unidentifyable by EID
---@param pillEffectID PillEffect
---@param isUnidentifyable boolean
function EID:SetPillEffectUnidentifyable(pillEffectID, isUnidentifyable)
	EID.UnidentifyablePillEffects[pillEffectID + 1] = isUnidentifyable or nil
end

---Add pickup usage to history of pickups used by the player
---@param pickupType "pill" | "card"
---@param effectID PillEffect | Card
---@param player EntityPlayer
---@param useFlags UseFlag
---@param pillColorID? PillColor @Only used for pills
function EID:AddPickupToHistory(pickupType, effectID, player, useFlags, pillColorID)
	-- don't add mimiced or noannouncer cards/pills to Echo Chamber history
	local allowEchoChamber = true
	if EID.isRepentance and (useFlags & UseFlag.USE_MIMIC == UseFlag.USE_MIMIC or useFlags & UseFlag.USE_NOANNOUNCER == UseFlag.USE_NOANNOUNCER) then
		allowEchoChamber = false
	end
	local playerID = EID:getPlayerID(player, true)
	EID:InitItemInteractionIfAbsent(playerID)
	local historyTable = EID.PlayerItemInteractions[playerID].pickupHistory

	-- pickupType = ["pill","card"], pillColorID, effectID, hadEchoChamberWhenUsed
	table.insert(historyTable, 1, {pickupType, pillColorID, effectID, EID.isRepentance and player:HasCollectible(700) and allowEchoChamber})
end

EID.WildCardEffects = {}
EID.WildCardPillColor = {}
EID.TemporaryWildCardEffects = {} -- resets every frame

---@param effectID string @Identifier in `Type.Variant.SubType` format
---@param player EntityPlayer
---@param pillColor? PillColor
function EID:TrackWildCardEffects(effectID, player, pillColor)
	local playerID = EID:getPlayerID(player, true)
	-- ? Card exception; both it and the active it used are ignored by Wild Card
	if effectID == "5.300.48" then
		-- Blank Card using ? Card exception; Blank Card being used is still seen
		if EID.TemporaryWildCardEffects[playerID] ~= "5.100.286" then EID.TemporaryWildCardEffects[playerID] = nil end
	else
		EID.TemporaryWildCardEffects[playerID] = effectID
		EID.WildCardPillColor[playerID] = pillColor -- doesn't matter that much so just set it here
	end
end

function EID:UpdateWildCardEffects()
	for k,v in pairs(EID.TemporaryWildCardEffects) do EID.WildCardEffects[k] = v end
	EID.TemporaryWildCardEffects = {}
end

---Render a sprite of an entity
---@param entity Entity
---@param sprite Sprite
---@param position Vector
function EID:RenderEntity(entity, sprite, position)
	if entity.Type == 5 and entity.Variant == 100 then
		sprite:RenderLayer(1, position, nullVector, nullVector)
	elseif entity.Type == 6 and entity.Variant == 16 then -- Crane Game
		sprite:RenderLayer(2, position, nullVector, nullVector)
	else
		sprite:Render(position, nullVector, nullVector)
	end
end

---Tries to get the Vanilla transformations of modded items based on Tags
function EID:GetTransformationsOfModdedItems()
	if not EID.isRepentance then return end
	local numCollectibles = EID:GetMaxCollectibleID()
	for i = 733, numCollectibles, 1 do
		EID:tryAutodetectTransformationsCollectible(i)
	end
end

---Collects items that the player got after using D4 item
---@param player EntityPlayer
function EID:CollectRerolledItemsOfPlayer(player)
	if maxCollectibleID == nil then maxCollectibleID = EID:GetMaxCollectibleID() end
	local playerID = EID:getPlayerID(player, true)
	EID.PlayerItemInteractions[playerID].rerollItems = {}
	for i = 1, maxCollectibleID do
		local count = player:GetCollectibleNum(i, true)
		if count > 0 then
			EID.PlayerItemInteractions[playerID].rerollItems[tostring(i)] = count
		end
	end
end


---Returns true if a given entity is a grid entity
---@param entity Entity | GridEntity
function EID:IsGridEntity(entity)
	return entity.Type == nil
end

---Returns true, if the given entity is a valid game object and actually is something useful to process.
---Sometimes the game sends weird shit so this function is needed to catch bullshit
---@return boolean
function EID:EntitySanityCheck(entity)
	return entity ~= nil and type(entity) == "userdata"
end

---Returns true if the given pill color was used at least once in this game
---@param pillColor PillColor
---@return boolean
function EID:WasPillUsed(pillColor)
	return EID.UsedPillColors[tostring(pillColor)] ~= nil
end

---Returns the name of the given entity
---@param Type EntityType
---@param Variant integer
---@param SubType integer
---@return string
---@diagnostic disable-next-line: duplicate-set-field
function EID:GetEntityXMLName(Type, Variant, SubType)
	return EID.XMLEntityNames[Type.."."..Variant] or EID.XMLEntityNames[Type.."."..Variant.."."..SubType]
end

---@param tvsString string @Entity identifier in `Type.Variant.SubType` format
---@return string
---@diagnostic disable-next-line: duplicate-set-field
function EID:GetEntityXMLNameByString(tvsString)
	local Type, Var, Sub = EID:SplitTVS(tvsString)
	return EID:GetEntityXMLName(Type, Var, Sub)
end

---Get an item's RNG seed.
---We have no use for the RNG object itself because every other function it can do will advance the item's RNG, altering the game state
---@param player EntityPlayer
---@param id CollectibleType | TrinketType | Card | PillEffect
---@param variant? integer @Default: 100 (Collectible)
---@return integer?
function EID:GetItemSeed(player, id, variant)
	if player == nil then return game:GetSeeds():GetStartSeed()
	elseif variant == nil or variant == 100 then return player:GetCollectibleRNG(id):GetSeed()
	elseif variant == 350 then return player:GetTrinketRNG(id):GetSeed()
	elseif variant == 300 then return player:GetCardRNG(id):GetSeed()
	elseif variant == 70 then return player:GetPillRNG(id):GetSeed() end
end

local variantToName = { [70] = "Pill", [100] = "Collectible", [300] = "Card", [350] = "Trinket" }
---@param variant
---| 70 @Pill
---| 100 @Collectible
---| 300 @Card
---| 350 @Trinket
function EID:GetIconNameByVariant(variant)
	return variantToName[variant]
end

---@param descObj EID_DescObj
---@return string
function EID:GetIconStringByDescriptionObject(descObj)
	if descObj and descObj.Icon then
		-- icon object assigned to Icon attribute
		if type(descObj.Icon) == "table" then
			local subType = descObj.ObjSubType
			if descObj.ObjType == 1 then
				return "{{Player" .. (subType or "") .. "}}"
			elseif descObj.ObjType == 5 then
				local iconName = EID:GetIconNameByVariant(descObj.ObjVariant)
				if iconName then
					return "{{" .. iconName .. subType .. "}}"
				end
			elseif descObj.ObjType == 1000 and descObj.ObjVariant == 76 then
				return "{{DiceFace" .. subType .. "}}"
			end
		-- String assigned to Icon attribute
		elseif type(descObj.Icon) == "string" then
			---@diagnostic disable-next-line: return-type-mismatch
			return descObj.Icon
		end
	end
	return "{{Blank}}"
end

---Returns the markup for a given player ID or type.
---If no icon was found, returns the customTransformation icon markup
---@param playerID integer
---@param altFallback? string
function EID:GetPlayerIcon(playerID, altFallback)
	local fallback = altFallback or "{{CustomTransformation}}"
	
	return EID:getIcon("Player" .. playerID) ~= EID.InlineIcons["ERROR"] and "{{Player" .. playerID .. "}}" or fallback
end

local passiveItems = nil -- cache of all passive item ids
---Returns a list of all passive item ids
---@return integer[]
function EID:GetAllPassiveItems()
	if passiveItems then
		return passiveItems
	end
	passiveItems = {}

	for i = 1, EID:GetMaxCollectibleID() do
		local config = EID.itemConfig:GetCollectible(i)
		if config ~= nil and (config.Type == ItemType.ITEM_PASSIVE or config.Type == ItemType.ITEM_FAMILIAR) then
			table.insert(passiveItems, i)
		end
	end
	return passiveItems
end

local activeItems = nil -- cache of all active item ids
---Returns a list of all active item ids
---@return integer[]
function EID:GetAllActiveItems()
	if activeItems then
		return activeItems
	end
	activeItems = {}

	for i = 1, EID:GetMaxCollectibleID() do
		local config = EID.itemConfig:GetCollectible(i)
		if config ~= nil and (config.Type == ItemType.ITEM_ACTIVE) then
			table.insert(activeItems, i)
		end
	end
	return activeItems
end

---Updates the EID.RecentlyTouchedItems table to include the players currently held passive items
---@return table
function EID:UpdateAllPlayerPassiveItems()
	local passives = EID:GetAllPassiveItems()
	local listUpdatedForPlayers = {}
	-- check if id is smaller max id, because numbers bigger a certain value can crash the game when calling HasCollectible()
	local maxCollID = EID:GetMaxCollectibleID()
	for i = 1, #EID.coopAllPlayers do
		local player = EID.coopAllPlayers[i]
		if player == nil then
			return listUpdatedForPlayers -- dont evaluate when bad data is present
		end
		---@cast player EntityPlayer
		local playerNum = EID:getPlayerID(player, true)
		
		-- remove items the player no longer has. reverse iteration to make deletion easier
		for index = #EID.RecentlyTouchedItems[playerNum], 1, -1  do
			local itemID = EID.RecentlyTouchedItems[playerNum][index]
			if itemID > maxCollID or not player:HasCollectible(itemID, true) then
				table.remove(EID.RecentlyTouchedItems[playerNum], index)
				listUpdatedForPlayers[i] = true
				-- If an item earlier than our oldest item is removed (e.g. Eve sacrificial altaring her Dead Bird), reduce it
				if index < EID.OldestItemIndex[playerNum] then EID.OldestItemIndex[playerNum] = EID.OldestItemIndex[playerNum] - 1 end
			end
		end

		-- add items the player did get with non-standard methods (Bag of Crafting, console command, item effects, etc...)
		for _, itemID in ipairs(passives) do
			if itemID <= maxCollID and player:HasCollectible(itemID, true) then
				local alreadyInList = false
				for _, heldItemID in ipairs(EID.RecentlyTouchedItems[playerNum]) do
					if itemID == heldItemID then
						alreadyInList = true
						break
					end
				end
				if not alreadyInList then
					table.insert(EID.RecentlyTouchedItems[playerNum], itemID)
					listUpdatedForPlayers[i] = true
				end
			end
		end
		-- super hacky Tainted Cain active items check, mostly for transformation progress
		-- Only adds up to one copy of any active, I can't think of a good way to recognize a craft of the same active twice. better than nothing
		if EID.isRepentance and player:GetPlayerType() == 23 then
			for j = 0, 1 do
				local itemID = tostring(player:GetActiveItem(j))
				if itemID ~= "0" then
					EID:InitActiveItemInteraction(itemID)
					if EID.PlayerItemInteractions[playerNum].actives[itemID] == 0 then EID.PlayerItemInteractions[playerNum].actives[itemID] = 1 end
				end
			end
		end
	end
	return listUpdatedForPlayers
end

EID.OldestItemIndex = {}
function EID:SetOldestItemIndex()
	for i = 0, game:GetNumPlayers() - 1 do
		EID.RecentlyTouchedItems[i] = EID.RecentlyTouchedItems[i] or {}
		if EID.OldestItemIndex[i] == nil then EID.OldestItemIndex[i] = #EID.RecentlyTouchedItems[i] + 1 end
		-- set up Dead Tainted Lazarus to be oldest slot 1
		if EID.OldestItemIndex[i+666] == nil then EID.OldestItemIndex[i+666] = 1 end
	end
end

EID.GulpedTrinkets = {}
---Check for gulped trinkets that have been removed (e.g. perfection, walnut)
function EID:UpdateAllPlayerTrinkets()
	for i = 1, #EID.coopAllPlayers do
		local player = EID.coopAllPlayers[i]
		if player == nil then return end

		---@cast player EntityPlayer
		local playerNum = EID:getPlayerID(player, true)
		if EID.GulpedTrinkets[playerNum] == nil then return end
		
		-- remove items the player no longer has. reverse iteration to make deletion easier
		for index = #EID.GulpedTrinkets[playerNum], 1, -1  do
			if not player:HasTrinket(EID.GulpedTrinkets[playerNum][index]) then
				table.remove(EID.GulpedTrinkets[playerNum], index)
			end
		end
	end
end

EID.WispsPerPlayer = {}
---This is automatically called shortly after main.lua sees a Lemegeton get used, and when the Item Reminder is opened
function EID:UpdateAllPlayerLemegetonWisps()
	EID.WispsPerPlayer = {}
	
	for _, wisp in ipairs(Isaac.FindByType(3, 237, -1, true, false)) do
		local wispPlayer = wisp:ToFamiliar() and wisp:ToFamiliar().Player
		if wispPlayer then
			local playerNum = EID:getPlayerID(wispPlayer, true)
			EID.WispsPerPlayer[playerNum] = EID.WispsPerPlayer[playerNum] or {}
			table.insert(EID.WispsPerPlayer[playerNum], wisp)
		end
	end
	-- Sort wisps by age (newest first), and leave just the IDs
	for playerNum, wisps in pairs(EID.WispsPerPlayer) do
		table.sort(wisps, function(a, b) return a.FrameCount < b.FrameCount end)
		for i,v in ipairs(wisps) do wisps[i] = v.SubType end
	end
end

---This table holds, for each pedestal in the room, a table of item IDs that have been on that pedestal, and timestamps of when they were first and last seen
---The Glitched Crown callback when describing the pedestal will sort by first timestamp, and delete entries with too old of a last timestamp (like after a reroll)
EID.GlitchedCrownCheck = {}
---Watch pedestals for being a Glitched Crown style pedestal that flips between items too quickly to display descriptions for
function EID:WatchForGlitchedCrown()
	if REPENTOGON then
		-- In REPENTOGON, always check even without Glitched Crown, allowing to check 5+ Soul of Isaac usage, or Everything Jar
		local curRoomIndex = game:GetLevel():GetCurrentRoomIndex()
		EID.GlitchedCrownCheck[curRoomIndex] = EID.GlitchedCrownCheck[curRoomIndex] or {}

		for _, entity in ipairs(Isaac.FindByType(5, 100, -1, true, false)) do
			-- Use InitSeed and Index to prevent any Diplopia weirdness
			EID.GlitchedCrownCheck[curRoomIndex][entity.InitSeed..entity.Index] = EID.GlitchedCrownCheck[curRoomIndex][entity.InitSeed..entity.Index] or {}
			local pickup = entity:ToPickup() ---@cast pickup EntityPickup
			local cycle = pickup:GetCollectibleCycle()
			if #cycle > 1 then
				for i, subType in ipairs(cycle) do
					EID.GlitchedCrownCheck[curRoomIndex][entity.InitSeed..entity.Index][subType] = EID.GlitchedCrownCheck[curRoomIndex][entity.InitSeed..entity.Index][subType] or {EID.GameUpdateCount + i, EID.GameUpdateCount + i}
					-- update the last frame seen for the pedestal's current collectible ID
					EID.GlitchedCrownCheck[curRoomIndex][entity.InitSeed..entity.Index][subType][2] = EID.GameUpdateCount + i
				end
			end
		end
	else
		if not EID.collectiblesOwned[689] then return end

		local curRoomIndex = game:GetLevel():GetCurrentRoomIndex()
		EID.GlitchedCrownCheck[curRoomIndex] = EID.GlitchedCrownCheck[curRoomIndex] or {}

		for _, entity in ipairs(Isaac.FindByType(5, 100, -1, true, false)) do
			local index = entity.InitSeed..entity.Index
			-- Use InitSeed and Index to prevent any Diplopia weirdness
			EID.GlitchedCrownCheck[curRoomIndex][index] = EID.GlitchedCrownCheck[curRoomIndex][index] or {}
			-- Initialize the data about this pedestal showing its current item ID, if necessary
			-- in order to sort the items displayed, while also trashing items that haven't shown up in a while, keep both "initial frame seen" and "last frame seen"
			EID.GlitchedCrownCheck[curRoomIndex][index][entity.SubType] = EID.GlitchedCrownCheck[curRoomIndex][index][entity.SubType] or {EID.GameUpdateCount, EID.GameUpdateCount}
			-- update the last frame seen for the pedestal's current collectible ID
			EID.GlitchedCrownCheck[curRoomIndex][index][entity.SubType][2] = EID.GameUpdateCount
		end
	end
end

---Replaces Variable placeholders in string with a given value
---Example: "My {1} message" --> "My test message"
---varID can be omitted to replace {1} (or pass in a string table, to replace {1}, {2}, etc.)
---@param str string
---@param varID integer | integer[] | string | string[]
---@param newString? string | string[] | integer
function EID:ReplaceVariableStr(str, varID, newString)
	if newString == nil then
		newString = varID ---@diagnostic disable-line
		varID = 1
	end
	if type(str) ~= "string" or newString == nil then return str end
	
	if type(newString) == "table" then
		for i = 1, #newString do
			str = str:gsub("{"..i.."}", newString[i])
		end
		return str
	else
		return str:gsub("{"..varID.."}", newString)
	end
end

---deep table copy, copied from http://lua-users.org/wiki/CopyTable
---@generic T
---@param orig T
---@return T
function EID:CopyTable(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[EID:CopyTable(orig_key)] = EID:CopyTable(orig_value)
        end
        setmetatable(copy, EID:CopyTable(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

---Super simple table concatenation: https://www.tutorialspoint.com/concatenation-of-tables-in-lua-programming
---@generic T
---@param t1 T[]
---@param t2 T[]
---@return T[]
function EID:ConcatTables(t1, t2)
	for i = 1, #t2 do
		t1[#t1 + 1] = t2[i]
	end
	return t1
end

---Thing to fix find/replace pairs with hyphens (like "1-2") or pluses (like +1 Health) breaking because of special characters
---https://stackoverflow.com/questions/29072601/lua-string-gsub-with-a-hyphen
---@param str string
---@param what string
---@param with string
---@param count integer
---@return string, integer
function EID:SimpleReplace(str, what, with, count)
	what = string.gsub(what, "[%(%)%.%+%-%*%?%[%]%^%$%%]", "%%%1") -- escape pattern
	with = string.gsub(with, "[%%]", "%%%%")                       -- escape replacement
	return string.gsub(str, what, with, count)
end

---Simple decimal rounding, instead of just floor or ceil
---@param num number
---@param dp integer?
---@return number
function EID:SimpleRound(num, dp)
	dp = dp or 2
	local mult = 10^dp
	return math.floor(num * mult + 0.5)/mult
end

---@param t any[]
---@param value any
---@return boolean
function EID:ArrayContains(t, value)
	for _,v in ipairs(t) do
		if v == value then return true end
	end
	return false
end


---Find the closest player to the given entity
---@param entity Entity
---@return EntityPlayer
function EID:ClosestPlayerTo(entity)
	local closestDist = 9999999
	local closestPlayer = EID.player or Isaac.GetPlayer()
	local numPlayers = game:GetNumPlayers()
	if EID.InsideItemReminder then return EID.ItemReminderPlayerEntity end
	if entity == nil or numPlayers == 1 then return closestPlayer end
	
	for i = 1, #EID.coopAllPlayers do
		local player = EID.coopAllPlayers[i]
		---@cast player EntityPlayer
		local dist = player.Position:Distance(entity.Position)
		if dist < closestDist and player then
			closestDist = dist
			closestPlayer = player
		end
	end
	
	return closestPlayer
end

---Creates a description table for a given language to prevent outdated languages from breaking EID API functions for mods
---@param tableName string
---@param language EID_LanguageCode
function EID:CreateDescriptionTableIfMissing(tableName, language)
	if language and not EID.descriptions[language] then
		EID.descriptions[language] = {}
	end
	if tableName and not EID.descriptions[language][tableName] then
		EID.descriptions[language][tableName] = {}
	end
end

---Returns true if the given pedestal-entity is hidden (questionmark sprite)
---@param entity Entity
---@return boolean
function EID:IsItemHidden(entity)
	if EID:getEntityData(entity, "EID_DontHide") == true then
		return false
	end
	-- Repentogon check (does not account for curse of blind),
	-- with expection for alt path item descriptions when config option is enabled
	if REPENTOGON and entity:ToPickup():IsBlind() and not (not EID.Config["DisableOnAltPath"] and EID:IsAltChoice(entity)) then
		return true
	end

	if (EID.Config["DisableOnCurse"] and EID:hasCurseBlind() and not entity:ToPickup().Touched and not EID.isDeathCertRoom)
	or (EID.Config["HideUncollectedItemDescriptions"] and EID:requiredForCollectionPage(entity.SubType))
	or (EID.Config["DisableOnAltPath"] and not entity:ToPickup().Touched and EID:IsAltChoice(entity))
	or (EID.Config["DisableOnAprilFoolsChallenge"] and game.Challenge == Challenge.CHALLENGE_APRILS_FOOL) then
		return true
	end
	return false
end

---Returns true if the position at the given grid location is valid for pathfinding.
---gridPosition is a table with an x and y entry. Its derived from the FindVector class of "LuaFindings" module (pathfinder)
---@param gridPosition table
---@return boolean
function EID:EvaluateLocation(gridPosition)
	local room = game:GetRoom()
	local width = room:GetGridWidth()
	local height = room:GetGridHeight()
	if gridPosition.x < 1 or gridPosition.y < 1 or gridPosition.x >= height-1 or gridPosition.y >= width - 1 then
		return false
	end
	local gridIndex = gridPosition.x * room:GetGridWidth() + gridPosition.y
	-- GridPath contains a value that defines if a poisiton is walkable by the ingame pathfinder
	-- numbers bigger 900 are considered not walkable (spikes, rocks, pits, grimaces, etc.)
	-- numbers smaller 900 are walkable but less preferable. 0 is most preferable
	local collision = room:GetGridPath(gridIndex)
	return collision <= 900
end

---Returns true if an unobstructed path between the start and end position exists.
---Obstructions can be something like Rocks, Pits, Walls, etc.
---@param startPos Vector
---@param endPos Vector
---@return boolean
function EID:HasPathToPosition(startPos, endPos)
	-- divide by 40 to convert from world to grid coords
	local room = game:GetRoom()
	local width = room:GetGridWidth()
	local startGI = room:GetGridIndex(startPos)
	local endGI = room:GetGridIndex(endPos)
	-- convert GridIndex into Grid X,Y coordinates and calculate path
	local pathfinderObj = EID.Pathfinder(Vector(startGI%width, math.floor(startGI/width)), Vector(endGI%width, math.floor(endGI/width)), EID.EvaluateLocation)
	-- return true if it has a path
	return pathfinderObj:GetPath() ~= nil
end

---Applies language specific modifiers that aim to pluralize a text
---@param text string
---@param amount integer
function EID:TryPluralizeString(text, amount)
	local func = EID:getDescriptionEntry("PluralizeFunction")
	if type(func) == "function" then
		return func(text,amount)
	end
	return text
end

---Prints a message in both the console and the Log file, to make important messages from EID stand out everywhere
---@param str string
function EID:WriteDebugMsg(str)
	print(str)
	Isaac.DebugString(str)
end

---Prints an error message in both the console and the Log file, to make important messages from EID stand out everywhere
---@param str string
function EID:WriteErrorMsg(str)
	EID:WriteDebugMsg("EID ERROR: " .. str)
end

