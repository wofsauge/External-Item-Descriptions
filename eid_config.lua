EIDConfig={

	-------GENERAL---------
	
	-- Change language of the mod. 
	-- Currently Supported: 	English = "en_us" (Default) , "en_us_detailed"
	--                          French = "fr"  	    SPECIAL THANKS TO Nicolas Delvaux
	--							Polish = "pl"		SPECIAL THANKS TO Rickyy
	--							Spanish = "spa"		SPECIAL THANKS TO Lidia Arroyo Purroy 
	--							Portuguese = "pt"	SPECIAL THANKS TO Marcelino Cruz 
	--                          Chinese (https://steamcommunity.com/sharedfiles/filedetails/?id=836319872) 
	-- 							Italian (https://steamcommunity.com/sharedfiles/filedetails/?id=931392691)
	-- 							Russian (https://steamcommunity.com/sharedfiles/filedetails/?id=1552851879)
	-- If you want to make a translation, please contact me :)
	["Language"] = "en_us",
	
	-- Change Width of the info boxes. (In characters)
	-- Default = 25
	["TextboxWidth"] = 25,
	-- Change Size of the info boxes. Range: [0,...,1]
	-- Default = 1
	["Scale"] = 1,
	-- Set transparency of the background. Range: [0,...,1]
	-- Default = 0.75
	["Transparency"] = 0.75,
	-- Set X Position (Width) of the descriptiontext
	-- Default = 50
	["XPosition"] = 50,
	-- Set Y Position (Height) of the descriptiontext
	-- Default = 33
	["YPosition"] = 33,
	-- Set the distance to an item in which informations will be displayed (in Tiles)
	-- Default = 5
	["MaxDistance"] = 5,
	-- Choose between an indicator, that highlights the currently inspected object    
	-- Options: ["arrow","blink","border","highlight","none"]. 
	-- Arrow = moving arrow pointing at the item | Blink = the whole sprite blinks white | Border = Blinking white border around the sprite | Highlight = White border around the sprite |  None = Disable funtion
	-- Default = "none"
	["Indicator"] = "none",
	
	-- Set the keybinding to toggle the descriptions
	-- look into the AB+ documentation for the key names
	-- Default = Keyboard.KEY_F2  
	["HideKey"] = Keyboard.KEY_F2 ,
	
	-------------CURSE-------------
	
	-- Display informations when the floor has curse of the blind ( ? - Items)
	-- Default = true
	["DisableOnCurse"] = true,
	
	----------ITEM NAMES-----------
	
	-- Toggle Display of Collectible / Card and Pill names
	-- Default = true
	["ShowItemName"] = true,
	-- Toggle Display of the Item Type and Maximum Charges as an icon
	-- Default = true
	["ShowItemType"] = true,
	-- Set the RGB color of the Itemname text
	-- Default = {0.8, 0.3, 0.8}
	["ItemNameColor"] = {0.8, 0.3, 0.8},
	
	-------TRANSFORMATIONS---------
	
	-- Toggle Display of Transformation text
	-- Default = true
	["TransformationText"] = true,
	-- Toggle Display of Transformation icons
	-- Default = true
	["TransformationIcons"] = true,
	-- Set the RGB color of the Transformation text
	-- Default = { 0.5, 0.5, 1}
	["TransformationColor"] = { 0.5, 0.5, 1},
	
	------------CARDS--------------
	
	-- Toggle Display of Card / Rune descriptions
	-- Default = true
	["DisplayCardInfo"] = true,
	-- Toggle Display of Card / Rune descriptions when its a shop item
	-- Default = false
	["DisplayCardInfoShop"] = false,
	
	------------PILLS--------------
	
	-- Toggle Display of Pill descriptions
	-- Default = true
	["DisplayPillInfo"] = true,
	-- Toggle Display of Pill descriptions when its a shop item
	-- Default = true
	["DisplayPillInfoShop"] = true,
	-- Toggle Display of Pill descriptions that arent known to you yet
	-- Default = false	
	["ShowUnidentifiedPillDescriptions"] = false,
	
	
	--------Sacrifice Room---------
	
	-- Toggle Display of next Sacrifice room Payout descriptions
	-- Default = true
	["DisplaySacrificeInfo"] = true,
	
	
	--------Dice Room---------
	
	-- Toggle Display of Diceroom descriptions
	-- Default = true
	["DisplayDiceInfo"] = true,
	
	
	-------------MISC---------------
	
	-- Error message displayed when an error occurs
	-- Default = [Effect not defined]
	["ErrorMessage"] = "[Effect not defined]",
	-- Set the RGB color of the default description text
	-- Default = { 1, 1, 1}
	["TextColor"] = {1,1,1},
	-- Set the RGB color of the Error text
	-- Default = { 1, 0, 0}
	["ErrorColor"] = {1,0.4,0.4},
	-- Enables or disables custom Descriptions for entities
	-- Default = true
	["EnableEntityDescriptions"] = true
	
	}

--END CONFIG--
-----------
-----------


--Mod compatibility thing--	
	
EIDConfig:ForceError()
 