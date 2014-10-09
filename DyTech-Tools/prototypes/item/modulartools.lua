require "scripts/tools-database"

-- Database: Work in progress!!!!
-- Strength, Hold, Flexibility and Density have a number for 0 to 10. 0 means a modifier of 0.2 (reduces the stat) and 10 means modifier of 2. 5 is neither an increase or reduction!
-- Flexibility only applies when used as a rod!!!!!!!!!!!!
-- Strength applies when used as a rod!!!!!!!!!!!!!
-- Hold applied when used as a handle only!!!!!!!!!!!!!!!!
-- Strength to durability value:
-- strength of 0: 500 durability before modifiers
-- strength of 1: 1000 durability before modifiers
-- strength of 2: 1500 durability before modifiers
-- strength of 3: 2000 durability before modifiers
-- strength of 4: 2500 durability before modifiers
-- strength of 5: 3500 durability before modifiers
-- strength of 6: 4500 durability before modifiers
-- strength of 7: 6000 durability before modifiers
-- strength of 8: 8000 durability before modifiers
-- strength of 9: 10000 durability before modifiers
-- strength of 10: 12500 durability before modifiers
-- base materials
-- note base item handle/rod/head booleans are duplicated in tools-database
-- for runtime loading...
data.raw.item.wood.modularInfo = {
  handle = true, --if it can be a handle!
  rod = true, --if it can be a rod!
  head = true, --if it can be a head!
  durability = 1000, --the main durability before it is modified. only applies when used as head!
  mininglevel = 1, --main damage value (aka mining level) before modifiers!
  miningspeed = 1, --main speed value before modifiers!
  strength = 0.4,    --mining level*0.4 (reduction)(when used as head)
              --durability*0.4 (reduction)(when used as rod)
  hold = 0.4, --mining speed*0.4 (reduction)
  flexibility = 0.4
}
data.raw.item.stone.modularInfo = {
  handle = true, 
  rod = true, 
  head = true,
  durability = 1500, 
  mininglevel = 2,
  miningspeed = 3, 
  strength = 0.8,    
  hold = 0.6,
  flexibility = 0.4
}
data.raw.item["iron-plate"].modularInfo = {
  handle = true, 
  rod = true, 
  head = true,
  durability = 2500,
  mininglevel = 3,
  miningspeed = 3,
  strength = 1,
  hold = 0.4,
  flexibility = 0.8
}
data.raw.item["copper-plate"].modularInfo = {
  handle = true, 
  rod = true, 
  head = true,
  durability = 2000, 
  mininglevel = 2, 
  miningspeed = 3, 
  strength = 0.8,
  hold = 0.4,
  flexibility = 0.6
}
data.raw.item["steel-plate"].modularInfo = {
  handle = true, 
  rod = true, 
  head = true,
  durability = 4500,
  mininglevel = 4,
  miningspeed = 3,
  strength = 1.4,   
  hold = 0.4,
  flexibility = 0.6
}
data.raw.item.rubber.modularInfo = {
  handle = true, 
  rod = true, 
  head = true,
  durability = 500,
  mininglevel = 1,
  miningspeed = 1, 
  strength = 0.2,   
  hold = 2,
  flexibility = 1.8
}
ToolsDatabase.makeModularPart(data.raw.item.wood)
ToolsDatabase.makeModularPart(data.raw.item.stone)
ToolsDatabase.makeModularPart(data.raw.item["iron-plate"])
ToolsDatabase.makeModularPart(data.raw.item["copper-plate"])
ToolsDatabase.makeModularPart(data.raw.item["steel-plate"])
ToolsDatabase.makeModularPart(data.raw.item.rubber)
ToolsDatabase.CreateModularTools() -- create tools for all defined parts
