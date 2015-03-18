module("fs", package.seeall)

function Startup()
glob.Logger = {}
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
end

function TechLogger(statement, name)
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
	else
		error("Dysoch derped out and made a typo. Please show this error to Dysoch on Github.(statement name="..statement..")")	
	end
end