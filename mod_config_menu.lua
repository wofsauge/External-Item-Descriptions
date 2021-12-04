
-- MOD CONFIG MENU Compatibility
local MCMLoaded, MCM = pcall(require, "scripts.modconfig")
EID.MCMCompat_isDisplayingEIDTab = ""
local MCMCompat_isDisplayingDummyMCMObj = false
local MCMCompat_oldPermanentObj = false
EID.MCMLoaded = MCMLoaded
local colorNameArray = {}

local function renderDummyDesc()
	MCMCompat_oldPermanentObj = EID.permanentDisplayTextObj
	local demoDescObj = EID:getDescriptionObj(5, 100, 33)
	demoDescObj.Name = "Demo Object Name"
	demoDescObj.Transformation = "Demo Transformation"
	demoDescObj.Description = "A very cool description as a demonstration of the power of EID!#\1 This is also a cool line#This line loves you {{Heart}}"
	EID:displayPermanentText(demoDescObj)
end

local function clearRenderDummyDesc()
	if MCMCompat_oldPermanentObj == nil then
		EID:hidePermanentText()
	else
		EID.permanentDisplayTextObj = MCMCompat_oldPermanentObj
	end
	MCMCompat_oldPermanentObj = nil
	MCMCompat_isDisplayingDummyMCMObj = false
end

function EID:renderMCMDummyDescription()
	if MCMLoaded then
		local hudOffset = ModConfigMenu.Config["General"].HudOffset
		if hudOffset == nil and ScreenHelper then
			hudOffset = ScreenHelper.GetOffset()
		end
		if REPENTANCE then
			hudOffset = (Options.HUDOffset * 10)
		end
		EID.Config["HUDOffset"] = hudOffset
		EID:addTextPosModifier("HudOffset", Vector((hudOffset * 2) - 20, hudOffset - 10))
		if MCM.IsVisible and EID.MCMCompat_isDisplayingEIDTab ~= "" then
			if EID.MCMCompat_isDisplayingEIDTab == "Mouse" and EID.Config["EnableMouseControls"] then
				clearRenderDummyDesc()
				EID:renderHUDLocationIndicators()
			elseif EID.MCMCompat_isDisplayingEIDTab == "Visuals" and EID.permanentDisplayTextObj == nil then
				renderDummyDesc()
			end
			MCMCompat_isDisplayingDummyMCMObj = true
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

function EID:AddBooleanSetting(category, optionName, displayText, onText, offText, infoText)
	if (type(infoText) == "string") then infoText = {infoText} end
	MCM.AddSetting(
		"EID",
		category,
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config[optionName]
			end,
			Display = function()
				local onOff = offText
				if EID.Config[optionName] then
					onOff = onText
				end
				return displayText .. ": " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config[optionName] = currentBool
			end,
			Info = infoText
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
	MCM.AddText("EID", "Info", function() return "Version "..EID.ModVersion .." ("..EID.GameVersion..")" end)
	MCM.AddSpace("EID", "Info")
	MCM.AddText("EID", "Info", function() return "by Wofsauge" end)
	MCM.AddSpace("EID", "Info")
	MCM.AddText("EID", "Info", function() return EID.isHidden and"~~~~~~~~~~~~~~~~~~~~~~~~~~~" or "" end)
	MCM.AddText("EID", "Info", function() return EID.isHidden and"~~~~~ CURRENTLY HIDDEN! ~~~~~" or "" end)
	MCM.AddText("EID", "Info", function() return EID.isHidden and"~~~~~~~~ F2 to show ~~~~~~~~~" or "" end)

	---------------------------------------------------------------------------
	---------------------------------General-----------------------------------
	-- Language
	local displayLanguage = {"English", "English (detailed)", "French", "Portuguese (AB+)", "Portugues (Brasil)", "Russian", "Spanish", "Italian", "Bulgarian (WIP) (AB+)", "Polish", "German (WIP) (AB+)", "Turkish"}
	MCM.AddSetting(
		"EID",
		"General",
		{
			Type = ModConfigMenu.OptionType.NUMBER,
			CurrentSetting = function()
				return AnIndexOf(EID.Languages, EID.Config["Language"])
			end,
			Minimum = 1,
			Maximum = #(EID.Languages),
			Display = function()
				EID.MCMCompat_isDisplayingEIDTab = "";
				return "Language: " .. displayLanguage[AnIndexOf(EID.Languages, EID.Config["Language"])]
			end,
			OnChange = function(currentNum)
				EID.Config["Language"] = EID.Languages[currentNum]
			end,
			Info = {"Changes the language.","Languages marked with (WIP) are incomplete"}
		}
	)
	-- Item Name Language
	local translateStates = {"English", "Current Language", "Current + English"}
	MCM.AddSetting(
		"EID",
		"General",
		{
			Type = ModConfigMenu.OptionType.NUMBER,
			CurrentSetting = function()
				return EID.Config["TranslateItemName"]
			end,
			Minimum = 1,
			Maximum = 3,
			Display = function()
				return "Name Language: " .. translateStates[EID.Config["TranslateItemName"]]
			end,
			OnChange = function(currentNum)
				EID.Config["TranslateItemName"] = currentNum
			end,
			Info = {"If translated names are available,","this changes how item names are displayed."}
		}
	)
	
	-- Hide Key
	EID:AddHotkeySetting("General",
		"HideKey", "Toggle (Keyboard)",
		"Press this key to toggle the description display", false)
	EID:AddHotkeySetting("General",
		"HideButton", "Toggle (Controller)",
		"Press this button to toggle the description display (Left Stick or Right Stick recommended; most other buttons will not work)", true)
	
	MCM.AddSpace("EID", "General")
	
	-- Position X
	MCM.AddSetting(
		"EID",
		"General",
		{
			Type = ModConfigMenu.OptionType.NUMBER,
			CurrentSetting = function()
				return EID.Config["XPosition"]
			end,
			Minimum = 0,
			Maximum = 500,
			ModifyBy = 5,
			Display = function()
				return "Position X: " .. EID.Config["XPosition"]
			end,
			OnChange = function(currentNum)
				EID.Config["XPosition"] = currentNum
				EID.UsedPosition = Vector(EID.Config["XPosition"], EID.Config["YPosition"])
			end,
			Info = {"Default = 60"}
		}
	)
	-- Position Y
	MCM.AddSetting(
		"EID",
		"General",
		{
			Type = ModConfigMenu.OptionType.NUMBER,
			CurrentSetting = function()
				return EID.Config["YPosition"]
			end,
			Minimum = 0,
			Maximum = 500,
			ModifyBy = 5,
			Display = function()
				return "Position Y: " .. EID.Config["YPosition"]
			end,
			OnChange = function(currentNum)
				EID.Config["YPosition"] = currentNum
				EID.UsedPosition = Vector(EID.Config["XPosition"], EID.Config["YPosition"])
			end,
			Info = {"Default = 45"}
		}
	)
	
	MCM.AddSpace("EID", "General")
	
	-- Initial hiding
	MCM.AddSetting(
		"EID",
		"General",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["InitiallyHidden"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["InitiallyHidden"] then
					onOff = "True"
				end
				return 'Is initially Hidden: ' .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["InitiallyHidden"] = currentBool
			end
		}
	)
	
	-- Disable on Curse
	MCM.AddSetting(
		"EID",
		"General",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["DisableOnCurse"]
			end,
			Display = function()
				local onOff = "True"
				if EID.Config["DisableOnCurse"] then
					onOff = "False"
				end
				return 'Show on "Curse of Blind": ' .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["DisableOnCurse"] = currentBool
			end
		}
	)
	-- Disable April Fools
	MCM.AddSetting(
		"EID",
		"General",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["DisableOnAprilFoolsChallenge"]
			end,
			Display = function()
				local onOff = "True"
				if EID.Config["DisableOnAprilFoolsChallenge"] then
					onOff = "False"
				end
				return 'Show on April Fools Challenge: ' .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["DisableOnAprilFoolsChallenge"] = currentBool
			end
		}
	)
	-- Disable Alt Item option
	MCM.AddSetting(
		"EID",
		"General",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["DisableOnAltPath"]
			end,
			Display = function()
				local onOff = "True"
				if EID.Config["DisableOnAltPath"] then
					onOff = "False"
				end
				return 'Show hidden alt-Path Item: ' .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["DisableOnAltPath"] = currentBool
			end
		}
	)

	--------ShowUnidentifiedPillDescriptions---------
	MCM.AddSetting(
		"EID",
		"General",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["ShowUnidentifiedPillDescriptions"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["ShowUnidentifiedPillDescriptions"] then
					onOff = "True"
				end
				return "Show Unidentified Pill Effects: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["ShowUnidentifiedPillDescriptions"] = currentBool
			end
		}
	)
	MCM.AddSetting(
		"EID",
		"General",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["HideInBattle"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["HideInBattle"] then
					onOff = "True"
				end
				return "Hide in Battle: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["HideInBattle"] = currentBool
			end,
			Info = {"Hides the descriptions when in a fight"}
		}
	)

	MCM.AddSpace("EID", "General")
	--indicator
	local indicators = {"arrow", "blink", "border", "highlight", "none"}
	MCM.AddSetting(
		"EID",
		"General",
		{
			Type = ModConfigMenu.OptionType.NUMBER,
			CurrentSetting = function()
				return AnIndexOf(indicators, EID.Config["Indicator"])
			end,
			Minimum = 1,
			Maximum = 5,
			Display = function()
				return "Indicator: " .. EID.Config["Indicator"]
			end,
			OnChange = function(currentNum)
				EID.Config["Indicator"] = indicators[currentNum]
			end,
			Info = {"Highlights the currently described item"}
		}
	)
	
	MCM.AddSpace("EID", "General")

	-- maxDistance
	local distances = {1, 1.5, 2, 3, 4, 5, 6, 7, 8, 9, 10}
	MCM.AddSetting(
		"EID",
		"General",
		{
			Type = ModConfigMenu.OptionType.SCROLL,
			CurrentSetting = function()
				return AnIndexOf(distances, EID.Config["MaxDistance"]) - 1
			end,
			Display = function()
				return "Max Distance: $scroll" ..
					AnIndexOf(distances, EID.Config["MaxDistance"]) - 1 .. " " .. EID.Config["MaxDistance"] .. " Grids"
			end,
			OnChange = function(currentNum)
				EID.Config["MaxDistance"] = distances[currentNum + 1]
			end,
			Info = {"Distance to the object until descriptions are displayed."}
		}
	)
	
	-- disable achievements
	MCM.AddSetting(
		"EID",
		"General",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["DisableAchievementCheck"]
			end,
			Display = function()
				local onOff = "Enabled"
				if EID.Config["DisableAchievementCheck"] then
					onOff = "Disabled"
				end
				return "Achievement warning: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["DisableAchievementCheck"] = currentBool
			end,
			Info = {"Use this to turn off the achievement warning"}
		}
	)

	---------------------------------------------------------------------------
	---------------------------------Display-----------------------------------

	------------Collectibles--------------

	MCM.AddSetting(
		"EID",
		"Display",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["DisplayItemInfo"]
			end,
			Display = function()
				EID.MCMCompat_isDisplayingEIDTab = "";
				local onOff = "False"
				if EID.Config["DisplayItemInfo"] then
					onOff = "True"
				end
				return "Collectible Infos: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["DisplayItemInfo"] = currentBool
			end
		}
	)
	------------Trinkets--------------

	MCM.AddSetting(
		"EID",
		"Display",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["DisplayTrinketInfo"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["DisplayTrinketInfo"] then
					onOff = "True"
				end
				return "Trinket Infos: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["DisplayTrinketInfo"] = currentBool
			end
		}
	)
	------------CARDS--------------

	MCM.AddSetting(
		"EID",
		"Display",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["DisplayCardInfo"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["DisplayCardInfo"] then
					onOff = "True"
				end
				return "Card Infos: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["DisplayCardInfo"] = currentBool
			end
		}
	)

	------------PILLS--------------
	MCM.AddSetting(
		"EID",
		"Display",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["DisplayPillInfo"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["DisplayPillInfo"] then
					onOff = "True"
				end
				return "Pill Infos: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["DisplayPillInfo"] = currentBool
			end
		}
	)
	--------Sacrifice Room---------
	MCM.AddSetting(
		"EID",
		"Display",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["DisplaySacrificeInfo"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["DisplaySacrificeInfo"] then
					onOff = "True"
				end
				return "Sacrifice Room Infos: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["DisplaySacrificeInfo"] = currentBool
			end
		}
	)

	--------Dice Room---------
	MCM.AddSetting(
		"EID",
		"Display",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["DisplayDiceInfo"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["DisplayDiceInfo"] then
					onOff = "True"
				end
				return "Dice Room Infos: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["DisplayDiceInfo"] = currentBool
			end
		}
	)
	
	MCM.AddSpace("EID", "Display")
	
	-- Spindown Dice results
	local diceSteps = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
	MCM.AddSetting(
		"EID",
		"Display",
		{
			Type = ModConfigMenu.OptionType.SCROLL,
			CurrentSetting = function()
				return AnIndexOf(diceSteps, EID.Config["SpindownDiceResults"]) - 1
			end,
			Display = function()
				return "Spindown Dice: $scroll" ..
					AnIndexOf(diceSteps, EID.Config["SpindownDiceResults"]) - 1 .. " " .. EID.Config["SpindownDiceResults"] .. " Items"
			end,
			OnChange = function(currentNum)
				EID.Config["SpindownDiceResults"] = diceSteps[currentNum + 1]
			end,
			Info = {"Preview of Items resulting when using the Spindown dice X times"}
		}
	)
	-- 
	
	-- Spindown Dice skip locked items
	MCM.AddSetting(
		"EID",
		"Display",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["SpindownDiceSkipLocked"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["SpindownDiceSkipLocked"] then
					onOff = "True"
				end
				return "Skip Locked Items: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["SpindownDiceSkipLocked"] = currentBool
			end,
			Info = {"Skip locked items in the preview just as the dice will; the method to check for unlock status is not perfect, though"}
		}
	)
	
	--------Obstruction---------
	MCM.AddSpace("EID", "Display")
	MCM.AddText("EID", "Display", "Display Infos when obstructed")
	
	MCM.AddSetting(
		"EID",
		"Display",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["DisableObstructionOnFlight"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["DisableObstructionOnFlight"] then
					onOff = "True"
				end
				return "Show again when having flight: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["DisableObstructionOnFlight"] = currentBool
			end
		}
	)
	
	MCM.AddSetting(
		"EID",
		"Display",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["DisplayObstructedCardInfo"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["DisplayObstructedCardInfo"] then
					onOff = "True"
				end
				return "Card Infos: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["DisplayObstructedCardInfo"] = currentBool
			end
		}
	)
	
	MCM.AddSetting(
		"EID",
		"Display",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["DisplayObstructedSoulstoneInfo"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["DisplayObstructedSoulstoneInfo"] then
					onOff = "True"
				end
				return "Soulstone Infos: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["DisplayObstructedSoulstoneInfo"] = currentBool
			end
		}
	)

	MCM.AddSetting(
		"EID",
		"Display",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["DisplayObstructedPillInfo"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["DisplayObstructedPillInfo"] then
					onOff = "True"
				end
				return "Pill Infos: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["DisplayObstructedPillInfo"] = currentBool
			end
		}
	)

	MCM.AddSpace("EID", "Display")
	MCM.AddText("EID", "Display", "Display Infos in Shops")
	------------CARDS--------------

	MCM.AddSetting(
		"EID",
		"Display",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["DisplayCardInfoShop"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["DisplayCardInfoShop"] then
					onOff = "True"
				end
				return "Card Infos: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["DisplayCardInfoShop"] = currentBool
			end
		}
	)

	------------PILLS--------------
	MCM.AddSetting(
		"EID",
		"Display",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["DisplayPillInfoShop"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["DisplayPillInfoShop"] then
					onOff = "True"
				end
				return "Pill Infos: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["DisplayPillInfoShop"] = currentBool
			end
		}
	)
	
	MCM.AddSetting(
		"EID",
		"Display",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["DisplaySoulstoneInfoShop"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["DisplaySoulstoneInfoShop"] then
					onOff = "True"
				end
				return "Soulstone Infos: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["DisplaySoulstoneInfoShop"] = currentBool
			end
		}
	)
	
	MCM.AddSpace("EID", "Display")
	MCM.AddText("EID", "Display", "Interaction with 'Options?'")

	MCM.AddSetting(
		"EID",
		"Display",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["DisplayCardInfoOptions?"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["DisplayCardInfoOptions?"] then
					onOff = "True"
				end
				return "Card Infos when spawned by 'Options?': " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["DisplayCardInfoOptions?"] = currentBool
			end
		}
	)
	
	MCM.AddSetting(
		"EID",
		"Display",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["DisplayPillInfoOptions?"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["DisplayPillInfoOptions?"] then
					onOff = "True"
				end
				return "Pill Infos when spawned by 'Options?': " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["DisplayPillInfoOptions?"] = currentBool
			end
		}
	)
	---------------------------------------------------------------------------
	---------------------------------Visuals-----------------------------------
	-- Font Type
	local fontTypes = {"default","borderless","inverted"}
	MCM.AddSetting(
		"EID",
		"Visuals",
		{
			Type = ModConfigMenu.OptionType.NUMBER,
			CurrentSetting = function()
				return AnIndexOf(fontTypes, EID.Config["FontType"])
			end,
			Minimum = 1,
			Maximum = #fontTypes,
			Display = function()
				EID.MCMCompat_isDisplayingEIDTab = "Visuals";
				return "Font Type: " .. EID.Config["FontType"]
			end,
			OnChange = function(currentNum)
				EID.Config["FontType"] = fontTypes[currentNum]
				local fontFile = EID.Config["FontType"] or "default"
				EID:loadFont(EID.modPath .. "resources/font/eid_"..fontFile..".fnt")
			end
		}
	)

	-- LOCAL MODE
	MCM.AddSetting(
		"EID",
		"Visuals",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["LocalMode"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["LocalMode"] then
					onOff = "True"
				end
				return "Local Mode: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["LocalMode"] = currentBool
			end,
			Info = {"Sets the local rendering mode of the description text below currently inspected object"}
		}
	)
	-- SCALE
	local textScales = {0.5, 0.75, 1, 1.25, 1.5, 2}
	MCM.AddSetting(
		"EID",
		"Visuals",
		{
			Type = ModConfigMenu.OptionType.NUMBER,
			CurrentSetting = function()
				return AnIndexOf(textScales, EID.Config["Scale"])
			end,
			Minimum = 1,
			Maximum = 6,
			Display = function()
				if EID.Config["LocalMode"] then
					return "Text Size (Pickup Description): " .. EID.Config["LocalScale"]
				else
					return "Text Size (All Description): " .. EID.Config["Scale"]
				end
			end,
			OnChange = function(currentNum)
				EID.Config["Scale"] = textScales[currentNum]
			end,
			Info = {"Change text size. CAN BE HARD TO READ IN SOME SETTINGS!"}
		}
	)
	local textScales = {0.5, 0.75, 1, 1.25, 1.5, 2}
	MCM.AddSetting(
		"EID",
		"Visuals",
		{
			Type = ModConfigMenu.OptionType.NUMBER,
			CurrentSetting = function()
				return AnIndexOf(textScales, EID.Config["Scale"])
			end,
			Minimum = 1,
			Maximum = 6,
			Display = function()
				if EID.Config["LocalMode"] then
					return "Text Size (Room Description): " .. EID.Config["Scale"]
				else
					return ""
				end
			end,
			OnChange = function(currentNum)
				EID.Config["Scale"] = textScales[currentNum]
			end,
			Info = {"Change text size. CAN BE HARD TO READ IN SOME SETTINGS!"}
		}
   )
	-- Transparency
	local transparencies = {0.1, 0.175, 0.25, 0.3, 0.4, 0.5, 0.6, 0.75, 0.8, 0.9, 1}
	MCM.AddSetting(
		"EID",
		"Visuals",
		{
			Type = ModConfigMenu.OptionType.SCROLL,
			CurrentSetting = function()
				return AnIndexOf(transparencies, EID.Config["Transparency"]) - 1
			end,
			Display = function()
				return "Transparency: $scroll" ..
					AnIndexOf(transparencies, EID.Config["Transparency"]) - 1 .. " " .. EID.Config["Transparency"]
			end,
			OnChange = function(currentNum)
				EID.Config["Transparency"] = transparencies[currentNum + 1]
			end
		}
	)

	MCM.AddSpace("EID", "Visuals")

	--------ShowItemName---------
	MCM.AddSetting(
		"EID",
		"Visuals",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["ShowItemName"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["ShowItemName"] then
					onOff = "True"
				end
				return "Display Item Name: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["ShowItemName"] = currentBool
			end
		}
	)
	--------ShowItemType---------
	MCM.AddSetting(
		"EID",
		"Visuals",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["ShowItemType"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["ShowItemType"] then
					onOff = "True"
				end
				return "Display Item Type: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["ShowItemType"] = currentBool
			end
		}
	)
	MCM.AddSetting(
		"EID",
		"Visuals",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["ShowItemIcon"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["ShowItemIcon"] then
					onOff = "True"
				end
				return "Display Item Icon: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["ShowItemIcon"] = currentBool
			end
		}
	)

	-------TRANSFORMATIONS---------
	MCM.AddSetting(
		"EID",
		"Visuals",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["TransformationText"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["TransformationText"] then
					onOff = "True"
				end
				return "Display Transformation Name: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["TransformationText"] = currentBool
			end
		}
	)
	-------TRANSFORMATION ICON---------
	MCM.AddSetting(
		"EID",
		"Visuals",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["TransformationIcons"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["TransformationIcons"] then
					onOff = "True"
				end
				return "Display Transformation Icon: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["TransformationIcons"] = currentBool
			end
		}
	)
	-------Quality ICON---------
	MCM.AddSetting(
		"EID",
		"Visuals",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["ShowQuality"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["ShowQuality"] then
					onOff = "True"
				end
				return "Display Quality Info: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["ShowQuality"] = currentBool
			end
		}
	)
	-------Object ID---------
	MCM.AddSetting(
		"EID",
		"Visuals",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["ShowObjectID"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["ShowObjectID"] then
					onOff = "True"
				end
				return "Display Object ID: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["ShowObjectID"] = currentBool
			end
		}
	)
	---------------------------------------------------------------------------
	---------------------------------Visuals-----------------------------------
	
	-- Bag of Crafting Display
	local bagDisplays = {"always","hold","never"}
	MCM.AddSetting(
		"EID",
		"Crafting",
		{
			Type = ModConfigMenu.OptionType.NUMBER,
			CurrentSetting = function()
				return AnIndexOf(bagDisplays, EID.Config["DisplayBagOfCrafting"])
			end,
			Minimum = 1,
			Maximum = 3,
			Display = function()
				return "Display Mode: " .. EID.Config["DisplayBagOfCrafting"]
			end,
			OnChange = function(currentNum)
				EID.Config["DisplayBagOfCrafting"] = bagDisplays[currentNum]
			end,
			Info = {"Always = Always show Results, Hold = Show when holding up bag, Never = Never show results"}
		}
	)
	-- Bag of Crafting Hide in Battle
	EID:AddBooleanSetting("Crafting",
		"BagOfCraftingHideInBattle",
		"Hide in Battle", "Yes", "No",
		"Hides the recipe list when in a fight")
	-- Bag of Crafting No Recipes Mode
	EID:AddBooleanSetting("Crafting",
		"BagOfCraftingSimplifiedMode",
		"No Recipes Mode", "On", "Off",
		"No Recipes Mode shows quality and item pool percentages instead of exact recipes, for a more intended experience")
	-- Bag of Crafting 8 icons toggle
	EID:AddBooleanSetting("Crafting",
		"BagOfCraftingDisplayIcons",
		"Show Recipes/Best Bag as", "8 Icons", "Groups",
		"Choose if you want recipes (and the Best Quality bag in No Recipes Mode) shown as 8 icons, or as grouped ingredients")
		
	MCM.AddSpace("EID", "Crafting")
	
	-- Bag of Crafting results per page
	MCM.AddSetting(
		"EID",
		"Crafting",
		{
			Type = ModConfigMenu.OptionType.SCROLL,
			CurrentSetting = function()
				return AnIndexOf(diceSteps, EID.Config["BagOfCraftingResults"]) - 1
			end,
			Display = function()
				return "Displayed Results: $scroll" ..
					AnIndexOf(diceSteps, EID.Config["BagOfCraftingResults"]) - 1 .. " " .. EID.Config["BagOfCraftingResults"]
			end,
			OnChange = function(currentNum)
				EID.Config["BagOfCraftingResults"] = diceSteps[currentNum + 1]
			end,
			Info = {"Page size for the preview of items currently craftable with Bag of Crafting"}
		}
	)
	-- Bag of Crafting thorough recipe checks
	local combSteps = {8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18}
	MCM.AddSetting(
		"EID",
		"Crafting",
		{
			Type = ModConfigMenu.OptionType.SCROLL,
			CurrentSetting = function()
				return AnIndexOf(combSteps, EID.Config["BagOfCraftingCombinationMax"]) - 1
			end,
			Display = function()
				return "Thorough Calculations: $scroll" ..
					AnIndexOf(combSteps, EID.Config["BagOfCraftingCombinationMax"]) - 1 .. " " .. EID.Config["BagOfCraftingCombinationMax"]
			end,
			OnChange = function(currentNum)
				EID.Config["BagOfCraftingCombinationMax"] = combSteps[currentNum + 1]
			end,
			Info = {"Get every recipe for the X best components; setting this high will cause lag spikes (12 = 500 combinations, 14 = 3,000, 16 = 13,000)"}
		}
	)
	-- Bag of Crafting random recipe checks
	local calcSteps = {200, 300, 400, 500, 600, 700, 800, 900, 1000, 1100, 1200}
	MCM.AddSetting(
		"EID",
		"Crafting",
		{
			Type = ModConfigMenu.OptionType.SCROLL,
			CurrentSetting = function()
				return AnIndexOf(calcSteps, EID.Config["BagOfCraftingRandomResults"]) - 1
			end,
			Display = function()
				return "Random Calculations: $scroll" ..
					AnIndexOf(calcSteps, EID.Config["BagOfCraftingRandomResults"]) - 1 .. " " .. EID.Config["BagOfCraftingRandomResults"]
			end,
			OnChange = function(currentNum)
				EID.Config["BagOfCraftingRandomResults"] = calcSteps[currentNum + 1]
			end,
			Info = {"An additional X number of randomly chosen recipes will be checked, changing each pickup spawn/despawn or refresh"}
		}
	)
	-- Bag of Crafting item names
	MCM.AddSetting(
		"EID",
		"Crafting",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return EID.Config["BagOfCraftingDisplayNames"]
			end,
			Display = function()
				local onOff = "False"
				if EID.Config["BagOfCraftingDisplayNames"] then
					onOff = "True"
				end
				return "Show Item Names: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["BagOfCraftingDisplayNames"] = currentBool
			end,
			Info = {"If on, each result takes two lines; lower your displayed results accordingly"}
		}
	)
	
	MCM.AddSpace("EID", "Crafting")
	
	EID:AddHotkeySetting("Crafting",
		"CraftingHideKey", "Toggle (Keyboard)",
		"Press this key to toggle the crafting display, allowing you to check descriptions of items/pickups on the floor", false)
	EID:AddHotkeySetting("Crafting",
		"CraftingHideButton", "Toggle (Controller)",
		"Press this button to toggle the crafting display (Left Stick or Right Stick recommended; most other buttons will not work)", true)
	
	EID:AddHotkeySetting("Crafting",
		"CraftingResultKey", "Result Toggle (Keyboard)",
		"Press this key to toggle the description of the item ready to be crafted", false)
	EID:AddHotkeySetting("Crafting",
		"CraftingResultButton", "Result Toggle (Controller)",
		"Press this button to toggle the description of the item ready to be crafted (Left Stick or Right Stick recommended; most other buttons will not work)", true)
	
	MCM.AddSpace("EID", "Crafting")
	--------Clear bag---------
	MCM.AddSetting(
		"EID",
		"Crafting",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function() return true end,
			Display = function() return "<---- Clear Bag Content ---->" end,
			OnChange = function(currentBool) EID.BagItems = {} end,
			Info = {"Press this to clear all currently detected items on the bag"}
		}
	)
	--------Clear Floor---------
	MCM.AddSetting(
		"EID",
		"Crafting",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function() return true end,
			Display = function() return "<---- Clear Floor item list ---->" end,
			OnChange = function(currentBool)
			EID.bagOfCraftingRoomQueries = {}
			EID.bagOfCraftingFloorQuery = {}
			EID.bagOfCraftingCurPickupCount = -1
			end,
			Info = {"Press this to clear all currently detected items on the floor"}
		}
	)
	
	---------------------------------------------------------------------------
	-----------------------------Mouse Controls--------------------------------
	MCM.AddText("EID", "Mouse", function() return "! THIS FEATURE IS IN EARLY DEVELOPMENT !" end)
	MCM.AddSpace("EID", "Mouse")
	MCM.AddText("EID", "Mouse", function() return "MCM -> General -> Hud Offset" end)
	MCM.AddText("EID", "Mouse", function() return "to adjust Hud Offset" end)
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
				EID.MCMCompat_isDisplayingEIDTab = "Mouse";
				local onOff = "False"
				if EID.Config["EnableMouseControls"] then
					onOff = "True"
				end
				return "Enable Mouse controls: " .. onOff
			end,
			OnChange = function(currentBool)
				EID.Config["EnableMouseControls"] = currentBool
			end,
			Info = {"If enabled, allows to hover over certain HUD elements to get descriptions"}
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
				if EID.Config["TextColor"] == nil then EID.Config["TextColor"] = EID.DefaultConfig["TextColor"] end
				EID.MCMCompat_isDisplayingEIDTab = "Visuals";
				return "Descriptions: " .. string.gsub(EID.Config["TextColor"], "Color", "").. " ("..AnIndexOf(colorNameArray, EID.Config["TextColor"]).."/"..#colorNameArray..")"
			end,
			OnChange = function(currentNum)
				if currentNum == 0 then currentNum = #colorNameArray end
				if currentNum > #colorNameArray then currentNum = 1 end
				EID.Config["TextColor"] = colorNameArray[currentNum]
			end,
			Info = {"Changes the color of normal texts."}
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
				if currentNum == 0 then currentNum = #colorNameArray end
				if currentNum > #colorNameArray then currentNum = 1 end
				EID.Config["ItemNameColor"] = colorNameArray[currentNum]
			end,
			Info = {"Changes the color of name texts."}
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
				if currentNum == 0 then currentNum = #colorNameArray end
				if currentNum > #colorNameArray then currentNum = 1 end
				EID.Config["TransformationColor"] = colorNameArray[currentNum]
			end,
			Info = {"Changes the color of transformation texts."}
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
				if currentNum == 0 then currentNum = #colorNameArray end
				if currentNum > #colorNameArray then currentNum = 1 end
				EID.Config["ErrorColor"] = colorNameArray[currentNum]
			end,
			Info = {"Changes the color of error messages like Unknown pills"}
		}
	)
end
