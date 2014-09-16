require "scripts/tools-database"

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
  strength = 1,    --mining level*0.4 (reduction)(when used as head)
              --durability*0.4 (reduction)(when used as rod)
  hold = 1, --mining speed*0.4 (reduction)
  flexibility = 2
}
data.raw.item.stone.modularInfo = {
  handle = true, --if it can be a handle!
  rod = true, --if it can be a rod!
  head = true, --if it can be a head!
  durability = 1000, --the main durability before it is modified. only applies when used as head!
  mininglevel = 1, --main damage value (aka mining level) before modifiers!
  miningspeed = 1, --main speed value before modifiers!
  strength = 1,    --mining level*0.4 (reduction)(when used as head)
              --durability*0.4 (reduction)(when used as rod)
  hold = 1, --mining speed*0.4 (reduction)
  flexibility = 2
}
data.raw.item["iron-plate"].modularInfo = {
  handle = true, --if it can be a handle!
  rod = true, --if it can be a rod!
  head = true, --if it can be a head!
  durability = 1000, --the main durability before it is modified. only applies when used as head!
  mininglevel = 1, --main damage value (aka mining level) before modifiers!
  miningspeed = 1, --main speed value before modifiers!
  strength = 1,    --mining level*0.4 (reduction)(when used as head)
              --durability*0.4 (reduction)(when used as rod)
  hold = 1, --mining speed*0.4 (reduction)
  flexibility = 2
}
data.raw.item["copper-plate"].modularInfo = {
  handle = true, --if it can be a handle!
  rod = true, --if it can be a rod!
  head = true, --if it can be a head!
  durability = 1000, --the main durability before it is modified. only applies when used as head!
  mininglevel = 1, --main damage value (aka mining level) before modifiers!
  miningspeed = 1, --main speed value before modifiers!
  strength = 1,    --mining level*0.4 (reduction)(when used as head)
              --durability*0.4 (reduction)(when used as rod)
  hold = 1, --mining speed*0.4 (reduction)
  flexibility = 2
}
data.raw.item["steel-plate"].modularInfo = {
  handle = true, --if it can be a handle!
  rod = true, --if it can be a rod!
  head = true, --if it can be a head!
  durability = 1000, --the main durability before it is modified. only applies when used as head!
  mininglevel = 1, --main damage value (aka mining level) before modifiers!
  miningspeed = 1, --main speed value before modifiers!
  strength = 1,    --mining level*0.4 (reduction)(when used as head)
              --durability*0.4 (reduction)(when used as rod)
  hold = 1, --mining speed*0.4 (reduction)
  flexibility = 2
}
data.raw.item.rubber.modularInfo = {
  handle = true, --if it can be a handle!
  rod = true, --if it can be a rod!
  head = true, --if it can be a head!
  durability = 500, --the main durability before it is modified. only applies when used as head!
  mininglevel = 1, --main damage value (aka mining level) before modifiers!
  miningspeed = 1, --main speed value before modifiers!
  strength = 0,    --mining level*0.4 (reduction)(when used as head)
              --durability*0.4 (reduction)(when used as rod)
  hold = 10, --mining speed*0.4 (reduction)
  flexibility = 8
}
ToolsDatabase.makeModularPart(data.raw.item.wood)
ToolsDatabase.makeModularPart(data.raw.item.stone)
ToolsDatabase.makeModularPart(data.raw.item["iron-plate"])
ToolsDatabase.makeModularPart(data.raw.item["copper-plate"])
ToolsDatabase.makeModularPart(data.raw.item["steel-plate"])
ToolsDatabase.makeModularPart(data.raw.item.rubber)
