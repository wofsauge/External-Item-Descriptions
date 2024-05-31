local indexCharMapping = " ??????'????,-./0123456789?;?????abcdefghijklmnopqrstuvwxyz"
local searchValue = ""
local searchInputEnabled = false
local lastBackspaceTrigger = 0
local backspaceStep = 0

--- Returns the current search query
-- @param newValue new search query
function EID:BoCSSetSearchValue(newValue)
	if newValue == nil then
		newValue = ""
		return
	end

	searchValue = newValue
end


--- Returns the current search query
-- @return string
function EID:BoCSGetSearchValue()
	return searchValue
end

--- Enables or disables the search input respectively
-- @param newState boolean
function EID:BoCSSetSearchInputEnabled(newState)
	searchInputEnabled = newState

	if newState then
		EID:AddCallback(ModCallbacks.MC_INPUT_ACTION, EID.BoCSBlockInputAction)
	else
		EID:RemoveCallback(ModCallbacks.MC_INPUT_ACTION, EID.BoCSBlockInputAction)
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
	if searchValue == "" then
		return true
	end

	return string.find(string.lower(itemName), string.lower(searchValue))
end

--- Handles any input done related to Bag of Crafting search
function EID:BoCSHandleInput()
	if Game():IsPaused() then
		return
	end

	if EID.bagPlayer == nil then
		return
	end

	if Input.IsButtonTriggered(Keyboard.KEY_ENTER, EID.bagPlayer.ControllerIndex, true) then
		EID:BoCSSetSearchInputEnabled(not searchInputEnabled)
		return
	end

	if searchInputEnabled then
		local newValue = searchValue
		local index = 0
		local hasLetterInput = false

		-- Keep in mind that this only works because the respective
		-- enum values are integers
		for i=Keyboard.KEY_SPACE,Keyboard.KEY_Z do
			index = index + 1
			if Input.IsButtonTriggered(i, EID.bagPlayer.ControllerIndex, true) then
				local toAppend = string.upper(indexCharMapping:sub(index, index))

				newValue = newValue .. toAppend
				hasLetterInput = true

				-- We only handle one input at a time
				break
			end

			if hasLetterInput then
				return
			end
		end

		if Input.IsButtonTriggered(Keyboard.KEY_BACKSPACE, EID.bagPlayer.ControllerIndex, true) then
			lastBackspaceTrigger = 0
			backspaceStep = 0
			return
		end

		local currentFrame = Game():GetFrameCount()
		-- 30 Frames = 1 second
		-- 15 = 500ms
		if Input.IsButtonPressed(Keyboard.KEY_BACKSPACE, EID.bagPlayer.ControllerIndex, true) and (
			backspaceStep == 0
			or
			(backspaceStep == 1 and currentFrame - lastBackspaceTrigger > 15) -- we delay the second deletion a little bit more
			or
			(backspaceStep >= 2 and currentFrame - lastBackspaceTrigger > 3)
		) then
			local isControlPressed = (
				Input.IsButtonPressed(Keyboard.KEY_LEFT_CONTROL, EID.bagPlayer.ControllerIndex, true)
				or
				Input.IsButtonPressed(Keyboard.KEY_RIGHT_CONTROL, EID.bagPlayer.ControllerIndex, true)
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
end

---  Returns the line that should be displayed inside of the menu
function EID:BoCSGetSearchLine()
	if not searchInputEnabled and (searchValue == nil or searchValue == "") then
		return nil
	end

	local result = ""

	if searchInputEnabled then
		result = "{{ColorGreen}}"
	end

	result = result .. "Search: " .. searchValue .. "#"

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

		if bagPlayer == nil or controller ~= bagPlayer.ControllerIndex then
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

		if bagPlayer == nil or controller ~= bagPlayer.ControllerIndex then
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

		if bagPlayer == nil or controller ~= bagPlayer.ControllerIndex then
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

		if bagPlayer == nil or controller ~= bagPlayer.ControllerIndex then
			return oldInputIsActionTriggered(key, controller)
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
function EID:BoCSBlockInputAction(entity, inputHook, buttonAction)
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
end

--- Resets the search query when starting and continuing a game
function EID:BoCSPostGameStarted()
	EID:BoCSSetSearchValue("")
end

EID:BoCSHookInput()
EID:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, EID.BoCSOnNewLevel)
EID:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, EID.BoCSOnNewLevel)
