Controller = Controller or {}
Controller.DPAD_LEFT = 0
Controller.DPAD_RIGHT = 1
Controller.DPAD_UP = 2
Controller.DPAD_DOWN = 3
Controller.BUTTON_A = 4
Controller.BUTTON_B = 5
Controller.BUTTON_X = 6
Controller.BUTTON_Y = 7
Controller.BUMPER_LEFT = 8
Controller.TRIGGER_LEFT = 9
Controller.STICK_LEFT = 10
Controller.BUMPER_RIGHT = 11
Controller.TRIGGER_RIGHT = 12
Controller.STICK_RIGHT = 13
Controller.BUTTON_BACK = 14
Controller.BUTTON_START = 15

-- MOD CONFIG MENU Compatibility
local MCMLoaded, MCM = pcall(require, "scripts.modconfig")
EID.MCMCompat_isDisplayingEIDTab = ""
local MCMCompat_isDisplayingDummyMCMObj = false
local MCMCompat_oldPermanentObj = nil
EID.MCMLoaded = MCMLoaded
local colorNameArray = {}
EID.MCM_OptionChanged = false

-- Add MCM demo description
EID.ModIndicator["~~EID-MCM-DEMO~~"] = {Name = "My Demo Mod", Icon = "Delirium"}

local function renderDummyDesc(reload)
	if reload then
		MCMCompat_oldPermanentObj = nil
	else
		MCMCompat_oldPermanentObj = EID.permanentDisplayTextObj
	end
	local demoDescObj = EID:getDescriptionObj(5, 100, 33)
	demoDescObj.Name = EID:getDescriptionEntry("MCM","DemoObjectName")
	demoDescObj.Transformation = EID:getDescriptionEntry("MCM","DemoObjectTransformation")
	demoDescObj.Description = EID:getDescriptionEntry("MCM","DemoObjectText")
	demoDescObj.ModName = "~~EID-MCM-DEMO~~"
	EID:displayPermanentText(demoDescObj, "MCM", "DemoObjectName")
end

local function renderDummyBagOfCraftingDesc()
	EID.bagPlayer = Isaac.GetPlayer(0)
	EID.BoC.BagItemsOverride = {15,15,5,1,10,8,8,9}
	EID.BoC.RoomOverride = {8,8,9}
	EID.BoC.FloorOverride = {1,1,1,3,4,8,8}
	EID.BoC.InventoryOverride = {21,22}
	EID.RefreshBagTextbox = true
	local craftingSuccess = EID:handleBagOfCraftingRendering(true)
	if craftingSuccess then
		EID:printDescription(EID.descriptionsToPrint[#EID.descriptionsToPrint])
	end
end

-- get list of all defined fonts per language file
local fonts = {}
local fontNames = {}
for _, pack in pairs(EID.descriptions) do
	if pack.fonts then
		for _,fontToAdd in ipairs(pack.fonts) do
			local exists = false
			for _,font in ipairs(fontNames) do
				if font == fontToAdd.name then
					exists = true
					break
				end
			end
			if not exists then
				table.insert(fonts, fontToAdd)
				table.insert(fontNames, fontToAdd.name)
			end
		end
	end
end
-- get list of all defined Language names
local displayLanguage = {}
for _, lang in ipairs(EID.Languages) do
	table.insert(displayLanguage, EID.descriptions[lang].languageName)
end

local function clearRenderDummyDesc()
	if MCMCompat_oldPermanentObj == nil then
		EID:hidePermanentText()
	else
		EID.permanentDisplayTextObj = MCMCompat_oldPermanentObj
	end
	MCMCompat_oldPermanentObj = nil
	MCMCompat_isDisplayingDummyMCMObj = false
	EID.BoC.BagItemsOverride = nil
	EID.BoC.RoomOverride = nil
	EID.BoC.FloorOverride = nil
	EID.BoC.InventoryOverride = nil
	EID.RefreshBagTextbox = true
end

function EID:renderMCMDummyDescription()
	if MCMLoaded then
		if not Options then
			local hudOffset = ModConfigMenu.Config["General"].HudOffset
			if hudOffset == nil and ScreenHelper then
				hudOffset = ScreenHelper.GetOffset()
			end
			EID.Config["HUDOffset"] = hudOffset
			EID:addTextPosModifier("HudOffset", Vector((hudOffset * 2) - 20, hudOffset - 10))
		end
		if MCM.IsVisible and EID.MCMCompat_isDisplayingEIDTab ~= "" then
			if EID.MCMCompat_isDisplayingEIDTab == "Mouse" and EID.Config["EnableMouseControls"] then
				clearRenderDummyDesc()
				EID:renderHUDLocationIndicators()
				MCMCompat_isDisplayingDummyMCMObj = true
			elseif EID.MCMCompat_isDisplayingEIDTab == "Crafting" then
				clearRenderDummyDesc()
				renderDummyBagOfCraftingDesc()
				MCMCompat_isDisplayingDummyMCMObj = true
			elseif EID.permanentDisplayTextObj == nil then
				-- any other tab
				renderDummyDesc(false)
				MCMCompat_isDisplayingDummyMCMObj = true
			end
			EID:buildColorArray()
		elseif not MCM.IsVisible and MCMCompat_isDisplayingDummyMCMObj then
			clearRenderDummyDesc()
			EID.MCMCompat_isDisplayingEIDTab = ""
			colorNameArray = {}
		end
	end
end


function EID:buildColorArray()
	if (colorNameArray[1] ~= nil) then return end
	colorNameArray = {}
	for k,v in pairs(EID.InlineColors) do
		if k~="ColorText" and k~="ColorTransform" and k~="ColorError" and k~="ColorObjName" and k~="ColorReset" then
			table.insert(colorNameArray,k)
		end
	end
	table.sort(colorNameArray)
end

function EID:AddBooleanSetting(category, optionName, displayText, params)
	if type(params) ~= "table" then params = {} end
	if params.repOnly and not EID.isRepentance then return end
	MCM.AddSetting(
		"EID", category,
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = params.currentSettingFunc or function()
				return EID.Config[optionName]
			end,
			Display = params.displayFunc or function()
				if params.displayingTab then EID.MCMCompat_isDisplayingEIDTab = params.displayingTab end
				local onOff = params.offText or "False"
				if EID.Config[optionName] then
					onOff = params.onText or "True"
				end
				return displayText .. ": " .. onOff
			end,
			OnChange = params.onChangeFunc or function(currentBool)
				EID.Config[optionName] = currentBool
				EID.MCM_OptionChanged = true
			end,
			Info = params.infoText or {}
		}
	)
end

function EID:AddNumberSetting(category, optionName, displayText, minimum, maximum, params)
	if type(params) ~= "table" then params = {} end
	if params.repOnly and not EID.isRepentance then return end
	MCM.AddSetting(
		"EID", category,
		{
			Type = ModConfigMenu.OptionType.NUMBER,
			CurrentSetting = params.currentSettingFunc or function()
				return (params.indexOf and AnIndexOf(params.indexOf, EID.Config[optionName])) or EID.Config[optionName]
			end,
			Minimum = minimum,
			Maximum = maximum,
			ModifyBy = params.modifyBy or 1,
			Display = params.displayFunc or function()
				if params.displayingTab then EID.MCMCompat_isDisplayingEIDTab = params.displayingTab end
				return displayText .. ": " .. ((params.displayTable and params.displayTable[EID.Config[optionName]]) or EID.Config[optionName])
			end,
			OnChange = params.onChangeFunc or function(currentNum)
				EID.Config[optionName] = (params.indexOf and params.indexOf[currentNum]) or currentNum
				EID.MCM_OptionChanged = true
			end,
			Info = params.infoText or {}
		}
	)
end

function EID:AddScrollSetting(category, optionName, displayText, scrollTable, params)
	if type(params) ~= "table" then params = {} end
	if params.repOnly and not EID.isRepentance then return end
	MCM.AddSetting(
		"EID", category,
		{
			Type = ModConfigMenu.OptionType.SCROLL,
			CurrentSetting = params.currentSettingFunc or function()
				return AnIndexOf(scrollTable, EID.Config[optionName]) - 1
			end,
			Display = params.displayFunc or function()
				if params.displayingTab then EID.MCMCompat_isDisplayingEIDTab = params.displayingTab end
				return displayText .. ": $scroll" .. (AnIndexOf(scrollTable, EID.Config[optionName]) - 1) .. " " ..
				EID.Config[optionName] .. (params.label or "")
			end,
			OnChange = params.onChangeFunc or function(currentNum)
				EID.Config[optionName] = scrollTable[currentNum + 1]
				EID.MCM_OptionChanged = true
			end,
			Info = params.infoText or {}
		}
	)
end

function EID:AddHotkeySetting(category, optionName, displayText, infoText, isController)
	if (type(infoText) == "string") then infoText = {infoText} end
	local optionType = ModConfigMenu.OptionType.KEYBIND_KEYBOARD
	local hotkeyToString = InputHelper.KeyboardToString
	local deviceString = "keyboard"
	local backString = "ESCAPE"
	if isController then
		optionType = ModConfigMenu.OptionType.KEYBIND_CONTROLLER
		hotkeyToString = InputHelper.ControllerToString
		deviceString = "controller"
		backString = "BACK"
	end
	MCM.AddSetting(
		"EID",
		category,
		{
			Type = optionType,
			CurrentSetting = function()
				return EID.Config[optionName]
			end,
			Display = function()
				local key = "None"
				if (hotkeyToString[EID.Config[optionName]]) then key = hotkeyToString[EID.Config[optionName]] end
				return displayText .. ": " .. key
			end,
			OnChange = function(currentNum)
				EID.Config[optionName] = currentNum or -1
				EID.MCM_OptionChanged = true
			end,
			PopupGfx = ModConfigMenu.PopupGfx.WIDE_SMALL,
			PopupWidth = 280,
			Popup = function()
				local currentValue = EID.Config[optionName]
				local keepSettingString = ""
				if currentValue > -1 then
					local currentSettingString = hotkeyToString[currentValue]
					keepSettingString = "This setting is currently set to \"" .. currentSettingString .. "\".$newlinePress this button to keep it unchanged.$newline$newline"
				end
				return "Press a button on your "..deviceString.." to change this setting.$newline$newline" .. keepSettingString .. "Press "..backString.." to go back and clear this setting."
			end,
			Info = infoText
		}
	)
end

if MCMLoaded then
	function AnIndexOf(t, val)
		--check for 0th term, to help with how OptionType.SCROLL works (returns value between 0 and 10)
		if t[0] and t[0] == val then return 0 end
		for k, v in ipairs(t) do
			if v == val then
				return k
			end
		end
		return 1
	end

	---------------------------------------------------------------------------
	-----------------------------------Info------------------------------------
	MCM.AddSpace("EID", "Info")
	MCM.AddText("EID", "Info", function() return "External Item Descriptions" end)
	MCM.AddSpace("EID", "Info")
	MCM.AddText("EID", "Info", function() return "Version "..string.format("%.2f", EID.ModVersion) .."_"..EID.ModVersionCommit.." ("..EID.GameVersion..")" end)
	MCM.AddSpace("EID", "Info")
	MCM.AddText("EID", "Info", function() return "by Wofsauge" end)
	MCM.AddSpace("EID", "Info")
	MCM.AddText("EID", "Info", function() return EID.isHidden and"~~~~~~~~~~~~~~~~~~~~~~~~~~~" or "" end)
	MCM.AddText("EID", "Info", function() return EID.isHidden and"~~~~~ CURRENTLY HIDDEN! ~~~~~" or "" end)
	MCM.AddText("EID", "Info", function()
		EID.MCMCompat_isDisplayingEIDTab = ""
		if EID.Config["HideKey"] ~= -1 or EID.Config["HideButton"] ~= -1 then
			local hotkeyString = InputHelper.KeyboardToString[EID.Config["HideKey"]] or InputHelper.ControllerToString[EID.Config["HideButton"]]
			return EID.isHidden and ("~~~~~~~ " .. hotkeyString .." to show ~~~~~~~~") or ""
		else
			return EID.isHidden and"~~ bind a key/button in the General tab to show ~~" or ""
		end
	end)

	---------------------------------------------------------------------------
	---------------------------------General-----------------------------------
	-- Language
	MCM.AddText("EID", "General", "Language")
	MCM.AddSetting(
		"EID",
		"General",
		{
			Type = ModConfigMenu.OptionType.NUMBER,
			CurrentSetting = function()
				if EID.Config["Language"] == "auto" then
					return #(EID.Languages) + 1
				else
					return AnIndexOf(EID.Languages, EID.Config["Language"])
				end
			end,
			Minimum = 1,
			Maximum = #(EID.Languages) + 1, -- add "auto" language
			Display = function()
				EID.MCMCompat_isDisplayingEIDTab = "General"
				if EID.Config["Language"] == "auto" then
					return "Language: Auto (" .. displayLanguage[AnIndexOf(EID.Languages, EID:getLanguage())] .. ")"
				else
					return "Language: " .. displayLanguage[AnIndexOf(EID.Languages, EID.Config["Language"])]
				end
			end,
			OnChange = function(currentNum)
				EID.MCM_OptionChanged = true
				EID.RefreshBagTextbox = true -- Crafting isn't open so it won't notice MCM_OptionChanged, but definitely needs to refresh
				if currentNum == #(EID.Languages) + 1 then
					EID.Config["Language"] = "auto"
				else
					EID.Config["Language"] = EID.Languages[currentNum]
				end
				local isFixed = EID:fixDefinedFont(true)
				if isFixed then
					EID:loadFont(EID.modPath .. "resources/font/eid_"..EID.Config["FontType"]..".fnt")
				end
				renderDummyDesc(true)
			end,
			Info = {"Changes the language.","Languages marked as WIP are incomplete. Contributions welcome!"}
		}
	)
	-- Item Name Language
	local translateStates = {"English", "Current Language", "Current + English"}
	EID:AddNumberSetting("General", "TranslateItemName", "Name Language", 1, 3, {displayTable = translateStates,
	infoText = {"Displays item, trinket and character names in a different language than descriptions."}})
	
	MCM.AddSpace("EID", "General")
	MCM.AddText("EID", "General", "Keybinds")

	-- Hide Keys
	EID:AddHotkeySetting("General", "HideKey", "Toggle (Keyboard)",
		"Press this key to toggle the description display.", false)
	EID:AddHotkeySetting("General", "HideButton", "Toggle (Controller)",
		"Press this button to toggle the description display (Left Stick or Right Stick recommended; most other buttons will not work).", true)

	MCM.AddSpace("EID", "General")
	MCM.AddText("EID", "General", "Advanced")

	local refreshRateSteps = {1, 2, 3, 4, 6, 10, 12, 15, 20, 30, 60}
	EID:AddScrollSetting("General", "RefreshRate", "Description Refresh Rate", refreshRateSteps,
	{infoText = "How many times per second EID updates descriptions."})


	--------Reset to default
	MCM.AddSpace("EID", "General")

	MCM.AddSetting(
		"EID",
		"General",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function() return true end,
			Display = function() return "! --- RESET CONFIG TO DEFAULT --- !" end,
			OnChange = function(currentBool)
				local resetFont = (EID.Config["FontType"] ~= "default")
				for k,v in pairs(EID.DefaultConfig) do EID.Config[k] = v end
				EID.MCM_OptionChanged = true
				EID.RefreshBagTextbox = true
				if resetFont then EID:loadFont(EID.modPath .. "resources/font/eid_"..EID.Config["FontType"]..".fnt") end
				renderDummyDesc(true)
			end,
			Info = {"Resets all options back to their default values."}
		}
	)

	---------------------------------------------------------------------------
	---------------------------------Display-----------------------------------

	-- Simple toggles of what descriptions the user wants displayed

	EID:AddBooleanSetting("Display", "DisableStartOfRunWarnings", "Start of Run Warnings", {offText = "Enabled", onText = "Disabled",
		repOnly = true, infoText = "Toggles warnings for achievements being disabled, the game being outdated, and modded crafting recipes."})
	
	if EID.isRepentance then MCM.AddSpace("EID", "Display") end
	MCM.AddText("EID", "Display", "Gameplay")

	EID:AddBooleanSetting("Display", "HideInBattle", "Hide in Battle", {displayingTab = "", infoText = "Hides descriptions when enemies are present."})
	EID:AddBooleanSetting("Display", "InitiallyHidden", "Is Initially Hidden", {infoText = "Hides descriptions by default. Press the Toggle key to show them again."})
	
	MCM.AddSpace("EID", "Display")

	-- maxDistance
	local distances = {1, 1.5, 2, 3, 4, 5, 6, 7, 8, 9, 10}
	EID:AddScrollSetting("Display", "MaxDistance", "Max Distance", distances, {label = " Grids",
		infoText = "Distance at which descriptions are displayed."})
	EID:AddBooleanSetting("Display", "DisplayAllNearby", "Multiple descriptions",
		{ infoText = {"Displays the descriptions of all objects in range.", "Descriptions besides the closest one are in Local Display mode."}})
	local descsToDisplaySteps = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 99}
	EID:AddScrollSetting("Display", "MaxDescriptionsToDisplay", "Max Descriptions", descsToDisplaySteps,
	{infoText = "Maximum number of descriptions to display at once."})

	MCM.AddSpace("EID", "Display")
	MCM.AddText("EID", "Display", "Description visibility")
	EID:AddBooleanSetting("Display", "DisplayItemInfo", "Show Item Info")
	EID:AddBooleanSetting("Display", "DisplayTrinketInfo", "Show Trinket Info")
	EID:AddBooleanSetting("Display", "DisplayCardInfo", "Show Card Info")
	EID:AddBooleanSetting("Display", "DisplayPillInfo", "Show Pill Info")

	MCM.AddSpace("EID", "Display")
	MCM.AddText("EID", "Display", "Special rooms")

	EID:AddBooleanSetting("Display", "DisplaySacrificeInfo", "Show Sacrifice Room Info", {infoText = "Displays reward chances for the next sacrifice in sacrifice rooms."})
	EID:AddBooleanSetting("Display", "DisplayDiceInfo", "Show Dice Room Info", {infoText = "Displays the effect of the big dice in dice rooms."})
	EID:AddBooleanSetting("Display", "DisplaySanguineInfo", "Show Sanguine Bond Info", {repOnly = true, infoText = "Displays possible Sanguine Bond rewards while in a Devil Room."})
	EID:AddBooleanSetting("Display", "PredictionSanguineBond", "Predict Sanguine Bond Result", {repOnly = true, infoText = "Highlights the next Sanguine Bond reward in the description."})

	MCM.AddSpace("EID", "Display")
	MCM.AddText("EID", "Display", "Items and Machines")

	EID:AddBooleanSetting("Display", "DisplayCraneInfo", "Show Crane Game Info", {repOnly = true, infoText = "Displays the description of items in Crane Games."})
	EID:AddBooleanSetting("Display", "DisplayVoidStatInfo", "Show Void Stat Increases", {infoText = "Displays the stats that would be gained by consuming a passive item."})
	EID:AddBooleanSetting("Display", "DisplayGlitchedItemInfo", "Show Glitched Item Info", {repOnly = true,
	infoText = "Note: Installing REPENTOGON is required for more detailed glitched item descriptions!"})
	EID:AddBooleanSetting("Display", "DisplayFlipItemDescriptions", "Show Flip Item Descriptions", {repOnly = true, 
	infoText = "Display the effect of ghostly items, when player has the Flip item (T-Lazarus)"})

	MCM.AddSpace("EID", "Display")
	MCM.AddText("EID", "Display", "Hidden items")

	EID:AddBooleanSetting("Display", "DisableOnCurse", 'Show on "Curse of the Blind"', {offText = "True", onText = "False"})
	EID:AddBooleanSetting("Display", "DisableOnAprilFoolsChallenge", "Show on April Fools Challenge", {offText = "True", onText = "False"})
	EID:AddBooleanSetting("Display", "DisableOnAltPath", "Show Hidden Alt-Path Item", {offText = "True", onText = "False",
		repOnly = true, infoText = "Shows the description for the blind item in alt path floors."})

	MCM.AddSpace("EID", "Display")
	MCM.AddText("EID", "Display", "Co-op")

	EID:AddBooleanSetting("Display", "CoopDescriptions", "Co-op Player Descriptions",
	{infoText = "Allows Players 2, 3, and 4 to display descriptions in co-op."})
	EID:AddBooleanSetting("Display", "PairedPlayerDescriptions", "Paired Player Descriptions", {repOnly = true,
	infoText = "Allows paired characters like Esau and Tainted Forgotten's bone pile to display descriptions."})

	local diceSteps = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
	-- Spindown Dice Settings
	if EID.isRepentance then
		MCM.AddSpace("EID", "Display")
		MCM.AddText("EID", "Display", "Spindown Dice")
	end
	
	EID:AddScrollSetting("Display", "SpindownDiceResults", "Preview rerolls", diceSteps, {repOnly = true, label = " Items",
		infoText = "Number of item previews to display when holding Spindown Dice."})

	-- Display IDs for Spindown Dice results
	EID:AddBooleanSetting("Display", "SpindownDiceDisplayID", "Display IDs",
	{repOnly = true, infoText = "Displays IDs of Spindown Dice results."})
	-- Display names for Spindown Dice results
	EID:AddBooleanSetting("Display", "SpindownDiceDisplayName", "Display Names",
	{repOnly = true, infoText = "Displays names of Spindown Dice results."})
	-- Spindown Dice skip locked items
	EID:AddBooleanSetting("Display", "SpindownDiceSkipLocked", "Skip Locked Items",
	{repOnly = true, infoText = {"The preview skips locked items, like the dice does.", "(The unlock status check is not perfect and may be wrong)"}})
	
	MCM.AddSpace("EID", "Display")
	MCM.AddText("EID", "Display", "Dynamic Descriptions")
	
	EID:AddBooleanSetting("Display", "DynamicHealthUps", "Dynamic Health Up Text",
	{infoText = "Changes Health Ups and removes healing effect text when playing as a character that can't have red health"})
	EID:AddBooleanSetting("Display", "DisplayTCainSalvageResults", "Show Tainted Cain Salvage Results",
	{repOnly = true, infoText = "As Tainted Cain, replaces pedestal descriptions with what they will turn into on touch"})
	EID:AddBooleanSetting("Display", "GlitchedCrownSummary", "Show Glitched Crown Summary",
	{repOnly = true, infoText = "With Glitched Crown, show summary list for cycling pedestals"})
	
	
	--------Obstruction---------
	MCM.AddSpace("EID", "Display")
	MCM.AddText("EID", "Display", "Unreachable items")

	EID:AddBooleanSetting("Display", "DisplayObstructedCardInfo", "Show Unreachable Card Info", {infoText = "Hides the description of cards that can't be reached without breaking or flying over obstacles."})
	EID:AddBooleanSetting("Display", "DisplayObstructedPillInfo", "Show Unreachable Pill Info", {infoText = "Hides the description of pills that can't be reached without breaking or flying over obstacles."})
	EID:AddBooleanSetting("Display", "DisplayObstructedSoulstoneInfo", "Show Unreachable Soulstone Info", {repOnly = true, infoText = "Hides the description of soul stones that can't be reached without breaking or flying over obstacles."})
	EID:AddBooleanSetting("Display", "DisableObstructionOnFlight", "Always show with flight", {infoText = "When Isaac has flight, considers all resources reachable and displays their descriptions"})

	MCM.AddSpace("EID", "Display")
	MCM.AddText("EID", "Display", "Pills")
	
	EID:AddBooleanSetting("Display", "OnlyShowPillWhenUsedAtLeastOnce", "Show pill effect after one use", {infoText = "Keeps pills unidentified until Isaac has used them at least once in the run. PHD and False PHD identify pills regardless of this setting."})
	EID:AddBooleanSetting("Display", "ShowUnidentifiedPillDescriptions", "Show Unidentified Pill Effects")

	-------Shop Spoilers-------
	MCM.AddSpace("EID", "Display")
	MCM.AddText("EID", "Display", "Consumables for Sale")

	EID:AddBooleanSetting("Display", "DisplayCardInfoShop", "Purchaseable Card Info")
	EID:AddBooleanSetting("Display", "DisplayPillInfoShop", "Purchaseable Pill Info")
	EID:AddBooleanSetting("Display", "DisplaySoulstoneInfoShop", "Purchaseable Soulstone Info", {repOnly = true})

	----"Options?" Spoilers----
	if EID.isRepentance then
		MCM.AddSpace("EID", "Display")
		MCM.AddText("EID", "Display", "Interaction with 'Options?'")
	end

	EID:AddBooleanSetting("Display", "DisplayCardInfoOptions?", "'Options?' Card Info", {repOnly = true})
	EID:AddBooleanSetting("Display", "DisplayPillInfoOptions?", "'Options?' Pill Info", {repOnly = true})

	---------------------------------------------------------------------------
	---------------------------------Visuals-----------------------------------

	-- Transparency
	local transparencies = {0.1, 0.175, 0.25, 0.3, 0.4, 0.5, 0.6, 0.75, 0.8, 0.9, 1}
	EID:AddScrollSetting("Visuals", "Transparency", "Opacity", transparencies)

	MCM.AddSpace("EID", "Visuals")

	-- Font Type
	MCM.AddSetting(
		"EID",
		"Visuals",
		{
			Type = ModConfigMenu.OptionType.NUMBER,
			CurrentSetting = function()
				return AnIndexOf(fontNames, EID.Config["FontType"])
			end,
			Minimum = 1,
			Maximum = #fontNames,
			Display = function()
				EID.MCMCompat_isDisplayingEIDTab = "Visuals";
				return "Font Type: " .. EID.Config["FontType"]
			end,
			OnChange = function(currentNum)
				if EID:canUseFontType(fontNames[currentNum]) then
					EID.MCM_OptionChanged = true
					EID.Config["FontType"] = fontNames[currentNum]
					EID.Config["LineHeight"] = fonts[currentNum].lineHeight or EID.Config["LineHeight"]
					EID.Config["TextboxWidth"] = fonts[currentNum].textboxWidth or EID.Config["TextboxWidth"]
					local fontFile = EID.Config["FontType"] or "default"
					EID:loadFont(EID.modPath .. "resources/font/eid_"..fontFile..".fnt")
				end
			end
		}
	)

	-- Display Mode
	local displayModes = {"default", "local"}
	EID:AddNumberSetting("Visuals", "DisplayMode", "Display Mode", 1, #displayModes, {indexOf = displayModes,
		infoText = {"Changes the display mode of descriptions.", "Default: Text is displayed in the top left.", "Local: Text is displayed under the described object."}})
	-- Local Mode Centered or not
	EID:AddBooleanSetting("Visuals", "LocalModeCentered", "Local Mode Centered")
	--indicator
	local indicators = {"arrow", "blink", "border", "highlight", "none"}
	EID:AddNumberSetting("Visuals", "Indicator", "Indicator", 1, 5, {indexOf = indicators,
		infoText = {"Changes how the item being described is marked."}})

	MCM.AddSpace("EID", "Visuals")
	MCM.AddText("EID", "Visuals", "Position")

	-- Position / Textbox Size
	EID:AddNumberSetting("Visuals", "XPosition", "Position X", 0, 500, {modifyBy = 5, infoText = "Default = 60"})
	EID:AddNumberSetting("Visuals", "YPosition", "Position Y", 0, 500, {modifyBy = 5, infoText = "Default = 45"})
	EID:AddNumberSetting("Visuals", "LineHeight", "Line Height", 1, 30, {infoText = "Default = 11 (varies per language)"})
	EID:AddNumberSetting("Visuals", "TextboxWidth", "Textbox Width", 1, 500, {modifyBy = 5, infoText = "Default = 130 (varies per language)"})

	MCM.AddSpace("EID", "Visuals")
	MCM.AddText("EID", "Visuals", "Size")

	-- Scale/Size
	EID:AddNumberSetting("Visuals", "Size", "Text Size", 0.5, 2, {modifyBy = 0.25, onChangeFunc =
		function(currentNum)
			EID.MCM_OptionChanged = true
			currentNum = currentNum - (currentNum % 0.25)
			EID.Config["Size"] = currentNum
		end})
	EID:AddNumberSetting("Visuals", "LocalModeSize", "Text Size (Local Mode)", 0.5, 2, {modifyBy = 0.25, onChangeFunc =
		function(currentNum)
			EID.MCM_OptionChanged = true
			currentNum = currentNum - (currentNum % 0.25)
			EID.Config["LocalModeSize"] = currentNum
		end})
	-- SCALE Hotkey
	EID:AddHotkeySetting("Visuals",
	"SizeHotkey", "Toggle Size (Keyboard)",
	{"Press this key to change the text size.", "Hold this key to smoothly change the text size."}, false)

	MCM.AddSpace("EID", "Visuals")
	MCM.AddText("EID", "Visuals", "Icons")

	-------Markup icon Sizes---------
	local markupSizes = {"default", "big", "small"}
	EID:AddNumberSetting("Visuals", "MarkupSize", "Markup Icon Size", 1, #markupSizes, {indexOf = markupSizes})
	EID:AddBooleanSetting("Visuals", "StatChangeIcons", "Stat Change Icons")
	EID:AddBooleanSetting("Visuals", "StatAndPickupBulletpoints", "Stat/Pickup Bulletpoint Icons")


	MCM.AddSpace("EID", "Visuals")
	MCM.AddText("EID", "Visuals", "Description elements")

	-- Simple toggles of what is shown in the title and transformation lines of a description
	EID:AddBooleanSetting("Visuals", "ShowItemName", "Display Name")
	EID:AddBooleanSetting("Visuals", "ShowItemType", "Display Type")
	EID:AddBooleanSetting("Visuals", "ShowItemIcon", "Display Icon")
	EID:AddBooleanSetting("Visuals", "ShowItemDescription", "Display Description")
	EID:AddBooleanSetting("Visuals", "ShowQuality", "Display Quality", {repOnly = true})
	EID:AddBooleanSetting("Visuals", "TransformationText", "Display Transformation Name")
	EID:AddBooleanSetting("Visuals", "TransformationIcons", "Display Transformation Icon")
	EID:AddBooleanSetting("Visuals", "TransformationProgress", "Display Transformation Progress")
	EID:AddBooleanSetting("Visuals", "ShowItemPoolIcon", "Display Item Pool Icon", {repOnly = true, infoText = "Displays the icon of the expected item pool for full rerolls."})
	EID:AddBooleanSetting("Visuals", "ShowItemPoolText", "Display Item Pool Name", {repOnly = true, infoText = "Displays the name of the expected item pool for full rerolls."})
	EID:AddBooleanSetting("Visuals", "ShowObjectID", "Display ID")

	-------Mod indicator for modded items---------
	local modIndicatorDisplays = {"Both","Name only","Icon only", "None"}
	EID:AddNumberSetting("Visuals", "ModIndicatorDisplay", "Display Mod Indicator", 1, #modIndicatorDisplays, {indexOf = modIndicatorDisplays})



	---------------------------------------------------------------------------
	------------------------------Item Reminder--------------------------------

	EID:AddBooleanSetting("Reminder", "ItemReminderEnabled", "Item Reminder", {displayingTab = "",offText = "Disabled", onText = "Enabled", infoText = "Allows you to see your active item's effect, recently picked up items, and much more from anywhere"})

	MCM.AddSpace("EID", "Reminder")
	MCM.AddText("EID", "Reminder", "Controls")
	local actionToName = { [0] = "Move Left", "Move Right", "Move Up", "Move Down", "Shoot Left", "Shoot Right", "Shoot Up", "Shoot Down", "Bomb", "Item", "Pill/Card", "Drop", "Pause", "Map" }

	EID:AddNumberSetting("Reminder", "BagOfCraftingToggleKey", "Hold to Show", 8, 13, {displayTable = actionToName,
	infoText = {"Hold this key to display the Item Reminder."}})

	EID:AddNumberSetting("Reminder", "ItemReminderNavigateLeftButton", "Navigate Left", 0, 13, {displayTable = actionToName,
	infoText = {"Press this key to scroll left through the categories."}})

	EID:AddNumberSetting("Reminder", "ItemReminderNavigateRightButton", "Navigate Right", 0, 13, {displayTable = actionToName,
	infoText = {"Press this key to scroll right through the categories."}})

	EID:AddNumberSetting("Reminder", "ItemReminderNavigateDownButton", "Navigate Down", 0, 13, {displayTable = actionToName,
	infoText = {"Press this key to scroll down the list of players/characters when applicable."}})

	EID:AddNumberSetting("Reminder", "ItemReminderNavigateUpButton", "Navigate Up", 0, 13, {displayTable = actionToName,
	infoText = {"Press this key to scroll up the list of players/characters when applicable."}})

	local itemReminderModes = {"All", "NoOverview", "Classic"}

	MCM.AddSpace("EID", "Reminder")
	MCM.AddText("EID", "Reminder", "Options")
	EID:AddNumberSetting("Reminder", "ItemReminderDisplayMode", "Display Mode",  1, #itemReminderModes, {indexOf = itemReminderModes, infoText = "Changes the display mode. All = Overview + categories. NoOverview = Categories only. Classic = Overview only.", onChangeFunc =
	function(currentNum)
		EID.MCM_OptionChanged = true
		EID:ResetItemReminderSelectedItems()
		EID.ItemReminderSelectedCategory = currentNum ~= 2 and 0 or 1 -- reset category
		EID.Config["ItemReminderDisplayMode"] = itemReminderModes[currentNum]
	end})
	EID:AddBooleanSetting("Reminder", "ItemReminderDisableInputs", "Disable Player Inputs", { infoText = "Prevents game inputs from being registered when the Item Reminder is visible."})
	EID:AddBooleanSetting("Reminder", "ItemReminderShowHiddenInfo", "Show Hidden Information", { infoText = "Reveals the current effect of 'random' items like Error (404) or Rainbow Worm in the Item Reminder."})
	EID:AddBooleanSetting("Reminder", "ItemReminderShowRNGCheats", "Show RNG Predictions", { infoText = "Displays the next random result of certain items in the Item Reminder."})



	MCM.AddSpace("EID", "Reminder")
	MCM.AddText("EID", "Reminder", "Item Descriptions")

	EID:AddNumberSetting("Reminder", "ItemReminderMaxEntriesCount", "Max Entries", 0, 10, {infoText = {"Number of descriptions that can be displayed at once in the Item Reminder."}})
	EID:AddNumberSetting("Reminder", "ItemReminderOverviewHideAfterRows", "Overview crop after X rows", 1, 20, {infoText = {"Reduces the length of descriptions that are too long in the overview category."}})
	

	---------------------------------------------------------------------------
	-----------------------------BAG OF CRAFTING-------------------------------

	if EID.isRepentance then
		-- Bag of Crafting Display
		local bagDisplays = {"always","hold","never"}
		EID:AddNumberSetting("Crafting", "DisplayBagOfCrafting", "Show Display", 1, #bagDisplays, { displayingTab = "Crafting", indexOf = bagDisplays, infoText = {"Always = Always show results", "Hold = Show results when holding up bag", "Never = Disable the Bag of Crafting Helper."}})

		-- Bag of Crafting Display Mode
		local bagDisplayModes = {"Recipe List", "Learned Recipe List","Item Probability","Preview Only","Pickups Only"}
		EID:AddNumberSetting("Crafting", "BagOfCraftingDisplayRecipesMode", "Display Mode", 1, #bagDisplayModes, { indexOf = bagDisplayModes,
			infoText = {"Toggles showing all recipes, recipes you've learned, what item pool/quality you might get, item previews when the bag is full, or floor pickups only."}})

		-- Bag of Crafting Hide in Battle
		EID:AddBooleanSetting("Crafting", "BagOfCraftingHideInBattle", "Hide in Battle", {onText = "Yes", offText = "No",
			infoText = "Hides the Bag of Crafting Helper when enemies are present."})

		MCM.AddSpace("EID", "Crafting")
		MCM.AddText("EID", "Crafting", function() return "Recipe List Options" end)
		
		-- Bag of Crafting item names
		local bagSortTypes = {"Quality", "Name"}
		EID:AddNumberSetting("Crafting", "BagOfCraftingSortOrder", "Sort Recipes by", 1, #bagSortTypes,
			{ indexOf = bagSortTypes, infoText = "Toggles whether recipes are sorted by quality + name, or just name.", onChangeFunc =
		function(currentNum)
			EID.MCM_OptionChanged = true
			EID.BoC.SortNeeded = true
			EID.Config["BagOfCraftingSortOrder"] = bagSortTypes[currentNum]
		end})
		
		-- Bag of Crafting item names
		EID:AddBooleanSetting("Crafting", "BagOfCraftingDisplayNames", "Show Item Names",
			{ infoText = "Toggles whether item names are shown above recipes."})

		-- Bag of Crafting results per page
		local bagSteps = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
		EID:AddScrollSetting("Crafting", "BagOfCraftingResults", "Recipes to Display", bagSteps,
			{ infoText = "Numbers of craftable items from the list to show at once."})

		-- Bag of Crafting 8 icons toggle
		EID:AddBooleanSetting("Crafting", "BagOfCraftingDisplayIcons", "Show Recipes/Best Bag as", {onText = "8 Icons", offText = "Groups",
		infoText = "Toggles whether recipes are shown as grouped ingredients or always 8 icons."})

		MCM.AddSpace("EID", "Crafting")
		MCM.AddText("EID", "Crafting", "Controls")

		-- Bag of Crafting Show Controls
		EID:AddBooleanSetting("Crafting", "BagOfCraftingShowControls", "Show Controls", {onText = "Yes", offText = "No",
		infoText = "Shows all the Bag of Crafting Helper hotkeys."})
		EID:AddHotkeySetting("Crafting",
			"CraftingHideKey", "Toggle (Keyboard)",
			"Press this key to toggle the crafting display, allowing you to check descriptions of items/pickups on the floor.", false)
		EID:AddHotkeySetting("Crafting",
			"CraftingHideButton", "Toggle (Controller)",
			"Press this button to toggle the crafting display (Left Stick or Right Stick recommended; most other buttons will not work).", true)
		EID:AddHotkeySetting("Crafting",
			"CraftingResultKey", "Result Toggle (Keyboard)",
			"Press this key to toggle the description of the item ready to be crafted in Recipe List/No Recipe Mode.", false)
		EID:AddHotkeySetting("Crafting",
			"CraftingResultButton", "Result Toggle (Controller)",
			"Press this button to toggle the description of the item ready to be crafted. (Left Stick or Right Stick recommended; most other buttons will not work)", true)
		EID:AddHotkeySetting("Crafting",
			"CraftingSearchKey", "Search (Keyboard only)",
			"Press this key to start searching the recipe list.", false)

		MCM.AddSpace("EID", "Crafting")
		MCM.AddText("EID", "Crafting", "Advanced")

		-- Bag of Crafting thorough recipe checks
		local combSteps = {8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18}
		EID:AddScrollSetting("Crafting", "BagOfCraftingCombinationMax", "Thorough Calculations", combSteps,
			{ infoText = {"Gets every recipe for the X best components; higher values mean slower calculations.", "(12 = 500 combinations, 14 = 3,000, 16 = 13,000)"}})
		-- Bag of Crafting random recipe checks
		local calcSteps = {200, 300, 400, 500, 600, 700, 800, 900, 1000, 1100, 1200}
		EID:AddScrollSetting("Crafting", "BagOfCraftingRandomResults", "Random Calculations", calcSteps,
			{ infoText = "Checks an additional X randomly chosen recipes on each pickup spawn/despawn/refresh."})

		MCM.AddSpace("EID", "Crafting")

		--------Clear bag---------
		MCM.AddSetting(
			"EID",
			"Crafting",
			{
				Type = ModConfigMenu.OptionType.BOOLEAN,
				CurrentSetting = function() return true end,
				Display = function() return "! --- Clear Bag Contents --- !" end,
				OnChange = function()
					EID.BoC.BagItems = {}
				end,
				Info = {"Press this to clear all items currently detected in the bag."}
			}
		)
		--------Clear Floor---------
		MCM.AddSetting(
			"EID",
			"Crafting",
			{
				Type = ModConfigMenu.OptionType.BOOLEAN,
				CurrentSetting = function() return true end,
				Display = function() return "! --- Clear Floor item list --- !" end,
				OnChange = function()
					EID.BoC.RoomQueries = {}
					EID.BoC.FloorQuery = {}
					EID.BoC.CurrentPickupCount = -1
				end,
				Info = {"Press this to clear all items currently detected on the floor."}
			}
		)
	end

	---------------------------------------------------------------------------
	-------------------------------REPENTOGON----------------------------------
	if  EID.isRepentance then
		if not REPENTOGON then
			-- show disclaimer, but also show available features
			MCM.AddText("EID", "Repentogon",  function() EID.MCMCompat_isDisplayingEIDTab = ""; return "You need to install REPENTOGON" end)
			MCM.AddText("EID", "Repentogon", "to use the following features:")
			MCM.AddSpace("EID", "Repentogon")
		end
		
		MCM.AddText("EID", "Repentogon", "Uncollected Items")
		EID:AddBooleanSetting("Repentogon", "HideUncollectedItemDescriptions", "Hide uncollected items", {displayingTab = "", infoText = "Hide descriptions of items that are not yet on the collection page."})
		EID:AddBooleanSetting("Repentogon", "ItemCollectionIndicator", "Highlight uncollected items", { infoText = "Highlights items that are not yet on the collection page."})
		-- Needs collection Color
		MCM.AddSetting(
			"EID",
			"Repentogon",
			{
				Type = ModConfigMenu.OptionType.NUMBER,
				CurrentSetting = function()
					return AnIndexOf(colorNameArray, EID.Config["ItemCollectionColor"])
				end,
				Minimum = 0,
				Maximum = 1000,
				Display = function()
					if EID.Config["ItemCollectionColor"] == nil then EID.Config["ItemCollectionColor"] = EID.DefaultConfig["ItemCollectionColor"] end
					return "Highlight color: " .. string.gsub(EID.Config["ItemCollectionColor"], "Color", "").. " ("..AnIndexOf(colorNameArray, EID.Config["ItemCollectionColor"]).."/"..#colorNameArray..")"
				end,
				OnChange = function(currentNum)
					EID.MCM_OptionChanged = true
					if currentNum == 0 then currentNum = #colorNameArray end
					if currentNum > #colorNameArray then currentNum = 1 end
					EID.Config["ItemCollectionColor"] = colorNameArray[currentNum]
				end,
				Info = {"Highlight color for the names of items that need to be picked up for the collection page."}
			}
		)
		MCM.AddSpace("EID", "Repentogon")
		EID:AddBooleanSetting("Repentogon", "RGON_ShowOnCollectionPage", "Show descriptions on collection page", { infoText = "Displays item effects when navigating the collection page in the main menu."})
		
		-- Achievement tracking section
		MCM.AddSpace("EID", "Repentogon")
		MCM.AddText("EID", "Repentogon", "Achievement tracking")
		EID:AddBooleanSetting("Repentogon", "RGON_DonationMachineDescriptions", "Donation machine progress", { infoText = "Displays the number of coins until the next donation machine achievement."})
	end
	---------------------------------------------------------------------------
	----------------------------Savegame Config--------------------------------
	if not REPENTOGON then 
		if EID.SaveGame then
			MCM.AddText("EID", "Save Game", function() EID.MCMCompat_isDisplayingEIDTab = ""; return "Loaded savegame data:" end)
			MCM.AddText("EID", "Save Game", function() return EID.SaveGame.Platform .." User: "..EID.SaveGame.UserName.." ("..EID.SaveGame.UserID..")" end)
			MCM.AddSpace("EID", "Save Game")

			-- Show Item needs Collection
			MCM.AddSetting(
				"EID",
				"Save Game",
				{
					Type = ModConfigMenu.OptionType.NUMBER,
					CurrentSetting = function()
						return EID.Config["SaveGameNumber"]
					end,
					Minimum = 0,
					Maximum = 3,
					Display = function()
						if EID.Config["SaveGameNumber"] == 0 then
							return "Current Save Game: 0 (Deactivated)"
						end
						return "Current Save Game: " .. EID.Config["SaveGameNumber"]
					end,
					OnChange = function(currentNum)
						EID.MCM_OptionChanged = true
						EID.Config["SaveGameNumber"] = currentNum
					end,
					Info = {"Save game you are currently on. This info needs to be set to get the correct lookup tables."}
				}
			)
			MCM.AddText("EID", "Save Game", function()
				if EID.Config["SaveGameNumber"] == 0 then return "" end
				local count = 0
				for k, v in pairs(EID.SaveGame[EID.Config["SaveGameNumber"]].ItemNeedsPickup) do
					count = count + 1
				end
				return "Collection page items missing: "..count end)
			MCM.AddSpace("EID", "Save Game")

			EID:AddBooleanSetting("Save Game", "HideUncollectedItemDescriptions", "Hide uncollected items", { infoText = "Hide descriptions of items that are not yet on the collection page."})
			EID:AddBooleanSetting("Save Game", "ItemCollectionIndicator", "Highlight uncollected items")
			-- Needs collection Color
			MCM.AddSetting(
				"EID",
				"Save Game",
				{
					Type = ModConfigMenu.OptionType.NUMBER,
					CurrentSetting = function()
						return AnIndexOf(colorNameArray, EID.Config["ItemCollectionColor"])
					end,
					Minimum = 0,
					Maximum = 1000,
					Display = function()
						if EID.Config["ItemCollectionColor"] == nil then EID.Config["ItemCollectionColor"] = EID.DefaultConfig["ItemCollectionColor"] end
						return "Collection Page Highlight color: " .. string.gsub(EID.Config["ItemCollectionColor"], "Color", "").. " ("..AnIndexOf(colorNameArray, EID.Config["ItemCollectionColor"]).."/"..#colorNameArray..")"
					end,
					OnChange = function(currentNum)
						EID.MCM_OptionChanged = true
						if currentNum == 0 then currentNum = #colorNameArray end
						if currentNum > #colorNameArray then currentNum = 1 end
						EID.Config["ItemCollectionColor"] = colorNameArray[currentNum]
					end,
					Info = {"Highlight color for the names of items that need to be picked up for the collection page."}
				}
			)
		else
			MCM.AddSpace("EID", "Save Game")
			MCM.AddSpace("EID", "Save Game")
			MCM.AddText("EID", "Save Game", function() EID.MCMCompat_isDisplayingEIDTab = ""; return "To enable savegame related features," end)
			MCM.AddText("EID", "Save Game", "please run \"scripts\\savegame_reader.exe\"")
			MCM.AddText("EID", "Save Game", "found in the EID mod folder.")
		end
	end  -- if not repentogon


	---------------------------------------------------------------------------
	-----------------------------Mouse Controls--------------------------------
	MCM.AddText("EID", "Mouse",  function() EID.MCMCompat_isDisplayingEIDTab = "Mouse"; return "! THIS FEATURE IS IN EARLY DEVELOPMENT !" end )
	MCM.AddSpace("EID", "Mouse")
	MCM.AddText("EID", "Mouse", "MCM -> General -> Hud Offset")
	MCM.AddText("EID", "Mouse", "to adjust Hud Offset")
	MCM.AddSpace("EID", "Mouse")
	-- Enable mouse controls
	MCM.AddSetting(
		"EID",
		"Mouse",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["EnableMouseControls"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["EnableMouseControls"] then
					onOff = "True"
				end
				return "Enable Mouse controls: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["EnableMouseControls"] = currentBool
			end,
			Info = {"Enabling this option allows hovering over certain HUD elements to get descriptions."}
		}
	)
	-- Enable mouse controls
	MCM.AddSetting(
		"EID",
		"Mouse",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["ShowCursor"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["ShowCursor"] then
					onOff = "True"
				end
				return "Show Cursor: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["ShowCursor"] = currentBool
			end,
		}
	)

	---------------------------------------------------------------------------
	---------------------------------Colors-----------------------------------

	-- Text Color
	MCM.AddSetting(
		"EID",
		"Colors",
		{
			Type = ModConfigMenu.OptionType.NUMBER,
			CurrentSetting = function()
				return AnIndexOf(colorNameArray, EID.Config["TextColor"])
			end,
			Minimum = 0,
			Maximum = 1000,
			Display = function()
				EID.MCMCompat_isDisplayingEIDTab = "Colors";
				if EID.Config["TextColor"] == nil then EID.Config["TextColor"] = EID.DefaultConfig["TextColor"] end
				return "Descriptions: " .. string.gsub(EID.Config["TextColor"], "Color", "").. " ("..AnIndexOf(colorNameArray, EID.Config["TextColor"]).."/"..#colorNameArray..")"
			end,
			OnChange = function(currentNum)
				EID.MCM_OptionChanged = true
				if currentNum == 0 then currentNum = #colorNameArray end
				if currentNum > #colorNameArray then currentNum = 1 end
				EID.Config["TextColor"] = colorNameArray[currentNum]
			end,
			Info = {"Changes the color of regular text."}
		}
	)
	-- Name Color
	MCM.AddSetting(
		"EID",
		"Colors",
		{
			Type = ModConfigMenu.OptionType.NUMBER,
			CurrentSetting = function()
				return AnIndexOf(colorNameArray, EID.Config["ItemNameColor"])
			end,
			Minimum = 0,
			Maximum = 1000,
			Display = function()
				if EID.Config["ItemNameColor"] == nil then EID.Config["ItemNameColor"] = EID.DefaultConfig["ItemNameColor"] end
				return "Names: " .. string.gsub(EID.Config["ItemNameColor"], "Color", "").. " ("..AnIndexOf(colorNameArray, EID.Config["ItemNameColor"]).."/"..#colorNameArray..")"
			end,
			OnChange = function(currentNum)
				EID.MCM_OptionChanged = true
				if currentNum == 0 then currentNum = #colorNameArray end
				if currentNum > #colorNameArray then currentNum = 1 end
				EID.Config["ItemNameColor"] = colorNameArray[currentNum]
			end,
			Info = {"Changes the color of names."}
		}
	)
	-- Transform Color
	MCM.AddSetting(
		"EID",
		"Colors",
		{
			Type = ModConfigMenu.OptionType.NUMBER,
			CurrentSetting = function()
				return AnIndexOf(colorNameArray, EID.Config["TransformationColor"])
			end,
			Minimum = 0,
			Maximum = 1000,
			Display = function()
				if EID.Config["TransformationColor"] == nil then EID.Config["TransformationColor"] = EID.DefaultConfig["TransformationColor"] end
				return "Transformations: " .. string.gsub(EID.Config["TransformationColor"], "Color", "").. " ("..AnIndexOf(colorNameArray, EID.Config["TransformationColor"]).."/"..#colorNameArray..")"
			end,
			OnChange = function(currentNum)
				EID.MCM_OptionChanged = true
				if currentNum == 0 then currentNum = #colorNameArray end
				if currentNum > #colorNameArray then currentNum = 1 end
				EID.Config["TransformationColor"] = colorNameArray[currentNum]
			end,
			Info = {"Changes the color of transformations."}
		}
	)
	-- Error Color
	MCM.AddSetting(
		"EID",
		"Colors",
		{
			Type = ModConfigMenu.OptionType.NUMBER,
			CurrentSetting = function()
				return AnIndexOf(colorNameArray, EID.Config["ErrorColor"])
			end,
			Minimum = 0,
			Maximum = 1000,
			Display = function()
				if EID.Config["ErrorColor"] == nil then EID.Config["ErrorColor"] = EID.DefaultConfig["ErrorColor"] end
				return "Errors: " .. string.gsub(EID.Config["ErrorColor"], "Color", "").. " ("..AnIndexOf(colorNameArray, EID.Config["ErrorColor"]).."/"..#colorNameArray..")"
			end,
			OnChange = function(currentNum)
				EID.MCM_OptionChanged = true
				if currentNum == 0 then currentNum = #colorNameArray end
				if currentNum > #colorNameArray then currentNum = 1 end
				EID.Config["ErrorColor"] = colorNameArray[currentNum]
			end,
			Info = {"Changes the color of error messages like 'Unidentified pill'."}
		}
	)
	-- Mod indicator Color
	MCM.AddSetting(
		"EID",
		"Colors",
		{
			Type = ModConfigMenu.OptionType.NUMBER,
			CurrentSetting = function()
				return AnIndexOf(colorNameArray, EID.Config["ModIndicatorTextColor"])
			end,
			Minimum = 0,
			Maximum = 1000,
			Display = function()
				if EID.Config["ModIndicatorTextColor"] == nil then EID.Config["ModIndicatorTextColor"] = EID.DefaultConfig["ModIndicatorTextColor"] end
				return "Mod Indicator: " .. string.gsub(EID.Config["ModIndicatorTextColor"], "Color", "").. " ("..AnIndexOf(colorNameArray, EID.Config["ModIndicatorTextColor"]).."/"..#colorNameArray..")"
			end,
			OnChange = function(currentNum)
				EID.MCM_OptionChanged = true
				if currentNum == 0 then currentNum = #colorNameArray end
				if currentNum > #colorNameArray then currentNum = 1 end
				EID.Config["ModIndicatorTextColor"] = colorNameArray[currentNum]
			end,
			Info = {"Changes the color of mod indicator text (if enabled)."}
		}
	)
	-- Last Pool indicator Color (REPENTANCE ONLY)
	if EID.isRepentance then
		MCM.AddSetting(
			"EID",
			"Colors",
			{
				Type = ModConfigMenu.OptionType.NUMBER,
				CurrentSetting = function()
					return AnIndexOf(colorNameArray, EID.Config["ItemPoolTextColor"])
				end,
				Minimum = 0,
				Maximum = 1000,
				Display = function()
					if EID.Config["ItemPoolTextColor"] == nil then EID.Config["ItemPoolTextColor"] = EID.DefaultConfig["ItemPoolTextColor"] end
					return "Item Pool Name Color: " .. string.gsub(EID.Config["ItemPoolTextColor"], "Color", "").. " ("..AnIndexOf(colorNameArray, EID.Config["ItemPoolTextColor"]).."/"..#colorNameArray..")"
				end,
				OnChange = function(currentNum)
					EID.MCM_OptionChanged = true
					if currentNum == 0 then currentNum = #colorNameArray end
					if currentNum > #colorNameArray then currentNum = 1 end
					EID.Config["ItemPoolTextColor"] = colorNameArray[currentNum]
				end,
				Info = {"Changes the color of the last item pool indicator text (if enabled)."}
			}
		)
	end

	MCM.AddSpace("EID", "Colors")
	-- Color blind
	local colorBlindModes = {[0] = "Off", "Protanopia (red weak)", "Deuteranopia (green weak)", "Tritanopia (blue weak)"}
	EID:AddNumberSetting("Colors", "ColorblindMode", "Colorblind Mode", 0, #colorBlindModes, {displayTable = colorBlindModes, infoText = "Changes some colors to make the mod more colorblind-friendly."})

	if MCM.i18n == "Chinese" then
		require("features.eid_mcm_cn")
	end
end
