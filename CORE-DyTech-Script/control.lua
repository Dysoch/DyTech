require "defines"

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

end)

game.onsave(function()

end)

game.onload(function()

end)

game.onevent(defines.events.onplayercrafteditem, function(event)
	if not glob.CraftedItems then glob.CraftedItems = {} end
	if not glob.CraftedItems[event.itemstack.name] then
		glob.CraftedItems[event.itemstack.name] = event.itemstack.count
		debug("No CraftedItems ("..tostring(event.itemstack.name)..")")
	else
		glob.CraftedItems[event.itemstack.name] = glob.CraftedItems[event.itemstack.name] + event.itemstack.count
		debug("CraftedItems increased by "..tostring(event.itemstack.count).." ("..tostring(event.itemstack.name)..")")
	end
end)

game.onevent(defines.events.onplayermineditem, function(event)
	if not glob.MinedItems then glob.MinedItems = {} end
	if not glob.MinedItems[event.itemstack.name] then
		glob.MinedItems[event.itemstack.name] = event.itemstack.count
		debug("MinedItems not found".." ("..tostring(event.itemstack.name)..")")
	else
		glob.MinedItems[event.itemstack.name] = glob.MinedItems[event.itemstack.name] + event.itemstack.count
		debug("MinedItems increased by "..tostring(event.itemstack.count).." ("..tostring(event.itemstack.name)..")")
	end
end)

game.onevent(defines.events.onrobotmined, function(event)
	if not glob.RobotMinedItems then glob.RobotMinedItems = {} end
	if not glob.RobotMinedItems[event.itemstack.name] then
		glob.RobotMinedItems[event.itemstack.name] = event.itemstack.count
		debug("RobotMinedItems not found".." ("..tostring(event.itemstack.name)..")")
	else
		glob.RobotMinedItems[event.itemstack.name] = glob.RobotMinedItems[event.itemstack.name] + event.itemstack.count
		debug("RobotMinedItems increased by "..tostring(event.itemstack.count).." ("..tostring(event.itemstack.name)..")")
	end
end)

game.onevent(defines.events.onentitydied, function(event)
	if not glob.EntityDied then glob.EntityDied = {} end
	if not glob.EntityDied[event.entity.name] then
		glob.EntityDied[event.entity.name] = 1
		debug("EntityDied not found".." ("..tostring(event.entity.name)..")")
	else
		glob.EntityDied[event.entity.name] = glob.EntityDied[event.entity.name] + 1
		debug("EntityDied increased by 1".." ("..tostring(event.entity.name)..")")
	end
end)

game.onevent(defines.events.onsectorscanned, function(event)
	if not glob.SectorScanned then 
		glob.SectorScanned = 1
	else
		glob.SectorScanned = glob.SectorScanned + 1
	end
end)

game.onevent(defines.events.onmarkedfordeconstruction, function(event)
	if not glob.MarkedForDeconstruction then glob.MarkedForDeconstruction = {} end
	if not glob.MarkedForDeconstruction[event.entity.name] then
		glob.MarkedForDeconstruction[event.entity.name] = 1
		debug("MarkedForDeconstruction not found ("..tostring(event.entity.name)..")")
	else
		glob.MarkedForDeconstruction[event.entity.name] = glob.MarkedForDeconstruction[event.entity.name] + 1
		debug("MarkedForDeconstruction increased by 1 ("..tostring(event.entity.name)..")")
	end	
end)

game.onevent(defines.events.oncanceleddeconstruction, function(event)
	if not glob.CanceledDeconstruction then glob.CanceledDeconstruction = {} end
	if not glob.CanceledDeconstruction[event.entity.name] then
		glob.CanceledDeconstruction[event.entity.name] = 1
		debug("CanceledDeconstruction not found ("..tostring(event.entity.name)..")")
	else
		glob.CanceledDeconstruction[event.entity.name] = glob.CanceledDeconstruction[event.entity.name] + 1
		debug("CanceledDeconstruction increased by 1 ("..tostring(event.entity.name)..")")
	end	
end)

game.onevent(defines.events.onpickedupitem, function(event)
	if not glob.PickedItems then glob.PickedItems = {} end
	if not glob.PickedItems[event.itemstack.name] then
		glob.PickedItems[event.itemstack.name] = event.itemstack.count
		debug("PickedItems not found ("..tostring(event.itemstack.name)..")")
	else
		glob.PickedItems[event.itemstack.name] = glob.PickedItems[event.itemstack.name] + event.itemstack.count
		debug("PickedItems increased by "..tostring(event.itemstack.count).." ("..tostring(event.itemstack.name)..")")
	end
end)

game.onevent(defines.events.ontick, function(event)
	if not glob.timer then glob.timer={seconds=0, minutes=0, hours=0} end
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
	if not glob.BuildEntity then glob.BuildEntity = {} end
	if glob.BuildEntity[event.createdentity.name] then
		glob.BuildEntity[event.createdentity.name] = glob.BuildEntity[event.createdentity.name] + 1
		debug("BuildEntity increased by 1 ("..tostring(event.createdentity.name)..")")
	else
		glob.BuildEntity[event.createdentity.name] = 1
		debug("BuildEntity not found ("..tostring(event.createdentity.name)..")")
	end
end)

game.onevent(defines.events.onrobotbuiltentity, function(event)
	if not glob.RobotBuildEntity then glob.RobotBuildEntity = {} end
	if glob.RobotBuildEntity[event.createdentity.name] then
		glob.RobotBuildEntity[event.createdentity.name] = glob.RobotBuildEntity[event.createdentity.name] + 1
		debug("RobotBuildEntity increased by 1 ("..tostring(event.createdentity.name)..")")
	else
		glob.RobotBuildEntity[event.createdentity.name] = 1
		debug("RobotBuildEntity not found ("..tostring(event.createdentity.name)..")")
	end
end)

game.onevent(defines.events.onchunkgenerated, function(event)
	if not glob.ChunkGenerated then 
		glob.ChunkGenerated = 1
	else
		glob.ChunkGenerated = glob.ChunkGenerated + 1
	end
	if debug_chunks then debug("Chunk Generated, chunks counter is now "..tostring(glob.ChunkGenerated)) end
end)

remote.addinterface("DyTech-Script",
{
	Timer = function(name)
		return glob.timer[name]
	end
})