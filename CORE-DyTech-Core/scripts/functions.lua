module("fs", package.seeall)

function Startup()
	if not glob.Logger then glob.Logger = {} end
	if not glob.timer then glob.timer={seconds=0, minutes=0, hours=0} end
	if not glob.Logger.CraftedItems then glob.Logger.CraftedItems = {} end
	if not glob.Logger.MinedItems then glob.Logger.MinedItems = {} end
	if not glob.Logger.RobotMinedItems then glob.Logger.RobotMinedItems = {} end
	if not glob.Logger.EntityDied then glob.Logger.EntityDied = {} end
	if not glob.Logger.MarkedForDeconstruction then glob.Logger.MarkedForDeconstruction = {} end
	if not glob.Logger.CanceledDeconstruction then glob.Logger.CanceledDeconstruction = {} end
	if not glob.Logger.PickedItems then glob.Logger.PickedItems = {} end
	if not glob.Logger.BuildEntity then glob.Logger.BuildEntity = {} end
	if not glob.Logger.RobotBuildEntity then glob.Logger.RobotBuildEntity = {} end
	if not glob.Logger.Technology then glob.Logger.Technology = {} end
	if not glob.TimeStamp then glob.TimeStamp = {} end
	if not glob.TimeStamp.CraftedItems then glob.TimeStamp.CraftedItems = {} end
	if not glob.TimeStamp.MinedItems then glob.TimeStamp.MinedItems = {} end
	if not glob.TimeStamp.RobotMinedItems then glob.TimeStamp.RobotMinedItems = {} end
	if not glob.TimeStamp.EntityDied then glob.TimeStamp.EntityDied = {} end
	if not glob.TimeStamp.MarkedForDeconstruction then glob.TimeStamp.MarkedForDeconstruction = {} end
	if not glob.TimeStamp.CanceledDeconstruction then glob.TimeStamp.CanceledDeconstruction = {} end
	if not glob.TimeStamp.PickedItems then glob.TimeStamp.PickedItems = {} end
	if not glob.TimeStamp.BuildEntity then glob.TimeStamp.BuildEntity = {} end
	if not glob.TimeStamp.RobotBuildEntity then glob.TimeStamp.RobotBuildEntity = {} end
end

function TechLogger(statement, name)
	if not glob.Logger then glob.Logger = {} end
	if not glob.Logger.Technology then glob.Logger.Technology = {} end
	if statement=="started" then
		if not glob.techcount then glob.techcount=0 end
		glob.techcount = glob.techcount + 1
		glob.Logger.Technology[glob.techcount] = {}
		glob.Logger.Technology[glob.techcount].Name = name
		glob.Logger.Technology[glob.techcount].Started = true
		glob.Logger.Technology[glob.techcount].TimeStarted = glob.timer.hours..":"..glob.timer.minutes..":"..glob.timer.seconds
	elseif statement=="finished" then
		if not glob.techcount then glob.techcount=1 end
		glob.Logger.Technology[glob.techcount].TimeFinished = glob.timer.hours..":"..glob.timer.minutes..":"..glob.timer.seconds
		glob.Logger.Technology[glob.techcount].Finished = true
	elseif statement=="finished-god" then
		if not glob.techcount then glob.techcount=1 end
		glob.techcount = glob.techcount + 1
		glob.Logger.Technology[glob.techcount] = {}
		glob.Logger.Technology[glob.techcount].Name = name
		glob.Logger.Technology[glob.techcount].Started = true
		glob.Logger.Technology[glob.techcount].TimeFinished = glob.timer.hours..":"..glob.timer.minutes..":"..glob.timer.seconds
		glob.Logger.Technology[glob.techcount].Finished = true
	else
		error("Dysoch derped out and made a typo. Please show this error to Dysoch on Github.(statement name="..statement..")")	
	end
end

function Timer(event)
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
end

function SectorScannedLogger()
	if not glob.Logger then glob.Logger = {} end
	if not glob.Logger.SectorScanned then 
		glob.Logger.SectorScanned = 1
	else
		glob.Logger.SectorScanned = glob.Logger.SectorScanned + 1
	end
end

function CraftedItemsLogger(Name, Count)
	if not glob.Logger then glob.Logger = {} end
	if not glob.TimeStamp then glob.TimeStamp = {} end
	if not glob.Logger.CraftedItems then glob.Logger.CraftedItems = {} end
	if not glob.TimeStamp.CraftedItems then glob.TimeStamp.CraftedItems = {} end
	if not glob.Logger.CraftedItems[Name] then
		glob.Logger.CraftedItems[Name] = Count
		debug("No CraftedItems ("..tostring(Name)..")")
		glob.TimeStamp.CraftedItems[Name] = glob.timer.hours..":"..glob.timer.minutes..":"..glob.timer.seconds
	else
		glob.Logger.CraftedItems[Name] = glob.Logger.CraftedItems[Name] + Count
		debug("CraftedItems increased by "..tostring(Count).." ("..tostring(Name)..")")
	end
end

function MinedItemsLogger(Name, Count)
	if not glob.Logger then glob.Logger = {} end
	if not glob.TimeStamp then glob.TimeStamp = {} end
	if not glob.Logger.MinedItems then glob.Logger.MinedItems = {} end
	if not glob.TimeStamp.MinedItems then glob.TimeStamp.MinedItems = {} end
	if not glob.Logger.MinedItems[Name] then
		glob.Logger.MinedItems[Name] = Count
		debug("No MinedItems ("..tostring(Name)..")")
		glob.TimeStamp.MinedItems[Name] = glob.timer.hours..":"..glob.timer.minutes..":"..glob.timer.seconds
	else
		glob.Logger.MinedItems[Name] = glob.Logger.MinedItems[Name] + Count
		debug("MinedItems increased by "..tostring(Count).." ("..tostring(Name)..")")
	end
end

function RobotMinedItemsLogger(Name, Count)
	if not glob.Logger then glob.Logger = {} end
	if not glob.TimeStamp then glob.TimeStamp = {} end
	if not glob.Logger.RobotMinedItems then glob.Logger.RobotMinedItems = {} end
	if not glob.TimeStamp.RobotMinedItems then glob.TimeStamp.RobotMinedItems = {} end
	if not glob.Logger.RobotMinedItems[Name] then
		glob.Logger.RobotMinedItems[Name] = Count
		debug("No RobotMinedItems ("..tostring(Name)..")")
		glob.TimeStamp.RobotMinedItems[Name] = glob.timer.hours..":"..glob.timer.minutes..":"..glob.timer.seconds
	else
		glob.Logger.RobotMinedItems[Name] = glob.Logger.RobotMinedItems[Name] + Count
		debug("RobotMinedItems increased by "..tostring(Count).." ("..tostring(Name)..")")
	end
end

function EntityDiedLogger(Name)
	if not glob.Logger then glob.Logger = {} end
	if not glob.TimeStamp then glob.TimeStamp = {} end
	if not glob.Logger.EntityDied then glob.Logger.EntityDied = {} end
	if not glob.TimeStamp.EntityDied then glob.TimeStamp.EntityDied = {} end
	if not glob.Logger.EntityDied[Name] then
		glob.Logger.EntityDied[Name] = 1
		debug("No EntityDied ("..tostring(Name)..")")
		glob.TimeStamp.EntityDied[Name] = glob.timer.hours..":"..glob.timer.minutes..":"..glob.timer.seconds
	else
		glob.Logger.EntityDied[Name] = glob.Logger.EntityDied[Name] + 1
		debug("EntityDied increased by 1".." ("..tostring(Name)..")")
	end
end

function MarkedForDeconstructionLogger(Name)
	if not glob.Logger then glob.Logger = {} end
	if not glob.TimeStamp then glob.TimeStamp = {} end
	if not glob.Logger.MarkedForDeconstruction then glob.Logger.MarkedForDeconstruction = {} end
	if not glob.TimeStamp.MarkedForDeconstruction then glob.TimeStamp.MarkedForDeconstruction = {} end
	if not glob.Logger.MarkedForDeconstruction[Name] then
		glob.Logger.MarkedForDeconstruction[Name] = 1
		debug("No MarkedForDeconstruction ("..tostring(Name)..")")
		glob.TimeStamp.MarkedForDeconstruction[Name] = glob.timer.hours..":"..glob.timer.minutes..":"..glob.timer.seconds
	else
		glob.Logger.MarkedForDeconstruction[Name] = glob.Logger.MarkedForDeconstruction[Name] + 1
		debug("MarkedForDeconstruction increased by 1".." ("..tostring(Name)..")")
	end
end

function CanceledDeconstructionLogger(Name)
	if not glob.Logger then glob.Logger = {} end
	if not glob.TimeStamp then glob.TimeStamp = {} end
	if not glob.Logger.CanceledDeconstruction then glob.Logger.CanceledDeconstruction = {} end
	if not glob.TimeStamp.CanceledDeconstruction then glob.TimeStamp.CanceledDeconstruction = {} end
	if not glob.Logger.CanceledDeconstruction[Name] then
		glob.Logger.CanceledDeconstruction[Name] = 1
		debug("No CanceledDeconstruction ("..tostring(Name)..")")
		glob.TimeStamp.CanceledDeconstruction[Name] = glob.timer.hours..":"..glob.timer.minutes..":"..glob.timer.seconds
	else
		glob.Logger.CanceledDeconstruction[Name] = glob.Logger.CanceledDeconstruction[Name] + 1
		debug("CanceledDeconstruction increased by 1".." ("..tostring(Name)..")")
	end
end

function PickedItemsLogger(Name, Count)
	if not glob.Logger then glob.Logger = {} end
	if not glob.TimeStamp then glob.TimeStamp = {} end
	if not glob.Logger.PickedItems then glob.Logger.PickedItems = {} end
	if not glob.TimeStamp.PickedItems then glob.TimeStamp.PickedItems = {} end
	if not glob.Logger.PickedItems[Name] then
		glob.Logger.PickedItems[Name] = Count
		debug("No PickedItems ("..tostring(Name)..")")
		glob.TimeStamp.PickedItems[Name] = glob.timer.hours..":"..glob.timer.minutes..":"..glob.timer.seconds
	else
		glob.Logger.PickedItems[Name] = glob.Logger.PickedItems[Name] + Count
		debug("PickedItems increased by "..tostring(Count).." ("..tostring(Name)..")")
	end
end

function BuildEntityLogger(Name)
	if not glob.Logger then glob.Logger = {} end
	if not glob.TimeStamp then glob.TimeStamp = {} end
	if not glob.Logger.BuildEntity then glob.Logger.BuildEntity = {} end
	if not glob.TimeStamp.BuildEntity then glob.TimeStamp.BuildEntity = {} end
	if not glob.Logger.BuildEntity[Name] then
		glob.Logger.BuildEntity[Name] = 1
		debug("No BuildEntity ("..tostring(Name)..")")
		glob.TimeStamp.BuildEntity[Name] = glob.timer.hours..":"..glob.timer.minutes..":"..glob.timer.seconds
	else
		glob.Logger.BuildEntity[Name] = glob.Logger.BuildEntity[Name] + 1
		debug("BuildEntity increased by 1".." ("..tostring(Name)..")")
	end
end

function RobotBuildEntityLogger(Name)
	if not glob.Logger then glob.Logger = {} end
	if not glob.TimeStamp then glob.TimeStamp = {} end
	if not glob.Logger.RobotBuildEntity then glob.Logger.RobotBuildEntity = {} end
	if not glob.TimeStamp.RobotBuildEntity then glob.TimeStamp.RobotBuildEntity = {} end
	if not glob.Logger.RobotBuildEntity[Name] then
		glob.Logger.RobotBuildEntity[Name] = 1
		debug("No RobotBuildEntity ("..tostring(Name)..")")
		glob.TimeStamp.RobotBuildEntity[Name] = glob.timer.hours..":"..glob.timer.minutes..":"..glob.timer.seconds
	else
		glob.Logger.RobotBuildEntity[Name] = glob.Logger.RobotBuildEntity[Name] + 1
		debug("RobotBuildEntity increased by 1".." ("..tostring(Name)..")")
	end
end