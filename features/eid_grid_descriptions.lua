local game = Game()

--------------- Grid entity description modifiers ---------------

-- Table containing grid entity description handlers
-- Use EID:addGridEntity() or EID:addGridEntityConditional() to add new entries to this table.
-- Keys in this table are integers or type GridEntityType
-- Each value is a list of tables with the keys "condition" and "callback", which act like modifiers 
-- and define when a description should be shown and how it should be modified. 
EID.GridEntityDescriptions = {
}

--- @deprecated Use EID:addGridEntity() instead
EID.GridEntityWhitelist = setmetatable({}, {
    __newindex = function(_, _, _)
        EID:WriteErrorMsg("GridEntityWhitelist is deprecated, use EID:addGridEntity() instead.")
    end
})

--- Adds a new grid entity description entry.
---@param type GridEntityType
---@param variant integer
---@param name string
---@param description string
---@param language? EID_LanguageCode @Default: "en_us"
function EID:addGridEntity(type, variant, name, description, language)
	variant = variant or 0
	language = language or EID.DefaultLanguageCode

	EID:CreateDescriptionTableIfMissing("custom", language)
	EID.descriptions[language].custom["-999." .. type .. "." .. variant] = {
		variant,
		name,
		description
	}
    -- Add a new grid entity description entry
    if variant == -1 then
        -- Apply to all variants of the grid entity type
        EID:addGridEntityConditional(type,
            function(_)
                return true
            end,
            function(descObj)
                if descObj.ObjSubType == -1 then
                    return descObj
                else
                    return EID:getDescriptionObj(-999, type, -1, descObj.Entity, true)
                end
            end)
    else
        -- Only apply to the specific variant of the grid entity type
        EID:addGridEntityConditional(type,
            function(entity)
                return entity:GetVariant() == variant
            end,
            function(descObj) return descObj end)
    end
end

--- Adds a conditional description handler for a specific grid entity type.
--- This function allows you to specify a grid entity type, a condition function to determine
--- when the description should be shown, and a callback function to modify the description further.
--- @param type GridEntityType
--- @param conditionalFunction function
--- @param callbackFunction function
function EID:addGridEntityConditional(type, conditionalFunction, callbackFunction)
    if not EID.GridEntityDescriptions[type] then
        EID.GridEntityDescriptions[type] = {}
    end
    table.insert(EID.GridEntityDescriptions[type], {
        condition = conditionalFunction,
        callback = callbackFunction
    })
end

--- Checks if the given grid entity has a description available
--- @param entity GridEntity: The grid entity to check for a description.
--- @return boolean: Returns true if a description exists for the entity, false otherwise.
function EID:CheckGridEntityHasDescription(entity)
    -- Check if the grid entity has a description
    if EID.GridEntityDescriptions[entity:GetType()] then
        for _, func in ipairs(EID.GridEntityDescriptions[entity:GetType()]) do
            if func.condition and func.condition(entity) then
                return true
            end
        end
    end
    return false
end

----------------------------------------------------
-- Handle Sacrifice room payout
----------------------------------------------------
local function SacrificeRoomCondition(_)
    return game:GetRoom():GetType() == RoomType.ROOM_SACRIFICE and EID.Config["DisplaySacrificeInfo"]
end

local function SacrificeRoomCallback(descObj)
	descObj.ObjSubType = math.min(#EID.descriptions[EID.DefaultLanguageCode].sacrifice, descObj.Entity.VarData + 1)
	-- Get sacrifice name by subtype
	descObj.Name = EID:getDescriptionEntry("sacrificeHeader") ..
	" (" .. descObj.ObjSubType .. "/" .. #EID.descriptions[EID.DefaultLanguageCode].sacrifice .. ")"

	descObj.Description = EID:getDescriptionEntry("sacrifice", descObj.ObjSubType)[3]
	local curCounter = descObj.ObjSubType or 1
	if curCounter <= 2 then
		--Remove B1 Bomb drop info when not on B1
		if game:GetLevel():GetAbsoluteStage() > 1 then
			local splitPoint = string.find(descObj.Description, '#', 1)
			descObj.Description = descObj.Description:sub(1,splitPoint-1)
		end
	end
	return descObj
end
EID:addGridEntityConditional(GridEntityType.GRID_SPIKES, SacrificeRoomCondition, SacrificeRoomCallback)

----------------------------------------------------
-- Handle Sanguine bond payout preview
----------------------------------------------------
local function SanguineSpikeCondition(gridEntity)
    return EID.isRepentance and gridEntity:GetVariant() >= 100 and
        EID.Config["DisplaySanguineInfo"]
end

local function SanguineSpikeCallback(descObj)
	descObj = EID:getDescriptionObj(5, 100, 692, descObj.Entity, false)
	local desc = EID:trimSanguineDesc(descObj.Entity, descObj)
	if desc ~= "" then
		descObj.Description = desc
	end
	return descObj
end
EID:addGridEntityConditional(GridEntityType.GRID_SPIKES, SanguineSpikeCondition, SanguineSpikeCallback)


----------------------------------------------------
-- Define GridEntity Conditional handler
----------------------------------------------------
local function EIDGridConditions(descObj)
    -- Only run if the grid entity is valid
	if descObj.ObjType ~= -999 or not EID.GridEntityDescriptions[descObj.ObjVariant] or not descObj.Entity then return false end

    local callbacks = {}
    for _, entry in ipairs(EID.GridEntityDescriptions[descObj.ObjVariant]) do
        if entry.condition and entry.condition(descObj.Entity) then
            table.insert(callbacks, entry.callback)
        end
    end
    return callbacks
end

EID:addDescriptionModifier("EID Grid Descriptions", EIDGridConditions, nil, 1)