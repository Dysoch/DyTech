module("fs", package.seeall)

function Startup()
	if not global.Logger then global.Logger = {} end
	if not global.timer then global.timer={seconds=0, minutes=0, hours=0} end
	if not global.Logger.CraftedItems then global.Logger.CraftedItems = {} end
	if not global.Logger.MinedItems then global.Logger.MinedItems = {} end
	if not global.Logger.RobotMinedItems then global.Logger.RobotMinedItems = {} end
	if not global.Logger.EntityDied then global.Logger.EntityDied = {} end
	if not global.Logger.MarkedForDeconstruction then global.Logger.MarkedForDeconstruction = {} end
	if not global.Logger.CanceledDeconstruction then global.Logger.CanceledDeconstruction = {} end
	if not global.Logger.PickedItems then global.Logger.PickedItems = {} end
	if not global.Logger.BuildEntity then global.Logger.BuildEntity = {} end
	if not global.Logger.RobotBuildEntity then global.Logger.RobotBuildEntity = {} end
	if not global.Logger.Technology then global.Logger.Technology = {} end
	if not global.TimeStamp then global.TimeStamp = {} end
	if not global.TimeStamp.CraftedItems then global.TimeStamp.CraftedItems = {} end
	if not global.TimeStamp.MinedItems then global.TimeStamp.MinedItems = {} end
	if not global.TimeStamp.RobotMinedItems then global.TimeStamp.RobotMinedItems = {} end
	if not global.TimeStamp.EntityDied then global.TimeStamp.EntityDied = {} end
	if not global.TimeStamp.MarkedForDeconstruction then global.TimeStamp.MarkedForDeconstruction = {} end
	if not global.TimeStamp.CanceledDeconstruction then global.TimeStamp.CanceledDeconstruction = {} end
	if not global.TimeStamp.PickedItems then global.TimeStamp.PickedItems = {} end
	if not global.TimeStamp.BuildEntity then global.TimeStamp.BuildEntity = {} end
	if not global.TimeStamp.RobotBuildEntity then global.TimeStamp.RobotBuildEntity = {} end
end

function TechLogger(statement, name)
	if not global.Logger then global.Logger = {} end
	if not global.Logger.Technology then global.Logger.Technology = {} end
	if statement=="started" then
		if not global.techcount then global.techcount=0 end
		global.techcount = global.techcount + 1
		global.Logger.Technology[global.techcount] = {}
		global.Logger.Technology[global.techcount].Name = name
		global.Logger.Technology[global.techcount].Started = true
		global.Logger.Technology[global.techcount].TimeStarted = global.timer.hours..":"..global.timer.minutes..":"..global.timer.seconds
	elseif statement=="finished" then
		if not global.techcount then global.techcount=1 end
		global.Logger.Technology[global.techcount].TimeFinished = global.timer.hours..":"..global.timer.minutes..":"..global.timer.seconds
		global.Logger.Technology[global.techcount].Finished = true
	elseif statement=="finished-god" then
		if not global.techcount then global.techcount=1 end
		global.techcount = global.techcount + 1
		global.Logger.Technology[global.techcount] = {}
		global.Logger.Technology[global.techcount].Name = name
		global.Logger.Technology[global.techcount].Started = true
		global.Logger.Technology[global.techcount].TimeFinished = global.timer.hours..":"..global.timer.minutes..":"..global.timer.seconds
		global.Logger.Technology[global.techcount].Finished = true
	else
		error("Dysoch derped out and made a typo. Please show this error to Dysoch on Github.(statement name="..statement..")")	
	end
end

function Timer(event)
	if not global.timer then global.timer={seconds=0, minutes=0, hours=0} end
	if event.tick%60==0 then
		global.timer.seconds = global.timer.seconds + 1
	end
	if global.timer.seconds==60 then
		global.timer.seconds = 0
		global.timer.minutes = global.timer.minutes + 1
	end
	if global.timer.minutes==60 then
		global.timer.minutes = 0
		global.timer.hours = global.timer.hours + 1
	end
end

function SectorScannedLogger()
	if not global.Logger then global.Logger = {} end
	if not global.Logger.SectorScanned then 
		global.Logger.SectorScanned = 1
	else
		global.Logger.SectorScanned = global.Logger.SectorScanned + 1
	end
end

function CraftedItemsLogger(Name, Count)
	if not global.Logger then global.Logger = {} end
	if not global.TimeStamp then global.TimeStamp = {} end
	if not global.Logger.CraftedItems then global.Logger.CraftedItems = {} end
	if not global.TimeStamp.CraftedItems then global.TimeStamp.CraftedItems = {} end
	if not global.Logger.CraftedItems[Name] then
		global.Logger.CraftedItems[Name] = Count
		debug("No CraftedItems ("..tostring(Name)..")", true)
		global.TimeStamp.CraftedItems[Name] = global.timer.hours..":"..global.timer.minutes..":"..global.timer.seconds
	else
		global.Logger.CraftedItems[Name] = global.Logger.CraftedItems[Name] + Count
		debug("CraftedItems increased by "..tostring(Count).." ("..tostring(Name)..")", true)
	end
end

function MinedItemsLogger(Name, Count)
	if not global.Logger then global.Logger = {} end
	if not global.TimeStamp then global.TimeStamp = {} end
	if not global.Logger.MinedItems then global.Logger.MinedItems = {} end
	if not global.TimeStamp.MinedItems then global.TimeStamp.MinedItems = {} end
	if not global.Logger.MinedItems[Name] then
		global.Logger.MinedItems[Name] = Count
		debug("No MinedItems ("..tostring(Name)..")", true)
		global.TimeStamp.MinedItems[Name] = global.timer.hours..":"..global.timer.minutes..":"..global.timer.seconds
	else
		global.Logger.MinedItems[Name] = global.Logger.MinedItems[Name] + Count
		debug("MinedItems increased by "..tostring(Count).." ("..tostring(Name)..")", true)
	end
end

function RobotMinedItemsLogger(Name, Count)
	if not global.Logger then global.Logger = {} end
	if not global.TimeStamp then global.TimeStamp = {} end
	if not global.Logger.RobotMinedItems then global.Logger.RobotMinedItems = {} end
	if not global.TimeStamp.RobotMinedItems then global.TimeStamp.RobotMinedItems = {} end
	if not global.Logger.RobotMinedItems[Name] then
		global.Logger.RobotMinedItems[Name] = Count
		debug("No RobotMinedItems ("..tostring(Name)..")", true)
		global.TimeStamp.RobotMinedItems[Name] = global.timer.hours..":"..global.timer.minutes..":"..global.timer.seconds
	else
		global.Logger.RobotMinedItems[Name] = global.Logger.RobotMinedItems[Name] + Count
		debug("RobotMinedItems increased by "..tostring(Count).." ("..tostring(Name)..")", true)
	end
end

function EntityDiedLogger(Name)
	if not global.Logger then global.Logger = {} end
	if not global.TimeStamp then global.TimeStamp = {} end
	if not global.Logger.EntityDied then global.Logger.EntityDied = {} end
	if not global.TimeStamp.EntityDied then global.TimeStamp.EntityDied = {} end
	if not global.Logger.EntityDied[Name] then
		global.Logger.EntityDied[Name] = 1
		debug("No EntityDied ("..tostring(Name)..")", true)
		global.TimeStamp.EntityDied[Name] = global.timer.hours..":"..global.timer.minutes..":"..global.timer.seconds
	else
		global.Logger.EntityDied[Name] = global.Logger.EntityDied[Name] + 1
		debug("EntityDied increased by 1".." ("..tostring(Name)..")", true)
	end
end

function MarkedForDeconstructionLogger(Name)
	if not global.Logger then global.Logger = {} end
	if not global.TimeStamp then global.TimeStamp = {} end
	if not global.Logger.MarkedForDeconstruction then global.Logger.MarkedForDeconstruction = {} end
	if not global.TimeStamp.MarkedForDeconstruction then global.TimeStamp.MarkedForDeconstruction = {} end
	if not global.Logger.MarkedForDeconstruction[Name] then
		global.Logger.MarkedForDeconstruction[Name] = 1
		debug("No MarkedForDeconstruction ("..tostring(Name)..")", true)
		global.TimeStamp.MarkedForDeconstruction[Name] = global.timer.hours..":"..global.timer.minutes..":"..global.timer.seconds
	else
		global.Logger.MarkedForDeconstruction[Name] = global.Logger.MarkedForDeconstruction[Name] + 1
		debug("MarkedForDeconstruction increased by 1".." ("..tostring(Name)..")", true)
	end
end

function CanceledDeconstructionLogger(Name)
	if not global.Logger then global.Logger = {} end
	if not global.TimeStamp then global.TimeStamp = {} end
	if not global.Logger.CanceledDeconstruction then global.Logger.CanceledDeconstruction = {} end
	if not global.TimeStamp.CanceledDeconstruction then global.TimeStamp.CanceledDeconstruction = {} end
	if not global.Logger.CanceledDeconstruction[Name] then
		global.Logger.CanceledDeconstruction[Name] = 1
		debug("No CanceledDeconstruction ("..tostring(Name)..")", true)
		global.TimeStamp.CanceledDeconstruction[Name] = global.timer.hours..":"..global.timer.minutes..":"..global.timer.seconds
	else
		global.Logger.CanceledDeconstruction[Name] = global.Logger.CanceledDeconstruction[Name] + 1
		debug("CanceledDeconstruction increased by 1".." ("..tostring(Name)..")", true)
	end
end

function PickedItemsLogger(Name, Count)
	if not global.Logger then global.Logger = {} end
	if not global.TimeStamp then global.TimeStamp = {} end
	if not global.Logger.PickedItems then global.Logger.PickedItems = {} end
	if not global.TimeStamp.PickedItems then global.TimeStamp.PickedItems = {} end
	if not global.Logger.PickedItems[Name] then
		global.Logger.PickedItems[Name] = Count
		debug("No PickedItems ("..tostring(Name)..")", true)
		global.TimeStamp.PickedItems[Name] = global.timer.hours..":"..global.timer.minutes..":"..global.timer.seconds
	else
		global.Logger.PickedItems[Name] = global.Logger.PickedItems[Name] + Count
		debug("PickedItems increased by "..tostring(Count).." ("..tostring(Name)..")", true)
	end
end

function BuildEntityLogger(Name)
	if not global.Logger then global.Logger = {} end
	if not global.TimeStamp then global.TimeStamp = {} end
	if not global.Logger.BuildEntity then global.Logger.BuildEntity = {} end
	if not global.TimeStamp.BuildEntity then global.TimeStamp.BuildEntity = {} end
	if not global.Logger.BuildEntity[Name] then
		global.Logger.BuildEntity[Name] = 1
		debug("No BuildEntity ("..tostring(Name)..")", true)
		global.TimeStamp.BuildEntity[Name] = global.timer.hours..":"..global.timer.minutes..":"..global.timer.seconds
	else
		global.Logger.BuildEntity[Name] = global.Logger.BuildEntity[Name] + 1
		debug("BuildEntity increased by 1".." ("..tostring(Name)..")", true)
	end
end

function RobotBuildEntityLogger(Name)
	if not global.Logger then global.Logger = {} end
	if not global.TimeStamp then global.TimeStamp = {} end
	if not global.Logger.RobotBuildEntity then global.Logger.RobotBuildEntity = {} end
	if not global.TimeStamp.RobotBuildEntity then global.TimeStamp.RobotBuildEntity = {} end
	if not global.Logger.RobotBuildEntity[Name] then
		global.Logger.RobotBuildEntity[Name] = 1
		debug("No RobotBuildEntity ("..tostring(Name)..")", true)
		global.TimeStamp.RobotBuildEntity[Name] = global.timer.hours..":"..global.timer.minutes..":"..global.timer.seconds
	else
		global.Logger.RobotBuildEntity[Name] = global.Logger.RobotBuildEntity[Name] + 1
		debug("RobotBuildEntity increased by 1".." ("..tostring(Name)..")", true)
	end
end

function ResearchAll()
	for name in pairs(game.forces.player.technologies) do
		game.forces.player.current_research = name
		game.forces.player.technologies[name].researched = true
	end
end