module("fs", package.seeall)
require("util")

function DynamicToggle()
	if glob.EventCheck.event001 and glob.EventCheck.event002 then
		glob.SystemShutoff = true
		game.player.print("Dynamic System is still running!!! Shutting off now might cause errors!")
		game.player.print("The System will shutdown after the loop is done!!!")
	else
		if glob.DynamicSystem then
			glob.DynamicSystem = false
			game.player.print("Dynamic System is now offline. Technologies however won't return! It's a shame to see you go :(")
		else
			glob.DynamicSystem = true
			game.player.print("Dynamic System is now online. Enjoy the System!")
			game.player.print("Ready for a challenge? Try the Hard Dynamic System! Command to activate it can be found in 'Console Commands' topic in the forum!")
		end
	end
end

function HardModeToggle()
	if glob.HardMode then
		glob.HardMode = false
		game.player.print("Dynamic System Hard Mode is now offline. The normal System has been activated once again!")
	else
		glob.HardMode = true
		game.player.print("Dynamic System Hard Mode is now online. Enjoy the very hard System!")
	end
end	

function CounterTransfer()
remote.call("DyTech-Core", "ModuleChecker")
--[[glob.counter.dytech=0 
glob.counter.gear=0 
glob.counter.resource=0 
glob.counter.mining=0 
glob.counter.robot=0 
glob.counter.ammo=0 
glob.counter.gun=0 
glob.counter.machine=0 
glob.counter.capsule=0 
glob.counter.tech=0 
glob.counter.plates=0 
glob.counter.inserter=0 
glob.counter.energy=0 
glob.counter.chest=0 
glob.counter.armor=0 
glob.counter.gems=0 
glob.counter.belt=0 
glob.counter.turret=0 
glob.counter.alien=0 
glob.counter.science=0 
glob.counter.walls=0 
glob.counter.modules=0 
glob.counter.pipes=0 
glob.counter.transport=0 ]]--
glob.counter.dytech = remote.call("DyTech-Core", "checkCounter", "dytech")
glob.counter.gear = remote.call("DyTech-Core", "checkCounter", "gear")
glob.counter.resource = remote.call("DyTech-Core", "checkCounter", "resource")
glob.counter.mining = remote.call("DyTech-Core", "checkCounter", "mining")
glob.counter.robot = remote.call("DyTech-Core", "checkCounter", "robot")
glob.counter.ammo = remote.call("DyTech-Core", "checkCounter", "ammo")
glob.counter.gun = remote.call("DyTech-Core", "checkCounter", "gun")
glob.counter.machine = remote.call("DyTech-Core", "checkCounter", "machine")
glob.counter.capsule = remote.call("DyTech-Core", "checkCounter", "capsule")
glob.counter.tech = remote.call("DyTech-Core", "checkCounter", "tech")
glob.counter.plates = remote.call("DyTech-Core", "checkCounter", "plates")
glob.counter.inserter = remote.call("DyTech-Core", "checkCounter", "inserter")
glob.counter.energy = remote.call("DyTech-Core", "checkCounter", "energy")
glob.counter.chest = remote.call("DyTech-Core", "checkCounter", "chest")
glob.counter.armor = remote.call("DyTech-Core", "checkCounter", "armor")
glob.counter.gems = remote.call("DyTech-Core", "checkCounter", "gems")
glob.counter.belt = remote.call("DyTech-Core", "checkCounter", "belt")
glob.counter.turret = remote.call("DyTech-Core", "checkCounter", "turret")
glob.counter.alien = remote.call("DyTech-Core", "checkCounter", "alien")
glob.counter.science = remote.call("DyTech-Core", "checkCounter", "science")
glob.counter.walls = remote.call("DyTech-Core", "checkCounter", "walls")
glob.counter.modules = remote.call("DyTech-Core", "checkCounter", "modules")
glob.counter.pipes = remote.call("DyTech-Core", "checkCounter", "pipes")
glob.counter.transport = remote.call("DyTech-Core", "checkCounter", "transport")
end

function ModuleCheck()
	if remote.call("DyTech-Core", "detectModule", "core")==true then glob.modules.core = true else glob.modules.core = false end 
	if remote.call("DyTech-Core", "detectModule", "automation")==true then glob.modules.automation = true else glob.modules.automation = false end 
	if remote.call("DyTech-Core", "detectModule", "compatibility")==true then glob.modules.compatibility = true else glob.modules.compatibility = false end 
	if remote.call("DyTech-Core", "detectModule", "energy")==true then glob.modules.energy = true else glob.modules.energy = false end 
	if remote.call("DyTech-Core", "detectModule", "genetics")==true then glob.modules.genetics = true else glob.modules.genetics = false end 
	if remote.call("DyTech-Core", "detectModule", "inserters")==true then glob.modules.inserters = true else glob.modules.inserters = false end 
	if remote.call("DyTech-Core", "detectModule", "logistic")==true then glob.modules.logistic = true else glob.modules.logistic = false end 
	if remote.call("DyTech-Core", "detectModule", "metallurgy")==true then glob.modules.metallurgy = true else glob.modules.metallurgy = false end 
	if remote.call("DyTech-Core", "detectModule", "meteors")==true then glob.modules.meteors = true else glob.modules.meteors = false end 
	if remote.call("DyTech-Core", "detectModule", "modules")==true then glob.modules.modules = true else glob.modules.modules = false end 
	if remote.call("DyTech-Core", "detectModule", "storage")==true then glob.modules.storage = true else glob.modules.storage = false end 
	if remote.call("DyTech-Core", "detectModule", "tools")==true then glob.modules.tools = true else glob.modules.tools = false end 
	if remote.call("DyTech-Core", "detectModule", "transportation")==true then glob.modules.transportation = true else glob.modules.transportation = false end 
	if remote.call("DyTech-Core", "detectModule", "warfare")==true then glob.modules.warfare = true else glob.modules.warfare = false end 
end

function FailureMessage(ItemName)
	game.player.print(game.gettext("msg-failure-1").." "..ItemName.." "..game.gettext("msg-failure-2"))
end

function FailureReduction(CounterName, RandomNumber)
	remote.call("DyTech-Core", "removefromCounter", CounterName, RandomNumber)
end 

function EventFinish(EventName)
	glob.EventCheck[EventName].done = true
	glob.EventCheck[EventName].hours = remote.call("DyTech-Core", "checkTimer", "hours")
	glob.EventCheck[EventName].minutes = remote.call("DyTech-Core", "checkTimer", "minutes")
	glob.EventCheck[EventName].seconds = remote.call("DyTech-Core", "checkTimer", "seconds")
	debug("event finished and completed: "..EventName)
end 

function EventAlreadyDoneCheck()
	if glob.modules.automation==true then
		if game.player.force.recipes["steel-furnace-mk2"]==true and glob.EventCheck.event007.done==false then EventFinish("event007") end
		if game.player.force.recipes["steel-furnace-mk3"]==true and glob.EventCheck.event008.done==false then EventFinish("event008") end
		if game.player.force.recipes["steel-furnace-mk4"]==true and glob.EventCheck.event009.done==false then EventFinish("event009") end
		if game.player.force.recipes["steel-furnace-mk5"]==true and glob.EventCheck.event010.done==false then EventFinish("event010") end
		if game.player.force.recipes["electric-furnace-mk2"]==true and glob.EventCheck.event011.done==false then EventFinish("event011") end
		if game.player.force.recipes["electric-furnace-mk3"]==true and glob.EventCheck.event012.done==false then EventFinish("event012") end
		if game.player.force.recipes["electric-furnace-mk4"]==true and glob.EventCheck.event013.done==false then EventFinish("event013") end
		if game.player.force.recipes["electric-furnace-mk5"]==true and glob.EventCheck.event014.done==false then EventFinish("event014") end
		if game.player.force.recipes["frame1"]==true and glob.EventCheck.event015.done==false then EventFinish("event015") end
		if game.player.force.recipes["frame2"]==true and glob.EventCheck.event016.done==false then EventFinish("event016") end
		if game.player.force.recipes["frame3"]==true and glob.EventCheck.event017.done==false then EventFinish("event017") end
		if game.player.force.recipes["frame4"]==true and glob.EventCheck.event018.done==false then EventFinish("event018") end
		if game.player.force.recipes["radar-mk2"]==true and glob.EventCheck.event019.done==false then EventFinish("event019") end
		if game.player.force.recipes["radar-mk3"]==true and glob.EventCheck.event020.done==false then EventFinish("event020") end
		if game.player.force.recipes["radar-mk4"]==true and glob.EventCheck.event021.done==false then EventFinish("event021") end
		if game.player.force.recipes["radar-mk5"]==true and glob.EventCheck.event022.done==false then EventFinish("event022") end
		if game.player.force.recipes["basic-mining-drill-mk2"]==true and glob.EventCheck.event023.done==false then EventFinish("event023") end
		if game.player.force.recipes["basic-mining-drill-mk3"]==true and glob.EventCheck.event024.done==false then EventFinish("event024") end
		if game.player.force.recipes["basic-mining-drill-mk4"]==true and glob.EventCheck.event025.done==false then EventFinish("event025") end
		if game.player.force.recipes["basic-mining-drill-mk5"]==true and glob.EventCheck.event026.done==false then EventFinish("event026") end
		if game.player.force.recipes["basic-mining-drill-mk6"]==true and glob.EventCheck.event027.done==false then EventFinish("event027") end
		if game.player.force.recipes["assembling-machine-4"]==true and glob.EventCheck.event028.done==false then EventFinish("event028") end
		if game.player.force.recipes["assembling-machine-5"]==true and glob.EventCheck.event029.done==false then EventFinish("event029") end
		if game.player.force.recipes["assembling-machine-6"]==true and glob.EventCheck.event030.done==false then EventFinish("event030") end
		if game.player.force.recipes["assembling-machine-7"]==true and glob.EventCheck.event031.done==false then EventFinish("event031") end
		debug("Recipe check Automation done")
	end
end