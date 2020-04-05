if ModConfigMenu then

	function AnIndexOf(t,val)
		for k,v in ipairs(t) do 
			if v == val then return k end
		end
		return 1
	end


	ModConfigMenu.AddText("EID", "General", "Change Language in the Config file.")
	ModConfigMenu.AddSpace("EID", "General")

	-- Disable on Curse
	ModConfigMenu.AddSetting("EID","General", {
		Type = ModConfigMenuOptionType.BOOLEAN,
		CurrentSetting = function()
			return EIDConfig["DisableOnCurse"]
		end,
		Display = function()
			local onOff = "True"
			if EIDConfig["DisableOnCurse"] then
				onOff = "False"
			end
			return "Show on \"Curse of Blind\": " .. onOff
		end,
		OnChange = function(currentBool)
			EIDConfig["DisableOnCurse"] = currentBool
		end,
	})
	--indicator
	local indicators= {"arrow","blink","border","highlight","none"}
	ModConfigMenu.AddSetting("EID", "General", {
		Type = ModConfigMenuOptionType.NUMBER,
		CurrentSetting = function()
			return AnIndexOf(indicators,EIDConfig["Indicator"])
		end,
		Minimum = 1,
		Maximum = 5,
		Display = function()
			return "Indicator: " .. EIDConfig["Indicator"]
		end,
		OnChange = function(currentNum)
			EIDConfig["Indicator"] = indicators[currentNum]
			
		end,
	})

	--------ShowUnidentifiedPillDescriptions---------	
	ModConfigMenu.AddSetting("EID","General", {
		Type = ModConfigMenuOptionType.BOOLEAN,
		CurrentSetting = function()
			return EIDConfig["ShowUnidentifiedPillDescriptions"]
		end,
		Display = function()
			local onOff = "False"
			if EIDConfig["ShowUnidentifiedPillDescriptions"] then
				onOff = "True"
			end
			return "Show Unidentified Pilleffects: " .. onOff
		end,
		OnChange = function(currentBool)
			EIDConfig["ShowUnidentifiedPillDescriptions"] = currentBool
		end,
	})
	--------Sacrifice Room---------	
	ModConfigMenu.AddSetting("EID","Rooms", {
		Type = ModConfigMenuOptionType.BOOLEAN,
		CurrentSetting = function()
			return EIDConfig["DisplaySacrificeInfo"]
		end,
		Display = function()
			local onOff = "False"
			if EIDConfig["DisplaySacrificeInfo"] then
				onOff = "True"
			end
			return "Sacrifice Room Infos: " .. onOff
		end,
		OnChange = function(currentBool)
			EIDConfig["DisplaySacrificeInfo"] = currentBool
		end,
	})

	--------Dice Room---------	
	ModConfigMenu.AddSetting("EID","Rooms", {
		Type = ModConfigMenuOptionType.BOOLEAN,
		CurrentSetting = function()
			return EIDConfig["DisplayDiceInfo"]
		end,
		Display = function()
			local onOff = "False"
			if EIDConfig["DisplayDiceInfo"] then
				onOff = "True"
			end
			return "Dice Room Infos: " .. onOff
		end,
		OnChange = function(currentBool)
			EIDConfig["DisplayDiceInfo"] = currentBool
		end,
	})

	
		------------Collectibles--------------
		
	ModConfigMenu.AddSetting("EID","General", {
		Type = ModConfigMenuOptionType.BOOLEAN,
		CurrentSetting = function()
			return EIDConfig["DisplayItemInfo"]
		end,
		Display = function()
			local onOff = "False"
			if EIDConfig["DisplayItemInfo"] then
				onOff = "True"
			end
			return "Collectible Infos: " .. onOff
		end,
		OnChange = function(currentBool)
			EIDConfig["DisplayItemInfo"] = currentBool
		end,
	})
		------------Trinkets--------------
		
	ModConfigMenu.AddSetting("EID","General", {
		Type = ModConfigMenuOptionType.BOOLEAN,
		CurrentSetting = function()
			return EIDConfig["DisplayTrinketInfo"]
		end,
		Display = function()
			local onOff = "False"
			if EIDConfig["DisplayTrinketInfo"] then
				onOff = "True"
			end
			return "Trinket Infos: " .. onOff
		end,
		OnChange = function(currentBool)
			EIDConfig["DisplayTrinketInfo"] = currentBool
		end,
	})
		------------CARDS--------------
		
	ModConfigMenu.AddSetting("EID","General", {
		Type = ModConfigMenuOptionType.BOOLEAN,
		CurrentSetting = function()
			return EIDConfig["DisplayCardInfo"]
		end,
		Display = function()
			local onOff = "False"
			if EIDConfig["DisplayCardInfo"] then
				onOff = "True"
			end
			return "Card Infos: " .. onOff
		end,
		OnChange = function(currentBool)
			EIDConfig["DisplayCardInfo"] = currentBool
		end,
	})

		------------PILLS--------------
	ModConfigMenu.AddSetting("EID","General", {
		Type = ModConfigMenuOptionType.BOOLEAN,
		CurrentSetting = function()
			return EIDConfig["DisplayPillInfo"]
		end,
		Display = function()
			local onOff = "False"
			if EIDConfig["DisplayPillInfo"] then
				onOff = "True"
			end
			return "Pill Infos: " .. onOff
		end,
		OnChange = function(currentBool)
			EIDConfig["DisplayPillInfo"] = currentBool
		end,
	})
	
	
	
	ModConfigMenu.AddSpace("EID", "Rooms")
	ModConfigMenu.AddText("EID", "Rooms", "Display Infos in Shops")
			------------CARDS--------------
		
	ModConfigMenu.AddSetting("EID","Rooms", {
		Type = ModConfigMenuOptionType.BOOLEAN,
		CurrentSetting = function()
			return EIDConfig["DisplayCardInfoShop"]
		end,
		Display = function()
			local onOff = "False"
			if EIDConfig["DisplayCardInfoShop"] then
				onOff = "True"
			end
			return "Card Infos: " .. onOff
		end,
		OnChange = function(currentBool)
			EIDConfig["DisplayCardInfoShop"] = currentBool
		end,
	})

		------------PILLS--------------
	ModConfigMenu.AddSetting("EID","Rooms", {
		Type = ModConfigMenuOptionType.BOOLEAN,
		CurrentSetting = function()
			return EIDConfig["DisplayPillInfoShop"]
		end,
		Display = function()
			local onOff = "False"
			if EIDConfig["DisplayPillInfoShop"] then
				onOff = "True"
			end
			return "Pill Infos: " .. onOff
		end,
		OnChange = function(currentBool)
			EIDConfig["DisplayPillInfoShop"] = currentBool
		end,
	})
	
	
	
	-- SCALE
	local textScales= {0.5,0.75,1,1.25,1.5,2}
	ModConfigMenu.AddSetting("EID", "Display", {
		Type = ModConfigMenuOptionType.NUMBER,
		CurrentSetting = function()
			return AnIndexOf(textScales,EIDConfig["Scale"])
		end,
		Minimum = 1,
		Maximum = 6,
		Display = function()
			return "Text Size: " .. EIDConfig["Scale"]
		end,
		OnChange = function(currentNum)
			EIDConfig["Scale"] = textScales[currentNum]
			
		end,
	})
	-- maxDistance
	local distances={1,1.5,2,3,4,5,6,7,8,9,10}
	ModConfigMenu.AddSetting("EID", "Display", {
		Type = ModConfigMenuOptionType.SCROLL,
		CurrentSetting = function()
			return AnIndexOf(distances,EIDConfig["MaxDistance"])-1
		end,
		Display = function()
			return "Display Distance: $scroll" .. AnIndexOf(distances,EIDConfig["MaxDistance"])-1 .." "..EIDConfig["MaxDistance"].." Grids"
		end,
		OnChange = function(currentNum)
			EIDConfig["MaxDistance"]= distances[currentNum+1]
		end
	})

	-- Transparency
	local transparencies={0.1,0.175,0.25,0.3,0.4,0.5,0.6,0.75,0.8,0.9,1}
	ModConfigMenu.AddSetting("EID", "Display", {
		Type = ModConfigMenuOptionType.SCROLL,
		CurrentSetting = function()
			return AnIndexOf(transparencies,EIDConfig["Transparency"])-1
		end,
		Display = function()
			return "Transparency: $scroll" .. AnIndexOf(transparencies,EIDConfig["Transparency"])-1 .." "..EIDConfig["Transparency"]
		end,
		OnChange = function(currentNum)
			EIDConfig["Transparency"]= transparencies[currentNum+1]
		end
	})
	--------ShowItemName---------	
	ModConfigMenu.AddSetting("EID","Display", {
		Type = ModConfigMenuOptionType.BOOLEAN,
		CurrentSetting = function()
			return EIDConfig["ShowItemName"]
		end,
		Display = function()
			local onOff = "False"
			if EIDConfig["ShowItemName"] then
				onOff = "True"
			end
			return "Display Item Name: " .. onOff
		end,
		OnChange = function(currentBool)
			EIDConfig["ShowItemName"] = currentBool
		end,
	})
	--------ShowItemType---------	
	ModConfigMenu.AddSetting("EID","Display", {
		Type = ModConfigMenuOptionType.BOOLEAN,
		CurrentSetting = function()
			return EIDConfig["ShowItemType"]
		end,
		Display = function()
			local onOff = "False"
			if EIDConfig["ShowItemType"] then
				onOff = "True"
			end
			return "Display Item Type: " .. onOff
		end,
		OnChange = function(currentBool)
			EIDConfig["ShowItemType"] = currentBool
		end,
	})
		-------TRANSFORMATIONS---------
		
	ModConfigMenu.AddSetting("EID","Display", {
		Type = ModConfigMenuOptionType.BOOLEAN,
		CurrentSetting = function()
			return EIDConfig["TransformationText"]
		end,
		Display = function()
			local onOff = "False"
			if EIDConfig["TransformationText"] then
				onOff = "True"
			end
			return "Display Transformation Name: " .. onOff
		end,
		OnChange = function(currentBool)
			EIDConfig["TransformationText"] = currentBool
		end,
	})
	ModConfigMenu.AddSetting("EID","Display", {
		Type = ModConfigMenuOptionType.BOOLEAN,
		CurrentSetting = function()
			return EIDConfig["TransformationIcons"]
		end,
		Display = function()
			local onOff = "False"
			if EIDConfig["TransformationIcons"] then
				onOff = "True"
			end
			return "Display Transformation Icon: " .. onOff
		end,
		OnChange = function(currentBool)
			EIDConfig["TransformationIcons"] = currentBool
		end,
	})

end
