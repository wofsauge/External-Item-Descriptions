--- Eng char typed as korean keyboard conversion
--- source : https://blog.naver.com/milennium9/20205300449

local compConvertTable = {
  {12593,4352}, -- ᄀ' == 'ㄱ'
  {12594,4353}, -- ᄁ' == 'ㄲ'
  {12596,4354}, -- ᄂ' == 'ㄴ'
  {12599,4355}, -- ᄃ' == 'ㄷ'
  {12600,4356}, -- ᄄ' == 'ㄸ'
  {12601,4357}, -- ᄅ' == 'ㄹ'
  {12609,4358}, -- ᄆ' == 'ㅁ'
  {12610,4359}, -- ᄇ' == 'ㅂ'
  {12611,4360}, -- ᄈ' == 'ㅃ'
  {12613,4361}, -- ᄉ' == 'ㅅ'
  {12614,4362}, -- ᄊ' == 'ㅆ'
  {12615,4363}, -- ᄋ' == 'ㅇ'
  {12616,4364}, -- ᄌ' == 'ㅈ'
  {12617,4365}, -- ᄍ' == 'ㅉ'
  {12618,4366}, -- ᄎ' == 'ㅊ'
  {12619,4367}, -- ᄏ' == 'ㅋ'
  {12620,4368}, -- ᄐ' == 'ㅌ'
  {12621,4369}, -- ᄑ' == 'ㅍ'
  {12622,4370}, -- ᄒ' == 'ㅎ'
  {12645,4372}, -- ᄔ' == 'ㅥ'
  {12646,4373}, -- ᄕ' == 'ㅦ'
  {12653,4378}, -- ᄚ' == 'ㅭ'
  {12654,4380}, -- ᄜ' == 'ㅮ'
  {12657,4381}, -- ᄝ' == 'ㅱ'
  {12658,4382}, -- ᄞ' == 'ㅲ'
  {12659,4384}, -- ᄠ' == 'ㅳ'
  {12612,4385}, -- ᄡ' == 'ㅄ'
  {12660,4386}, -- ᄢ' == 'ㅴ'
  {12661,4387}, -- ᄣ' == 'ㅵ'
  {12662,4391}, -- ᄧ' == 'ㅶ'
  {12663,4393}, -- ᄩ' == 'ㅷ'
  {12664,4395}, -- ᄫ' == 'ㅸ'
  {12665,4396}, -- ᄬ' == 'ㅹ'
  {12666,4397}, -- ᄭ' == 'ㅺ'
  {12667,4398}, -- ᄮ' == 'ㅻ'
  {12668,4399}, -- ᄯ' == 'ㅼ'
  {12669,4402}, -- ᄲ' == 'ㅽ'
  {12670,4406}, -- ᄶ' == 'ㅾ'
  {12613,4412}, -- ᄼ' == 'ㅅ'
  {12614,4413}, -- ᄽ' == 'ㅆ'
  {12613,4414}, -- ᄾ' == 'ㅅ'
  {12614,4415}, -- ᄿ' == 'ㅆ'
  {12671,4416}, -- ᅀ' == 'ㅿ'
  {12674,4421}, -- ᅅ' == 'ㆂ'
  {12675,4422}, -- ᅆ' == 'ㆃ'
  {12672,4423}, -- ᅇ' == 'ㆀ'
  {12615,4428}, -- ᅌ' == 'ㅇ'
  {12616,4430}, -- ᅎ' == 'ㅈ'
  {12617,4431}, -- ᅏ' == 'ㅉ'
  {12616,4432}, -- ᅐ' == 'ㅈ'
  {12617,4433}, -- ᅑ' == 'ㅉ'
  {12618,4436}, -- ᅔ' == 'ㅊ'
  {12618,4437}, -- ᅕ' == 'ㅊ'
  {12676,4439}, -- ᅗ' == 'ㆄ'
  {12677,4440}, -- ᅘ' == 'ㆅ'
  {12678,4441}, -- ᅙ' == 'ㆆ'
  {12644,4447}, -- ᅟ' == 'ㅤ'
  {12623,4449}, -- ᅡ' == 'ㅏ'
  {12624,4450}, -- ᅢ' == 'ㅐ'
  {12625,4451}, -- ᅣ' == 'ㅑ'
  {12626,4452}, -- ᅤ' == 'ㅒ'
  {12627,4453}, -- ᅥ' == 'ㅓ'
  {12628,4454}, -- ᅦ' == 'ㅔ'
  {12629,4455}, -- ᅧ' == 'ㅕ'
  {12630,4456}, -- ᅨ' == 'ㅖ'
  {12631,4457}, -- ᅩ' == 'ㅗ'
  {12632,4458}, -- ᅪ' == 'ㅘ'
  {12633,4459}, -- ᅫ' == 'ㅙ'
  {12634,4460}, -- ᅬ' == 'ㅚ'
  {12635,4461}, -- ᅭ' == 'ㅛ'
  {12636,4462}, -- ᅮ' == 'ㅜ'
  {12637,4463}, -- ᅯ' == 'ㅝ'
  {12638,4464}, -- ᅰ' == 'ㅞ'
  {12639,4465}, -- ᅱ' == 'ㅟ'
  {12640,4466}, -- ᅲ' == 'ㅠ'
  {12641,4467}, -- ᅳ' == 'ㅡ'
  {12642,4468}, -- ᅴ' == 'ㅢ'
  {12643,4469}, -- ᅵ' == 'ㅣ'
  {12679,4484}, -- ᆄ' == 'ㆇ'
  {12680,4485}, -- ᆅ' == 'ㆈ'
  {12681,4488}, -- ᆈ' == 'ㆉ'
  {12682,4497}, -- ᆑ' == 'ㆊ'
  {12683,4498}, -- ᆒ' == 'ㆋ'
  {12684,4500}, -- ᆔ' == 'ㆌ'
  {12685,4510}, -- ᆞ' == 'ㆍ'
  {12686,4513}, -- ᆡ' == 'ㆎ'
  {12593,4520}, -- ᆨ' == 'ㄱ'
  {12594,4521}, -- ᆩ' == 'ㄲ'
  {12595,4522}, -- ᆪ' == 'ㄳ'
  {12596,4523}, -- ᆫ' == 'ㄴ'
  {12597,4524}, -- ᆬ' == 'ㄵ'
  {12598,4525}, -- ᆭ' == 'ㄶ'
  {12599,4526}, -- ᆮ' == 'ㄷ'
  {12601,4527}, -- ᆯ' == 'ㄹ'
  {12602,4528}, -- ᆰ' == 'ㄺ'
  {12603,4529}, -- ᆱ' == 'ㄻ'
  {12604,4530}, -- ᆲ' == 'ㄼ'
  {12605,4531}, -- ᆳ' == 'ㄽ'
  {12606,4532}, -- ᆴ' == 'ㄾ'
  {12607,4533}, -- ᆵ' == 'ㄿ'
  {12608,4534}, -- ᆶ' == 'ㅀ'
  {12609,4535}, -- ᆷ' == 'ㅁ'
  {12610,4536}, -- ᆸ' == 'ㅂ'
  {12612,4537}, -- ᆹ' == 'ㅄ'
  {12613,4538}, -- ᆺ' == 'ㅅ'
  {12614,4539}, -- ᆻ' == 'ㅆ'
  {12615,4540}, -- ᆼ' == 'ㅇ'
  {12616,4541}, -- ᆽ' == 'ㅈ'
  {12618,4542}, -- ᆾ' == 'ㅊ'
  {12619,4543}, -- ᆿ' == 'ㅋ'
  {12620,4544}, -- ᇀ' == 'ㅌ'
  {12621,4545}, -- ᇁ' == 'ㅍ'
  {12622,4546}, -- ᇂ' == 'ㅎ'
  {12646,4550}, -- ᇆ' == 'ㅦ'
  {12647,4551}, -- ᇇ' == 'ㅧ'
  {12648,4552}, -- ᇈ' == 'ㅨ'
  {12649,4556}, -- ᇌ' == 'ㅩ'
  {12650,4558}, -- ᇎ' == 'ㅪ'
  {12651,4563}, -- ᇓ' == 'ㅫ'
  {12652,4567}, -- ᇗ' == 'ㅬ'
  {12653,4569}, -- ᇙ' == 'ㅭ'
  {12654,4572}, -- ᇜ' == 'ㅮ'
  {12655,4573}, -- ᇝ' == 'ㅯ'
  {12656,4575}, -- ᇟ' == 'ㅰ'
  {12664,4582}, -- ᇦ' == 'ㅸ'
  {12666,4583}, -- ᇧ' == 'ㅺ'
  {12668,4584}, -- ᇨ' == 'ㅼ'
  {12669,4586}, -- ᇪ' == 'ㅽ'
  {12671,4587}, -- ᇫ' == 'ㅿ'
  {12672,4590}, -- ᇮ' == 'ㆀ'
  {12615,4592}, -- ᇰ' == 'ㅇ'
  {12674,4593}, -- ᇱ' == 'ㆂ'
  {12675,4594}, -- ᇲ' == 'ㆃ'
  {12676,4596}, -- ᇴ' == 'ㆄ'
  {12678,4601}, -- ᇹ' == 'ㆆ'
}

-- Convert Hangul Jamo to Hangul Compatibility Jamo code
-- - https://en.wikipedia.org/wiki/Hangul_Compatibility_Jamo
-- - https://en.wikipedia.org/wiki/Hangul_Jamo_(Unicode_block)
-- - There is no calculation for this, so we need to convert this code manually
local function jamoToCompJamo(code)
  for _, e in ipairs(compConvertTable) do
    if code == e[2] then
      return e[1]
    end
  end
  return 0
end

---@param tt "initial"|"medial"|"final"|"partialOnly"
---@param char string
---@return integer UnicodeChar
local function getCode( tt, char )
  -- 초성 리스트 (initial list)
  local initial = { 'r','R','s','e','E','f','a','q','Q','t','T','d','w','W','c','z','x','v','g'};
  -- 중성 리스트 (medial list)
  local medial = { 'k', 'o', 'i', 'O', 'j', 'p', 'u', 'P', 'h', 'hk', 'ho', 'hl', 'y', 'n', 'nj', 'np', 'nl', 'b', 'm', 'ml', 'l' };
  -- 종성 리스트 (final list)
  local final = { 'r', 'R', 'rt', 's', 'sw', 'sg', 'e', 'f', 'fr', 'fa', 'fq', 'ft', 'fx', 'fv', 'fg', 'a', 'q', 'qt', 't', 'T', 'd', 'w', 'c', 'z', 'x', 'v', 'g' };
  local returnCode = 0; -- 최종 인덱스 (return index)
  local isFind = false; -- 발견 여부 (code found check)

  -- 각 리스트에서 인덱스를 검색하기 위한 로컬 함수
  local find = function(tb, ch)
    for i = 1, #tb do
      if tb[i] == ch then
        returnCode = i-1;
        isFind = true;
        break;
      end
    end
  end

  if char ~= nil then
    if tt == 'initial' then
      find( initial, char )
      returnCode = returnCode * 21 * 28
    elseif tt == 'medial' then
      find( medial, char )
      returnCode = returnCode * 28
    elseif tt == 'final' then
      find( final, char )
      returnCode = returnCode + 1
    end
  end
  if isFind == false then returnCode = -1; end
  return returnCode;
end

---Converts 0x1101 like unicode to string
---@param unicode_list table
---@return string convertedUnicodeChar
local function conv2utf8(unicode_list)
  local result = ''
  local w,x,y,z = 0,0,0,0
  local function modulo(a, b)
    return a - math.floor(a/b) * b
  end
  for _,v in ipairs(unicode_list) do
    if v ~= 0 and v ~= nil then
      if utf8 then
        -- Tested in REPENTOGON
        result = result .. utf8.char(v)
      else
        -- Assume Lua 5.3 not supporting utf8
        if v <= 0x7F then -- same as ASCII
           result = result .. string.char(v)
        elseif v >= 0x80 and v <= 0x7FF then -- 2 bytes
           y = math.floor(modulo(v, 0x000800) / 64)
           z = modulo(v, 0x000040)
           result = result .. string.char(0xC0 + y, 0x80 + z)
        elseif (v >= 0x800 and v <= 0xD7FF) or (v >= 0xE000 and v <= 0xFFFF) then -- 3 bytes
           x = math.floor(modulo(v, 0x010000) / 4096)
           y = math.floor(modulo(v, 0x001000) / 64)
           z = modulo(v, 0x000040)
           result = result .. string.char(0xE0 + x, 0x80 + y, 0x80 + z)
        elseif (v >= 0x10000 and v <= 0x10FFFF) then -- 4 bytes
           w = math.floor(modulo(v, 0x200000) / 262144)
           x = math.floor(modulo(v, 0x040000) / 4096)
           y = math.floor(modulo(v, 0x001000) / 64)
           z = modulo(v, 0x000040)
           result = result .. string.char(0xF0 + w, 0x80 + x, 0x80 + y, 0x80 + z)
        end
      end
    end
  end
  return result
end

---converts single Korean word within string and index
---@param text string
---@param idx integer
---@return string convertedKoreanWord
---@return integer newIndex
local function getFinalString(text, idx)

  local idxAppend = 0
  local res = ""

  -- ­한글의 초,중,종성의 인덱스
  -- Initial, Medial, Final index
  local initialCode = 0;
  local medialCode  = 0;
  local finalCode   = 0;

  -- 초성 검색 (Initial char check)
  local first = text:sub( idx, idx )
  local firstP1 = text:sub( idx, idx+1 )
  initialCode = getCode( 'initial', first );
  local tempMedialCodeP1 = getCode( 'medial', firstP1 );
  local tempMedialCodeP2 = getCode( 'medial', first );
  if tempMedialCodeP1 ~= -1 then
    -- Medial came first
    -- Medial char starts with 0x1161, 0x3131
    local code = jamoToCompJamo(0x1161 + (tempMedialCodeP1 // (1 * 28)))
    local ch = conv2utf8({code})
    return ch, idx + 2
  elseif tempMedialCodeP2 ~= -1 then
    -- Medial came first
    -- Medial char starts with 0x1161, 0x3131
    local code = jamoToCompJamo(0x1161 + (tempMedialCodeP2 // (1 * 28)))
    local ch = conv2utf8({code})
    return ch, idx + 1
  elseif initialCode < 0 then
    -- This isn't Korean character, returning orignal char
    return first, idx + 1
  end

  res = res .. first
  idxAppend = 1

  -- 중성 검색 (Medial char check)
  local secondP1 = text:sub( idx+1, idx+2 )
  local secondP2 = text:sub( idx+1, idx+1 )
  local medialCodeP1 = getCode( 'medial', secondP1 ); -- 2 chars of medial position
  local medialCodeP2 = getCode( 'medial', secondP2 ); -- 1 char of medial position
  --local medialCodeP3 = getCode( 'initial', secondP2 ); -- 1 char of medial position, but check for initial char

  if medialCodeP1 ~= -1 then
    -- 2 word medials
    res = res .. secondP1
    medialCode = medialCodeP1
    idxAppend = idxAppend + 2
  elseif medialCodeP2 ~= -1 then
    -- 1 word medial
    res = res .. secondP2
    medialCode = medialCodeP2
    idxAppend = idxAppend + 1
  else
    -- no medials, returning initial char
    -- initial char starts with 0x1100
    local code = jamoToCompJamo(0x1100 + (initialCode // (1 * 21 * 28)))
    local ch = conv2utf8({code})
    return ch, idx + 1
  end

  -- 종성 검색 (Final char check)
  local finalP1 = text:sub( idx+idxAppend, idx+idxAppend+1 )
  local finalP2 = text:sub( idx+idxAppend, idx+idxAppend )
  local finalP3 = text:sub( idx+idxAppend+1, idx+idxAppend+1 )
  local finalCodeP1 = getCode( 'final', finalP1 ); -- 2 chars of final position
  local finalCodeP2 = getCode( 'final', finalP2 ); -- 1 char of final position
  local finalCodeP3 = getCode( 'medial', finalP3 ); -- 1 char of final position, but check for medial char

  if finalCodeP1 ~= -1 then
    -- 2 word finals
    local nextIndex = idx + idxAppend + 2
    -- check initial position for next word
    local tempExtraMedialCode = getCode( 'medial', text:sub( nextIndex, nextIndex ) );
    if tempExtraMedialCode ~= -1 or finalP1 == finalP2 then
      -- medial was found in initial position. 1 word final is considered
      finalCode = finalCodeP2
      idxAppend = idxAppend + 1
    else
      -- 2 word finals truly
      finalCode = finalCodeP1
      idxAppend = idxAppend + 2
    end
  else
    -- 0~1 word finals
    if finalCodeP3 ~= -1 then
      -- medial was found in final position. no word final is considered
      finalCode = 0;
    elseif finalCodeP2 ~= -1 then
      -- 1 word final truly
      finalCode = finalCodeP2
      idxAppend = idxAppend + 1
    else
      -- no final was found
      finalCode = 0;
    end
  end

  -- final return
  local code = 0xAC00 + initialCode + medialCode + finalCode
  local ch = conv2utf8({code})
  return ch, idx + idxAppend
end

---Converts English typed string as Korean keyboard ('abc' returns 'ㅁㄴㅇ')
---@param msg string
---@return string
local function engToKor(msg)
  if msg == nil then
    return "nil"
  end

  local text = msg;

  -- 루프와 결과 저장을 위한 변수
  local textLength = #text
  local ret = "";
  local idx = 1

  while idx <= textLength do
    local ch, index = getFinalString(msg, idx)
    ret = ret .. ch
    idx = index
  end
  return ret
end

EID.engKeystrokeToKor = engToKor