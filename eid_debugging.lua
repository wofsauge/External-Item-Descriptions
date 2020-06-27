local charsToDebug = {
"!!! EID DEBUG MODE ACTIVATED !!!", -- Header
"ABCDEFGHIJKLMNOPQRSTUVWXYZ", -- Caps letters
"abcdefghijklmnopqrstuvwxyz1234567890", -- small letters + numbers
"western: Áá Àà Ââ Āā Ää Ãã Åå Ææ Éé Èè Êê Ēē Ëë Íí Ìì Îî Īī Ïï ", --
"western 2: Óó Òò Ôô Ōō Öö Õõ Øø Œœ Úú Ùù Ûû Ūū Üü Ŵŵ Ýý Ÿÿ Ŷ", --
"western 3: Þþ Çç Ðð Ññ ß ¿¡", --
"cyrillic 1: Аа Бб Вв Гг Дд Ее Ёё Жж Зз Ии Йй Кк Лл Мм Нн Оо",
"cyrillic 2: Пп Рр Сс Тт Уу Фф Хх Цц Чч Шш Щщ Ъъ Ыы Ьь Ээ Юю Яя",
"polish: Ąą Ćć Ęę Łł Ńń Óó Śś Źź Żż",
"custom icons: ↑Positive ↓Negative \007bulletpoint ! ǃ ---- Legacy: \1 = Up \2 = Down \3 = Warning ! \6 = health \5 Key \015 = Coin \8\189 = Bomb",
"emotes: ☆★〠♠♣♥♦♤♧♡♢☀☂♨♪♭♯♂♀",
}

local function onDebugRender(t)
	for i,v in ipairs(charsToDebug) do
		EID.font:DrawStringUTF8(v,45,20+((i-1)*15),KColor(1,1,1,1,0,0,0),0,true)
	end
end
EID:AddCallback(ModCallbacks.MC_POST_RENDER, onDebugRender)