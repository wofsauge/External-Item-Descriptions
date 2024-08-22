import lupa.lua54 as lupa
from lupa.lua54 import LuaRuntime

from pathlib import Path

lua = LuaRuntime(unpack_returned_tuples=True)
import glob, os
SCRIPT_PATH = os.path.realpath(__file__)
SOURCE_MOD_DIRECTORY = os.path.dirname(SCRIPT_PATH)+"/../.."

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

ignoreNodesWithName = {"fonts"}
ignoreTypeMissmatchNodesWithName = {"ConditionalDescs", "BFFSSynergies"}

maxChecklimit = {"tarotClothBuffs": 2, "carBattery": 2, "BFFSSynergies": 2}


# count en_us entries for stats
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
            print(f"\tTable '{prev_key}' does not contain key: {k}")
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
                print(f"\tType mismatch in table '{prev_key}', key: {k}")
                errorCount += 1

        elif lupa.lua_type(table2[k]) == "table":
            errorCount += compare_tables(table1[k], table2[k], str(prev_key)+"->"+str(k))
    return errorCount


lua.execute('REPENTOGON = true; EID = {}; EID.descriptions = {} function EID:updateDescriptionsViaTable(changeTable, tableToUpdate) for k,v in pairs(changeTable) do if v == "" then tableToUpdate[k] = nil else tableToUpdate[k] = v end	end end')
g = lua.globals()


print("reading: en_us.lua")
for englishFile in glob.glob(SOURCE_MOD_DIRECTORY+"/**/en_us.lua", recursive=True):
    lua.execute(open(englishFile, "r", encoding="UTF-8").read())

en_us_entries = count_entries(g.EID['descriptions']['en_us'])
print("en_us entries:", en_us_entries)


languages = {}
for file in glob.glob(SOURCE_MOD_DIRECTORY+"/**/ab+/*.lua", recursive=True) + glob.glob(SOURCE_MOD_DIRECTORY+"/**/rep/*.lua", recursive=True):
    if "en_us" not in file and "transformations" not in file:
        print("reading:",file)
        lua.execute(open(file, "r", encoding="UTF-8").read())
        languages[os.path.basename(file).replace(".lua","")] = 0

for lang in languages:
    print(f"Evaluating language '{lang}'..")
    errorCount = compare_tables(g.EID['descriptions']['en_us'], g.EID['descriptions'][lang], lang)
    percentage = (en_us_entries - errorCount) / en_us_entries*100
    languages[lang] = [percentage, errorCount]
    print(f"{Red}Errors found: {errorCount} / {en_us_entries}{Color_Off}\n\n")



gitWorkflowSummary = "### Translation progress\n| Language | Completion | Missing entries |\n|---|---|---|\n"
print(f"{Blue}Translation progress:{Color_Off}")
for lang in languages:
    print(
        f"\t{BWhite}{lang}{Color_Off}\t{Blue}{round(languages[lang][0],2)}%{Color_Off}\t{Red}{languages[lang][1]} missing{Color_Off}"
    )
    errorMessage = languages[lang][1] if languages[lang][1] >0 else "🎉"
    gitWorkflowSummary += f"| {lang} | {round(languages[lang][0],2)}% | {errorMessage} |\n"


if "GITHUB_STEP_SUMMARY" in os.environ:
    print("\n\nwrite workflow summary to: ", os.environ["GITHUB_STEP_SUMMARY"])
    Path(os.environ["GITHUB_STEP_SUMMARY"]).write_text(gitWorkflowSummary)
