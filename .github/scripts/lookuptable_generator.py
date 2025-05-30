# This tool generates the lookup tables we need to display additional informations.
# YOU DONT HAVE TO RUN THIS FILE YOURSELF! THE RESULTING DATA IS SHIPPED WITH THE MOD ALREADY!

import xml.etree.ElementTree as ET
from pathlib import Path
import re

GENERATE_REP_PLUS = True

filePath = "..\\..\\resources-dlc3\\"
writeToFile = "features/eid_xmldata.lua"

if GENERATE_REP_PLUS:
    filePath = "..\\..\\extracted_resources\\resources\\"
    writeToFile = "features/eid_xmldata_rep+.lua"

# take second element for sort
def sortByID(elem):
    return elem["id"]
recipes = []
itempools = {}
maxItemID = 0
pillMetadatas = []
entityNames = []
locusts = []
wisps = []

recipeIngredients = {}
recipeIngredients["h"] = 1 # Red Heart
recipeIngredients["s"] = 2 # Soul Heart
recipeIngredients["b"] = 3 # Black Heart
recipeIngredients["e"] = 4 # Eternal Heart
recipeIngredients["g"] = 5 # Gold Heart
recipeIngredients["B"] = 6 # Bone Heart
recipeIngredients["r"] = 7 # Rotten Heart
recipeIngredients["."] = 8 # Penny
recipeIngredients["o"] = 9 # Nickel
recipeIngredients["O"] = 10 # Dime
recipeIngredients["Q"] = 11 # Lucky Penny
recipeIngredients["/"] = 12 # Key
recipeIngredients["|"] = 13 # Golden Key
recipeIngredients["%"] = 14 # Charged Key
recipeIngredients["v"] = 15 # Bomb
recipeIngredients["^"] = 16 # Golden Bomb
recipeIngredients["V"] = 17 # Giga Bomb
recipeIngredients["1"] = 18 # Micro Battery
recipeIngredients["2"] = 19 # Lil Battery
recipeIngredients["3"] = 20 # Mega Battery
recipeIngredients["["] = 21 # Card
recipeIngredients["("] = 22 # Pill
recipeIngredients[">"] = 23 # Rune
recipeIngredients["?"] = 24 # Dice Shard
recipeIngredients["~"] = 25 # Cracked Key
recipeIngredients["$"] = 26 # Golden Penny
recipeIngredients["{"] = 27 # Golden Pill
recipeIngredients["4"] = 28 # Golden Battery
recipeIngredients["_"] = 29 # Poop Nugget

# Read recipes.xml
recipesXML = ET.parse(filePath+'recipes.xml').getroot()
for recipe in recipesXML.findall('recipe'):
    input = recipe.get('input')
    convertedInput = []
    for char in input:
        convertedInput.append(recipeIngredients[char])

    convertedInput.sort()
    convertedInput = str(convertedInput).replace(" ","").replace("[","").replace("]","")
    recipes.append({"input": convertedInput, "output": recipe.get('output')})

# Read items_metadata.xml
items_metadataXML = ET.parse(filePath+'items_metadata.xml').getroot()
for item in items_metadataXML.findall('item'):
    id = int(item.get('id'))
    if maxItemID < id:
        maxItemID = id

# Read itempools.xml
itempoolsXML = ET.parse(filePath+'itempools.xml').getroot()
currentpool = 0
for pool in itempoolsXML.findall('Pool'):
    items = []
    for item in pool.findall('Item'):
        id = int(item.get('Id'))
        items.append([id,float(item.get('Weight'))])
    itempools[pool.get("Name")] = items
    currentpool += 1

# Read pocketitems.xml
pocketitemsXML = ET.parse(filePath+'pocketitems.xml').getroot()
for pilleffect in pocketitemsXML.findall('pilleffect'):
    pillMetadatas.append({ "id": pilleffect.get('id'), "class":pilleffect.get('class')})
pillMetadatas.sort(key=sortByID)

# Read entities2.xml
entitiesXML = ET.parse(filePath+'entities2.xml').getroot()
for entity in entitiesXML.findall('entity'):
    theID = entity.get('id')
    theName = entity.get('name')
    if entity.get('variant'):
        theID += "." + entity.get('variant')
    if entity.get('subtype') and entity.get('subtype') != "0":
        theID += "." + entity.get('subtype')
    if theName[0] == '#':
        theName = theName[1:].replace('_',' ').title()
    entityNames.append({ "id": theID, "name": theName })

# Read locusts.xml
file_path = Path(filePath+'locusts.xml')
file_content = file_path.read_text()
# remove usage of "&" sign, which is not allowed in XML files
file_content = file_content.replace("&", "+")
# remove duplicated scale attributes
content = []
for line in  file_content.split("\n"):
    attrs = re.findall(r'(scale)=\"[\d\.]*\"', line)
    if len(attrs) > 1:
        line = re.sub(r'(scale)=\"[\d\.]*\"', "", line, 1)
    content.append(line)
file_content = '\n'.join(content)

locustsXML = ET.ElementTree(ET.fromstring(file_content)).getroot()
for locust in locustsXML.findall('locust'):
    id = locust.get('id')

    scale = locust.get('scale') or 1
    speed = locust.get('speed') or 1
    count = locust.get('count') or 1

    locustFlags1 = locust.get('locustFlags') or locust.get('locustFlag') or -1
    locustFlags2 = locust.get('locustFlags2') or -1
    locustFlags3 = locust.get('locustFlags3') or -1

    tearFlags1 = locust.get('tearFlags') or -1
    tearFlags2 = locust.get('tearFlags2') or -1
    tearFlags3 = locust.get('tearFlags3') or -1

    procChance1 = locust.get('procChance') or 1
    procChance2 = locust.get('procChance2') or 1
    procChance3 = locust.get('procChance3') or 1

    damageMultiplier1 = locust.get('damageMultiplier') or 1
    damageMultiplier2 = locust.get('damageMultiplier2') or 1

    foundExistingLocust = False
    for savedLocust in locusts:
        if savedLocust["id"] == id:
            savedLocust["count"] = savedLocust["count"] + 1
            foundExistingLocust = True
            break

    if not foundExistingLocust:
        locusts.append(
            {
                "id": id,
                "scale": scale,
                "speed": speed,
                "count": count,
                "locustFlags1": list(map(int, str(locustFlags1).split(" "))),
                "locustFlags2": list(map(int, str(locustFlags2).split(" "))),
                "locustFlags3": list(map(int, str(locustFlags3).split(" "))),
                "tearFlags1": list(map(int, str(tearFlags1).split(" "))),
                "tearFlags2": list(map(int, str(tearFlags2).split(" "))),
                "tearFlags3": list(map(int, str(tearFlags3).split(" "))),
                "procChance1": procChance1,
                "procChance2": procChance2,
                "procChance3": procChance3,
                "damageMultiplier1": damageMultiplier1,
                "damageMultiplier2": damageMultiplier2,
            }
        )


wispsXML = ET.parse(filePath + 'wisps.xml').getroot()
for wisp in wispsXML.findall('wisp'):
    id = wisp.get('id')
    if "s" in id: # ignore special wisp variants
        continue
    hp = wisp.get('hp') or 2
    layer = wisp.get('layer') or 1
    damage = wisp.get('damage') or 3
    damageMultiplier2 =  wisp.get('damageMultiplier2') or 1
    stageDamage = wisp.get('stageDamage') or 0.1
    shotSpeed = wisp.get('shotSpeed') or 1
    fireDelay = wisp.get('fireDelay') or 30
    tearFlags = wisp.get('tearFlags') or -1
    tearFlags2 = wisp.get('tearFlags2') or -1
    procChance = wisp.get('procChance') or 1
    canShoot = wisp.get('canShoot') or True
    count = wisp.get('count') or 1

    wisps.append(
        {
            "id": id,
            "hp": hp,
            "layer": layer,
            "damage": damage,
            "stageDamage": stageDamage,
            "damageMultiplier2": damageMultiplier2,
            "shotSpeed": shotSpeed,
            "fireDelay": fireDelay,
            "procChance": procChance,
            "canShoot": canShoot,
            "count": count,
            "tearFlags": list(map(int, str(tearFlags).split(" "))),
            "tearFlags2": list(map(int, str(tearFlags2).split(" "))),
        }
    )
def wispSortFunc(e):
  return int(e["id"])

wisps.sort(key=wispSortFunc) 
# Write xml file

newfile = open(writeToFile, "w")
newfile.write("--This file was autogenerated using 'lookuptable_generator.py' found in the scripts folder\n")
newfile.write("--It will have to be updated whenever the game's XML files are updated\n\n")


newfile.write("--The highest item ID found in this specific export of XML data\n")
newfile.write("--Crafting doesn't use the in-game enum, because otherwise array index out-of-bounds errors could occur immediately after a game update\n")
newfile.write("EID.XMLMaxItemID = "+str(maxItemID) + "\n\n")


newfile.write("--The fixed recipes, for use in Bag of Crafting\n")
newfile.write("EID.XMLRecipes = {")
for recipe in recipes:
    newfile.write("[\""+recipe["input"]+"\"] = "+str(recipe["output"])+", ")
newfile.write("}\n\n")


newfile.write("--The contents of each item pool, and the item's weight, for use in Bag of Crafting\n")
newfile.write("EID.XMLItemPools = {")
for poolName, data in itempools.items():
    newfile.write(""+str(data).replace("[","{").replace("]","}")+", -- "+poolName+"\n")
newfile.write("}\n\n")


newfile.write("--Metadata found in pocketitems.xml (currently only used for pill class)\n")
newfile.write("EID.pillMetadata = {")
for pill in pillMetadatas:
    newfile.write("["+pill['id']+"] = {class=\""+str(pill['class'])+"\"}, ")
newfile.write("}\n\n")


newfile.write("--Effect storage for each locust generated by Abyss\n")
newfile.write("EID.XMLLocusts = {")
counter = 0
for locust in locusts:
    counter = counter+1
    tempString = ""
    tempString += "["+str(locust['id'])+"] = {"
    tempString += str(locust['count'])+", "
    tempString += str(locust['scale'])+", "
    tempString += str(locust['speed'])+", "
    # locustFlags and tearFLags can have space seperated values in them
    tempString += str(locust['locustFlags1']).replace("[","{").replace("]","}")+", "
    tempString += str(locust['locustFlags2']).replace("[","{").replace("]","}")+", "
    tempString += str(locust['locustFlags3']).replace("[","{").replace("]","}")+", "
    tempString += str(locust['tearFlags1']).replace("[","{").replace("]","}")+", "
    tempString += str(locust['tearFlags2']).replace("[","{").replace("]","}")+", "
    tempString += str(locust['tearFlags3']).replace("[","{").replace("]","}")+", "
    tempString += str(locust['procChance1'])+", "
    tempString += str(locust['procChance2'])+", "
    tempString += str(locust['procChance3'])+", "
    tempString += str(locust['damageMultiplier1'])+", "
    tempString += str(locust['damageMultiplier2'])
    tempString += "}, "
    if counter > 50:
        newfile.write(tempString+"\n")
        counter = 0
    else:
        newfile.write(tempString)
newfile.write("}\n\n")


newfile.write("-- effect storage for each wisp generated by Book of Virtues\n")
newfile.write("EID.XMLWisps = {")
counter = 0
for wisp in wisps:
    counter = counter+1
    tempString = ""
    tempString += "["+str(wisp['id'])+"] = {"
    tempString += str(wisp['hp'])+", "
    tempString += str(wisp['layer'])+", "
    tempString += str(wisp['damage'])+", "
    tempString += str(wisp['stageDamage'])+", "
    tempString += str(wisp['damageMultiplier2'])+", "
    tempString += str(wisp['shotSpeed'])+", "
    tempString += str(wisp['fireDelay'])+", "
    tempString += str(wisp['procChance'])+", "
    tempString += str(wisp['canShoot']).lower()+", "
    tempString += str(wisp['count'])+", "
    # locustFlags and tearFLags can have space seperated values in them
    tempString += str(wisp['tearFlags']).replace("[","{").replace("]","}")+", "
    tempString += str(wisp['tearFlags2']).replace("[","{").replace("]","}")
    tempString += "}, "
    if counter > 50:
        newfile.write(tempString+"\n")
        counter = 0
    else:
        newfile.write(tempString)
newfile.write("}\n\n")

newfile.write("--The name of each entity, for use in glitched item descriptions\n")
newfile.write("EID.XMLEntityNames = {")
tempString = ""
counter = 0
for entity in entityNames:
    counter = counter+1
    tempString += "[\""+entity['id']+"\"] = \""+entity['name']+"\", "
    if counter > 100:
        newfile.write(tempString+"\n")
        tempString =""
        counter = 0
newfile.write("}\n\n")


newfile.close()
print("SUCCESS")
