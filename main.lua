--[[ changelog

Improves support for using UTF8 fonts
Adds Font hotswapping to text rendering
Normalizes global function calls (YAEID. to YAEID:)

]]

local MOD = RegisterMod( "yetanother's External Item Descriptions", 1 );

-- User Configurable Settings
local CONFIG = {
    --Font=package.path:sub(1,package.path:find(";")):sub(1,-7).."/resources/font/tiny.fnt", -- The font used to render the descriptions
    --LineBreakSize=32, -- Number of consecutive characters before forcing a line break at the next space character
    Alignment=0.0, -- Percentage of alignment (0 left aligned, 1 right aligned)
    DefaultFallback=true, -- Use the in-game description if there is no custom one
    CenterMetadata=false, -- If true, centers names and descriptions in local mode
    Font="font/pftempestasevencondensed.fnt", -- The font used to render the descriptions
    HandleCollectibles=true, -- Show descriptions for actives and passives
    HandlePills=true, -- Show descriptions for pills
    HandlePocket=true, -- Show descriptions for cards and runes
    HandleTrinkets=true, -- Show descriptions for trinkets
    HandleGenerics=true, -- Show descriptions for non Collectible/Pocket/Trinket entities
    HighlightTarget=true, -- Highlight the description target
    HighlightTargetBlink=true, -- If the highlight target should continue to blink
    HighlightTargetBlinkRate=20, -- That rate at which the description target is highlighted
    Language="enUS", -- Used as a fallback if no translation exists for the language override
    LineBreakSize=256, -- Pixel width before forcing a line break at the next valid character
    LineSpacing=0, -- PIxel adjustment for line spacing
    LocalAlignment=0.5, -- Alignment override for LocalMode only
    LocalFont="font/pftempestasevencondensed.fnt", -- The font used to render the descriptions
    LocalMode=true, -- Show text near the description target instead
    LocalScale=0.5, -- Scaling override for LocalMode only
    MaxDistance=3, -- Minimum amount of tiles the player must be away to display the description
    PillCheat=false, -- Show the description of unidentified pills
    RenderScale=1.0, -- The scale of the description text
    RenderTextShadow = false, -- If true, render text shadow (performance hit)
    RenderTextShadowTransparency = 0.65, -- The percentage opacity for the text shadow
    RenderX=50, -- The x position to render the description
    RenderY=30, -- The y position to render the description
    ShowAdvancedInfo=false, -- Include advanced information in descriptions (for description packs that want to use it)
    ShowAlways=false, -- Show descriptions even when there are enemies in the room
    ShowBaseDescriptions=true, -- Include the item's normal description in the description (when applicable)
    ShowExtraInfo=false, -- Include item relevant information from ItemConfig
    ShowIDs=false, -- Include the item ID in the description (when applicable) (disabled if ShowNames is false)
    ShowNames=true, -- Include the item name in the description (when applicable)
    ShowTyping=false, -- Include the full entity type in the description (when applicable)
    SixthSense=false, -- Show the description even if Curse of the Blind is active
    Transparency=0.75, -- How opaque the description text is drawn
    WindowShopper=false, -- Show the description of unpurchased items in the shop
}

local ITEM_CONFIG = Isaac.GetItemConfig()
local JSON = require("json")
local VECTOR_ZERO = Vector( 0, 0 )
local GLYPH = "\xB0"
local COLOR = "\xB1"
local COLORS =
{
    White                   = COLOR.."FFFFFFFF",
    ItemDescription         = COLOR.."FFFFFFFF",
    Black                   = COLOR.."000000FF",
    Red                     = COLOR.."FF3333FF",
    Green                   = COLOR.."33AA33FF",
    Blue                    = COLOR.."3333FFFF",
    Magenta                 = COLOR.."FF33FFFF",
    Cyan                    = COLOR.."00DDDDFF",
    Yellow                  = COLOR.."FFFF00FF",
    DarkGrey                = COLOR.."333333FF",
    Grey                    = COLOR.."666666FF",
    LightGrey               = COLOR.."999999FF",
    LighterGrey             = COLOR.."BBBBBBFF",
    ItemExtraInfo           = COLOR.."BBBBBBBB",
    ItemBaseDescription     = COLOR.."666666FF",
    LightRed                = COLOR.."FF8888FF",
    LightGreen              = COLOR.."88FF88FF",
    LightBlue               = COLOR.."8888FFFF",
    ItemTransformation      = COLOR.."9999FFFF",
    LightMagenta            = COLOR.."FF99FFFF",
    PaleCyan                = COLOR.."33FFFFFF",
    PaleYellow              = COLOR.."FFFF99FF",
    ItemName                = COLOR.."FFFF99FF",
    Orange                  = COLOR.."DDAA00FF",
    ItemTag                 = COLOR.."DDAA00FF",
    Pink                    = COLOR.."FFBBBBFF",
}
local ALIGN = "\xB2"
local ALIGNMENTS = {
    Left = ALIGN.."00",
    Center = ALIGN.."7F",
    Right = ALIGN.."FF",
}
local FONT = "\xB3"
local LINE_BREAKS = {
    [" "] = true,
    [","] = true,
    ["."] = true,
    [";"] = true,
    [GLYPH] = true,
}

local GetDescription
local GetPaddedHex
local GetFont
local ParseText
local RenderCustomText
local UnformatText
local ParseParameters
local Initialize
local LoadFont
local AutoCompleteCallback
local CleanBlacklist
local glyphRenderer = Sprite()
local Log = (_D and _D.Log or nil) or function(...)
    for k,v in ipairs(table.concat({...},"")) do
        Isaac.ConsoleOutput(v)
    end
end

GetPaddedHex = function( number, width )
    local hex = string.format( "%X", number )
    if width ~= nil then
        while #hex < width do hex = "0"..hex end
    end
    return hex
end

local OPTION_TYPE = {
    Boolean=0,
    Number=1,
    Text=2,
    FlagEnum=3,
}

local DEFAULTS = {}
for k,v in pairs(CONFIG) do
    DEFAULTS[k] = v
end

local SET_OPTIONS =
{
    ["alignment"] = { OPTION_TYPE.Number, "Alignment", 0, 1 },
    ["centermetadata"] = { OPTION_TYPE.Boolean, "CenterMetadata", function() HandleQueue() end },
    ["defaultfallback"] = { OPTION_TYPE.Boolean, "DefaultFallback" },
    ["font"] = { OPTION_TYPE.Text, "Font", function( value )
        CONFIG["Font"] = value
        LoadFont( value )
        Log( COLORS.PaleYellow.."Font",COLORS.White,"set to",COLORS.LightBlue,value )
    end },
    ["handlecollectibles"] = { OPTION_TYPE.Boolean, "HandleCollectibles" },
    ["handlegenerics"] = { OPTION_TYPE.Boolean, "HandleGenerics" },
    ["handlepills"] = { OPTION_TYPE.Boolean, "HandlePills" },
    ["handlepocket"] = { OPTION_TYPE.Boolean, "HandlePocket" },
    ["handletrinkets"] = { OPTION_TYPE.Boolean, "HandleTrinkets" },
    ["highlighttarget"] = { OPTION_TYPE.Boolean, "HighlightTarget" },
    ["highlighttargetblink"] = { OPTION_TYPE.Boolean, "HighlightTargetBlink" },
    ["highlighttargetblinkrate"] = { OPTION_TYPE.Number, "HighlightTargetBlinkRate", 1 },
    ["language"] = { OPTION_TYPE.Text, "Language", function( value )
        YAEID_LANGUAGE_OVERRIDE = nil
        CONFIG["Language"] = value
    end },
    ["linebreaksize"] = { OPTION_TYPE.Number, "LineBreakSize", 0 },
    ["linespacing"] = { OPTION_TYPE.Number, "LineSpacing", -100, 100 },
    ["localalignment"] = { OPTION_TYPE.Number, "LocalAlignment", 0, 1 },
    ["localfont"] = { OPTION_TYPE.Text, "LocalFont", function( value ) LoadFont( value ) return true end },
    ["localmode"] = { OPTION_TYPE.Boolean, "LocalMode", function() HandleQueue() end },
    ["localscale"] = { OPTION_TYPE.Number, "LocalScale", 0.01, 8 },
    ["maxdistance"] = { OPTION_TYPE.Number, "MaxDistance", 0, 10000 },
    ["pillcheat"] = { OPTION_TYPE.Boolean, "PillCheat" },
    ["renderscale"] = { OPTION_TYPE.Number, "RenderScale", 0.01, 8 },
    ["rendertextshadow"] = { OPTION_TYPE.Boolean, "RenderTextShadow" },
    ["rendertextshadowtransparency"] = { OPTION_TYPE.Number, "RenderTextShadowTransparency", 0 },
    ["renderx"] = { OPTION_TYPE.Number, "RenderX" },
    ["rendery"] = { OPTION_TYPE.Number, "RenderY" },
    ["showadvancedinfo"] = { OPTION_TYPE.Boolean, "ShowAdvancedInfo" },
    ["showalways"] = { OPTION_TYPE.Boolean, "ShowAlways" },
    ["showbasedescriptions"] = { OPTION_TYPE.Boolean, "ShowBaseDescriptions" },
    ["showextrainfo"] = { OPTION_TYPE.Boolean, "ShowExtraInfo" },
    ["showids"] = { OPTION_TYPE.Boolean, "ShowIDs" },
    ["shownames"] = { OPTION_TYPE.Boolean, "ShowNames" },
    ["showtyping"] = { OPTION_TYPE.Boolean, "ShowTyping" },
    ["sixthsense"] = { OPTION_TYPE.Boolean, "SixthSense" },
    ["transparency"] = { OPTION_TYPE.Number, "Transparency", 0, 1 },
    ["windowshopper"] = { OPTION_TYPE.Boolean, "WindowShopper" },
}

local transparency = 0
local fonts = {}
local font = nil

GetFont = function( fontName )
    if fontName == nil then
        if CONFIG.LocalMode == true then
            fontName = CONFIG.LocalFont
        else
            fontName = CONFIG.Font
        end
    end
    return fonts[ fontName ]
end

LoadFont = function( path, skipIfLoaded )
    if font == nil then
        font = path
    end
    if fonts[path] == nil then
        fonts[path] = Font()
        fonts[path]:Load( path )
        fonts[path]:SetMissingCharacter(32)
    elseif skipIfLoaded ~= true then
        fonts[path]:Unload()
        fonts[path]:Load( path )
    end
end

Initialize = function()
    LoadFont( CONFIG.Font, true )
    LoadFont( CONFIG.LocalFont,  true )
    if _D ~= nil and _D.AddAutoCompleteCallback ~= nil then
        _D.AddAutoCompleteCallback( "yaeid", AutoCompleteCallback )
    else
        DEVHELPER_AUTOCOMPLETE_QUEUE = DEVHELPER_AUTOCOMPLETE_QUEUE or {}
        table.insert( DEVHELPER_AUTOCOMPLETE_QUEUE, AutoCompleteCallback )
    end
    HandleQueue()
end

-- Looks for the queue of callbacks to be called when YAEID initializes and calls any that exist
HandleQueue = function()
    if YAEID_QUEUE ~= nil then
        for k,callback in pairs(YAEID_QUEUE) do
            callback()
        end
    end
end

ParseParameters = function( text )
    local parameters = {}
    while #text > 0 do
        local found = text:find("[ %\"']")
        if found ~= nil then
            local parameter = nil
            if (text:sub(found,found) == "\"" or text:sub(found,found) == "'") and text:sub(found-1,found-1) ~= "\\" then
                matchingQuote = text:sub(found,found)
                local match = text:find( matchingQuote, found+1 )
                if match ~= nil then
                    parameter = text:sub( found, match )
                    local front = text:sub( 1, found-1 )
                    local back = text:sub( match+1 )
                    text = front..back
                end
                matchingQuote = nil
            end
            if parameter == nil and text:sub(found,found) == " " then
                parameter = text:sub( 1, found-1 )
                text = text:sub( found+1 )
            elseif parameter == nil then
                local nextSpace = text:find(" ")
                if nextSpace ~= nil then
                    parameter = text:sub( 1, nextSpace )
                    text = text:sub( nextSpace+1 )
                else
                    parameter = text
                    text = ""
                end
            end
            if parameter ~= nil then
                if #parameter > 0 and parameter ~= " " then
                    table.insert( parameters, parameter )
                end
                if #text == 0 then
                    break
                end
            end
        end
    end
    return parameters
end

--http://lua-users.org/wiki/SplitJoin
local function Split(str, pat)
   local t = {}  -- NOTE: use {n = 0} in Lua-5.0
   local fpat = "(.-)" .. pat
   local last_end = 1
   local s, e, cap = str:find(fpat, 1)
   while s do
      if s ~= 1 or cap ~= "" then
         table.insert(t,cap)
      end
      last_end = e+1
      s, e, cap = str:find(fpat, last_end)
   end
   if last_end <= #str then
      cap = str:sub(last_end)
      table.insert(t, cap)
   end
   return t
end

-- A description entry, including the relevant id, and languages
function DescriptionEntry( entityType, entityVariant, entitySubType )
    local obj = {}
    obj.entityType = entityType
    obj.entityVariant = entityVariant
    obj.entitySubType = entitySubType
    obj.descriptions = {}
    function obj:SetTranslation( description, languageCode, isImage )
        if languageCode ~= nil then
            if description ~= nil and #description > 0 then
                obj.descriptions[languageCode] = { description, isImage or false }
            end
        end
    end
    return obj
end

-- Contains the data necessary to display descriptions
local descriptionEntries = {}

local _YAEID = {}
_YAEID.__index = function (table, key)
    return _YAEID[key]
end
_YAEID.__newindex = function (table,key,value) end
_YAEID.CONFIG = {}
setmetatable(_YAEID.CONFIG, {__index = function( table, key ) return CONFIG[key] end})

local customGlyphCount = 0
local customGlyphs = {}
function _YAEID:RegisterGlyph( anm2Path, animation, frame, width, height )
    local glyphKey = GetPaddedHex( customGlyphCount, 4 )
    customGlyphs[glyphKey] = { anm2Path, animation, frame, width, height }
    customGlyphCount = customGlyphCount + 1
    return glyphKey
end

local customFontCount = 0
local customFonts = {}
function  _YAEID:RegisterFont( fontPath )
    local fontKey = GetPaddedHex( customFontCount, 4 )
    customFonts[fontKey] = fontPath
    customFontCount = customFontCount + 1
    return FONT..fontKey
end

function _YAEID:GetColorString( color )
    if color ~= nil then
        return string.format("%X%X%X%X",
            math.min( 255, math.max( 0, ( color.R or 1 ) * 255 ) ),
            math.min( 255, math.max( 0, ( color.G or 1 ) * 255 ) ),
            math.min( 255, math.max( 0, ( color.B or 1 ) * 255 ) ),
            math.min( 255, math.max( 0, ( color.A or 1 ) * 255 ) )
        )
    end
    return ""
end

_YAEID.ParseText = ParseText
_YAEID.UnformatText = UnformatText
_YAEID.RenderCustomText = RenderCustomText

GLYPHS = {
    MovementSpeed = _YAEID.RegisterGlyph("gfx/ui/hudstats.anm2","Icons",0,16,16),
    Range = _YAEID.RegisterGlyph("gfx/ui/hudstats.anm2","Icons",1,16,16),
    FireDelay = _YAEID.RegisterGlyph("gfx/ui/hudstats.anm2","Icons",2,16,16),
    ShotSpeed = _YAEID.RegisterGlyph("gfx/ui/hudstats.anm2","Icons",3,16,16),
    Damage = _YAEID.RegisterGlyph("gfx/ui/hudstats.anm2","Icons",4,16,16),
    Luck = _YAEID.RegisterGlyph("gfx/ui/hudstats.anm2","Icons",4,16,16),
    ShotHeight = _YAEID.RegisterGlyph("gfx/ui/hudstats.anm2","Icons",4,16,16),
    AngelChance = _YAEID.RegisterGlyph("gfx/ui/hudstats.anm2","Icons",4,16,16),
    DevilChance = _YAEID.RegisterGlyph("gfx/ui/hudstats.anm2","Icons",4,16,16),
    MovementSpeedSmall = _YAEID.RegisterGlyph("gfx/ui/hudstats.anm2","SmallerIcons",0,10,10),
    RangeSmall = _YAEID.RegisterGlyph("gfx/ui/hudstats.anm2","SmallerIcons",1,10,10),
    FireDelaySmall = _YAEID.RegisterGlyph("gfx/ui/hudstats.anm2","SmallerIcons",2,10,10),
    ShotSpeedSmall = _YAEID.RegisterGlyph("gfx/ui/hudstats.anm2","SmallerIcons",3,10,10),
    DamageSmall = _YAEID.RegisterGlyph("gfx/ui/hudstats.anm2","SmallerIcons",4,10,10),
    LuckSmall = _YAEID.RegisterGlyph("gfx/ui/hudstats.anm2","SmallerIcons",4,10,10),
    ShotHeightSmall = _YAEID.RegisterGlyph("gfx/ui/hudstats.anm2","SmallerIcons",4,10,10),
    AngelChanceSmall = _YAEID.RegisterGlyph("gfx/ui/hudstats.anm2","SmallerIcons",4,10,10),
    DevilChanceSmall = _YAEID.RegisterGlyph("gfx/ui/hudstats.anm2","SmallerIcons",4,10,10)
}

-- Individual
local blacklist = {}
-- Stores the Game's Level. Updated in MC_POST_NEW_LEVEL
local level = nil
-- Stores the Game's ItemPool. Updated in MC_POST_GAME_STARTED
local itemPool = nil
-- If there is a description that needs printing, assign it here and it will be printed in PostRender
-- This is cleared on PostUpdate if there is no valid item item in range
local activeDescription = nil
-- The actual entity that is being described, used for highlighting
local descriptionTarget = nil
-- The Index of the described entity, used for highlighting
local lastClosestPickupID = -1
-- If the active description is an image description, it will be stored here
local activeSpritesheet = nil
-- The name of the last sprite sheet replaced, used to minimize ReplaceSpritesheet calls
local lastSpritesheet = nil
-- The actual anm2 that will be used to render image descriptions
local activeSprite = Sprite()
activeSprite:Load("yaeid_description_entry.anm2",true)

CleanBlacklist = function()
    local typeEntries = 0
    for entityType,entityTypeEntry in pairs(blacklist) do
        local variantEntries = 0
        for entityVariant,entityVariantEntry in pairs(entityTypeEntry) do
            local subTypeEntries = 0
            for entitySubType,entitySubTypeEntry in pairs(entityVariantEntry) do
                subTypeEntries = subTypeEntries + 1
            end
            if subTypeEntries == 0 then
                entityTypeEntry[entityVariant] = nil
            else
                variantEntries = variantEntries + 1
            end
        end
        if variantEntries == 0 then
            blacklist[entityType] = nil
        else
            typeEntries = typeEntries + 1
        end
    end
end

--[[ Registration functions
An entry should be in the format { entityType, entityVariant, entitySubType, description }
]]
    function _YAEID:RegisterDescriptions( entries )
        for k,entry in pairs(entries) do
            local entityType = entry[1]
            local entityVariant = entry[2]
            local entitySubType = entry[3]
            local descriptionText = entry[4]
            local languageCode = entry[5]
            local isImage = entry[6]
            if entityType ~= nil and entityVariant ~= nil and entitySubType ~= nil and descriptionText ~= nil then
                if descriptionEntries[entityType] == nil then
                    descriptionEntries[entityType] = {}
                end
                if descriptionEntries[entityType][entityVariant] == nil then
                    descriptionEntries[entityType][entityVariant] = {}
                end
                --[[if descriptionEntries[entityType][entityVariant][entitySubType] ~= nil then
                    _D.Log("entry override",entityType,entityVariant,entitySubType)
                end]]
                local descriptionEntry = descriptionEntries[entityType][entityVariant][entitySubType] or DescriptionEntry( entityType, entityVariant, entitySubType )
                if languageCode == nil then
                    languageCode = YAEID_LANGUAGE_OVERRIDE or CONFIG.Language
                end
                descriptionEntry:SetTranslation( descriptionText, languageCode, isImage )
                descriptionEntries[entityType][entityVariant][entitySubType] = descriptionEntry
            end
        end
    end

    function _YAEID:RegisterCollectibles( entries )
        if #entries > 0 then
            for i,entry in ipairs(entries) do
                table.insert( entry, 1, PickupVariant.PICKUP_COLLECTIBLE )
                table.insert( entry, 1, EntityType.ENTITY_PICKUP )
            end
            _YAEID:RegisterDescriptions( entries )
        end
    end

    function _YAEID:RegisterTrinkets(entries)
        if #entries > 0 then
            for i,entry in ipairs(entries) do
                table.insert( entry, 1, PickupVariant.PICKUP_TRINKET )
                table.insert( entry, 1, EntityType.ENTITY_PICKUP )
            end
            _YAEID:RegisterDescriptions( entries )
        end
    end

    function _YAEID:RegisterCards(entries)
        if #entries > 0 then
            for i,entry in ipairs(entries) do
                table.insert( entry, 1, PickupVariant.PICKUP_TAROTCARD )
                table.insert( entry, 1, EntityType.ENTITY_PICKUP )
            end
            _YAEID:RegisterDescriptions( entries )
        end
    end

    function _YAEID:RegisterPills(entries)
        if #entries > 0 then
            for i,entry in ipairs(entries) do
                table.insert( entry, 1, PickupVariant.PICKUP_PILL )
                table.insert( entry, 1, EntityType.ENTITY_PICKUP )
            end
            _YAEID:RegisterDescriptions( entries )
        end
    end

    function _YAEID:GetDescription( entityType, entityVariant, entitySubType, languageCode )
        local description = ""
        local configItem = nil
        local entryKey = nil
        if entityVariant == PickupVariant.PICKUP_COLLECTIBLE then
            configItem = ITEM_CONFIG:GetCollectible(entitySubType)
            entryKey = entitySubType
        elseif entityVariant == PickupVariant.PICKUP_TRINKET then
            configItem = ITEM_CONFIG:GetTrinket(entitySubType)
            entryKey = entitySubType
        elseif entityVariant == PickupVariant.PICKUP_TAROTCARD then
            configItem = ITEM_CONFIG:GetCard(entitySubType)
            entryKey = entitySubType
        elseif entityVariant == PickupVariant.PICKUP_PILL then
            -- TODO: This isn't modded pills friendly (though i've never seen a modded pill)
            local pillEffect = itemPool:GetPillEffect(entitySubType)
            configItem = ITEM_CONFIG:GetPillEffect(pillEffect)
            entryKey = pillEffect
        else
            entryKey = entitySubType
        end
        local prefix = ""
        if CONFIG.LocalMode == true and CONFIG.CenterMetadata == true then
            prefix = ALIGNMENTS.Center
        end
        if configItem ~= nil then
            if CONFIG.ShowNames == true then
                local color = COLORS.PaleYellow
                if configItem.Special == true and Game():GetFrameCount() % 8 >= 4 then
                    color = COLORS.Cyan
                end
                description = description .. color
                description = description .. prefix..configItem.Name
                if CONFIG.ShowIDs == true then
                    description = description .. " ["..configItem.ID.."]"
                end
                if CONFIG.ShowTyping == true then
                    description = description .. " ("..entityType.."."..entityVariant.."."..entitySubType..")"
                end
                description = description .. "\n"
            end
            if CONFIG.ShowBaseDescriptions == true and configItem.Description ~= nil then
                description = description.. COLORS.Grey
                description = description .. prefix.."\"" .. configItem.Description .. "\""
                description = description .. "\n"
            end
            if CONFIG.ShowExtraInfo == true then
                if configItem.IsCollectible ~= nil and configItem:IsCollectible() == true then
                    if configItem.Type == ItemType.ITEM_ACTIVE then
                        description = description .. COLORS.Orange .. "Active"
                        description = description .. "\n"
                    elseif configItem.Type == ItemType.ITEM_PASSIVE then
                        description = description .. COLORS.Orange .. "Passive"
                        description = description .. "\n"
                    elseif configItem.Type == ItemType.ITEM_TRINKET then
                        description = description .. COLORS.Orange .. "Trinket"
                        description = description .. "\n"
                    elseif configItem.Type == ItemType.ITEM_Familiar then
                        description = description .. COLORS.Orange .. "Familiar"
                        description = description .. "\n"
                    end
                    if configItem.Type == ItemType.ITEM_ACTIVE then
                        description = description .. COLORS.Pink
                        description = description .. configItem.MaxCharges .. " Charges"
                        description = description .. "\n"
                    end
                   --[[ Costume info
                    activeDescription = activeDescription .. COLORS.Green
                    activeDescription = activeDescription .. "Costume "..configItem.Costume.ID.." "..configItem.Costume.Anm2Path
                    activeDescription = activeDescription .. "\n"
                    ]]
                end
            end
        end
        local usedLanguageCode = languageCode

        local descriptionEntry = nil
        if descriptionEntries[entityType] ~= nil and descriptionEntries[entityType][entityVariant] ~= nil then
            descriptionEntry = descriptionEntries[entityType][entityVariant][entryKey]
        end
        if descriptionEntry ~= nil and usedLanguageCode == nil then
            if descriptionEntry.descriptions[ YAEID_LANGUAGE_OVERRIDE ] ~= nil then
                usedLanguageCode = YAEID_LANGUAGE_OVERRIDE
            elseif descriptionEntry.descriptions[ CONFIG.Language ] ~= nil then
                usedLanguageCode = CONFIG.Language
            end
        end
        if usedLanguageCode ~= nil then
            local customdescription = descriptionEntry.descriptions[usedLanguageCode][1]
            local isImage = descriptionEntry.descriptions[usedLanguageCode][2]
            if isImage ~= true then
                description = description..customdescription
                activeSpritesheet = nil
            else
                activeSpritesheet = description
                description = nil
            end
        elseif CONFIG.DefaultFallback == true then
            if CONFIG.ShowBaseDescriptions == false and (entityVariant == PickupVariant.PICKUP_COLLECTIBLE or entityVariant == PickupVariant.PICKUP_TRINKET or entityVariant == PickupVariant.PICKUP_TAROTCARD) then
                description = description .. COLORS.Grey .."\"" .. configItem.Description .. "\""
            end
        end
        return description
    end

function MOD:PostGameStarted()
    itemPool = Game():GetItemPool()
end
MOD:AddCallback( ModCallbacks.MC_POST_GAME_STARTED, MOD.PostGameStarted )

function MOD:PostNewLevel()
    level = Game():GetLevel()
end
MOD:AddCallback( ModCallbacks.MC_POST_NEW_LEVEL, MOD.PostNewLevel )

function MOD:PostUpdate()
    itemPool = Game():GetItemPool()
    local isBlind = Game():GetLevel():GetCurses() & LevelCurse.CURSE_OF_BLIND ~= 0
    local room = Game():GetRoom()
    local player = Isaac.GetPlayer(0)
    local closestEntity = nil
    local distance = CONFIG.MaxDistance * 40
    for i, entity in ipairs(Isaac.GetRoomEntities()) do
        local valid = true
        if CONFIG.ShowAlways == false and room:IsClear() == false then
            valid = false
        end
        local entityType = tostring(entity.Type)
        local entityVariant = tostring(entity.Variant)
        local entitySubType = tostring(entity.SubType)
        if blacklist["-1"] ~= nil or
        (blacklist[entityType] ~= nil and blacklist[entityType]["-1"] ~= nil) or
        (blacklist[entityType] ~= nil and blacklist[entityType][entityVariant] ~= nil and blacklist[entityType][entityVariant]["-1"] ~= nil) or
        (blacklist[entityType] ~= nil and blacklist[entityType][entityVariant] ~= nil and blacklist[entityType][entityVariant][entitySubType] ~= nil) then
            Log("blacklisted",entityType,entityVariant,entitySubType,blacklist["-1"],blacklist[entityType]["-1"])
            valid = false
        end
        if valid ~= false then
            local pickup = entity:ToPickup()
            if pickup ~= nil then
                if pickup.Variant == PickupVariant.PICKUP_COLLECTIBLE then
                    if CONFIG.HandleCollectibles == false then
                        valid = false
                    elseif pickup.SubType == 0 then
                        valid = false
                    elseif CONFIG.SixthSense == false and isBlind == true then
                        valid = false
                    end
                elseif pickup.Variant == PickupVariant.PICKUP_TRINKET then
                    if CONFIG.HandleTrinkets == false then
                        valid = false
                    elseif CONFIG.WindowShopper == false and pickup:IsShopItem() then
                        valid = false
                    end
                elseif pickup.Variant == PickupVariant.PICKUP_PILL then
                    if CONFIG.HandlePills == false then
                        valid = false
                    else
                        --local pillColor = pickup.SubType
                        --local pillEffect = itemPool:GetPillEffect(pillColor)
                        --local identified = itemPool:IsPillIdentified(pillColor)
                        if itemPool:IsPillIdentified(pickup.SubType) == false and CONFIG.PillCheat == false then
                            valid = false
                        end
                    end
                elseif pickup.Variant == PickupVariant.PICKUP_TAROTCARD then
                    if CONFIG.HandlePocket == false then
                        valid = false
                    elseif CONFIG.WindowShopper == false and pickup:IsShopItem() then
                        valid = false
                    end
                elseif CONFIG.HandleGenerics == false then
                    valid = false
                end
                -- If there is no specific description, it's only valid if it's a pill, card, item pedestal, or trinket
                if valid == true and (descriptionEntries[entity.Type] == nil or
                descriptionEntries[entity.Type][entity.Variant] == nil or
                descriptionEntries[entity.Type][entity.Variant][entity.SubType] == nil) then
                    if entity.Variant ~= PickupVariant.PICKUP_COLLECTIBLE and 
                    entity.Variant ~= PickupVariant.PICKUP_TRINKET and 
                    entity.Variant ~= PickupVariant.PICKUP_TAROTCARD and 
                    entity.Variant ~= PickupVariant.PICKUP_PILL then
                        valid = false
                    end
                end
            else
                -- If it's not a pickup, there is no fallback, so it's invalid if there isn't a specific description
                if CONFIG.HandleGenerics == false or descriptionEntries[entity.Type] == nil or
                descriptionEntries[entity.Type][entity.Variant] == nil or
                descriptionEntries[entity.Type][entity.Variant][entity.SubType] == nil then
                    valid = false
                else
                    pickup = nil
                end
            end
            if valid == true then
                local radius = (entity.Size + player.Size) / 2
                local diff = entity.Position - player.Position
                if diff:Length() < (distance + radius) then
                    closestEntity = entity
                    distance = diff:Length() - radius
                end
            end
        end
    end

    if closestEntity ~= nil then
        local entityData = closestEntity:GetData()
        local entityType = closestEntity.Type
        local entityVariant = closestEntity.Variant
        local entitySubType = closestEntity.SubType
        activeDescription = ""
        descriptionTarget = closestEntity
        local shouldBlink = CONFIG.HighlightTargetBlink
        if shouldBlink == true and closestEntity.FrameCount % CONFIG.HighlightTargetBlinkRate ~= 0 then
            shouldBlink = false
        end
        if CONFIG.HighlightTarget == true and (lastClosestPickupID ~= closestEntity:GetData() or shouldBlink == true) then
            closestEntity:SetColor( Color( 1, 1, 1, 1, 64, 96, 128, 0 ), 6, 100, true, false )
        end
        lastClosestPickupID = closestEntity:GetData()

        activeDescription = _YAEID:GetDescription( entityType, entityVariant, entitySubType )
        transparency = transparency + (CONFIG.Transparency - transparency) * 0.5
    else
        lastClosestPickupID = -1
        transparency = transparency + (0 - transparency) * 0.5
        if transparency <= 0.01 then
            descriptionTarget = nil
            activeSpritesheet = nil
            activeDescription = nil
        end
    end
end
MOD:AddCallback( ModCallbacks.MC_POST_UPDATE, MOD.PostUpdate)

--[[ Text Rendering
]]
    local lastParsedText = { nil, nil }
    ParseText = function( text, scale )
        if text == lastParsedText[1] then
            return lastParsedText[2]
        end
        -- Split line into hard line breaks
        if scale == nil then
            scale = 1
        end
        local lines = Split(text,"\n")
        local i = 1
        local lineWidth = 0
        local lineHeight = 0
        local lineAlignment = nil
        local lineColor = nil
        local boxWidth = 0
        local boxHeight = 0
        local font = GetFont()
        while i <= #lines do
            local lineText = lines[i]
            local lineWidth = 0
            local lineHeight = font:GetLineHeight()
            local set = {}
            local charIndex = 1
            while charIndex <= #lineText do
                local char = lineText:sub(charIndex,charIndex)
                local lineTextWidth = font:GetStringWidthUTF8( lineText:sub( 1, charIndex ) )
                if char == COLOR then
                    local h = lineText:sub(charIndex+1,charIndex+8)
                    local r = tonumber("0x"..h:sub(1,2))
                    local g = tonumber("0x"..h:sub(3,4))
                    local b = tonumber("0x"..h:sub(5,6))
                    local a = tonumber("0x"..h:sub(7,8))
                    if r ~= nil and g ~= nil and b ~= nil and a ~= nil then
                        local color = Color( r/255, g/255, b/255, a/255, 0, 0, 0 )
                        if charIndex == 1 then
                            lineColor = color
                            lineText = lineText:sub(10)
                        else
                            local text = lineText:sub( 1, charIndex - 1 )
                            table.insert( set, { lineWidth, lineText:sub( 1, charIndex - 1 ), lineColor, lineAlignment } )
                            --table.insert(lines, i + 1, {line[1] + font:GetStringWidthUTF8(text), false, lineText:sub(charIndex+9), color })
                            lineWidth = lineWidth + font:GetStringWidthUTF8( lineText:sub( 1, charIndex - 1 ) )
                            lineText = lineText:sub( charIndex )
                            charIndex = 0
                        end
                    else
                        lineText = lineText:sub( charIndex+1 )
                    end
                elseif char == ALIGN then
                    local h = lineText:sub(charIndex+1,charIndex+3)
                    local alignment = tonumber("0x"..h:sub(1,2))
                    if alignment ~= nil then
                        lineAlignment = alignment / 255
                        lineText = lineText:sub(charIndex+3)
                    else
                        charIndex = charIndex + 1
                    end
                elseif char == GLYPH then
                    if charIndex == 1 then
                        if tonumber("0x"..lineText:sub(2,5)) ~= nil then
                            local glyphKey = lineText:sub( 1, 5 )
                            if customGlyphs ~= nil then
                                local glyph = customGlyphs[glyphKey]
                                if glyph ~= nil then
                                    table.insert( set, { lineWidth, lineText:sub( 1, 5 ), lineColor, lineAlignment } )
                                    lineWidth = lineWidth + glyph[4]
                                end
                            end
                            lineText = lineText:sub(6)
                        else
                            lineText = lineText:sub(2)
                        end
                    elseif charIndex ~= 1 then
                        table.insert( set, { lineWidth, lineText:sub( 1, charIndex - 1 ), lineColor, lineAlignment } )
                        lineWidth = lineWidth + font:GetStringWidthUTF8( lineText:sub( 1, charIndex - 1 ) )
                        lineText = lineText:sub( charIndex )
                        charIndex = 0
                    else
                        charIndex = charIndex + 1
                    end
                elseif char == FONT then
                    if charIndex == 1 then
                        if tonumber( "0x"..lineText:sub( 2, 5 ) ) ~= nil then
                            local fontKey = lineText:sub( 2, 5 )
                            if customFonts ~= nil then
                                local customFont = customFonts[ fontKey ]
                                if customFont ~= nil then
                                    LoadFont( customFont, true )
                                    font = GetFont( customFont )
                                    table.insert( set, { lineWidth, lineText:sub( 1, 5 ), lineColor, lineAlignment } )
                                end
                            end
                            lineText = lineText:sub(6)
                        else
                            font = GetFont()
                            table.insert( set, { lineWidth, lineText:sub( 1, 1 ), lineColor, lineAlignment } )
                            lineText = lineText:sub(2)
                        end
                    elseif charIndex ~= 1 then
                        table.insert( set, { lineWidth, lineText:sub( 1, charIndex - 1 ), lineColor, lineAlignment } )
                        lineWidth = lineWidth + font:GetStringWidthUTF8( lineText:sub( 1, charIndex - 1 ) )
                        lineText = lineText:sub( charIndex )
                        charIndex = 0
                    else
                        charIndex = charIndex + 1
                    end
                elseif lineTextWidth + lineWidth > CONFIG.LineBreakSize / scale then
                    --local nextLineBreak = lineText:find( " ", math.max( 1, charIndex ) )
                    --local nextGlyph = lineText:find( GLYPH, math.max( 1, charIndex ) )
                    local earliestLineBreak = math.huge
                    for k,v in pairs(LINE_BREAKS) do
                        local nextLineBreak = lineText:find( k, math.max( 1, charIndex ), true )
                        if nextLineBreak ~= nil and nextLineBreak < earliestLineBreak then
                            earliestLineBreak = nextLineBreak
                        end
                    end
                    if earliestLineBreak ~= nil and charIndex == earliestLineBreak then
                        table.insert( set, { lineWidth, lineText:sub( 1, charIndex ), lineColor, lineAlignment } )
                        lineWidth = lineWidth + lineTextWidth
                        table.insert( lines, i + 1, lineText:sub( earliestLineBreak + 1 ) )
                        break
                    elseif nextGlyph ~= nil and charIndex == nextGlyph - 1 then
                        table.insert( set, { lineWidth, lineText:sub( 1, charIndex  ), lineColor, lineAlignment } )
                        lineWidth = lineWidth + lineTextWidth
                        table.insert( lines, i + 1, lineText:sub( nextGlyph ) )
                        break
                    else
                        charIndex = charIndex + 1
                    end
                else
                    charIndex = charIndex + 1
                end
                if charIndex > #lineText and #lineText > 0 then
                    table.insert( set, { lineWidth, lineText, lineColor, lineAlignment } )
                    lineWidth = lineWidth + lineTextWidth
                    lineColor = nil
                    lineAlignment = nil
                end
            end
            if lineWidth > boxWidth then
                boxWidth = lineWidth
            end
            boxHeight = boxHeight + lineHeight
            lines[i] = { lineWidth, set }
            i = i + 1
        end

        lastParsedText[1] = text
        lastParsedText[2] = { lines, boxWidth, boxHeight }
        return { lines, boxWidth, boxHeight }
    end

    UnformatText = function( text )
        local lines = {}
        for lineIndex,line in pairs(ParseText(text)[1]) do
            local string = ""
            for setIndex,set in pairs(line[2]) do
                if GLYPH == nil or set[2]:sub(1,1) ~= GLYPH then
                    string = string .. set[2]
                end
            end
            table.insert( lines, string )
        end
        return table.concat(lines,"\n")
    end

    RenderCustomText = function( x, y, lines, scale, boxAlignment, transparency )
        if x == nil then x = 0 end
        if y == nil then y = 0 end
        if scale == nil then scale = 1 end
        if boxAlignment == nil then boxAlignment = 0 end
        if transparency == nil then transparency = 1 end

        local lineIndex = 1

        local lineY = 0
        local font = GetFont()
        local lineHeight = font:GetLineHeight()
        local boxWidth = 0
        for k,line in ipairs(lines) do
            if line[1] > boxWidth then
                boxWidth = line[1]
            end
        end
        --boxWidth = CONFIG.AntiAlignmentJitterThreshold * math.ceil( boxWidth / CONFIG.AntiAlignmentJitterThreshold)
        x = x - boxWidth * boxAlignment * scale
        for k,line in ipairs(lines) do
            --local textAlignment = line[4] or 0
            --_D.Log(textAlignment)
            for l,set in ipairs(line[2]) do
                local textAlignment = set[4] or 0
                local text = set[2]
                local lineColor = set[3] or Color( 1, 1, 1, 1, 0, 0, 0, 0 )
                --if line[2] == true then
                --    lineY = lineY + 1
                --end
                if GLYPH ~= nil and text:sub(1,1) == GLYPH and customGlyphs ~= nil then
                    local glyph = customGlyphs[text]
                    glyphRenderer:Load( glyph[1], true )
                    glyphRenderer:SetFrame( glyph[2], glyph[3] )
                    glyphRenderer.Scale = Vector( scale, scale )
                    glyphRenderer.Color = Color(lineColor.R,lineColor.G,lineColor.B,lineColor.A * transparency,0,0,0)
                    glyphRenderer:Render( Vector(
                        x + ( set[1] - line[1] * textAlignment + boxWidth * textAlignment ) * scale,
                        y + ( lineHeight + CONFIG.LineSpacing ) * (k - 1) * scale + ( lineHeight - glyph[5] ) * 0.5 * scale ),
                    VECTOR_ZERO, VECTOR_ZERO )
                elseif FONT ~= nil and text:sub(1,1) == FONT and customFonts ~= nil then
                    local customFont = customFonts[ text:sub( 2 ) ]
                    font = GetFont( customFont )
                else
                    if CONFIG.RenderTextShadow == true then
                        font:DrawStringScaledUTF8(
                            text,
                            x + ( set[1] - line[1] * textAlignment + boxWidth * textAlignment ) * scale + 1,
                            y + ( lineHeight + CONFIG.LineSpacing ) * ( k - 1 ) * scale + 1,
                            scale, scale,
                            KColor( 0, 0, 0, CONFIG.RenderTextShadowTransparency * transparency, 0, 0, 0 ),
                            0,
                            true
                        )
                    end
                    font:DrawStringScaledUTF8(
                        text,
                        x + ( set[1] - line[1] * textAlignment + boxWidth * textAlignment ) * scale,
                        y + (lineHeight + CONFIG.LineSpacing) * (k-1) * scale,
                        scale, scale,
                        KColor(lineColor.R,lineColor.G,lineColor.B,lineColor.A * transparency,0,0,0),
                        0,
                        true
                    )
                end
            end
        end
    end

function MOD:PostRender(t)
    if activeDescription ~= nil and #activeDescription > 0 then
        local lines = ParseText(activeDescription)
        local x,y
        if CONFIG.LocalMode and descriptionTarget ~= nil then
            local screenPosition = Isaac.WorldToScreen(descriptionTarget.Position)
            x = screenPosition.X
            y = screenPosition.Y
        else
            x = CONFIG.RenderX
            y = CONFIG.RenderY
        end
        local scale = CONFIG.RenderScale
        local alignment = CONFIG.Alignment
        if CONFIG.LocalMode == true then
            scale = CONFIG.LocalScale
            alignment = CONFIG.LocalAlignment
        end
        --[[ Item Preview
        Doesn't really have a place to go...
        if descriptionTarget ~= nil then
            local targetSprite = descriptionTarget:GetSprite()
            local previousScale = targetSprite.Scale * 1
            local previousColor = Color( targetSprite.Color.R, targetSprite.Color.G, targetSprite.Color.B, targetSprite.Color.A, 0, 0, 0 )
            targetSprite.Scale = Vector( 0.5, 0.5 )
            targetSprite.Color = Color( 1, 1, 1, CONFIG.Transparency, 0, 0, 0 )
            local playerPos = Isaac.WorldToScreen(Game():GetPlayer(0).Position)
            targetSprite:Render( playerPos + Vector( 0, -48 ), VECTOR_ZERO, VECTOR_ZERO )
            targetSprite.Scale = previousScale
            targetSprite.Color = previousColor
        end
        ]]
        RenderCustomText( x, y, lines[1], scale, alignment, transparency )
    elseif activeSpritesheet ~= nil then
        local x = 0
        local y = 0
        if CONFIG.LocalMode and descriptionTarget ~= nil then
            local screenPosition = Isaac.WorldToScreen(descriptionTarget.Position)
            x = screenPosition.X
            y = screenPosition.Y
        else
            x = CONFIG.RenderX
            y = CONFIG.RenderY
        end
        if activeSpritesheet ~= lastSpritesheet then
            activeSprite:ReplaceSpritesheet(0,activeSpritesheet)
            activeSprite:LoadGraphics()
            activeSprite.Color = Color( 1, 1, 1, transparency, 0, 0, 0 )
            lastSpritesheet = activeSpritesheet
            local finalScale = CONFIG.RenderScale
            if CONFIG.LocalMode == true then
                finalScale = finalScale * CONFIG.LocalScale
            end
            activeSprite.Scale = Vector(finalScale,finalScale)
        end
        activeSprite:Play("entry")
        activeSprite:Render( Vector(x, y), VECTOR_ZERO, VECTOR_ZERO)
    end
    if testString ~= nil then
        local player = Game():GetPlayer(0)
        local position = Isaac.WorldToScreen(player.Position)
        RenderCustomText( position.X, position.Y, ParseText(testString)[1], 0.5, 0.5 )
    end
end
MOD:AddCallback( ModCallbacks.MC_POST_RENDER, MOD.PostRender )


--[[ Commands
]]
    local commands = {}
    commands["reloadfont"] = function( params )
        LoadFont( CONFIG.Font )
    end

    commands["set"] = function( params )
        local optionName = params[1]:lower()
        local option = SET_OPTIONS[optionName]
        if option ~= nil then
            if option[1] == OPTION_TYPE.Number then
                local value = tonumber(params[2])
                if value ~= nil and value == value then
                    if option[3] == nil or (option[3] ~= nil and value >= option[3]) then
                        if option[4] == nil or (option[4] ~= nil and value <= option[4]) then
                            CONFIG[option[2]] = value
                            Log("Set",COLORS.PaleYellow,option[2],COLORS.White,"to",COLORS.LightBlue,value)
                        else
                            Log("Number must be at most",option[4])
                        end
                    else
                        Log("Number must be at least",option[3])
                    end
                else
                    Log("Input is not numeric")
                end
            elseif option[1] == OPTION_TYPE.FlagEnum then
                local bit = tonumber(params[2])
                local operation = params[3]
                if bit ~= nil and bit == bit then
                    if type(operation) == "string" then
                        operation = operation:lower()
                        if operation == "on" then
                            CONFIG[option[2]] = CONFIG[option[2]] | (1<<bit)
                            Log("Enabled",COLORS.PaleYellow,option[2] .. "." .. FindKeyFromValue( option[3], 1<<bit ) )
                        elseif operation == "off" then
                            CONFIG[option[2]] = CONFIG[option[2]] & ~(1<<bit)
                            Log("Disabled",COLORS.PaleYellow,option[2] .. "." .. FindKeyFromValue( option[3], 1<<bit ))
                        elseif operation == "flip" then
                            CONFIG[option[2]] = CONFIG[option[2]] ~ (1<<bit)
                            if CONFIG[option[2]] & (1<<bit) ~= 0 then
                                Log("Enabled",COLORS.PaleYellow,option[2] .. "." .. FindKeyFromValue( option[3], 1<<bit ) )
                            else
                                Log("Disabled",COLORS.PaleYellow,option[2] .. "." .. FindKeyFromValue( option[3], 1<<bit ) )
                            end
                        else
                            Log("Invalid flag operation")
                        end
                    else
                        Log("Invalid flag operation")
                    end
                else
                    Log("Input is not numeric")
                end
            elseif option[1] == OPTION_TYPE.Text then
                local text = tostring(params[2])
                if #text >= 0 then
                    if option[3] ~= nil then
                        option[3](text)
                    else
                        CONFIG[option[2]] = text
                        Log( COLORS.PaleYellow..option[2],COLORS.White,"set to",COLORS.LightBlue,text )
                    end
                else
                    Log("Input must not be zero length")
                end
            elseif option[1] == OPTION_TYPE.Boolean then
                local value = nil
                if params[2] == "1"  or params[2] == "true" then
                    value = true
                elseif params[2] == "0" or params[2] == "false" then
                    value = false
                elseif params[2] == "!" or params[2] == "flip" then
                    value = not CONFIG[option[2]]
                end
                if value ~= nil then
                    CONFIG[option[2]] = value
                    if option[3] ~= nil then
                        option[3]( value )
                    end
                    if value == true then
                        Log( COLORS.PaleYellow..option[2],COLORS.White,"enabled" )
                    else
                        Log( COLORS.PaleYellow..option[2],COLORS.White,"disabled" )
                    end
                end
            end
            Save()
        else
            Log("Option",optionName,"not found")
        end
    end

    commands["blacklist"] = function( params )
        local operation = params[1]
        if operation ~= nil then
            if operation == "target" then
                if descriptionTarget ~= nil then
                    local entityType = tostring(descriptionTarget.Type)
                    local entityVariant = tostring(descriptionTarget.Variant)
                    local entitySubType = tostring(descriptionTarget.SubType)
                    blacklist[entityType] = blacklist[entityType] or {}
                    blacklist[entityType][entityVariant] = blacklist[entityType][entityVariant] or {}
                    blacklist[entityType][entityVariant][entitySubType] = true
                    Log("Entity",entityType.."."..entityVariant.."."..entitySubType,"blacklisted")
                    Save()
                else
                    Log("No description target found")
                end
            elseif operation == "add" then
                local entityType = tonumber(params[2])
                local entityVariant = tonumber(params[3])
                local entitySubType = tonumber(params[4])
                if entityType == entityType and entityVariant == entityVariant and entitySubType == entitySubType and
                entityType >= -1 and entityVariant >= -1 and entitySubType >= -1 then
                    entityType = tostring(entityType)
                    entityVariant = tostring(entityVariant)
                    entitySubType = tostring(entitySubType)
                    blacklist[entityType] = blacklist[entityType] or {}
                    blacklist[entityType][entityVariant] = blacklist[entityType][entityVariant] or {}
                    blacklist[entityType][entityVariant][entitySubType] = true
                    Log("Entity",entityType.."."..entityVariant.."."..entitySubType,"blacklisted")
                    Save()
                else
                    Log("Invalid entity identifier")
                end
            elseif operation == "remove" then
                local entityType = tonumber(params[2])
                local entityVariant = tonumber(params[3])
                local entitySubType = tonumber(params[4])
                if entityType == entityType and entityVariant == entityVariant and entitySubType == entitySubType and
                entityType >= -1 and entityVariant >= -1 and entitySubType >= -1 then
                    entityType = tostring(entityType)
                    entityVariant = tostring(entityVariant)
                    entitySubType = tostring(entitySubType)
                    CleanBlacklist()
                    if blacklist[entityType] ~= nil and
                    blacklist[entityType][entityVariant] ~= nil and 
                    blacklist[entityType][entityVariant][entitySubType] ~= nil then
                    blacklist[entityType] = blacklist[entityType] or {}
                    blacklist[entityType][entityVariant] = blacklist[entityType][entityVariant] or {}
                        blacklist[entityType][entityVariant][entitySubType] = nil
                        CleanBlacklist()
                        Log("Entity",entityType.."."..entityVariant.."."..entitySubType,"removed from the blacklist")
                        Save()
                    else
                        Log("Entity is not blacklisted")
                    end
                else
                    Log("Invalid entity identifier")
                end
            elseif operation == "list" then
                Log("Blacklisted entities:")
                for entityType,entityTypeEntry in pairs(blacklist) do
                    for entityVariant,entityVariantEntry in pairs(entityTypeEntry) do
                        for entitySubType,entitySubTypeEntry in pairs(entityVariantEntry) do
                            Log(entityType.."."..entityVariant.."."..entitySubType)
                        end
                    end
                end
            else
                Log("Invalid blacklist operation")
            end
        else
            Log("Incomplete command")
        end
    end

    commands["get"] = function( params )
        local optionName = params[1]:lower()
        local option = SET_OPTIONS[optionName]
        if option ~= nil then
            Log(CONFIG[option[2]])
        else
            Log("Option",optionName,"not found")
        end
    end

    commands["unset"] = function( params )
        local optionName = params[1]:lower()
        local option = SET_OPTIONS[optionName]
        if option ~= nil then
            CONFIG[option[2]] = DEFAULTS[option[2]]
            Log("Option",COLORS.PaleYellow,option[2],COLORS.White,"set to default")
            Save()
        else
            Log("Option",COLORS.PaleYellow,option[2],COLORS.White,"not found")
        end
    end

function MOD:ExecuteCommand( command, params )
    local commandString = command.." "..params
   -- Log( command, params )
    local wasRecording = (recordingMacro ~= nil)
    local wasPlaying = (playingMacro ~= nil)
    if command == "yaeid" then
        params = Split( params, " " )
        local devCommand = params[1]:lower()
        table.remove( params, 1 )
        if commands[devCommand] ~= nil then
            commands[devCommand](params)
        else
            Log("Command not found")
        end
    end
end
MOD:AddCallback( ModCallbacks.MC_EXECUTE_CMD, MOD.ExecuteCommand )

AutoCompleteCallback = function( text, parameters, entries, currentWord, parameterIndices, parameterIndex )
    local previousWord = parameters[parameterIndex-1]
    local twoWordsBack = parameters[parameterIndex-2]
    local commandPrefix = "yaeid"
    if currentWord ~= nil and parameters[1] == commandPrefix then
        if currentWord == commandPrefix then
            for k,v in pairs(commands) do
                table.insert(entries, {k})
            end
        elseif previousWord == commandPrefix  then
            if currentWord == "set" or currentWord == "unset" or currentWord == "get" then
                for k,v in pairs(SET_OPTIONS) do
                    table.insert(entries, {v[2]})
                end
            elseif currentWord == "blacklist"  then
                table.insert(entries, {"add"})
                table.insert(entries, {"remove"})
                table.insert(entries, {"target"})
                table.insert(entries, {"list"})
            end
        elseif twoWordsBack == commandPrefix then
            if previousWord == "set" then
                local option = SET_OPTIONS[currentWord:lower()]
                if option ~= nil then
                    if option[1] == OPTION_TYPE.FlagEnum then
                        for k,v in pairs(option[3]) do
                            table.insert(entries, {FitBit(v),k})
                        end
                    elseif option[1] == OPTION_TYPE.Boolean then
                        table.insert(entries, {"1","On True"})
                        table.insert(entries, {"!","Toggle Flip"})
                        table.insert(entries, {"0","Off False"})
                    elseif option[1] == OPTION_TYPE.Number then
                        if option[3] ~= nil then
                            table.insert(entries, {option[3],"Minimum"})
                        end
                        if option[4] ~= nil then
                            table.insert(entries, {option[4],"Maximum"})
                        end
                    end
                    table.insert(entries, {tostring(DEFAULTS[option[2]]),"Default"})
                end
            end
        end
    elseif currentWord == nil then
        local completions = {
            {"yaeid"}
        }
        for k,v in ipairs(completions) do
            table.insert(entries,v)
        end
    end
end

_YAEID.COLOR = COLOR
_YAEID.GLYPH = GLYPH
_YAEID.COLORS = COLORS
_YAEID.ALIGNMENTS = ALIGNMENTS
_YAEID.FONT = FONT

--[[ Saving and Loading
]]
    Save = function()
        local data = {}
        data.config = {}
        data.blacklist = blacklist
        for k,v in pairs(SET_OPTIONS) do
            if CONFIG[v[2]] ~= nil then
                table.insert( data.config, { v[2], CONFIG[v[2]] } )
            end
        end
        local encoded = JSON.encode(data)
        if encoded ~= nil and #encoded > 0 then
            MOD:SaveData( encoded )
            --Log("devhelper configuration saved")
        else
            Log("yaeid configuration failed to save")
        end
    end

    Load = function()
        local raw = MOD:LoadData()
        if #raw ~= 0 then
            local data = JSON.decode(raw)
            if data.config ~= nil then
                for k,v in pairs(data.config) do
                    --Log(v[1],v[2])
                    CONFIG[v[1]] = v[2]
                end
            end
            if data.blacklist ~= nil then
                blacklist = data.blacklist
            end
            for k,v in pairs(blacklist) do
                _D.Log(k,v)
            end
        end
    end

-- Global meta protected YAEID object used to register descriptions
YAEID = {}
setmetatable(YAEID, _YAEID)

-- This is global! If a mod overwrites this it will override the language set in the config
-- Making the assumption you wouldn't download multiple languages or an extra language if it's in English, this
-- is simply a convenience variable
YAEID_LANGUAGE_OVERRIDE = YAEID_LANGUAGE_OVERRIDE or nil

Load()
Initialize()
