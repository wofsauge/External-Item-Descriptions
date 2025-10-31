import lupa.lua54 as lupa
from lupa.lua54 import LuaRuntime

from pathlib import Path

lua = LuaRuntime(unpack_returned_tuples=True)
import glob, os
SCRIPT_PATH = os.path.realpath(__file__)
SOURCE_MOD_DIRECTORY = os.path.dirname(SCRIPT_PATH)+"/../.."

ONLY_DO_LANGUAGE = ""

if "GITHUB_WORKSPACE" in os.environ:
    SOURCE_MOD_DIRECTORY = os.environ["GITHUB_WORKSPACE"]

# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White
BWhite='\033[1;37m'       # Bold White

ignoreNodesWithName = {"fonts", "alternativeLanguageCodes"}
ignoreTypeMissmatchNodesWithName = {"ConditionalDescs", "BFFSSynergies"}

dlcs = ["ab+", "rep", "rep+"]

maxChecklimit = {"tarotClothBuffs": 1, "carBattery": 1, "BFFSSynergies": 1}

ignoreErrors = {
"fr(rep)->collectibles->49", # No number to change in text
"fr(rep)->ConditionalDescs->5.300.83", # not applicable
"fr(rep+)->tarotClothBuffs->11", # Not needed, since pluralization is already handles in rep file
"zh_cn(rep+)->tarotClothBuffs->11", # Not needed
}

# count English entries for stats
def count_entries(t):
    count = 0
    for k in t:
        count += 1
        if lupa.lua_type(t[k]) == "table":
            count += count_entries(t[k])
    return count

def getMaxCheckLimit(parentName):
    for entry in maxChecklimit:
        if entry in parentName:
            return maxChecklimit[entry]
    return float('inf')

def addUpdatedTables(languageCode, dlc):
    if dlc != "ab+":
        # Add language table
        lua.execute('EID.descriptions["'+languageCode+'"] = {}')
        lua.execute('EID.descriptions["'+languageCode+'"].ModularDescriptions = {FullMapping = {}}') # DEBUG function for modular descriptions
    
        # Add metatable to create missing tables on the fly
        lua.execute('setmetatable(EID.descriptions["'+languageCode+'"], {\
            __index = function(tbl, key)\
                local newTbl = {}\
                rawset(tbl, key, newTbl)\
                return newTbl\
            end\
        })')

# find entries in table2 that are missing or different than in table 1
def compare_tables(table1, table2, prev_key):
    errorCount = 0
    checkLimit = getMaxCheckLimit(prev_key)
    for k in table1:
        checkLimit -= 1
        if k in ignoreNodesWithName or checkLimit < 0:
            # dont evaluate nodes that are listed in this table
            continue
        if k not in table2:
            if prev_key+"->"+str(k) in ignoreErrors:
                # ignore this error
                continue
            print(f"\tTable '{prev_key}' does not contain entry: {k}")
            errorCount += 1
            # table is missing. add all missing entries as error
            if lupa.lua_type(table1[k]) == "table":
                errorCount += count_entries(table1[k])

        elif lupa.lua_type(table2[k]) != lupa.lua_type(table1[k]):
            if lupa.lua_type(table1[k]) == "table" and len(table1[k]) == 1:
                # ignore missmatch, if comparing table with 1 entry to a single string
                continue
            if lupa.lua_type(table2[k]) == "table" and len(table2[k]) == 1:
                # ignore missmatch, if comparing table with 1 entry to a single string
                continue
            # Ignore if node is inside a table to ignore this type of error
            ignoreError = False
            for ignoreNode in ignoreTypeMissmatchNodesWithName:
                if ignoreNode in prev_key:
                    ignoreError = True
                    break
            if not ignoreError:
                if prev_key+"->"+str(k) in ignoreErrors:
                    # ignore this error
                    continue
                print(f"\tType mismatch in table '{prev_key}', key: {k}")
                errorCount += 1

        elif lupa.lua_type(table2[k]) == "table":
            errorCount += compare_tables(table1[k], table2[k], str(prev_key)+"->"+str(k))
    return errorCount


languageProgress = {}
english_entries = {}
for dlc in dlcs:
    lua.execute('REPENTOGON = true; EID = {}; EID.descriptions = {}; function EID:updateDescriptionsViaTable(changeTable, tableToUpdate) for k,v in pairs(changeTable) do if v == "" then tableToUpdate[k] = nil else tableToUpdate[k] = v end	end end')
    g = lua.globals()
    addUpdatedTables("en_us", dlc)

    # init game enums
    enumsFile = glob.glob(os.path.dirname(SCRIPT_PATH)+"/**/enums_rep+.lua", recursive=True)[0]
    print("reading:", enumsFile)
    lua.execute(open(enumsFile, "r", encoding="UTF-8").read())

    # Read English language files first
    englishFile = glob.glob(SOURCE_MOD_DIRECTORY+"/**/"+dlc+"/en_us.lua", recursive=True)[0]
    print("reading:", englishFile)
    lua.execute(open(englishFile, "r", encoding="UTF-8").read())

    english_entries[dlc] = count_entries(g.EID['descriptions']['en_us'])
    print("English "+dlc+" entries:", english_entries[dlc])


    langFiles = []
    if ONLY_DO_LANGUAGE != "":
        langFiles += glob.glob(SOURCE_MOD_DIRECTORY+"/**/"+dlc+"/"+ONLY_DO_LANGUAGE+".lua", recursive=True)
    else:
        langFiles += glob.glob(SOURCE_MOD_DIRECTORY+"/**/"+dlc+"/*.lua", recursive=True)
    # Read other language files
    for file in langFiles:
        if "en_us" not in file and "transformations" not in file and "item_data" not in file:
            languageCode = os.path.basename(file).replace(".lua","")
            print("reading:",file)
            addUpdatedTables(languageCode, dlc)
            lua.execute(open(file, "r", encoding="UTF-8").read())
            if languageCode not in languageProgress:
                languageProgress[languageCode] = {}

            # Evaluate language for completeness
            print(f"Evaluating language '{languageCode}'..")
            errorCount = compare_tables(g.EID['descriptions']["en_us"], g.EID['descriptions'][languageCode], languageCode+"("+dlc+")")
            percentage = (english_entries[dlc] - errorCount) / english_entries[dlc] * 100
            languageProgress[languageCode][dlc] = [percentage, errorCount]
            print(f"{Red}Errors found: {errorCount} / {english_entries[dlc]}{Color_Off}\n\n")


# Calculate total english entries
total_english_entries = 0
for entries in english_entries.values():
    total_english_entries += entries

# Write git Workflow summary
gitWorkflowSummary = "### Translation progress\n| Language | Completion (AB+) |Completion (REP) |Completion (REP+) |Completion (Total) |\n|---|---|---|---|---|\n"
print(f"{Blue}Translation progress:{Color_Off}")
for lang in languageProgress.keys():
    gitWorkflowSummary += f"| {lang} "
    totalMissing = 0
    for dlc in dlcs:
        gitCompletionMessage = ""
        if dlc in languageProgress[lang]:
            percent = round(languageProgress[lang][dlc][0], 2)
            missingEntries = languageProgress[lang][dlc][1]
            totalMissing += missingEntries
            print(f"\t{BWhite}{lang}({dlc}){Color_Off}\t{Blue}{percent}%{Color_Off}\t{Red}{missingEntries} missing{Color_Off}")
            gitCompletionMessage = f"{percent}% ({missingEntries} left)" if missingEntries >3 else "100% 🎉"
        else:
            print(
            f"\t{BWhite}{lang}({dlc}){Color_Off}\t\t{Red}DLC translation missing!{Color_Off}")
            gitCompletionMessage = f"0% ({english_entries[dlc]} left)"
            totalMissing += english_entries[dlc]
                
        gitWorkflowSummary += f"| {gitCompletionMessage} "
    
    totalPercent = round((total_english_entries - totalMissing) / total_english_entries * 100, 2)
    gitWorkflowSummary += f"|{totalPercent}% ({totalMissing}) "
    gitWorkflowSummary += "|\n"

print(gitWorkflowSummary)

if "GITHUB_STEP_SUMMARY" in os.environ:
    print("\n\nwrite workflow summary to: ", os.environ["GITHUB_STEP_SUMMARY"])
    Path(os.environ["GITHUB_STEP_SUMMARY"]).write_text(gitWorkflowSummary)
