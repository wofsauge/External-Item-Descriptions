EID.UserConfig = {
	-------GENERAL---------
	-- Change the language of the mod
	-- Currently Supported: English = "en_us" (Default), "en_us_detailed" (More detailed descriptions)
	--						French = "fr"  		SPECIAL THANKS TO Nicolas Delvaux
	--						Polish = "pl"		SPECIAL THANKS TO Rickyy
	--						Spanish = "spa"		SPECIAL THANKS TO Lidia Arroyo Purroy
	--						Portuguese = "pt"	SPECIAL THANKS TO Marcelino Cruz
	--						Brazilian Portuguese = "pt_br"	SPECIAL THANKS TO Marcelino Cruz
	--						Russian = "ru"		SPECIAL THANKS TO hell2pay, fly_6
	--						Italian = "it"		SPECIAL THANKS TO Denkishi, 2G
	--						Bulgarian = "bul"	SPECIAL THANKS TO Gothika_47
	--						Turkish = "tr_tr"	SPECIAL THANKS TO Mert Dutal
	--						Korean = "ko_kr"	SPECIAL THANKS TO Blackcreamtea, 미카
	--						Chinese = "zh_cn"   SPECIAL THANKS TO Xheepey87, frto027
	--
	-- If you want to make a translation, please contact me :) (wofsauge)
	--
	["Language"] = "en_us",
	-- Change if item names should be displayed in English, your translated language or both
	-- States: 1 = English , 2 = translated,  3 = both
	-- Default = 2
	["TranslateItemName"] = 2,
	-- Change font type. Values are [default, borderless, inverted]
	-- Default = "default"
	["FontType"] = "default",
	-- Change the width of the info boxes (in characters).
	-- Default = 130
	["TextboxWidth"] = 130,
	-- Change the size of the info boxes. Range: [0,...,1]
	-- Default = 1
	["Scale"] = 1,
	-- Press or hold the key to change scale. Keyboard.KEY_F5 is recommended
	-- Default = none
	["ScaleKey"] = -1,
	-- Set the background transparency. Range: [0,...,1]
	-- Default = 0.75
	["Transparency"] = 0.75,
	-- Set the HUD offset of the descriptions
	-- This should be set to the same number of "strokes" set in the in-game options for the "hud offset" value (range is 0 to 10)
	-- Default = 10
	["HUDOffset"] = 10,
	-- Set the X Position (width) of the description texts
	-- Default = 60
	["XPosition"] = 60,
	-- Set the Y Position (height) of the description texts
	-- Default = 45
	["YPosition"] = 45,
	-- Set the height of a line, effectivly changing the distance between two lines of text
	-- Default = 11	(11 for English, 14 for Korean / Chinese)
	["LineHeight"] = 11,
	-- Set the distance between an item and its information display (in tiles)
	-- Default = 5
	["MaxDistance"] = 5,
	-- Select the type of the indicator that highlights the currently inspected object
	-- Options: ["arrow", "blink", "border", "highlight", "none"].
	-- Arrow = Moving arrow pointing at the item | Blink = The whole sprite blinks white | Border = Blinking white border around the sprite | Highlight = White border around the sprite |  None = No indicator
	-- Default = "none"
	["Indicator"] = "none",
	-- Set the keybind to toggle the description display
	-- Look into the AB+ or Repentance documentation for the key names here: https://wofsauge.github.io/IsaacDocs/rep/enums/Keyboard.html
	-- Default = Keyboard.KEY_F2
	["HideKey"] = Keyboard.KEY_F2,
	-- Set the controller binding to toggle the description display
	-- Use the controller names here: https://github.com/wofsauge/External-Item-Descriptions/blob/master/mod_config_menu.lua#L1 or a number
	-- Controller.STICK_LEFT and Controller.STICK_RIGHT (pushing the sticks in), which aren't used in-game with default controls
	-- Default = none (-1)
	["HideButton"] = -1,
	-- Initial display state. Can be used to change the toggle behavior of the "Hide Key" event
	-- Default = false
	["InitiallyHidden"] = false,
	-- Hide the descriptions when in battle
	-- Default = false
	["HideInBattle"] = false,
	-- Toggle obstruction based hiding, when the player has flight
	-- Default = true
	["DisableObstructionOnFlight"] = true,
	-- If set to true, the mod will no longer display a warning if the save game doesn't have achievements unlocked
	-- This also disables warnings for using an outdated game version and for having potentially modded Bag of Crafting recipes
	-- Default = false
	["DisableAchievementCheck"] = false,

	---------- Display Modes -----------

	-- Sets the display mode of the description text
	-- Possible values: default, local
	--	"default": text will be displayed in the top left of the screen
	--	"local": text will be displayed under the described object
	-- Default = "default"
	["DisplayMode"] = "default",
	-- Change the size of the info boxes for local mode
	-- Default = 0.5
	["LocalScale"] = 0.5,
	-- Changes the position of the text in local mode, relative to the described object to be centered. Set to false to make it left-aligned
	-- Default = true
	["LocalModeCentered"] = true,

	---------- Curses ----------

	-- Disable descriptions when the floor has Curse of the Blind
	-- Default = true
	["DisableOnCurse"] = true,
	-- Disable descriptions for the second Treasure Room item on the alt path
	-- REPENTANCE ONLY!!!
	-- Default = true
	["DisableOnAltPath"] = true,
	-- Disable descriptions for the April Fools challenge
	-- Default = true
	["DisableOnAprilFoolsChallenge"] = true,

	---------- Item Names ----------

	-- Toggle display of collectible or Card and Pill names
	-- Default = true
	["ShowItemName"] = true,
	-- Toggle display of item type and maximum charge icons
	-- Default = true
	["ShowItemType"] = true,
	-- Toggle display of collectible or trinket icons next to the item name
	-- Default = true
	["ShowItemIcon"] = true,
	-- Toggle display of collectible descriptions
	-- Default = true
	["DisplayItemInfo"] = true,
	-- Toggle display of trinket descriptions
	-- Default = true
	["DisplayTrinketInfo"] = true,
	-- Set the color of the item name text
	-- Color names are defined in "eid_data.lua" (line 300)
	-- Default = "ColorEIDObjName"
	["ItemNameColor"] = "ColorEIDObjName",
	-- Display the ID of described object in the format "Type.Variant.SubType" next to the name
	-- Default = false
	["ShowObjectID"] = false,
	-- Enables or disables item quality icon after item name
	-- REPENTANCE ONLY!!!
	-- Default = true
	["ShowQuality"] = true,
	-- Set the mod indicator display
	-- Default = "Both"
	["ModIndicatorDisplay"] = "None",
	-- Set the mod indicator text color
	-- Default = "ColorLightOrange"
	["ModIndicatorTextColor"] = "ColorLightOrange",

	---------- Transformations ----------

	-- Toggle display of transformation names
	-- Default = true
	["TransformationText"] = true,
	-- Toggle display of transformation icons
	-- Default = true
	["TransformationIcons"] = true,
	-- Set the color of the Transformation description text
	-- Color names are defined in "eid_data.lua" (line 300)
	-- Default = "ColorEIDTransform"
	["TransformationColor"] = "ColorEIDTransform",

	---------- Cards ----------

	-- Toggle display of Card or Rune descriptions
	-- Default = true
	["DisplayCardInfo"] = true,
	-- Toggle display of Card or Rune descriptions when they're sold in shops
	-- Default = false
	["DisplayCardInfoShop"] = false,
	-- Toggle display of Soul Stone descriptions when they're sold in shops
	-- REPENTANCE ONLY!!!
	-- Default = true
	["DisplaySoulstoneInfoShop"] = true,
	-- Toggle display of Card or Rune descriptions when they're not accessible without flight, e.g. when they are behind rocks, blocks, spikes, etc.
	-- Default = false
	["DisplayObstructedCardInfo"] = false,
	-- Toggle display of Soul Stone descriptions when they're not accessible without flight, e.g. when they are behind rocks, blocks, spikes, etc.
	-- REPENTANCE ONLY!!!
	-- Default = true
	["DisplayObstructedSoulstoneInfo"] = true,
	-- Toggle display of Card or Rune descriptions when they spawn from the Options? item
	-- REPENTANCE ONLY!!!
	-- Default = false
	["DisplayCardInfoOptions?"] = false,

	---------- Pills ----------

	-- Toggle display of Pill descriptions
	-- Default = true
	["DisplayPillInfo"] = true,
	-- Toggle display of Pill descriptions when they're a shop item
	-- Default = true
	["DisplayPillInfoShop"] = true,
	-- Toggle display of Pill descriptions when they're not accessible without flight, e.g. when they are behind rocks, blocks, spikes, etc.
	-- Default = false
	["DisplayObstructedPillInfo"] = false,
	-- Toggle display of Pill descriptions when they spawn from the Options? item
	-- REPENTANCE ONLY!!!
	-- Default = true
	["DisplayPillInfoOptions?"] = true,
	-- Toggle display of description for Pills that haven't been identified yet
	-- Default = false
	["ShowUnidentifiedPillDescriptions"] = false,

	---------- Glitched Items ---------
  
	-- Toggle Display of Glitched Item (TMTRAINER) descriptions
	-- Note: The --luadebug launch option is required for more detailed glitched item descriptions
	-- This option allows mods to have access to your files and should be turned on at your own risk!
	-- Without --luadebug, you still can see the effect the item will have on your Hearts, and what stats it might modify
	-- Default = true
	["DisplayGlitchedItemInfo"] = true,

	---------- Sacrifice Room ----------

	-- Toggle display of the next Sacrifice Room payout description
	-- Default = true
	["DisplaySacrificeInfo"] = true,

	---------- Dice Room ----------

	-- Toggle display of Dice Room descriptions
	-- Default = true
	["DisplayDiceInfo"] = true,

	----------Crane Game ----------

	-- Toggle display for items inside of a Crane Game
	-- REPENTANCE ONLY!!!
	-- Default = true
	["DisplayCraneInfo"] = true,
	
	---------- Void Stat Increases ----------
	-- Toggle display of what stats will increase on Void absorption
	-- Default = false
	["DisplayVoidStatInfo"] = false,

	---------- Bag of Crafting ------------

	-- REPENTANCE ONLY!!!

	-- When to show the Bag of Crafting display
	-- Options: "always", "hold", "never"
	-- "always" = Always show results, "hold" = Show when holding up bag, "never" = Never show results
	-- Default = "always"
	["DisplayBagOfCrafting"] = "always",
	-- Display modes for the Bag of Crafting display
	-- Options: "Recipe List", "Preview Only", "No Recipes", "Pickups Only"
	-- The recipe list is a detailed calculated list of recipes based on what you have available on the floor
	-- Preview Only shows the description of the item you can currently craft in your bag
	-- No Recipes shows percentages of what item you might get from your bag / best option on the floor, for a more intended experience
	-- Pickups Only just shows the room/floor pickup count
	-- (No Recipes is recommended if you have modded items)
	-- Default = "Recipe List"
	["BagOfCraftingDisplayMode"] = "Recipe List",
	-- Hide the recipe list when in battle
	-- Default = true
	["BagOfCraftingHideInBattle"] = true,
	-- Changes the amount of results shown in the Bag of Crafting description
	-- Higher numbers can cause more lag!
	-- Default = 7
	["BagOfCraftingResults"] = 7,
	-- Changes the amount of ingredients for which every combination is checked
	-- Higher numbers will cause lag spikes on new pickup sets!
	-- Default = 12
	["BagOfCraftingCombinationMax"] = 12,
	-- Changes the amount of how many random recipes get calculated
	-- Higher numbers will cause lag spikes on new pickup sets!
	-- Default = 400
	["BagOfCraftingRandomResults"] = 400,
	-- Set the keybinding to toggle the scroll feature of the Bag of Crafting descriptions
	-- Look into the AB+ or Repentance documentation for the key names here: https://wofsauge.github.io/IsaacDocs/rep/enums/ButtonAction.html
	-- Default = ButtonAction.ACTION_MAP
	["BagOfCraftingToggleKey"] = ButtonAction.ACTION_MAP,
	-- Display craftable item names, moving the recipe to a new line
	-- Default = false
	["BagOfCraftingDisplayNames"] = false,
	-- Display recipes as 8 icons instead of grouped ingredients
	-- Default = false
	["BagOfCraftingDisplayIcons"] = false,
	-- Set the keybinding to toggle the crafting display, so you can see descriptions of items/pickups on the floor
	-- Look into the AB+ or Repentance documentation for the key names here: https://wofsauge.github.io/IsaacDocs/rep/enums/Keyboard.html
	-- Default = Keyboard.KEY_F3
	["CraftingHideKey"] = Keyboard.KEY_F3,
	-- Set the controller binding to toggle the crafting display, so you can see descriptions of items/pickups on the floor
	-- Use the Controller names here: https://github.com/wofsauge/External-Item-Descriptions/blob/master/mod_config_menu.lua#L1 or a number
	-- Of note are Controller.STICK_LEFT and Controller.STICK_RIGHT (pushing the sticks in), which aren't used in-game with default controls
	-- Default = none (-1)
	["CraftingHideButton"] = -1,
	-- Set the keybinding to toggle viewing the description of the item ready to be crafted in the bag
	-- Look into the AB+ or Repentance documentation for the key names here: https://wofsauge.github.io/IsaacDocs/rep/enums/Keyboard.html
	-- Default = Keyboard.KEY_F3
	["CraftingResultKey"] = Keyboard.KEY_F4,
	-- Set the controller binding to toggle viewing the description of the item ready to be crafted in the bag
	-- Use the controller names here: https://github.com/wofsauge/External-Item-Descriptions/blob/master/mod_config_menu.lua#L1 or a number
	-- Of note are Controller.STICK_LEFT and Controller.STICK_RIGHT (pushing the sticks in), which aren't used in-game with default controls
	-- Default = none (-1)
	["CraftingResultButton"] = -1,

	 ---------- Mouse Controls ------------

	-- Toggles HUD descriptions based on the mouse position
	-- Default = false
	["EnableMouseControls"] = false,
	-- Toggles the custom mouse cursor
	-- Default = false
	["ShowCursor"] = false,

	---------- Misc ----------

	-- Changes the number of results shown for the additional Spindown Dice description
	-- REPENTANCE ONLY!!!
	-- Default = 3
	["SpindownDiceResults"] = 3,
	-- Spindown Dice preview can skip over locked items, however the method for determining an item's locked status is not perfect
	-- REPENTANCE ONLY!!!
	-- Default = false
	["SpindownDiceSkipLocked"] = false,

	-- Error message displayed when an error occurs
	-- Default = [Effect not defined]
	["ErrorMessage"] = "[Effect not defined]",
	-- Set the color of the default description text
	-- Color names are defined in "eid_data.lua" (line 300)
	-- Default = "ColorEIDText"
	["TextColor"] = "ColorEIDText",
	-- Set the color of the error description text
	-- Color names are defined in "eid_data.lua" (line 300)
	-- Default = "ColorEIDError"
	["ErrorColor"] = "ColorEIDError",
	-- Enables or disables custom descriptions for entities
	-- Default = true
	["EnableEntityDescriptions"] = true
}

-- END CONFIG --
----------------
----------------

--------------------------------------------------
--------------------------------------------------
--------------------------------------------------
--------------------------------------------------
--------------------------------------------------
-------- DO NOT EDIT FROM THIS POINT!!!!! --------
--------------------------------------------------
--------------------------------------------------
--------------------------------------------------
--------------------------------------------------
--------------------------------------------------

EID.DefaultConfig = {
	["Language"] = "en_us",
	["TranslateItemName"] = 2,
	["FontType"] = "default",
	["TextboxWidth"] = 130,
	["Scale"] = 1,
	["ScaleKey"] = -1,
	["Transparency"] = 0.75,
	["HUDOffset"] = 10,
	["XPosition"] = 60,
	["YPosition"] = 45,
	["LineHeight"] = 11,
	["DisplayMode"] = "default",
	["LocalScale"] = 0.5,
	["LocalModeCentered"] = true,
	["MaxDistance"] = 5,
	["Indicator"] = "none",
	["HideKey"] = Keyboard.KEY_F2,
	["HideButton"] = -1,
	["InitiallyHidden"] = false,
	["HideInBattle"] = false,
	["DisableObstructionOnFlight"] = true,
	["DisableAchievementCheck"] = false,
	["DisableOnCurse"] = true,
	["DisableOnAltPath"] = true,
	["DisableOnAprilFoolsChallenge"] = true,
	["ShowItemName"] = true,
	["ShowItemType"] = true,
	["ShowItemIcon"] = true,
	["DisplayItemInfo"] = true,
	["DisplayTrinketInfo"] = true,
	["ItemNameColor"] = "ColorEIDObjName",
	["ShowQuality"] = true,
	["ModIndicatorDisplay"] = "None",
	["ModIndicatorTextColor"] = "ColorLightOrange",
	["ShowObjectID"] = false,
	["TransformationText"] = true,
	["TransformationIcons"] = true,
	["TransformationColor"] = "ColorEIDTransform",
	["DisplayCardInfo"] = true,
	["DisplayCardInfoShop"] = false,
	["DisplaySoulstoneInfoShop"] = true,
	["DisplayObstructedCardInfo"] = false,
	["DisplayObstructedSoulstoneInfo"] = true,
	["DisplayCardInfoOptions?"] = false,
	["DisplayPillInfo"] = true,
	["DisplayPillInfoShop"] = true,
	["DisplayPillInfoOptions?"] = true,
	["DisplayObstructedPillInfo"] = false,
	["ShowUnidentifiedPillDescriptions"] = false,
	["DisplayGlitchedItemInfo"] = true,
	["DisplaySacrificeInfo"] = true,
	["DisplayDiceInfo"] = true,
	["DisplayBagOfCrafting"] = "always",
	["DisplayCraneInfo"] = true,
	["DisplayVoidStatInfo"] = false,
	["BagOfCraftingResults"] = 7,
	["BagOfCraftingCombinationMax"] = 12,
	["BagOfCraftingRandomResults"] = 400,
	["BagOfCraftingToggleKey"] = ButtonAction.ACTION_MAP,
	["BagOfCraftingDisplayNames"] = false,
	["BagOfCraftingDisplayIcons"] = false,
	["BagOfCraftingHideInBattle"] = true,
	["BagOfCraftingDisplayMode"] = "Recipe List",
	["CraftingHideKey"] = Keyboard.KEY_F3,
	["CraftingHideButton"] = -1,
	["CraftingResultKey"] = Keyboard.KEY_F4,
	["CraftingResultButton"] = -1,
	["SpindownDiceResults"] = 3,
	["SpindownDiceSkipLocked"] = false,
	["EnableMouseControls"] = false,
	["ShowCursor"] = false,
	["ErrorMessage"] = "[Effect not defined]",
	["TextColor"] = "ColorEIDText",
	["ErrorColor"] = "ColorEIDError",
	["EnableEntityDescriptions"] = true
}
