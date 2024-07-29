import lupa.lua54 as lupa
from lupa.lua54 import LuaRuntime
lua = LuaRuntime(unpack_returned_tuples=True)
import glob, os
SCRIPT_PATH = os.path.realpath(__file__)
SOURCE_MOD_DIRECTORY = os.path.dirname(SCRIPT_PATH)+"\\..\\.."

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


lua.execute('EID = {}; EID.descriptions = {} function EID:updateDescriptionsViaTable(changeTable, tableToUpdate) for k,v in pairs(changeTable) do if v == "" then tableToUpdate[k] = nil else tableToUpdate[k] = v end	end end')

print("reading: en_us.lua",)
lua.execute(open(SOURCE_MOD_DIRECTORY+"\\descriptions\\ab+\\en_us.lua", "r", encoding="UTF-8").read())
lua.execute(open(SOURCE_MOD_DIRECTORY+"\\descriptions\\rep\\en_us.lua", "r", encoding="UTF-8").read())

g = lua.globals()
# count en_us entries for stats
def count_entries(t):
    count = 0
    for k in t:
        count += 1
        if lupa.lua_type(t[k]) == "table":
            count += count_entries(t[k])
    return count

def compare_tables(table1, table2, prev_key, progress):
    for k in table1:
        progress[0] += 1
        if k not in table2:
            print(f"\tTable '{prev_key}' does not contain key: {k}")
            progress[1] += 1
            # table is missing. add all missing entries as error
            if lupa.lua_type(table1[k]) == "table": 
                progress[1] += count_entries(table1[k])
        elif lupa.lua_type(table2[k]) != lupa.lua_type(table1[k]):
            print(f"\tType mismatch in table '{prev_key}', key: {k}")
            progress[1] += 1
        elif lupa.lua_type(table2[k]) == "table":
            compare_tables(table1[k], table2[k], str(prev_key)+"->"+str(k), progress)





en_us_entries = count_entries(g.EID['descriptions']['en_us'])
print("en_us entries:", en_us_entries)

languages = {}
for file in glob.glob(SOURCE_MOD_DIRECTORY+"\\descriptions\\ab+\\*.lua") + glob.glob(SOURCE_MOD_DIRECTORY+"\\descriptions\\rep\\*.lua"):
    if "en_us" not in file and "transformations" not in file:
        print("reading:",file)
        lua.execute(open(file, "r", encoding="UTF-8").read())
        languages[os.path.basename(file).replace(".lua","")] = 0

for lang in languages:
    print(f"Evaluating language '{lang}'..")
    progress = [0, 0]
    compare_tables(g.EID['descriptions']['en_us'], g.EID['descriptions'][lang], lang, progress)
    percentage = (en_us_entries-progress[1])/en_us_entries*100
    languages[lang] = [percentage, progress[1]]
    print(f"{Red}Errors found: {progress[1]} / {en_us_entries}{Color_Off}\n")

print(f"{Blue}Translation progress:{Color_Off}")
for lang in languages:
    print(f"\t{BWhite}{lang}{Color_Off}\t{Blue}{languages[lang][0]}%{Color_Off}\t{Red}{languages[lang][1]} missing{Color_Off}")