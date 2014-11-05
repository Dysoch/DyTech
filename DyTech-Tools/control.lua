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
	if event.createdentity.name == "tool-crafting-bench" and game.players.gui.center[ToolsDatabase.guiNames.mainFlow]==nil then
		ToolsDatabase.showCraftingGUI(event.playerindex)
		event.createdentity.destroy()
		Player.insert{name="tool-crafting-bench",count=1}
	elseif game.players.gui.center[ToolsDatabase.guiNames.mainFlow]==true or game.players.gui.center[guiNames.mainFlowCraft]==true then
		game.players[event.playerindex].print("GUI is already opened by another player. Wait your turn!")
	end
end)

game.onevent(defines.events.onguiclick, function(event)
  if event.element.name:find(ToolsDatabase.guiNames.buttonFlow) then
    ToolsDatabase.updateGUISelectedPart(event.element.name:match(ToolsDatabase.guiNames.buttonFlow .. "%[(.+)%]$"))
  elseif event.element.name:find(ToolsDatabase.guiNames.partPrefix) then
    toCraft[ToolsDatabase.selectedPart] = event.element.name:match(ToolsDatabase.guiNames.partPrefix.."%[(.+)%]$")
    ToolsDatabase.updateGUILabel(toCraft)
  elseif event.element.name == "showModularCraftingGUI" then
    ToolsDatabase.showCraftingGUI(event.element.playerindex)
  elseif event.element.name == ToolsDatabase.guiNames.craftButton then
    ToolsDatabase.showCraftedGUI(event.element.playerindex)
	ToolsDatabase.closeCraftingGUI(event.element.playerindex)
  elseif event.element.name == ToolsDatabase.guiNames.craft1x then
	ToolCrafting(1, event.element.playerindex)
  elseif event.element.name == ToolsDatabase.guiNames.craft2x then
	ToolCrafting(2, event.element.playerindex)
  elseif event.element.name == ToolsDatabase.guiNames.craft3x then
	ToolCrafting(3, event.element.playerindex)
  elseif event.element.name == ToolsDatabase.guiNames.craft5x then
	ToolCrafting(5, event.element.playerindex)
  elseif event.element.name == ToolsDatabase.guiNames.craft10x then
	ToolCrafting(10, event.element.playerindex)
  elseif event.element.name == ToolsDatabase.guiNames.craft20x then
	ToolCrafting(20, event.element.playerindex)
  elseif event.element.name == ToolsDatabase.guiNames.craft50x then
	ToolCrafting(50, event.element.playerindex)
  elseif event.element.name == ToolsDatabase.guiNames.cancelButton then
	ToolsDatabase.closeCraftingGUI(event.element.playerindex)
  elseif event.element.name == ToolsDatabase.guiNames.cancelButtonCraft then
	ToolsDatabase.closeCraftedGUI(event.element.playerindex)
  end
end)

remote.addinterface("DyTech-Tools",
{
  craftModularTool = ToolsDatabase.craftModularTool,
  getModularToolname = ToolsDatabase.getModularToolname,
  showCraftingGUI = ToolsDatabase.showCraftingGUI,
  CreateModularToolLocales = ToolsDatabase.CreateModularToolLocales
})

function ToolCrafting(amount, playerindex)
    local name = ToolsDatabase.getModularToolname(toCraft)
    if not name then
      -- probably didn't have all the needed parts selected, so failed to match a valid toolname
      -- no 'real' work here but maybe some additional feedback for the player
      if not (toCraft["handles"] and toCraft["rods"] and toCraft["heads"]) then
        game.players[playerindex].print("Make sure you've selected a material for each part!")
      end
      return
    end
    local reqs = {}
    local handle, rod, head = ToolsDatabase.getPartsFromToolName(name)
    reqs[handle] = (reqs[handle] or 0) + amount
    reqs[rod] = (reqs[rod] or 0) + amount
    reqs[head] = (reqs[head] or 0) + amount
    local main = game.players[playerindex].getinventory(defines.inventory.playermain)
    local quick = game.players[playerindex].getinventory(defines.inventory.playerquickbar)
    
    for name, needed in pairs(reqs) do
      local count = main.getitemcount(name) + quick.getitemcount(name)
      if count < needed then
        game.players[playerindex].print("You don't have enough "..game.getlocaliseditemname(name).."s\n")
        return
      end
    end
    -- if we made it here then we had enough
    for name, needed in pairs(reqs) do
      game.players[playerindex].removeitem{name=name, count=needed}
    end
    
    if ToolsDatabase.craftModularTool(name, amount, playerindex) == true then
      ToolsDatabase.closeCraftedGUI(playerindex)
	  toCraft = {} -- clear selected parts
    else -- failed
      error("UM...Crafting failed due to a technical reason. Sorry!, Please tell Dysoch. Info:\nToolname: "..name .. "\nhandle: "..handle.."\nrod: "..rod.."\nhead: "..head)
    end
end