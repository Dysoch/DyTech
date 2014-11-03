require "defines"
require "scripts/tools-database"

game.oninit(function()
	remote.call("DyTech-Core", "addModule", "tools")
	toCraft = toCraft or {}
	for _,player in pairs(game.players) do
		player.insert{name="tool-crafting-bench",count=1}
	end
end)

game.onsave(function()
  -- potentially needed to prevent 'orphaned' gui if mod is removed...
  -- if ToolsDatabase.mainframe != "placeholder" and ToolsDatabase.mainframe.valid then ToolsDatabase.mainframe.destroy() end
end)

game.onload(function()
	toCraft = toCraft or {}
end)

game.onevent(defines.events.ontick, function(event)

end)

game.onevent(defines.events.onbuiltentity, function(event)
local Player = game.players[event.playerindex]
	if event.createdentity.name == "tool-crafting-bench" then
		ToolsDatabase.toggleCraftingGUI()
		event.createdentity.destroy()
		Player.insert{name="tool-crafting-bench",count=1}
	end
end)

game.onevent(defines.events.onguiclick, function(event)
  if event.element.name:find(ToolsDatabase.guiNames.buttonFlow) then
    ToolsDatabase.updateGUISelectedPart(event.element.name:match(ToolsDatabase.guiNames.buttonFlow .. "%[(.+)%]$"))
  elseif event.element.name:find(ToolsDatabase.guiNames.partPrefix) then
    toCraft[ToolsDatabase.selectedPart] = event.element.name:match(ToolsDatabase.guiNames.partPrefix.."%[(.+)%]$")
    ToolsDatabase.updateGUILabel(toCraft)
  elseif event.element.name == "showModularCraftingGUI" then
    ToolsDatabase.toggleCraftingGUI()
  elseif event.element.name == ToolsDatabase.guiNames.craftButton then
    ToolsDatabase.toggleCraftedGUI()
	ToolsDatabase.closeCraftingGUI()
  elseif event.element.name == ToolsDatabase.guiNames.craft1x then
	ToolCrafting(1)
  elseif event.element.name == ToolsDatabase.guiNames.craft2x then
	ToolCrafting(2)
  elseif event.element.name == ToolsDatabase.guiNames.craft3x then
	ToolCrafting(3)
  elseif event.element.name == ToolsDatabase.guiNames.craft5x then
	ToolCrafting(5)
  elseif event.element.name == ToolsDatabase.guiNames.craft10x then
	ToolCrafting(10)
  elseif event.element.name == ToolsDatabase.guiNames.craft20x then
	ToolCrafting(20)
  elseif event.element.name == ToolsDatabase.guiNames.craft50x then
	ToolCrafting(50)
  elseif event.element.name == ToolsDatabase.guiNames.cancelButton then
    ToolsDatabase.closeCraftingGUI()
	ToolsDatabase.closeCraftedGUI()
  elseif event.element.name == ToolsDatabase.guiNames.cancelButtonCraft then
    ToolsDatabase.closeCraftedGUI()
	ToolsDatabase.closeCraftingGUI()
  end
  
end)

remote.addinterface("DyTech-Tools",
{
  craftModularTool = ToolsDatabase.craftModularTool,
  getModularToolname = ToolsDatabase.getModularToolname,
  showCraftingGUI = ToolsDatabase.showCraftingGUI,
  CreateModularToolLocales = ToolsDatabase.CreateModularToolLocales
})

function ToolCrafting(amount)
local Player = game.players[event.playerindex]
    local name = ToolsDatabase.getModularToolname(toCraft)
    if not name then
      -- probably didn't have all the needed parts selected, so failed to match a valid toolname
      -- no 'real' work here but maybe some additional feedback for the player
      if not (toCraft["handles"] and toCraft["rods"] and toCraft["heads"]) then
        Player.print("Make sure you've selected a material for each part!")
      end
      return
    end
    local reqs = {}
    local handle, rod, head = ToolsDatabase.getPartsFromToolName(name)
    reqs[handle] = (reqs[handle] or 0) + amount
    reqs[rod] = (reqs[rod] or 0) + amount
    reqs[head] = (reqs[head] or 0) + amount
    local main = Player.getinventory(defines.inventory.playermain)
    local quick = Player.getinventory(defines.inventory.playerquickbar)
    
    for name, needed in pairs(reqs) do
      local count = main.getitemcount(name) + quick.getitemcount(name)
      if count < needed then
        Player.print("You don't have enough "..game.getlocaliseditemname(name).."s\n")
        return
      end
    end
    -- if we made it here then we had enough
    for name, needed in pairs(reqs) do
      Player.removeitem{name=name, count=needed}
    end
    
    if ToolsDatabase.craftModularTool(name, amount) == true then
      ToolsDatabase.closeCraftingGUI() -- if craft successful then close
      ToolsDatabase.closeCraftedGUI()
	  toCraft = {} -- clear selected parts
    else -- failed
      error("UM...Crafting failed due to a technical reason. Sorry!, Please tell Dysoch. Info:\nToolname: "..name .. "\nhandle: "..handle.."\nrod: "..rod.."\nhead: "..head)
    end
end