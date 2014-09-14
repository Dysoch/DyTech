module("ToolsDatabase", package.seeall)
require("util")

-- durability and damage = handle + rod
-- speed = head
rods = {
    wood = 500,
    stone = 1000,
    copper = 1500,
    iron = 2000,
    steel = 3750
  }
handles = {
    wood = 500,
    stone = 1000,
    copper = 1500,
    iron = 2000,
    steel = 3750
  }
heads = {
    wood = 1.25,
    stone = 2.5,
    copper = 2,
    iron = 2.5,
    steel = 6
  }

function addToDatabase(subDB, name, value)
  if subDB ~= "rods" or subDB ~= "handles" or subDB ~= "heads" then error("subDB must be 'rods', 'handles' or 'heads'!") end
  _ENV[subDB][name] = value -- I hope this works, I'm not sure since it's a module.
end

function setDatabase(subDB, newTable)
  if subDB ~= "rods" or subDB ~= "handles" or subDB ~= "heads" then error("subDB must be 'rods', 'handles' or 'heads'!") end
  _ENV[subDB] = newTable
end

function clearDatabases()
  rods = {}
  handles = {}
  heads = {}
end

function CreateModularTool(handle, rod, head)
  local name = getModularToolname(handle, rod, head)
  local newTool = util.table.deepcopy(baseTool)
  
  newTool.name = name
  --newTool.icon = baseTool.icon .. name .. ".png"
  newTool.icon = baseTool.icon .. "modularTool.png"
  newTool.action.action_delivery.target_effects.damage.amount = ToolsDatabase.handles[handle]+ToolsDatabase.rods[rod]
  newTool.durability = ToolsDatabase.handles[handle]+ToolsDatabase.rods[rod]
  newTool.speed = ToolsDatabase.heads[head]
  newTool.order = baseTool.order .. name .. "]" -- opening '[' is part of baseTool
  
  data:extend({newTool})
end

function CreateModularTools()
  createPartItems()
  for rod, rodValue in pairs(rods) do
    for handle, handleValue in pairs(handles) do
      for head, headValue in pairs(heads) do
        CreateModularTool(head, handle, rod)
      end
    end
  end
  clearDatabases() -- empty databases for other mods to use
end

function craftModularTool(name)
  local main = defines.inventory.playermain
  local quick = defines.inventory.playerquickbar
  local tools = defines.inventory.playertools
  
  local maincount = game.player.getinventory(main).getitemcount(name)
  local quickcount = game.player.getinventory(quick).getitemcount(name)
  local toolscount = game.player.getinventory(tools).getitemcount(name)
  
  game.player.insert{name=name, count=1}
  
  local maincount2 = game.player.getinventory(main).getitemcount(name)
  local quickcount2 = game.player.getinventory(quick).getitemcount(name)
  local toolscount2 = game.player.getinventory(tools).getitemcount(name)
  
  if ((maincount2 > maincount) or (quickcount2 > quickcount) or (toolscount2 > toolscount)) then
    -- insert successful
  else
    -- unsuccessful
  end
end

function getModularToolname(handle, rod, head)
  local sep = "-"
  return handle..sep..rod..sep..head..sep.."dytech"..sep.."axe"
end


baseTool = {
  type = "mining-tool",
  name = "GenericDyTechTool",
  icon = "__DyTech-Tools__/graphics/icons/",
  flags = {"goes-to-main-inventory"},
  action =
  {
    type="direct",
    action_delivery =
    {
      type = "instant",
      target_effects =
      {
          type = "damage",
          damage = { amount = 10, type = "physical"}
      }
    }
  },
  durability = 5000,
  subgroup = "tool",
  speed = 2,
  order = "a[mining]-dytech[",
  stack_size = 20
}

function createPartItems(namePrefix, modpath, iconExt, orderPrefix, orderSuffix, sep)
  -- setup
  local basePartItem = {
    type = "item",
    name = "DyTechToolPart",
    icon = "__DyTech-Tools__/graphics/icons/",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytechinter",
    order = "DyTechToolPart-[",
    stack_size = 200
  }
  
  -- config setup
  sep = sep or "-"
  if namePrefix then
    basePartItem.name = namePrefix
  end
  if modpath then
    basePartItem.icon = modpath
  end
  iconExt = iconExt or ".png"
  --(orderPrefix and orderPrefix .. sep) or (namePrefix .. sep)
  if orderPrefix then
    basePartItem.order = orderPrefix
  end
  orderSuffix = orderSuffix or "]"
  
  -- create each item
  for _, atable in ipairs({handles, rods, heads}) do
    for name, __ in pairs(atable) do
      local newPart = util.table.deepcopy(basePartItem)
      newPart.name = basePartItem.name .. name
      newPart.icon = basePartItem.icon .. name .. iconExt
      newPart.order = basePartItem.order .. name
      if orderSuffix then newPart.order = newPart.order .. orderSuffix end
      data:extend({newPart})
    end
  end
end