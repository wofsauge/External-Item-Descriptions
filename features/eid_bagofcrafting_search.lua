-- Valid values:
--   0 -> Reset search query after search
EID.BoCSLockMode = 0
local game = Game()
local locked = false

local indexCharMapping = [[ ??????'????,-./0123456789?;?=???abcdefghijklmnopqrstuvwxyz[\]??]]
local shiftCharMapping = [[ ??????"????<_>?)!@#$%^&*(?:?+???ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}??]]
local searchValue = ""
local searchInputEnabled = false
local lastBackspaceTrigger = 0
local backspaceStep = 0

-- source: https://stackoverflow.com/questions/65714534/how-do-i-remove-certain-special-characters-from-a-string-in-lua
-- This list is incomplete, add more to it as necessary
local function sanitizeName(name)
    local accented = {
        ['ß'] = 'ss', ['à'] = 'a', ['á'] = 'a', ['â'] = 'a', ['ã'] = 'a', ['å'] = 'a' , ['ä'] = 'ae', ['æ'] = 'ae',
        ['ç'] = 'c', ['è'] = 'e', ['é'] = 'e', ['ê'] = 'e', ['ë'] = 'e', ['ì'] = 'i', ['í'] = 'i', ['î'] = 'i', ['ï'] = 'i',
        ['ð'] = 'dh', ['ñ'] = 'n', ['ò'] = 'o', ['ó'] = 'o', ['ô'] = 'o', ['õ'] = 'o', ['ø'] = 'o', ['ö'] = 'oe',
        ['ù'] = 'u', ['ú'] = 'u', ['û'] = 'u', ['ü'] = 'ue', ['ý'] = 'y', ['ÿ'] = 'y', ['þ'] = 'th'
    }
    local sanitized = name:lower()
    -- Replace some non-ASCII characters:
    for fancy, plain in pairs(accented) do
        sanitized = sanitized:gsub(fancy, plain)
    end
    return sanitized
end

-- KR name search is complicated, divided into seperate file
require("features.eid_bagofcrafting_search_kr")

--- Returns the current search query
-- @param newValue new search query
function EID:BoCSSetSearchValue(newValue)
	if newValue == nil then
		searchValue = ""
		return
	end

	searchValue = newValue
end

--- Returns the current search query
-- @return string
function EID:BoCSGetSearchValue()
	local s = searchValue
	for _, callbackData in pairs(Isaac.GetCallbacks("EIDCallbacks.SEARCH_NAME_CONVERSION")) do
		local newString = callbackData.Function(callbackData.Mod, s)
		if type(newString) == "string" then
			s = newString
		end
	end
	return s
end

EID:AddCallback("EIDCallbacks.SEARCH_NAME_CONVERSION", function(_, searchString)
	-- TODO : make english search inside ko_kr language setting (priotity low though)
	if EID:getLanguage() == "ko_kr" then
		return EID.engKeystrokeToKor(searchString)
	end
end)

function EID:BoCSGetLocked()
	return locked
end

--- Locks or unlocks the search query
-- @param newState boolean
function EID:BoCSSetLocked(newState, force)
	if EID.BoCSLockMode ~= 0 and force ~= true then
		locked = false
		return
	end

	locked = newState

	if newState then
		EID:BoCSSetSearchInputEnabled(false, true)
	end
end

--- Enables or disables the search input respectively
-- @param newState boolean
function EID:BoCSSetSearchInputEnabled(newState, force)
	if EID.BoCSLockMode == 0 and EID:BoCSGetLocked() and force ~= true then
		return
	end
	newState = newState and EID.Config["BagOfCraftingDisplayRecipesMode"]:find("Recipe List")

	searchInputEnabled = newState
	if newState then
		EID:AddCallback(ModCallbacks.MC_INPUT_ACTION, EID.BoCSBlockInputAction)
	else
		EID:RemoveCallback(ModCallbacks.MC_INPUT_ACTION, EID.BoCSBlockInputAction)
		searchInputEnabled = newState
	end
end

--- Returns if the search input is enabled
-- @returns boolean
function EID:BoCSGetSearchInputEnabled()
	return searchInputEnabled
end

--- Gets if the filtering is currently enabled
function EID:BoCSGetSearchEnabled()
	return searchValue ~= nil and searchValue ~= ""
end

--- Returns true if the item name is matched
-- @returns boolean
function EID:BoCSCheckItemName(itemName)
	local s = EID:BoCSGetSearchValue()
	if s == "" then
		return true
	end
	
	-- Check the name for matching our search string (accents removed)
	return string.find(sanitizeName(itemName), sanitizeName(s), 1, true)
end

local function handleSearchInput()	
	if not searchInputEnabled or (EID.BoCSLockMode == 0 and EID:BoCSGetLocked()) then
		return
	end
	
	if Input.IsButtonTriggered(Keyboard.KEY_ESCAPE, 0, true) then
		EID:BoCSSetSearchInputEnabled(false)
		EID:BoCSSetSearchValue("")
		return
	end

	local newValue = searchValue
	local index = 0
	local hasLetterInput = false

	-- Keep in mind that this only works because the respective
	-- enum values are integers
	for i=Keyboard.KEY_SPACE,Keyboard.KEY_RIGHT_BRACKET do
		index = index + 1
		if Input.IsButtonTriggered(i, 0, true) then
			local toAppend = indexCharMapping:sub(index, index)
			local isShiftPressed = (Input.IsButtonPressed(Keyboard.KEY_LEFT_SHIFT, 0, true) or Input.IsButtonPressed(Keyboard.KEY_RIGHT_SHIFT, 0, true))
			if isShiftPressed then toAppend = shiftCharMapping:sub(index, index) end

			newValue = newValue .. toAppend
			hasLetterInput = true

			-- We only handle one input at a time
			break
		end

		if hasLetterInput then
			return
		end
	end

	if Input.IsButtonTriggered(Keyboard.KEY_BACKSPACE, 0, true) then
		lastBackspaceTrigger = 0
		backspaceStep = 0
		return
	end

	local currentFrame = game:GetFrameCount()
	-- 30 Frames = 1 second
	-- 15 = 500ms
	if Input.IsButtonPressed(Keyboard.KEY_BACKSPACE, 0, true) and (
		backspaceStep == 0
		or
		(backspaceStep == 1 and currentFrame - lastBackspaceTrigger >= 15) -- we delay the second deletion a little bit more
		or
		(backspaceStep >= 2 and currentFrame - lastBackspaceTrigger >= 1)
	) then
		local isControlPressed = (
			Input.IsButtonPressed(Keyboard.KEY_LEFT_CONTROL, 0, true)
			or
			Input.IsButtonPressed(Keyboard.KEY_RIGHT_CONTROL, 0, true)
		)

		if isControlPressed then
			newValue = ""
		else
			newValue = searchValue:sub(1, -2)
		end

		lastBackspaceTrigger = currentFrame
		backspaceStep = backspaceStep + 1
	end

	searchValue = newValue
end

--- Handles any input done related to Bag of Crafting search
function EID:BoCSHandleInput()
	if game:IsPaused() then
		return
	end

	if EID.bagPlayer == nil or not EID.BoC.IsDisplayingDescription or not EID.Config["BagOfCraftingDisplayRecipesMode"]:find("Recipe List") then
		return
	end
	
	if ModConfigMenu and ModConfigMenu.IsVisible then
		return
	end
	
	-- Clear the previous search when Enter is pressed
	if Input.IsButtonTriggered(EID.Config["CraftingSearchKey"], 0, true) then
		if not searchInputEnabled then EID:BoCSSetSearchValue("") end
	end
	
	-- Start a new search when Enter is pressed
	-- by default, both are Enter, but for instance clearing could be Backspace and then you could modify a search term with Enter
	if Input.IsButtonTriggered(EID.Config["CraftingSearchKey"], 0, true) then
		EID:BoCSSetSearchInputEnabled(not searchInputEnabled)
		return
	end

	handleSearchInput()
end

---  Returns the line that should be displayed inside of the menu
function EID:BoCSGetSearchLine()
	if not searchInputEnabled and (searchValue == nil or searchValue == "") then
		return nil
	end

	local result = "{{MagnifyingLens}} "

	if searchInputEnabled then
		result = result .. "{{ColorLime}}"
	end
	local searchDescription = EID:getDescriptionEntry("CraftingSearch")
	result = result .. searchDescription .. " " .. EID:BoCSGetSearchValue()

	if EID.BoCSLockMode == 0 and EID:BoCSGetLocked() then
		result = result .. "{{Trinket159}}"
	end

	result = result .. "#"

	return result
end

function EID:BoCSHookInputIsButtonTriggered()
	local oldInputIsButtonTriggered = Input.IsButtonTriggered

	Input.IsButtonTriggered = function(key, controller, force)
		if force or not searchInputEnabled then
			return oldInputIsButtonTriggered(key, controller)
		end

		local bagPlayer = nil
		if EID.isRepentance then
			local hasBag, player = EID:PlayersHaveCollectible(710)
			if hasBag then
				bagPlayer = player
			end
		end

		if bagPlayer == nil or controller ~= 0 then -- only execute for keyboard
			return oldInputIsButtonTriggered(key, controller)
		end

		return false
	end
end

function EID:BoCSHookInputIsButtonPressed()
	local oldInputIsButtonPressed = Input.IsButtonPressed

	Input.IsButtonPressed = function(key, controller, force)
		if force or not searchInputEnabled then
			return oldInputIsButtonPressed(key, controller)
		end

		local bagPlayer = nil
		if EID.isRepentance then
			local hasBag, player = EID:PlayersHaveCollectible(710)
			if hasBag then
				bagPlayer = player
			end
		end

		if bagPlayer == nil or controller ~= 0 then -- only execute for keyboard
			return oldInputIsButtonPressed(key, controller)
		end

		return false
	end
end

function EID:BoCSHookInputIsActionPressed()
	local oldInputIsActionPressed = Input.IsActionPressed

	Input.IsActionPressed = function(key, controller, force)
		if force or not searchInputEnabled then
			return oldInputIsActionPressed(key, controller)
		end

		local bagPlayer = nil
		if EID.isRepentance then
			local hasBag, player = EID:PlayersHaveCollectible(710)
			if hasBag then
				bagPlayer = player
			end
		end

		if bagPlayer == nil or controller ~= 0 then -- only execute for keyboard
			return oldInputIsActionPressed(key, controller)
		end

		return false
	end
end

function EID:BoCSHookInputIsActionTriggered()
	local oldInputIsActionTriggered = Input.IsActionTriggered

	Input.IsActionTriggered = function(key, controller, force)
		if force or not searchInputEnabled then
			return oldInputIsActionTriggered(key, controller)
		end

		local bagPlayer = nil
		if EID.isRepentance then
			local hasBag, player = EID:PlayersHaveCollectible(710)
			if hasBag then
				bagPlayer = player
			end
		end

		if bagPlayer == nil or controller ~= 0 then
			return oldInputIsActionTriggered(key, controller) -- only execute for keyboard
		end

		return false
	end
end

---
-- This is a workaround to block every single Input call that could potentially be
-- used from another mod.
-- We override the Input functions with our own stubs to prevent other mods from
-- doing actions while the user is performing a search.
-- This does NOT block the main game from performing actions like toggling fullscreen
-- or toggling the pause!
-- Since this could be useful for multiple reasons, this should probably be put
-- inside the main.lua instead of leaving this here
-- Hooking multiple times WILL impact the performance!
-- I've also added a third parameter called "force"
-- This way, we are still able to force the real function to be called instead
-- of our modified code
-- This code should not impact the performance in a huge way
-- since the first thing we do is check if the searchInput is enabled anyway
-- We can allow losing a bit of performance when searching
function EID:BoCSHookInput()
	EID:BoCSHookInputIsButtonTriggered()
	EID:BoCSHookInputIsButtonPressed()
	EID:BoCSHookInputIsActionTriggered()
	EID:BoCSHookInputIsActionPressed()
end

--- Blocks all input actions triggered by the games bindings itself
function EID:BoCSBlockInputAction(_, inputHook, _)
	local bagPlayer = nil
	if EID.isRepentance then
		local hasBag, player = EID:PlayersHaveCollectible(710)
		if hasBag then
			bagPlayer = player
		end
	end

	if bagPlayer == nil then
		return nil
	end

	if inputHook == InputHook.GET_ACTION_VALUE then
		return 0
	end

	if inputHook == InputHook.IS_ACTION_PRESSED or inputHook == InputHook.IS_ACTION_TRIGGERED then
		return false
	end

	return nil
end

--- Resets the search query when entering a new level
function EID:BoCSOnNewLevel()
	EID:BoCSSetSearchValue("")
	EID:BoCSSetLocked(false)
	EID:BoCSSetSearchInputEnabled(false)
end

--- Resets the search query when starting and continuing a game
function EID:BoCSPostGameStarted()
	EID:BoCSSetSearchValue("")
	EID:BoCSSetLocked(false)
	EID:BoCSSetSearchInputEnabled(false)
end

EID:BoCSHookInput()
EID:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, EID.BoCSOnNewLevel)
EID:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, EID.BoCSOnNewLevel)
