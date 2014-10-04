require "defines"
require "scripts/tools-database"

game.oninit(function()
	remote.call("DyTech-Core", "addModule", "tools")
  toCraft = toCraft or {}
  game.player.gui.left.add({type="button", name="showModularCraftingGUI", caption="Craft Modular Tool!"})
end)

game.onsave(function()
  -- potentially needed to prevent 'orphaned' gui if mod is removed...
  -- if ToolsDatabase.mainframe != "placeholder" and ToolsDatabase.mainframe.valid then ToolsDatabase.mainframe.destroy() end
end)

game.onload(function()
  toCraft = toCraft or {}
  if not game.player.gui.left.add({type="button", name="showModularCraftingGUI", caption="Craft Modular Tool!"}) then game.player.gui.left.add({type="button", name="showModularCraftingGUI", caption="Craft Modular Tool!"}) end
end)

game.onevent(defines.events.ontick, function(event)

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
    local name = ToolsDatabase.getModularToolname(toCraft)
    if not name then
      -- probably didn't have all the needed parts selected, so failed to match a valid toolname
      -- no 'real' work here but maybe some additional feedback for the player
      if not (toCraft["handles"] and toCraft["rods"] and toCraft["heads"]) then
        game.player.print("Make sure you've selected a material for each part!")
      end
      return
    end
    local reqs = {}
    local handle, rod, head = ToolsDatabase.getPartsFromToolName(name)
    reqs[handle] = (reqs[handle] or 0) + 1
    reqs[rod] = (reqs[rod] or 0) + 1
    reqs[head] = (reqs[head] or 0) + 1
    local main = game.player.getinventory(defines.inventory.playermain)
    local quick = game.player.getinventory(defines.inventory.playerquickbar)
    
    for name, needed in pairs(reqs) do
      local count = main.getitemcount(name) + quick.getitemcount(name)
      if count < needed then
        game.player.print("You don't have enough "..game.getlocaliseditemname(name).."s\n")
        return
      end
    end
    -- if we made it here then we had enough
    for name, needed in pairs(reqs) do
      game.player.removeitem{name=name, count=needed}
    end
    
    if ToolsDatabase.craftModularTool(name) == true then
      ToolsDatabase.closeCraftingGUI() -- if craft successful then close
      toCraft = {} -- clear selected parts
    else -- failed
      error("UM...Crafting failed due to a technical reason. Sorry!, Please tell Dysoch. Info:\nToolname: "..name .. "\nhandle: "..handle.."\nrod: "..rod.."\nhead: "..head)
    end
  elseif event.element.name == ToolsDatabase.guiNames.cancelButton then
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