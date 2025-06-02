-- List of all valid languages
EID.Languages = {
    "en", -- English
    "fr", -- French
    "pt",   -- Portuguese
    "pt_br", -- Brazilian Portuguese
    "ru", -- Russian
    "es", -- Spanish
    "it", -- Italian
    "bg", -- Bulgarian
    "pl", -- Polish
    "de", -- German
    "tr", -- Turkish
    "ko", -- Korean
    "zh_cn", -- Simplified Chinese
    "ja", -- Japanese
    "cs", -- Czech
    "nl", -- Dutch
    "uk", -- Ukrainian
    "el", -- Greek
    "ro", -- Romanian
    "vi" -- Vietnamese
}

-- List of languages where it is allowed to do line-breaks between UTF-8 characters in a description
EID.BreakUtf8CharsLanguage = {
	['zh_cn'] = true
}

--#region Luadoc definitions
---@alias EID_LanguageCode
---| "bg" @Bulgarian
---| "cs" @Czech
---| "de" @German
---| "el" @Greek
---| "en" @English
---| "es" @Spanish
---| "fr" @French
---| "it" @Italian
---| "ja" @Japanese
---| "ko" @Korean
---| "nl" @Dutch
---| "pl" @Polish
---| "pt_br" @Brasilian Portuguese
---| "pt" @Portuguese
---| "ro" @Romanian
---| "ru" @Russian
---| "tr" @Turkish
---| "uk" @Ukrainian
---| "vi" @Vietnamese
---| "zh_cn" @Simplified Chinese
--#endregion

---Get the current Language. Defaults to english if none is set.
---@return EID_LanguageCode
function EID:getLanguage()
	local lang = EID.Config["Language"]
	-- Reset invalid languages (like en_us_detailed)
	if EID.descriptions[lang] == nil then
		EID.Config["Language"] = "auto"
		lang = "auto"
	end
	if lang == "auto" then
		local langToReturn = Options and Options.Language or "en" -- Use game language, if available.
		-- don't do any updating if on a Repentance version before v1.7.9b
		if Isaac.RunCallback ~= nil then
			for _, callbackData in pairs(Isaac.GetCallbacks("EID_EVALUATE_AUTO_LANG")) do
				local newString = callbackData.Function(callbackData.Mod, langToReturn)
				if newString and type(newString) == "string" and EID.descriptions[newString] ~= nil then
					langToReturn = newString
				end
			end
		end
		return langToReturn
	end
	---@cast lang EID_LanguageCode
	return lang
end

--- Attempts to load all language packs from a given game version
function EID:LoadLanguagePacks(gameVersion)
    --transformation infos
    local _, _ = pcall(require, "descriptions." .. gameVersion .. ".transformations")
    --languages
    for _, languageCode in ipairs(EID.Languages) do
        local wasSuccessful, err = pcall(require, "descriptions." .. gameVersion .. "." .. languageCode)
        if not wasSuccessful and not string.find(err, "not found") then
            EID:WriteErrorMsg("Loading Languagepack '" .. languageCode .. "' (" .. gameVersion .. ") failed: " ..
                tostring(err))
        end
    end
end

--- Initializes handling of alternative language codes for all languages
function EID:InitAltLanguageCodes()
    for _, languageCode in ipairs(EID.Languages) do
        if EID.descriptions[languageCode] and EID.descriptions[languageCode].alternativeLanguageCodes then
            for _, altlanguageCode in ipairs(EID.descriptions[languageCode].alternativeLanguageCodes) do
                EID:AddAlternativeLanguageCode(languageCode, altlanguageCode)
            end
        end
    end
end

--- Initializes handling of alternative language codes for a specific language using meta-table that redirect table accesses to the original table
function EID:AddAlternativeLanguageCode(originalLanguageCode, newLanguageCode)
    EID.descriptions[newLanguageCode] = setmetatable({}, {
    __index = EID.descriptions[originalLanguageCode],
    __newindex = function(_, key, value)
        EID.descriptions[originalLanguageCode][key] = value
    end,
    __pairs = function(_) return pairs(EID.descriptions[originalLanguageCode]) end,
    })
end

--- Initializes and loads all language packs for the current game version,
--- including handling for Repentance and Repentance+ expansions,
--- and sorts the language list after loading.
function EID:InitializeLanguagePacks()
    -- load AB+ descriptions
    EID:LoadLanguagePacks(EID.GameVersion)
    EID:InitAltLanguageCodes()

    -- load Repentance descriptions
    if EID.isRepentance then
        EID.GameVersion = "rep"
        EID:LoadLanguagePacks(EID.GameVersion)

        -- Load Repentance+ descriptions
        if EID.isRepentancePlus then
            EID.GameVersion = "rep+"
            EID:LoadLanguagePacks(EID.GameVersion)
        end
    end

    -- sort table after loading the languages in their specified order
    table.sort(EID.Languages)
end
