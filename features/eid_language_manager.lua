-- Variable that contains the default language code of the mod (English)
EID.DefaultLanguageCode = "en_us"

-- List of all valid languages
EID.Languages = {
    "en_us", -- English
    "fr", -- French
    "pt",   -- Portuguese
    "pt_br", -- Brazilian Portuguese
    "ru", -- Russian
    "spa", -- Spanish
    "it", -- Italian
    "bul", -- Bulgarian
    "pl", -- Polish
    "de", -- German
    "tr_tr", -- Turkish
    "ko_kr", -- Korean
    "zh_cn", -- Simplified Chinese
    "ja_jp", -- Japanese
    "cs_cz", -- Czech
    "nl_nl", -- Dutch
    "uk_ua", -- Ukrainian
    "el_gr", -- Greek
    "ro_ro", -- Romanian
    "vi" -- Vietnamese
}

-- List of languages where it is allowed to do line-breaks between UTF-8 characters in a description
EID.BreakUtf8CharsLanguage = {
	['zh_cn'] = true
}

--#region Luadoc definitions
---@alias EID_LanguageCode
---| "bul" @Bulgarian
---| "cs_cz" @Czech
---| "de" @German
---| "el_gr" @Greek
---| "en_us" @English
---| "spa" @Spanish
---| "fr" @French
---| "it" @Italian
---| "ja_jp" @Japanese
---| "ko_kr" @Korean
---| "nl_nl" @Dutch
---| "pl" @Polish
---| "pt_br" @Brasilian Portuguese
---| "pt" @Portuguese
---| "ro_ro" @Romanian
---| "ru" @Russian
---| "tr_tr" @Turkish
---| "uk_ua" @Ukrainian
---| "vi" @Vietnamese
---| "zh_cn" @Simplified Chinese
--#endregion

-- Map the game's built-in language option strings to EID's
EID.LanguageMap = {
	["jp"] = "ja_jp",
	["es"] = "spa",
	["de"] = "de",
	["fr"] = "fr",
	["ru"] = "ru",
	["kr"] = "ko_kr",
	["zh"] = "zh_cn",
}

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
		local langToReturn = Options and EID.LanguageMap[Options.Language] or EID.DefaultLanguageCode -- Use game language, if available.
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
    --load languages
    for _, languageCode in ipairs(EID.Languages) do
        local wasSuccessful, err = pcall(require, "descriptions." .. gameVersion .. "." .. languageCode)
        if not wasSuccessful and not string.find(err, "not found") then
            EID:WriteErrorMsg("Loading Languagepack '" .. languageCode .. "' (" .. gameVersion .. ") failed: " ..
                tostring(err))
        end
    end
end

--- Initializes handling of alternative language codes for all languages
function EID:AdjustLanguageConfigSetting()
    if EID.Config["Language"] == "auto" then
        -- If the language is set to "auto", we will not adjust the language codes
        return
    end

    for _, languageCode in ipairs(EID.Languages) do
        if languageCode == EID.Config["Language"] then
            -- If the language is set to a valid language code, we will not adjust it
            return
        end
        -- If the language is not set to a valid language code, we will adjust it
        if EID.descriptions[languageCode] then
            for _, altLanguageCode in ipairs(EID.descriptions[languageCode].alternativeLanguageCodes or {}) do
                if altLanguageCode == EID.Config["Language"] then
                    EID.Config["Language"] = languageCode
                    return
                end
            end
        end
    end
    EID:WriteErrorMsg("No valid language code found for '"..EID.Config["Language"].."', resetting to 'auto'")
    EID.Config["Language"] = "auto"
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
