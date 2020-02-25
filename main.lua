local EID = RegisterMod( "External Item Descriptions" ,1 );
local itemConfig = Isaac.GetItemConfig()

local _, err = pcall(require, "eid_config")
err = tostring(err)
if not string.match(err, "attempt to call a nil value %(method 'ForceError'%)") then
    if string.match(err, "true") then
        err = "Error: require passed in config"
    end
    Isaac.DebugString(err)
    print(err)
end
  require("mod_config_menu")
  require("descriptions.ab+."..EIDConfig["Language"])
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


---------------------------------------------------------------------------
----------------------Handle Mod Compatibility-----------------------------
--[[
  Init variables for other mods to hand over Descriptions
  if they were not yet inited by another mod.
--]]
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
 
function getModDescription(list, id)
  return (list) and (list[id])
end

--Makes textscale smaller, when using detailed english descriptions
if EIDConfig["Language"]=="en_us_detailed" and EIDConfig["Scale"] > 0.5 then
	EIDConfig["Scale"] = 0.5
end

local IconSprite = Sprite()
IconSprite:Load("gfx/icons.anm2", true)

local ArrowSprite = Sprite()
ArrowSprite:Load("gfx/icons.anm2", true)
ArrowSprite:Play("Arrow",false)

local CardSprite = Sprite()
CardSprite:Load("gfx/cardfronts.anm2", true)


---------------------------------------------------------------------------
-------------------------Handle Sacrifice Room-----------------------------
local SacrificeCounter = 1
if EIDConfig["DisplaySacrificeInfo"] then 

function onNewFloor()
	SacrificeCounter = 1
end
EID:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, onNewFloor)

function onDamage(_,entity,_,flag,source)
	if Game():GetRoom():GetType()==RoomType.ROOM_SACRIFICE and source.Type==0  and flag == DamageFlag.DAMAGE_SPIKES then
		if SacrificeCounter<12 then
			SacrificeCounter= SacrificeCounter+1
		end
	end
end
EID:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, onDamage,EntityType.ENTITY_PLAYER)

end


---------------------------------------------------------------------------
---------------------------Printing Functions------------------------------
local itemTypes= {"null","passive","active","familiar","trinket"}
local posY=EIDConfig["YPosition"]

function printDescription(desc)
	local Description = desc[3]
	local padding = posY
	local itemType = itemConfig:GetCollectible(desc[1]).Type
	
	--Display ItemType / Charge
	if EIDConfig["ShowItemType"] and (itemType ==3 or itemType== 4) then	
		local offsetY = 2*EIDConfig["Scale"]
		if EIDConfig["Scale"]<1 then 
			offsetY =-1
		end
		IconSprite:Play(itemTypes[itemType])
		IconSprite.Scale = Vector(EIDConfig["Scale"],EIDConfig["Scale"])
		IconSprite:Update()
		IconSprite:Render(Vector(EIDConfig["XPosition"]-3*EIDConfig["Scale"],padding+offsetY), Vector(0,0), Vector(0,0))
		if itemType ==3 then -- Display Charge
			IconSprite:Play(itemConfig:GetCollectible(desc[1]).MaxCharges)
			IconSprite:Update()
			IconSprite:Render(Vector(EIDConfig["XPosition"]-3*EIDConfig["Scale"],padding+offsetY), Vector(0,0), Vector(0,0))
		end
		if not EIDConfig["ShowItemName"] then
			padding = padding+10*EIDConfig["Scale"]
		end
	end
	--Display Itemname
	if EIDConfig["ShowItemName"] then
		local offset = 0
		if EIDConfig["ShowItemType"]then	if itemType==3 then  offset = 9 else  offset = 6 end end
		Isaac.RenderScaledText(itemConfig:GetCollectible(desc[1]).Name, EIDConfig["XPosition"]+offset*EIDConfig["Scale"], padding-4,EIDConfig["Scale"],EIDConfig["Scale"],EIDConfig["ItemNameColor"][1] , EIDConfig["ItemNameColor"][2], EIDConfig["ItemNameColor"][3], EIDConfig["Transparency"])
		padding = padding+10*EIDConfig["Scale"]
	end
	
	
	--Display Transformation
	if not(desc[2]=="0" or desc[2]=="" or desc[2]==nil ) then
		if EIDConfig["TransformationText"] then
			local transformationText= ""
			if not(printTransformation(desc[2])=="Custom") then
				transformationText =printTransformation(desc[2])
			elseif not(transformations[desc[2]]) then --Custom transformationname
				transformationText=desc[2]
			else
				transformationText=printTransformation(desc[2])
			end
			Isaac.RenderScaledText(transformationText, EIDConfig["XPosition"]+16*EIDConfig["Scale"], padding-1,EIDConfig["Scale"],EIDConfig["Scale"], EIDConfig["TransformationColor"][1] , EIDConfig["TransformationColor"][2], EIDConfig["TransformationColor"][3], EIDConfig["Transparency"])
		end
		if EIDConfig["TransformationIcons"] and not(printTransformation(desc[2])=="Custom") then
			IconSprite:Play("Transformation"..desc[2])
			IconSprite.Scale = Vector(EIDConfig["Scale"],EIDConfig["Scale"])
			IconSprite:Update()
			IconSprite:Render(Vector(EIDConfig["XPosition"]+5*EIDConfig["Scale"],padding+5*EIDConfig["Scale"]), Vector(0,0), Vector(0,0))
		end
		if(EIDConfig["TransformationIcons"] or EIDConfig["TransformationText"] ) then
			padding = padding+10*EIDConfig["Scale"]
		end
	end
	printBulletPoints(Description,padding)
end

function printTrinketDescription(desc,typ)
	local Description = desc[2]
	local padding = posY
	--Display Itemname
	if EIDConfig["ShowItemName"] then
		local name= ""
		if typ=="trinket" then
			name= itemConfig:GetTrinket(desc[1]).Name
		elseif typ=="card" then
			name= itemConfig:GetCard(desc[1]).Name
		elseif typ=="pill" then
			name= itemConfig:GetPillEffect(desc[1]).Name
		elseif typ=="sacrifice" then
			name= sacrificeDescriptionHeader
		elseif typ=="dice" then
			name= diceDescriptionHeader
		elseif typ=="custom" then
			name= desc[2][1]
			Description= desc[2][2]
		end
		Isaac.RenderScaledText(name, EIDConfig["XPosition"]+1*EIDConfig["Scale"], padding-4,EIDConfig["Scale"],EIDConfig["Scale"], EIDConfig["ItemNameColor"][1] , EIDConfig["ItemNameColor"][2], EIDConfig["ItemNameColor"][3], EIDConfig["Transparency"])
		padding = padding+10*EIDConfig["Scale"]
	end
	printBulletPoints(Description,padding)
end

function printBulletPoints(Description,padding)
	local textboxWidth=tonumber(EIDConfig["TextboxWidth"])
	for line in string.gmatch(Description, '([^#]+)') do
		local array={}
		local text = ""
		for word in string.gmatch(line, '([^ ]+)') do
			if string.len(text)+string.len(word)<=textboxWidth then
				text = text.." "..word
			else
				table.insert(array, text)
				text = word
			end
		end
		table.insert(array, text)
		for i, v in ipairs(array) do
			if i== 1 then 
				if string.sub(v, 2, 2)=="\001" or string.sub(v, 2, 2)=="\002" or string.sub(v, 2, 2)=="\003" then 
					Isaac.RenderScaledText(string.sub(v, 2, 2)..string.sub(v,3,string.len(v)), EIDConfig["XPosition"], padding,EIDConfig["Scale"],EIDConfig["Scale"], EIDConfig["TextColor"][1] , EIDConfig["TextColor"][2], EIDConfig["TextColor"][3], EIDConfig["Transparency"])
				else
					Isaac.RenderScaledText("\007"..v, EIDConfig["XPosition"], padding,EIDConfig["Scale"],EIDConfig["Scale"], EIDConfig["TextColor"][1] , EIDConfig["TextColor"][2], EIDConfig["TextColor"][3], EIDConfig["Transparency"])
				end
			else
				Isaac.RenderScaledText("  "..v, EIDConfig["XPosition"], padding,EIDConfig["Scale"],EIDConfig["Scale"], EIDConfig["TextColor"][1] , EIDConfig["TextColor"][2], EIDConfig["TextColor"][3], EIDConfig["Transparency"])
			end
			padding = padding +10*EIDConfig["Scale"]
		end
	end
end

function printTransformation(S)
	local str="Custom";
	for i = 0, #transformations-1 do
		if (tonumber(S)==i) then
			str = tostring(transformations[i+1])
		end
	end
	return str
end



---------------------------------------------------------------------------
---------------------------Handle Rendering--------------------------------
function HasCurseBlind()
	local num = Game():GetLevel():GetCurses()
    local t={}
    while num>0 do
        rest=num%2
        t[#t+1]=rest
        num=(num-rest)/2
    end
    
	return #t>6 and t[7]==1 
end

function renderQuestionMark() 
	IconSprite:Play("CurseOfBlind")
	IconSprite.Scale = Vector(EIDConfig["Scale"],EIDConfig["Scale"])
	IconSprite:Update()
	IconSprite:Render(Vector(EIDConfig["XPosition"]+5*EIDConfig["Scale"],posY+5*EIDConfig["Scale"]), Vector(0,0), Vector(0,0))
	if Isaac.GetPlayer(0):HasCollectible(CollectibleType.COLLECTIBLE_SCHOOLBAG)then	posY =EIDConfig["YPosition"] -30	end
end

function renderIndicator(entity)
	if EIDConfig["Indicator"] == "blink" then
		local c = 255-math.floor(255*((entity.FrameCount%40)/40))
		entity:SetColor(Color(1,1,1,1,c,c,c),1,1,false,false)
		entity:Render(Vector(0,0))
		entity:SetColor(Color(1,1,1,1,0,0,0),2,1,false,false)
		
	elseif EIDConfig["Indicator"] == "border" then
		local c = 255-math.floor(255*((entity.FrameCount%40)/40))
		entity:SetColor(Color(1,1,1,1,c,c,c),1,1,false,false)
		entity:Render(Vector(0,1))
		entity:Render(Vector(0,-1))
		entity:Render(Vector(1,0))
		entity:Render(Vector(-1,0))
		entity:SetColor(Color(1,1,1,1,0,0,0),2,1,false,false)
		entity:Render(Vector(0,0))
		
	elseif EIDConfig["Indicator"] == "highlight" then
		entity:SetColor(Color(1,1,1,1,255,255,255),1,1,false,false)
		entity:Render(Vector(0,1))
		entity:Render(Vector(0,-1))
		entity:Render(Vector(1,0))
		entity:Render(Vector(-1,0))
		entity:SetColor(Color(1,1,1,1,0,0,0),2,1,false,false)
		entity:Render(Vector(0,0))
		
	elseif EIDConfig["Indicator"] == "arrow" then
		ArrowSprite:Update()
		local ArrowOffset = Vector(0,-35)
		if entity.Variant ==100 and not entity:ToPickup():IsShopItem() then ArrowOffset = Vector(0,-62) end
		ArrowSprite:Render(Game():GetRoom():WorldToScreenPosition(entity.Position+ArrowOffset), Vector(0,0), Vector(0,0))
	end
end


---------------------------------------------------------------------------
---------------------------On Render Function------------------------------
local hideDescToggle= false

local function onRender(t)	
	local player = Isaac.GetPlayer(0)
	local closest = nil
	local closestDice = nil
	local dist = 10000
	if Input.IsButtonTriggered(EIDConfig["HideKey"], 0) then
		hideDescToggle = not hideDescToggle;
	end
	if hideDescToggle then return end
	
	for i, entity in ipairs(Isaac.GetRoomEntities()) do
		local isModEntityDesc = false
		if EIDConfig["EnableEntityDescriptions"] and (__eidEntityDescriptions[entity.Type.."."..entity.Variant.."."..entity.SubType]~=nil or type(entity:GetData()["EID_Description"]) ~= type(nil)) then 
			isModEntityDesc= true
		end
		if  Game():GetRoom():GetType()==RoomType.ROOM_DICE and entity.Type==1000 and entity.Variant== 76 then closestDice= entity end

		if isModEntityDesc or (entity.Type == EntityType.ENTITY_PICKUP and (entity.Variant == PickupVariant.PICKUP_COLLECTIBLE or entity.Variant == PickupVariant.PICKUP_TRINKET or entity.Variant == PickupVariant.PICKUP_TAROTCARD or entity.Variant == PickupVariant.PICKUP_PILL) and entity.SubType>0) then
			local diff = entity.Position:__sub(player.Position);
			if diff:Length() < dist then
				closest = entity;
				dist = diff:Length();
			end  
		end
	end 
	
		
		
	if dist/40>tonumber(EIDConfig["MaxDistance"]) or not closest.Type == EntityType.ENTITY_PICKUP  then
		if Game():GetRoom():GetType()==RoomType.ROOM_SACRIFICE and EIDConfig["DisplaySacrificeInfo"] then
			printTrinketDescription(sacrificeDescriptions[SacrificeCounter],"sacrifice")
		end
		if Game():GetRoom():GetType()==RoomType.ROOM_DICE and EIDConfig["DisplayDiceInfo"] and type(closestDice) ~= type(nil) then
			printTrinketDescription(diceDescriptions[closestDice.SubType+1],"dice")
			renderIndicator(closestDice)
		end
		return
	end
	if closest==nil then return end
	
	
	--Handle Indicators
	renderIndicator(closest)
	

	--Handle Entities (specific)
	if EIDConfig["EnableEntityDescriptions"] and type(closest:GetData()["EID_Description"]) ~= type(nil) then
		printTrinketDescription({closest.Type,closest:GetData()["EID_Description"]},"custom")
		return
	end
	
	--Handle Entities (omni)
	if EIDConfig["EnableEntityDescriptions"] and __eidEntityDescriptions[closest.Type.."."..closest.Variant.."."..closest.SubType] ~=nil then
		printTrinketDescription({closest.Type,getModDescription(__eidEntityDescriptions,closest.Type.."."..closest.Variant.."."..closest.SubType)},"custom")
		return
	end
	
	
	--Handle Trinkets
	if closest.Variant == PickupVariant.PICKUP_TRINKET then
		if closest.SubType <= 128 then
			printTrinketDescription(trinketdescriptions[closest.SubType],"trinket")
		elseif getModDescription(__eidTrinketDescriptions,closest.SubType) then
			printTrinketDescription({closest.SubType,getModDescription(__eidTrinketDescriptions,closest.SubType)},"trinket")
		else
			printTrinketDescription({closest.SubType,itemConfig:GetTrinket(closest.SubType).Description})
		end
	--Handle Collectibles
	elseif closest.Variant == PickupVariant.PICKUP_COLLECTIBLE then
		if HasCurseBlind() and EIDConfig["DisableOnCurse"] then	renderQuestionMark() return	end
		if getModDescription(__eidItemDescriptions,closest.SubType) then
			local tranformation = "0"
			if  getModDescription(__eidItemTransformations,closest.SubType) then
				 tranformation = getModDescription(__eidItemTransformations,closest.SubType)
			end 
			printDescription({closest.SubType,tranformation,getModDescription(__eidItemDescriptions,closest.SubType)})
		elseif closest.SubType <= 552 then
			if getModDescription(__eidItemTransformations,closest.SubType) then
				printDescription({closest.SubType,getModDescription(__eidItemTransformations,closest.SubType),descriptarray[closest.SubType][3]})
			else		
				printDescription(descriptarray[closest.SubType])
			end
		else
			printDescription({closest.SubType,"",itemConfig:GetCollectible(closest.SubType).Description})
		end
	--Handle Cards & Runes
    elseif closest.Variant == PickupVariant.PICKUP_TAROTCARD then
		if EIDConfig["DisplayCardInfo"] then
			if closest:ToPickup():IsShopItem() and not EIDConfig["DisplayCardInfoShop"] then renderQuestionMark() return end
			if getModDescription(__eidCardDescriptions,closest.SubType) then
				printTrinketDescription({closest.SubType,getModDescription(__eidCardDescriptions,closest.SubType)},"card")
			elseif closest.SubType <= 54 then 
				printTrinketDescription(cardDescriptions[closest.SubType],"card")
				CardSprite:Play(tostring(closest.SubType))
				CardSprite.Scale = Vector(EIDConfig["Scale"],EIDConfig["Scale"])
				CardSprite:Update()
				local offsetX = 0
				if EIDConfig["ShowItemName"] then offsetX = 10 end
				CardSprite:Render(Vector(EIDConfig["XPosition"]-9*EIDConfig["Scale"],posY+(12+offsetX)*EIDConfig["Scale"]), Vector(0,0), Vector(0,0))
			else
				printTrinketDescription({closest.SubType,itemConfig:GetCard(closest.SubType).Description})
			end
		end
	--Handle Pills
    elseif closest.Variant == PickupVariant.PICKUP_PILL then
		if EIDConfig["DisplayPillInfo"] then
			if closest:ToPickup():IsShopItem() and not EIDConfig["DisplayPillInfoShop"] then renderQuestionMark() return end
			
			local pillColor = closest.SubType
			local pool = Game():GetItemPool()
			local pillEffect = pool:GetPillEffect(pillColor)
			local identified = pool:IsPillIdentified(pillColor)
			if (identified or EIDConfig["ShowUnidentifiedPillDescriptions"]) then
				if getModDescription(__eidPillDescriptions,pillEffect) then
					printTrinketDescription({pillEffect,getModDescription(__eidPillDescriptions,pillEffect)},"pill")
				elseif pillEffect < 47 then 
					printTrinketDescription(pillDescriptions[pillEffect+1],"pill")
				else  
					Isaac.RenderScaledText(EIDConfig["ErrorMessage"], EIDConfig["XPosition"], posY,EIDConfig["Scale"],EIDConfig["Scale"], EIDConfig["ErrorColor"][1] , EIDConfig["ErrorColor"][2], EIDConfig["ErrorColor"][3], EIDConfig["Transparency"])
				end
			else
				Isaac.RenderScaledText(unidentifiedPillMessage, EIDConfig["XPosition"], posY,EIDConfig["Scale"],EIDConfig["Scale"], EIDConfig["ErrorColor"][1] , EIDConfig["ErrorColor"][2], EIDConfig["ErrorColor"][3], EIDConfig["Transparency"])
			end
			local pillsprite = closest:GetSprite()
			pillsprite.Scale = Vector(EIDConfig["Scale"]*0.75,EIDConfig["Scale"]*0.75)
			pillsprite:Update()
			local offsetX = 0
			if EIDConfig["ShowItemName"] and (identified or EIDConfig["ShowUnidentifiedPillDescriptions"]) then offsetX = 10 end
			pillsprite:Render(Vector(EIDConfig["XPosition"]+2*EIDConfig["Scale"],posY+(11+offsetX)*EIDConfig["Scale"]), Vector(0,0), Vector(0,0))
			pillsprite.Scale = Vector(1,1)
		end
    end
	if player:HasCollectible(CollectibleType.COLLECTIBLE_SCHOOLBAG)then	posY =EIDConfig["YPosition"] +30	end	
end

EID:AddCallback(ModCallbacks.MC_POST_RENDER, onRender)




if ModConfigMenu then
local json = require("json")
	--------------------------------
	--------Handle Savadata---------
	--------------------------------
	function OnGameStart(isSave)
		--Loading Moddata--
		if EID:HasData() then
			EIDConfig = json.decode(Isaac.LoadModData(EID))
		end
	end
	EID:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, OnGameStart)

	--Saving Moddata--
	function SaveGame()
		EID.SaveData(EID, json.encode(EIDConfig))
	end
	EID:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT, SaveGame)

end