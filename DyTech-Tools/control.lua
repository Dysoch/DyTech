require "defines"
require "scripts/tools-database"

game.oninit(function()
	remote.call("DyTech-Core", "addModule", "tools")
end)

game.onsave(function()

end)

game.onload(function()

end)

game.onevent(defines.events.ontick, function(event)

end)

remote.addinterface("DyTech-Tools",
{
  --craftModularTool = function(name) fs.craftModularTool(name) end,
  --getModularToolname = function(handle, rod, head) return fs.getModularToolname(handle, rod, head) end
  craftModularTool = ToolsDatabase.craftModularTool,
  getModularToolname = ToolsDatabase.craftModularTool
})