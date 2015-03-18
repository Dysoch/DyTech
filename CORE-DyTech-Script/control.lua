require "defines"
require "scripts/functions"

--[[Debug Functions]]--
debug_master = false -- Master switch for debugging, shows most things!
function debug(str)
	if debug_master then
		PlayerPrint(str)
	end
end

function PlayerPrint(message)
	for _,player in pairs(game.players) do
		player.print(message)
	end
end

game.oninit(function()
fs.Startup()
end)

game.onsave(function()

end)

game.onload(function()

end)

game.onevent(defines.events.onplayercrafteditem, function(event)
	if not glob.Logger.CraftedItems then glob.Logger.CraftedItems = {} end
	if not glob.Logger.CraftedItems[event.itemstack.name] then
		glob.Logger.CraftedItems[event.itemstack.name] = event.itemstack.count
		debug("No CraftedItems ("..tostring(event.itemstack.name)..")")
	else
		glob.Logger.CraftedItems[event.itemstack.name] = glob.Logger.CraftedItems[event.itemstack.name] + event.itemstack.count
		debug("CraftedItems increased by "..tostring(event.itemstack.count).." ("..tostring(event.itemstack.name)..")")
	end
end)

game.onevent(defines.events.onplayermineditem, function(event)
	if not glob.Logger.MinedItems then glob.Logger.MinedItems = {} end
	if not glob.Logger.MinedItems[event.itemstack.name] then
		glob.Logger.MinedItems[event.itemstack.name] = event.itemstack.count
		debug("MinedItems not found".." ("..tostring(event.itemstack.name)..")")
	else
		glob.Logger.MinedItems[event.itemstack.name] = glob.Logger.MinedItems[event.itemstack.name] + event.itemstack.count
		debug("MinedItems increased by "..tostring(event.itemstack.count).." ("..tostring(event.itemstack.name)..")")
	end
end)

game.onevent(defines.events.onrobotmined, function(event)
	if not glob.Logger.RobotMinedItems then glob.Logger.RobotMinedItems = {} end
	if not glob.Logger.RobotMinedItems[event.itemstack.name] then
		glob.Logger.RobotMinedItems[event.itemstack.name] = event.itemstack.count
		debug("RobotMinedItems not found".." ("..tostring(event.itemstack.name)..")")
	else
		glob.Logger.RobotMinedItems[event.itemstack.name] = glob.Logger.RobotMinedItems[event.itemstack.name] + event.itemstack.count
		debug("RobotMinedItems increased by "..tostring(event.itemstack.count).." ("..tostring(event.itemstack.name)..")")
	end
end)

game.onevent(defines.events.onentitydied, function(event)
	if not glob.Logger.EntityDied then glob.Logger.EntityDied = {} end
	if not glob.Logger.EntityDied[event.entity.name] then
		glob.Logger.EntityDied[event.entity.name] = 1
		debug("EntityDied not found".." ("..tostring(event.entity.name)..")")
	else
		glob.Logger.EntityDied[event.entity.name] = glob.Logger.EntityDied[event.entity.name] + 1
		debug("EntityDied increased by 1".." ("..tostring(event.entity.name)..")")
	end
end)

game.onevent(defines.events.onsectorscanned, function(event)
	if not glob.Logger.SectorScanned then 
		glob.Logger.SectorScanned = 1
	else
		glob.Logger.SectorScanned = glob.Logger.SectorScanned + 1
	end
end)

game.onevent(defines.events.onmarkedfordeconstruction, function(event)
	if not glob.Logger.MarkedForDeconstruction then glob.Logger.MarkedForDeconstruction = {} end
	if not glob.Logger.MarkedForDeconstruction[event.entity.name] then
		glob.Logger.MarkedForDeconstruction[event.entity.name] = 1
		debug("MarkedForDeconstruction not found ("..tostring(event.entity.name)..")")
	else
		glob.Logger.MarkedForDeconstruction[event.entity.name] = glob.Logger.MarkedForDeconstruction[event.entity.name] + 1
		debug("MarkedForDeconstruction increased by 1 ("..tostring(event.entity.name)..")")
	end	
end)

game.onevent(defines.events.oncanceleddeconstruction, function(event)
	if not glob.Logger.CanceledDeconstruction then glob.Logger.CanceledDeconstruction = {} end
	if not glob.Logger.CanceledDeconstruction[event.entity.name] then
		glob.Logger.CanceledDeconstruction[event.entity.name] = 1
		debug("CanceledDeconstruction not found ("..tostring(event.entity.name)..")")
	else
		glob.Logger.CanceledDeconstruction[event.entity.name] = glob.Logger.CanceledDeconstruction[event.entity.name] + 1
		debug("CanceledDeconstruction increased by 1 ("..tostring(event.entity.name)..")")
	end	
end)

game.onevent(defines.events.onpickedupitem, function(event)
	if not glob.Logger.PickedItems then glob.Logger.PickedItems = {} end
	if not glob.Logger.PickedItems[event.itemstack.name] then
		glob.Logger.PickedItems[event.itemstack.name] = event.itemstack.count
		debug("PickedItems not found ("..tostring(event.itemstack.name)..")")
	else
		glob.Logger.PickedItems[event.itemstack.name] = glob.Logger.PickedItems[event.itemstack.name] + event.itemstack.count
		debug("PickedItems increased by "..tostring(event.itemstack.count).." ("..tostring(event.itemstack.name)..")")
	end
end)

game.onevent(defines.events.ontick, function(event)
	
	if event.tick%60==0 then
		glob.timer.seconds = glob.timer.seconds + 1
	end
	if glob.timer.seconds==60 then
		glob.timer.seconds = 0
		glob.timer.minutes = glob.timer.minutes + 1
	end
	if glob.timer.minutes==60 then
		glob.timer.minutes = 0
		glob.timer.hours = glob.timer.hours + 1
	end
end)

game.onevent(defines.events.onbuiltentity, function(event)
	if not glob.Logger.BuildEntity then glob.Logger.BuildEntity = {} end
	if glob.Logger.BuildEntity[event.createdentity.name] then
		glob.Logger.BuildEntity[event.createdentity.name] = glob.Logger.BuildEntity[event.createdentity.name] + 1
		debug("BuildEntity increased by 1 ("..tostring(event.createdentity.name)..")")
	else
		glob.Logger.BuildEntity[event.createdentity.name] = 1
		debug("BuildEntity not found ("..tostring(event.createdentity.name)..")")
	end
end)

game.onevent(defines.events.onrobotbuiltentity, function(event)
	if not glob.Logger.RobotBuildEntity then glob.Logger.RobotBuildEntity = {} end
	if glob.Logger.RobotBuildEntity[event.createdentity.name] then
		glob.Logger.RobotBuildEntity[event.createdentity.name] = glob.Logger.RobotBuildEntity[event.createdentity.name] + 1
		debug("RobotBuildEntity increased by 1 ("..tostring(event.createdentity.name)..")")
	else
		glob.Logger.RobotBuildEntity[event.createdentity.name] = 1
		debug("RobotBuildEntity not found ("..tostring(event.createdentity.name)..")")
	end
end)

game.onevent(defines.events.onchunkgenerated, function(event)
	if not glob.Logger.ChunkGenerated then 
		glob.Logger.ChunkGenerated = 1
	else
		glob.Logger.ChunkGenerated = glob.Logger.ChunkGenerated + 1
	end
	if debug_chunks then debug("Chunk Generated, chunks counter is now "..tostring(glob.Logger.ChunkGenerated)) end
end)

game.onevent(defines.events.onresearchstarted, function(event)
fs.TechLogger("started", event.research)
end)

game.onevent(defines.events.onresearchfinished, function(event)
fs.TechLogger("finished", event.research)
end)

remote.addinterface("DyTech-Script",
{
	Timer = function(name)
		return glob.timer[name]
	end,
	
	Logger = function()
		game.makefile("Logger/Technologies.txt", serpent.block(glob.Logger.Technology))
		game.makefile("Logger/RobotBuildEntity.txt", serpent.block(glob.Logger.RobotBuildEntity))
		game.makefile("Logger/BuildEntity.txt", serpent.block(glob.Logger.BuildEntity))
		game.makefile("Logger/PickedItems.txt", serpent.block(glob.Logger.PickedItems))
		game.makefile("Logger/CanceledDeconstruction.txt", serpent.block(glob.Logger.CanceledDeconstruction))
		game.makefile("Logger/MarkedForDeconstruction.txt", serpent.block(glob.Logger.MarkedForDeconstruction))
		game.makefile("Logger/EntityDied.txt", serpent.block(glob.Logger.EntityDied))
		game.makefile("Logger/RobotMinedItems.txt", serpent.block(glob.Logger.RobotMinedItems))
		game.makefile("Logger/MinedItems.txt", serpent.block(glob.Logger.MinedItems))
		game.makefile("Logger/CraftedItems.txt", serpent.block(glob.Logger.CraftedItems))
	end
})