module("ToolsDatabase", package.seeall)
require("util")

materials = {
  handles = {},
  rods = {},
  heads = {}
}

-- no access to data.raw during runtime use populateDatabaseRuntime
function populateDatabase() 
  for name, prototype in pairs(data.raw["item"]) do
    if prototype.modularInfo then
      -- code originally written to handle separate tables... plus it's easy to get all combinations
      if prototype.modularInfo.handle then 
        materials.handles[name] = prototype.modularInfo
      end
      if prototype.modularInfo.rod then 
        materials.rods[name] = prototype.modularInfo
      end
      if prototype.modularInfo.head then 
        materials.heads[name] = prototype.modularInfo
      end
    end
  end
end

function populateDatabaseRuntime()
  for name, prototype in pairs(game.player.force.recipes) do
    local Part = getModularInfo(prototype)
    if Part then
      -- modularInfo could theorecically be extended with more info
      -- so might as well store it
      if Part.modularInfo.handle then materials.handles[Part.name] = Part.modularInfo end
      if Part.modularInfo.rod then materials.rods[Part.name] = Part.modularInfo end
      if Part.modularInfo.head then materials.heads[Part.name] = Part.modularInfo end
    end
  end
end

function CreateModularTool(handle, rod, head)
  local name = getModularToolname(handle, rod, head)
  if not name then error("invalid Tool!") end
  if data.raw["mining-tool"][name] then return end
  local newTool = util.table.deepcopy(baseTool)
  
  newTool.name = name
  
  --newTool.icon = baseTool.icon .. name .. ".png"
  newTool.icon = baseTool.icon .. "modularTool.png"
  
  -- um...I don't really know how 1 -> 0.4 and 6 -> 1.2 in such a way to make it an equation here...
  newTool.action.action_delivery.target_effects.damage.amount = ToolsDatabase.materials.heads[head].mininglevel -- no modifiers
  newTool.durability = ToolsDatabase.materials.heads[head].durability or 5400 -- default is really more to prevent errors...
  newTool.speed = ToolsDatabase.materials.heads[head].miningspeed -- no modifiers
  newTool.order = baseTool.order .. name .. "]["
  local stats = newTool.action.action_delivery.target_effects.damage.amount*1000 .. "-" .. newTool.durability * 1000 .. "-" .. newTool.speed * 1000 .. "]"  -- multiply by 1000 to prevent '.' characters in string (crashes Factorio)
  newTool.order = newTool.order .. stats
  
  data:extend({newTool})
end

function CreateModularTools()
  populateDatabase()
  for handle, handleValue in pairs(materials.handles) do
    for rod, rodValue in pairs(materials.rods) do
      for head, headValue in pairs(materials.heads) do
        CreateModularTool(handle, rod, head)
      end
    end
  end
end

function CreateModularToolLocales()
  populateDatabaseRuntime()
  names = {}
  for handle, handleValue in pairs(materials.handles) do
    for rod, rodValue in pairs(materials.rods) do
      for head, headValue in pairs(materials.heads) do
        local name = getModularToolname(handle, rod, head)
        if "Unknown key:\"item-name."..name.."\"" == game.getlocaliseditemname(name) then -- not already localised
          table.insert(names, name)
        end
      end
    end
  end
  game.makefile("DyTechModularToolLocales.cfg", "[item-name]\n"..table.concat(names, "=Modular DyTech Tool\n").."=Modular DyTech Tool")
end

function craftModularTool(name)
  local main = game.player.getinventory(defines.inventory.playermain)
  local quick = game.player.getinventory(defines.inventory.playerquickbar)
  local tools = game.player.getinventory(defines.inventory.playertools)
  
  local maincount = main.getitemcount(name)
  local quickcount = quick.getitemcount(name)
  local toolscount = tools.getitemcount(name)
  
  game.player.insert{name=name, count=1}
  
  local maincount2 = main.getitemcount(name)
  local quickcount2 = quick.getitemcount(name)
  local toolscount2 = tools.getitemcount(name)
  
  if ((maincount2 > maincount) or (quickcount2 > quickcount) or (toolscount2 > toolscount)) then
    -- insert successful
    return true
  else
    -- unsuccessful
    return false
  end
end

function getModularToolname(handle, rod, head)
  local sep = "[-]"
  local suffix = "modular-axe"
  if type(handle) == "string" and type(rod) == "string" and type(head) == "string" then
    return handle..sep..rod..sep..head..sep..suffix
  elseif type(handle) == "table" then
    if not (handle["handles"] and handle["rods"] and handle["heads"]) then return false end
    return handle["handles"]..sep..handle["rods"]..sep..handle["heads"]..sep..suffix
  else
    return false
  end
end

function getPartsFromToolName(name)
  if not (name and type(name) == "string" and name:find("modular%-axe")) then error("invalid modular tool name: "..tostring(name), 2) end -- sanity check
  local sep = "%[%-%]"
  local suffix = "modular%-axe$"
  local partName = ".-"
  local capture = "(.-)"
  local handle = name:match(capture..sep..partName..sep..partName..sep..suffix)
  local rod = name:match(partName..sep..capture..sep..partName..sep..suffix)
  local head = name:match(partName..sep..partName..sep..capture..sep..suffix)
  return handle, rod, head
end

--[[
--  escapes special characters for use in lua pattern matching
--  feel free to use string.escaped = eu.escapeString
--  which allows local str = "some string"; str = str:escaped()
--  taken from: https://stackoverflow.com/questions/6705872/how-to-escape-a-variable-in-lua
--]]
function escapeString(s)
  if type(s) ~= "string" then error("escapeString: Arg 's' is not a string!", 2) end
  return (s:gsub(".", {
    ["^"] = "%^",
    ["$"] = "%$",
    ["("] = "%(",
    [")"] = "%)",
    ["%"] = "%%",
    ["."] = "%.",
    ["["] = "%[",
    ["]"] = "%]",
    ["*"] = "%*",
    ["+"] = "%+",
    ["-"] = "%-",
    ["?"] = "%?",
  }))
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

function makeModularPart(prototype)
  local fakeRecipe = {
    type = "recipe",
    name = "-ModularToolPart[",
    ingredients = {},
    result = "iron-ore", -- should always exist...
    enabled = false
  }
  
  if prototype.modularInfo then
    fakeRecipe.name = prototype.name .. fakeRecipe.name
    if prototype.modularInfo.handle then 
      fakeRecipe.name = fakeRecipe.name .. "1"
    else
      fakeRecipe.name = fakeRecipe.name .. "0"
    end
    fakeRecipe.name = fakeRecipe.name .. "-"
    if prototype.modularInfo.rod then 
      fakeRecipe.name = fakeRecipe.name .. "1"
    else
      fakeRecipe.name = fakeRecipe.name .. "0"
    end
    fakeRecipe.name = fakeRecipe.name .. "-"
    if prototype.modularInfo.head then 
      fakeRecipe.name = fakeRecipe.name .. "1"
    else
      fakeRecipe.name = fakeRecipe.name .. "0"
    end
    fakeRecipe.name = fakeRecipe.name .. "]"
  else
    error("No modular information provided!")
    --fakeRecipe.name = prototype.name .. "1-1-1]" -- handle/rod/head
  end
  data:extend({fakeRecipe})
  return fakeRecipe.name -- in case someone finds it useful
end

function getModularInfo(prototype)
  if prototype.name:match(".*ModularToolPart%[([10]%-[10]%-[10])%]$") then
    -- assumed string is ..."actualPartName-ModularToolPart[handle-rod-head]" where handle/rod/head are 1 for true or 0 for false and the first - can be any number of '-'s (cause why not..?)
    -- example "aaaaModularToolPart[1-0-1]nbbb" matches 1-0-1 and allows for handle and head but not rods to 'exist'
    local match = prototype.name:match(".*ModularToolPart%[([10]%-[10]%-[10])%]$")
    local Part = {
      name = prototype.name:sub(0, (prototype.name:find("%-*ModularToolPart%[[10]%-[10]%-[10]%]$")-1)), -- part name
      modularInfo = {
        handle = match:sub(1,1),
        rod = match:sub(3,3),
        head = match:sub(5,5)
      }
    }
    if Part.modularInfo.handle == 1 then modularInfo.handle = true end
    if Part.modularInfo.rod == 1 then modularInfo.rod = true end
    if Part.modularInfo.head == 1 then modularInfo.head = true end
    return Part
  else
    return false
  end
end

local ITEM_COLSPAN = 20 -- copied from testing mode mod
guiNames = {mainFlow="ModularCraftingGUIFlow",
            mainFrame="ModularCraftingGUIFrame",
            buttonFlow="ModularCraftingGUIPartFlow",
            parts="ModularCraftingGUITable",
            currentSelectionLabel="ModularCraftingGUICurrentSelection",
            label="ModularCraftingGUILabel",
            partPrefix="ModularCraftingPart",
            craftButton="ModularCraftingGUICraft!",
            cancelButton="ModularCraftingGUICancel!"
            }
mainFrame = nil -- placeholder
selectedPart = nil -- placeholder
oldLabel = "No parts currently selected" -- placeholder
function showCraftingGUI()
  populateDatabaseRuntime()
  game.player.gui.center.add({type="flow", direction="vertical", name=guiNames.mainFlow})
  game.player.gui.center[guiNames.mainFlow].add({type="frame", direction="vertical", name=guiNames.mainFrame, caption="Modular Crafting Bench!"})
  mainFrame = game.player.gui.center[guiNames.mainFlow][guiNames.mainFrame]
  mainFrame.add({type="flow", direction="horizontal", name=guiNames.buttonFlow})
  for name, _ in pairs(materials) do
    mainFrame[guiNames.buttonFlow].add({type="button", name=guiNames.buttonFlow.."["..name.."]", caption=name})
  end
  selectedPart = selectedPart or "handles"
  mainFrame[guiNames.buttonFlow].add({type="label", name=guiNames.currentSelectionLabel, caption="Currently Selected: " .. selectedPart})
  mainFrame[guiNames.buttonFlow].add({type="button", name=guiNames.craftButton, caption="Craft!"})
  mainFrame[guiNames.buttonFlow].add({type="button", name=guiNames.cancelButton, caption="Cancel!"})
  mainFrame.add({type="label", name=guiNames.label, caption=oldLabel}) -- should display currently selected parts...
  mainFrame.add({type="table", name=guiNames.parts, colspan=ITEM_COLSPAN})
  populateGUIPartsTable(selectedPart)
end

function toggleCraftingGUI()
  if game.player.gui.center[guiNames.mainFlow] then
    closeCraftingGUI()
  else
    showCraftingGUI()
  end
end

function populateGUIPartsTable(selectedPart)
  if mainFrame and mainFrame.valid then
    for name, info in pairs(materials[selectedPart]) do
      mainFrame[guiNames.parts].add({type="button", name=guiNames.partPrefix.."["..name.."]", caption=game.getlocaliseditemname(name)})
    end
  end
end

function updateGUILabel(toCraft)
  if mainFrame and mainFrame.valid then 
    local text = ""
    for name, _ in pairs(materials) do
      text = text .. name .. ": "
      if toCraft[name] then
        text = text .. game.getlocaliseditemname(toCraft[name])
        --toCraft[name] = nil --? prevent 'instant fill' on second craft (since it starts with "No parts currently selected")
      else
        text = text .. "N/A"
      end
      text = text .. "\t"
    end
    mainFrame[guiNames.label].caption = text
  end
end

function updateGUISelectedPart(partType)
  if not partType then return end
  selectedPart = partType
  if mainFrame and mainFrame.valid then -- just a little sanity check...
    mainFrame[guiNames.buttonFlow][guiNames.currentSelectionLabel].caption = "Currently Selected: " .. selectedPart
  end
end

function closeCraftingGUI()
  if game.player.gui.center[ToolsDatabase.guiNames.mainFlow] and game.player.gui.center[ToolsDatabase.guiNames.mainFlow].valid then
    game.player.gui.center[ToolsDatabase.guiNames.mainFlow].destroy()
  end
end