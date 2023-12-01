local MCMLoaded, MCM = pcall(require, "scripts.modconfig")
-- support for Mod Config Menu Chinese(Mod配置菜单（中文版）)
-- translate mod config menu to chinese
if MCMLoaded and MCM and MCM.i18n == "Chinese" then
    MCM.SetCategoryNameTranslate("EID","EID图鉴")
    MCM.SetSubcategoryNameTranslate("EID","Info","信息")
    MCM.TranslateOptionsDisplayWithTable("EID","Info",{
        -- find and replace menu texts
        {"External Item Descriptions", "外置物品描述"},
        {"Version ", "版本号"},
        {"%(rep%)","(忏悔)"},
        {"by Wofsauge","作者 Wofsauge"},
		{" CURRENTLY HIDDEN! ","~~~现在是隐藏的！~~~"},
		{" F2 to show ", "~~~按F2显示~~~"},
    })

    MCM.SetSubcategoryNameTranslate("EID","General","通用")
    MCM.TranslateOptionsDisplayWithTable("EID","General",{
        {"Name Language","道具名语言"},
        {"Current Language","当前语言"},
        {"Current %+ English","当前语言+英文"},
        {"Auto","自动"},
        {"Chinese","中文"},
        {"Language","语言"},
        {"English","英文"},
        {"Bulgarian","保加利亚语"},
        {"Czech","捷克语"},
        {"German","德语"},
        {"%(detailed%)","(详细)"},
        {"French","法语"},
        {"Italian","意大利语"},
        {"Japanese","日语"},
        {"Korean","韩语"},
        {"Polish","波兰语"},
        {"Brazilian Portuguese","巴西葡萄牙语"},
        {"Portuguese","葡萄牙语"},
        {"Russian","俄语"},
        {"Spanish","西班牙语"},
        {"Turkish","土耳其语"},
        {"Show on \"Curse of the Blind\"", "致盲诅咒中显示"},
        {"True","是"},
        {"False","否"},
        {"Show Hidden Alt%-Path Item","显示隐藏的分支道具"},
		{"Show on April Fools Challenge","愚人挑战中显示"},
        {"Show Unidentified Pill Effects","显示未辨认的胶囊"},
        {"Show pill effect after one use","使用胶囊后显示效果"},
        {"Display All Objects In Range", "显示范围内的所有物品"},
        {"Max Descriptions to Display","描述显示上限"},
        {"RESET CONFIG TO DEFAULT","重置全部设置"},

        {"Line Height","行高"},
        {"Textbox Width","行宽"},
        {"Hide in Battle","战斗时隐藏"},
		{"Is Hidden","图鉴初始隐藏"},
		{"Position X","X坐标位置"},
		{"Position Y","Y坐标位置"},
        {"Is Initially Hidden","默认隐藏"},
        {"Toggle","切换开关"},
        {"Keyboard","键盘"},
        {"Controller","控制器"},
        {"Start of Run Warnings", "开局警告"},

        {"Indicator","指示器"},
        {"arrow","箭头"},
        {"blink","闪烁"},
        {"border","描边"},
        {"highlight","高亮"},
        {"none","无"},
        {"None","无"},
        {"Max Distance","最远距离"},
        {"Grids","单元格"},
        {"Achievement warning","成就警告"},
        {"Enabled","启用"},
        {"Disabled","禁用"}
    })
    MCM.SetSubcategoryNameTranslate("EID","Display","显示")
    MCM.TranslateOptionsDisplayTextWithTable("EID","Display",{
        ["Display Infos when Obstructed"] = "路径受阻时的信息显示",
        ["Display Infos in Shops"] = "商店中的信息显示",
        ["Bag of Crafting"] = "合成宝袋",
		["Interaction with 'Options?'"] = "'选择?'道具作用",
    })
    MCM.TranslateOptionsDisplayWithTable("EID","Display",{
		{"Card Infos when spawned by 'Options%?'","由'选择?'生成的卡牌信息"},
		{"Pill Infos when spawned by 'Options%?'","由'选择?'生成的胶囊信息"},
        {"Description Refresh Rate","描述刷新率"},
        {"Co%-op Player Descriptions","多玩家描述"},
        {"Paired Player Descriptions","同伴描述"},
        {"Glitched Item Infos", "错误道具描述"},
        {"Void Stat Increase Infos", "虚空属性加成信息"},
        {"Sanguine Bond Infos", "血色羁绊信息"},
        {"Predict Sanguine Bond Result", "预测血色羁绊结果"},
        {"Show again when you have Flight","角色飞行时恢复显示"},

        {"Collectible Infos","道具信息"},
        {"Crane Game Infos","娃娃机信息"},
        {"Trinket Infos","饰品信息"},
        {"Card Infos","卡牌信息"},
        {"Pill Infos","胶囊信息"},
        {"Sacrifice Room Infos","献祭房信息"},
        {"Dice Room Infos","骰子房信息"},
        {"Show again when having flight","有飞行能力会再次显示"},
		{"Soulstone Infos","魂石信息"},
        {"Spindown Dice","计数二十面骰"},
        {"Display IDs","显示ID"},
        {"Display Names","显示名称"},
        {"Skip Locked Items","跳过未解锁道具"},
        {"Display mode","显示模式"},
        {"always","总是"},
        {"hold","举起"},
        {"never","从不"},
        {"Displayed Results","结果数"},
        {"Items","道具"},
        {"True","是"},
        {"False","否"},
        {"Obstructed ","受阻碍的"},
        {"Shop ","商店中的"},
        {"'Options%?' ","'选择?'生成的"},
    })
    MCM.SetSubcategoryNameTranslate("EID","Visuals","视觉")
    MCM.TranslateOptionsDisplayWithTable("EID","Visuals",{
        {"Font Type","字体类型"},
        {"default_cn","中文(默认)"},
        {"Display Mode","显示模式"},
        {"Text Size","文本大小"},
        {"Transparency","透明度"},
        {"Display mode","显示模式"},
        {"Display Item Name","显示物品名称"},
        {"Display Item Type","显示物品类型"},
        {"Display Item Icon","显示物品图标"},
        {"Toggle Size","切换大小"},
        {"Display Item Description","显示物品描述"},
        {"Display Transformation Name","显示套装名"},
        {"Display Transformation Icon","显示套装图标"},
        {"Display Transformation Progress","显示套装进度"},
		{"Display Quality Info","显示品质信息"},
        {"Display Object ID","显示物品ID"},
        {"Markup Icon Size","标注图标大小"},
        {"Stat Change Icons","显示属性变化图标"},
        {"Display Mod Indicator","显示模组指示器"},
        {"Stat/Pickup Bulletpoint Icons","显示状态/掉落物的项目符号"},
        {"Both","同时"},
        {"Name only","仅名称"},
        {"Icon only","仅图标"},
        {"None","无"},
        {"True","是"},
        {"False","否"},
        {"default","默认"},
        {"local","附近"},
        {"Local Mode Centered","附近模式居中"},
        {"Local Mode","附近模式"},
        {"small","小"},
        {"big","大"},
        {"inverted","反转"},
        {"borderless","无边框"},
        {"Keyboard","键盘"},

    })
    MCM.SetSubcategoryNameTranslate("EID","Reminder","提示")
    MCM.TranslateOptionsDisplayTextWithTable("EID","Reminder",{
        ["Item Descriptions"]="道具描述",
    })
    MCM.TranslateOptionsDisplayWithTable("EID","Reminder",{
        {"Item Reminder Description","道具提示信息"},
        {"Hold to Show","长按显示"},
        {"Recent Items","最近道具"},
        {"Active Items","主动道具"},
        {"Pocket Items","口袋物品"},
        {"Trinkets","饰品"},
        {"Poop Spells","大便(投掷物)"},
        {"Show Hidden Information","显示隐藏信息"},
        {"Show RNG Predictions","显示随机预测信息"},

        {"Move Left","向左走"},
        {"Move Right","向右走"},
        {"Move Up","向上走"},
        {"Move Down","向下走"},
        {"Shoot Left","向左射击"},
        {"Shoot Right","向右射击"},
        {"Shoot Up","向上射击"},
        {"Shoot Down","向下射击"},
        {"Bomb","炸弹"},
        {"Item","道具"},
        {"Pill/Card","胶囊/卡牌"},
        {"Drop","丢弃"},
        {"Pause","暂停"},
        {"Map","地图"},

        {"No","否"},
        {"Yes","是"},
        {"max","最大数量"},
        {"False","否"},
        {"True","是"},
        {"Disabled","禁用"},
        {"Enabled","启用"},
    })
	MCM.SetSubcategoryNameTranslate("EID","Crafting","合成宝袋")
	MCM.TranslateOptionsDisplayWithTable("EID","Crafting",{
        {"Show Display","显示信息"},
        {"always","总是"},
        {"hold","举起"},
        {"never","从不"},
        {"Display Mode","显示模式"},
        {"Show Controls","显示热键"},
        {"Load Modded Item Recipes","加载模组道具配方"},
        {"Recipe List Options","配方列表选项"},
        {"Recipe List","配方列表"},
        {"Preview Only","仅预览"},
        {"Displayed Recipes","配方显示数量"},
        {"Hide in Battle","战斗时隐藏"},
        {"Pickups Only","仅掉落物"},
        {"Item Probability","物品池百分比"},
        {"Show Recipes/Best Bag as","配方/最佳组合显示方式"},
        {"8 Icons","8图标"},
        {"Groups","分组"},
        {"Thorough Calculations","探索深度"}, -- 按照描述信息来翻译
        {"Random Calculations","随机探索步数"},
        {"Show Item Names","显示道具名称"},
        {"Show Locked Recipes","显示未解锁配方"},

        {"Result Toggle","结果切换"},
        {"Toggle","切换开关"},
        {"Keyboard","键盘"},
        {"Controller","控制器"},
        {"None","无"},

        {"False","否"},
        {"True","是"},
        {"Yes","是"},
        {"No","否"},
        {"On","开"},
        {"Off","关"},
		{"%<---- Clear Floor item list ----%>","<---- 清空房间中列表 ---->"},
		{"%<---- Clear Bag Content ----%>","<---- 清空袋中列表 ---->"}
	})
	MCM.SetSubcategoryNameTranslate("EID","Save Game","游戏存档")
    MCM.TranslateOptionsDisplayWithTable("EID","Save Game",{
        {"To enable savegame related features,","如需启用游戏存档相关的特性"},
        {"Loaded savegame data","已加载的存档数据"},
        {" User: "," 用户名: "},
        {"Current Save Game","选种的存档位"},
        {"Deactivated","无效"},
        {"Collection page items missing","道具图鉴缺失数量"},
        {"Collection Page Highlight color","图鉴高亮颜色"},

        {"EIDText","EID文本"},
        {"EIDTransform","EID套装"},
        {"EIDError","EID错误"},
        {"EIDObjName","EID对象名"},
        {"Black","黑色"},
        {"White","白色"},
        {"BagComplete","袋满"},
        {"BagOverfill","袋溢出"},
        {"Lavender","淡紫色"},
        {"LightOrange","淡橙色"},
        {"PastelBlue","淡蓝色"},
        {"Red","红色"},
        {"Lime","深绿"},
        {"Blue","蓝色"},
        {"Yellow","黄色"},
        {"Cyan","青色"},
        {"Pink","粉色"},
        {"Silver","银色"},
        {"Gray","灰色"},
        {"Maroon","红褐"},
        {"Olive","黄褐"},
        {"Green","绿色"},
        {"Purple","紫色"},
        {"Teal","蓝绿"},
        {"Navy","深蓝"},
        {"Orange","橙色"},
        {"Rainbow","彩虹色"},
        {"Gold","金色"},
        {"Blink","闪烁"},
        {"Fade","渐隐"},
    })
    MCM.TranslateOptionsDisplayTextWithTable("EID","Save Game",{
        ["please run \"scripts\\savegame_reader.exe\""] = "请运行\"scripts\\savegame_reader.exe\"",
        ["found in the EID mod folder"] = "可以在EID的模组文件夹中找到"
    })
	MCM.SetSubcategoryNameTranslate("EID","Mouse","鼠标")
    MCM.TranslateOptionsDisplayTextWithTable("EID","Mouse",{
        ["! THIS FEATURE IS IN EARLY DEVELOPMENT !"] = "！这个功能尚在开发中！",
        ["MCM -> General -> Hud Offset"] = "通过Mod配置菜单 -> 通用 -> 界面位置",
        ["to adjust Hud Offset"] = "来调整HUD的偏移",
    })
	MCM.TranslateOptionsDisplayWithTable("EID","Mouse",{
		{"Enable Mouse controls","启用鼠标控制"},
		{"Show Cursor","显示鼠标指针"},
		{"True","是"},
        {"False","否"}
	})
    MCM.SetSubcategoryNameTranslate("EID","Colors","颜色")
    MCM.TranslateOptionsDisplayWithTable("EID","Colors",{
        {"Names","名称"},
        {"Descriptions","描述"},
        {"Transformations","套装"},
        {"Errors","错误"},
        {"Mod Indicator","模组指示器"},
        {"EIDText","EID文本"},
        {"EIDTransform","EID套装"},
        {"EIDError","EID错误"},
        {"EIDObjName","EID对象名"},
        {"Black","黑色"},
        {"White","白色"},
        {"BagComplete","袋满"},
        {"BagOverfill","袋溢出"},
        {"Lavender","淡紫色"},
        {"LightOrange","淡橙色"},
        {"PastelBlue","淡蓝色"},
        {"Red","红色"},
        {"Lime","深绿"},
        {"Blue","蓝色"},
        {"Yellow","黄色"},
        {"Cyan","青色"},
        {"Pink","粉色"},
        {"Silver","银色"},
        {"Gray","灰色"},
        {"Maroon","红褐"},
        {"Olive","黄褐"},
        {"Green","绿色"},
        {"Purple","紫色"},
        {"Teal","蓝绿"},
        {"Navy","深蓝"},
        {"Orange","橙色"},
        {"Rainbow","彩虹色"},
        {"Gold","金色"},
        {"Blink","闪烁"},
        {"Fade","渐隐"},
    })

    MCM.TranslateOptionsInfoTextWithTable("EID","General",{
        ["Changes the language."] = "设置语言",
        ["Languages marked with (WIP) are incomplete"] = "标注WIP的语言尚不完整",
        ["If translated names are available,"] = "如果具有可用的翻译,",
        ["this changes how item names are displayed."] = "此项目决定它们如何显示",
        ["Hides the descriptions when in a fight"] = "在战斗中隐藏描述",
        ["Highlights the currently described item"] = "高亮当前描述物品",
        ["Distance to the object until descriptions are displayed"] = "能够显示描述的最远物品距离",
        ["Use this to turn off the achievement warning"] = "此选项可关闭成就警告",
		["Default = 60"] = "默认值 = 60",
		["Default = 45"] = "默认值 = 45",
        ["Default = 11 (varies per language)"] = "默认值 = 11 (因语言而异)",
        ["Default = 130 (varies per language)"] = "默认值 = 130 (因语言而异)",
        ["Show the description for the blind item in Downpour/Mines/etc."] = "显示下水道/矿洞等问号道具的描述信息",
        ["Keeps pilleffect descriptions unidentified, until the player has used the pill at least once in the run. This ignores effects caused by PHD and False PHD"]
            = "只有在本局中使用过的药丸效果才会显示出来。无视药学博士证/伪造药学博士证的效果",
        ["Press this key to toggle the description display"] = "按下此键切换描述的显示/隐藏",
        ["Press this button to toggle the description display (Left Stick or Right Stick recommended; most other buttons will not work)"]
            = "按下此键切换描述的显示/隐藏 (建议左摇杆或右摇杆 多数其它按钮不工作)",
        ["Toggle the achievement, outdated game version, and modded crafting recipes warnings"]
            = "切换成就、 游戏版本过时 及合成宝袋包含模组的警告",
        ["Change how the currently described item is marked"]
            = "改变当前正在显示物品的标记方式",
        ["Descriptions besides the closest one will be shown using the Local display mode"]
            = "非最近道具的描述也会显示在附近",
        ["Max number of descriptions to display per frame"]
            = "每帧显示的最大描述数量",
        ["Press this to reset the config back to its default values"]
            = "选择此项以将配置重置为默认值",
    })

    MCM.TranslateOptionsInfoTextWithTable("EID","Display",{
        ["How many times per second that EID updates what description to show"] = "EID每秒更新多少次描述信息?",
        ["Allow Players 2, 3, and 4 to display descriptions in Co-op"] = "在多人游戏中使玩家2、3、4显示描述信息",
        ["Allow paired characters like Esau and Tainted Forgotten's bone pile to display descriptions"]
            = "让同伴角色(比如以扫和堕化遗骸的骨头)显示描述",
        ["Note: The --luadebug launch option is required for more detailed glitched item descriptions; this can be dangerous!"]
            = "注意: 需要添加--luadebug启动选项来获得详细信息; 此操作存在风险!",
        ["The next reward from Sanguine Bond can be predicted and highlighted in the description"]
             = "预测血色羁绊的下一次奖励, 并高亮显示",
        ["Number of item previews when holding Spindown Dice"] = "计数二十面骰的预览道具数量",
        ["Display IDs for Spindown Dice results"] = "在计数二十面骰结果中显示ID",
        ["Display names for Spindown Dice results"] = "在计数二十面骰结果中显示名称",
        ["Skip locked items in the preview just as the dice will; the method to check for unlock status is not perfect, though"] = "跳过未解锁的道具来与骰子的行为保持一致 EID检测道具解锁状态的方式尚不完美"
    })
    MCM.TranslateOptionsInfoTextWithTable("EID","Reminder",{
        ["Hold Map to show your active item's effect, recently picked up items, and much more"]
            = "长按地图键显示主动道具、最近拾取物品等的效果",
        ["Hold this key to display the Item Reminder description, show Flip/Spindown previews and control the Bag of Crafting recipe list"]
            = "长按此键显示道具描述提示，展示生死逆转/计数二十面骰预览，控制合成宝袋配方列表",
        ["Show recently acquired item descriptions in the Item Reminder (good for Curse of the Blind!)"]
            = "在提示中显示最近获得的道具(配合致盲诅咒)",
        ["Show your active item descriptions in the Item Reminder"]
            = "在提示中显示主动道具描述",
        ["Show your pocket item (card, pill, active) descriptions in the Item Reminder"]
            = "在提示中显示口袋(卡牌, 胶囊, 主动)物品的描述",
        ["Show your trinket descriptions in the Item Reminder"]
            = "在提示中显示饰品描述",
        ["Show Tainted ???'s next Poop Spell descriptions in the Item Reminder"]
            = "在提示中显示堕化???的下一个大便描述",
        ["Items like Error (404) or Rainbow Worm can have their current granted item revealed in the Item Reminder"]
            = "在提示中显示例如错误(404)/彩虹虫等的当前效果",
        ["Some items can have their next random result predicted and shown in the Item Reminder"]
            = "在提示中显示某些道具的下一次随机行为结果",
    })
	MCM.TranslateOptionsInfoTextWithTable("EID","Crafting",{
        ["Always = Always show Results"] = "总是=始终显示结果",
        ["Hold = Show when holding up bag"] = "举起=举起宝时显示",
        ["Never = Disable Bag of Crafting feature"] = "禁用合成宝袋特性",
        ["Toggle showing a list of recipes, an item preview when bag is full, what item pool/quality you might get, or only the floor pickups"]
            = "切换显示配方列表,袋满时的道具预览,道具池/品质信息,或地面上的掉落物",
        ["Hides the Bag of Crafting info when in a fight"] = "在战斗中隐藏合成宝袋信息",
        ["Show the text for the Hide/Preview and Recipe List hotkeys"] = "显示切换隐藏/预览和配方列表的热键",
        ["Choose if you want recipes (and the Best Quality bag in Item Probability Mode) shown as 8 icons, or as grouped ingredients"]
            = "切换配方显示模式(或无配方模式下的最佳品质)为8个图标, 或者分组显示",
        ["Enable or disable basic modded item support"] = "开关基础的模组道具支持",
        ["If you have a lot of modded items, it will slow down game launch"] = "如果模组道具太多，游戏会变卡",
        ["(12 = 500 combinations, 14 = 3,000, 16 = 13,000)"] = "(12=500组合,14=3000,16=13000)",

        ["Page size for the preview of items currently craftable with Bag of Crafting"] = "一页显示的当前可合成道具的数量",
        ["Get every recipe for the X best components; setting this high slows down recipe checking"]
            = "探索此值数量的最优组合的各个配方 增加此值会导致卡顿",
        ["An additional X number of randomly chosen recipes will be checked, changing each pickup spawn/despawn or refresh"]
            = "额外检查此值数量的随机组合 在掉落物生成/消失或刷新时变化",
        ["If on, each recipe result takes two lines, one for the item name, one for the recipe"]
            = "如果开启,每个配方会显示两行,第一行是名字,第二行是配方",
		["Press this to clear all currently detected items on the floor"] = "按此键清除所有当前房间中已检测的物品",
		["Press this to clear all currently detected items on the bag"] = "按此键清除所有当前袋中已检测的物品",
        ["Choose if you want recipes (and the Best Quality bag in Item Probability Mode) shown as 8 icons, or as grouped ingredients"]
            = "选择使用八个图标还是分组 显示配方(或无配方模式的最佳组合)",
        ["Press this key to toggle the crafting display, allowing you to check descriptions of items/pickups on the floor"]
            = "按此键切换合成袋的显示，以预览地面上的道具/掉落物描述",
        ["Press this button to toggle the crafting display (Left Stick or Right Stick recommended; most other buttons will not work)"]
            ="按此键切换合成袋的显示(推荐左右摇杆 多数其它键无法工作)",
        ["Press this key to toggle the description of the item ready to be crafted in Recipe List/No Recipe Mode"]
            ="按此键切换配方列表/无配方模式的描述",
        ["Press this button to toggle the description of the item ready to be crafted (Left Stick or Right Stick recommended; most other buttons will not work)"]
            ="按此键切换可显合成的物品描述(推荐左右摇杆 多数其它键无法工作)",
        ["Press this to clear all currently detected items on the bag"]
            ="按下此项清空当前检测到的袋中物品",
        ["Press this to clear all currently detected items on the floor"]
            ="按下此项清空当前检测到的房间中物品",
	})
	MCM.TranslateOptionsInfoTextWithTable("EID","Save Game",{
        ["Save game you are currently on. This info needs to be set to get the correct lookup tables"]
            = "当前正在使用的存档位. 需要正确设置此项才能生效",
        ["Color in which item names are colored to highlight that this item needs to be collected for the collection page"]
            = "图鉴上空缺道具的高亮颜色",
    })
	MCM.TranslateOptionsInfoTextWithTable("EID","Mouse",{
		["If enabled, allows to hover over certain HUD elements to get descriptions"] = "如果启用，将鼠标悬停到某些HUD元素 上可获得物品描述"
	})

    MCM.TranslateOptionsInfoTextWithTable("EID","Colors",{
        ["Changes the color of normal texts."] = "改变常规文本的颜色",
        ["Changes the color of transformation texts."] = "改变套装文本的颜色",
        ["Changes the color of name texts."] = "改变名称文本的颜色",
        ["Changes the color of mod indicator texts (as long as they are enabled)."] = "改变模组指示器的颜色(如果可用)",
        ["Changes the color of error messages like Unknown pills"] = "改变错误消息的颜色(例如未知胶囊)"
    })
    MCM.TranslateOptionsInfoTextWithTable("EID","Visuals",{
    	["Change text size. CAN BE HARD TO READ IN SOME SETTINGS!"] = "修改文本大小 某些情况下会难以阅读",
        ["Changes display mode of descriptions"] = "改变描述的显示模式",
        ["Default: Text is displayed in the top left"] = "默认: 文本显示在屏幕左上角",
        ["Local: Text is displayed under the described object"] = "附近: 文本显示在物品旁边",
        ["Press this key to change the text size."] = "按下此键改变文字大小",
        ["Hold this key to smoothly change the text size."] = "长按此键平滑改变文字大小",
    })

    -- MCM.TranslateOptionsInfoWithTable("EID","Visuals",{
    --     {"Press this key to change the text size.", "按下此键改变文字大小"},
    --     {"Hold this key to smoothly change the text size.", "长按此键平滑改变文字大小"},
    --     -- {"local: text will be displayed under the described object.", "附近: 文本显示在物品下方"},
    -- })
    MCM.TranslateOptionsPopupWithTable("EID","General",{
        {"This setting is currently set to \"","当前设置为\""},
        {"\".$newlinePress this button to keep it unchanged.$newline$newline","\".$newline按此键保持设置不变。$newline"},
        {"Press a button on your ","在"},
        {" to change this setting.$newline$newline", "上按任意键改变设置$newline"},
        {"Press ", "按"},
        {" to go back and clear this setting.","返回并清除设置"},
        {"back","返回"},
        {"keyboard","键盘"},
        {"controller","控制器"},
    })
    MCM.TranslateOptionsPopupWithTable("EID","Visuals",{
        {"This setting is currently set to \"","当前设置为\""},
        {"\".$newlinePress this button to keep it unchanged.$newline$newline","\".$newline按此键保持设置不变。$newline"},
        {"Press a button on your ","在"},
        {" to change this setting.$newline$newline", "上按任意键改变设置$newline"},
        {"Press ", "按"},
        {" to go back and clear this setting.","返回并清除设置"},
        {"back","返回"},
        {"keyboard","键盘"},
        {"controller","控制器"},
    })
    MCM.TranslateOptionsPopupWithTable("EID","Crafting",{
        {"This setting is currently set to \"","当前设置为\""},
        {"\".$newlinePress this button to keep it unchanged.$newline$newline","\".$newline按此键保持设置不变。$newline"},
        {"Press a button on your ","在"},
        {" to change this setting.$newline$newline", "上按任意键改变设置$newline"},
        {"Press ", "按"},
        {" to go back and clear this setting.","返回并清除设置"},
        {"back","返回"},
        {"keyboard","键盘"},
        {"controller","控制器"},
    })
end
