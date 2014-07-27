module("fs", package.seeall)
require("util")

function CraftedItems()
	game.player.print("Here are all your crafted Items!")
	game.player.print(serpent.block(glob.CraftedItems))
end

function PickedItems()
	game.player.print("Here are all your Picked Up Items!")
	game.player.print(serpent.block(glob.PickedItems))
end

function MinedItems()
	game.player.print("Here are all your Mined Items!")
	game.player.print(serpent.block(glob.MinedItems))
end

function OnLoad()
	if not glob.DynamicSystem then glob.DynamicSystem=false end
	if not glob.HardMode then glob.HardMode=false end
	if not glob.CraftedItems then glob.CraftedItems = {} end
	if not glob.PickedItems then glob.PickedItems = {} end
	if not glob.MinedItems then glob.MinedItems = {} end
	if not glob.modules then glob.modules={core=false, energy=false, inserters=false, logistic=false, metallurgy=false, meteors=false, automation=false, modules=false, storage=false, tools=false, transportation=false, warfare=false, compatibility=false} end
	if not glob.counter then glob.counter={dytech=0, gear=0, resource=0, mining=0, robot=0, ammo=0, gun=0, machine=0, capsule=0, tech=0, plates=0, inserter=0, energy=0, chest=0, armor=0, gems=0, belt=0, turret=0, alien=0, science=0, wall=0, modules=0} end
	if not glob.counter.dytech then glob.counter.dytech=0 end
	if not glob.counter.gear then glob.counter.gear=0 end
	if not glob.counter.resource then glob.counter.resource=0 end
	if not glob.counter.mining then glob.counter.mining=0 end
	if not glob.counter.robot then glob.counter.robot=0 end
	if not glob.counter.ammo then glob.counter.ammo=0 end
	if not glob.counter.gun then glob.counter.gun=0 end
	if not glob.counter.machine then glob.counter.machine=0 end
	if not glob.counter.capsule then glob.counter.capsule=0 end
	if not glob.counter.tech then glob.counter.tech=0 end
	if not glob.counter.plates then glob.counter.plates=0 end
	if not glob.counter.inserter then glob.counter.inserter=0 end
	if not glob.counter.energy then glob.counter.energy=0 end
	if not glob.counter.chest then glob.counter.chest=0 end
	if not glob.counter.armor then glob.counter.armor=0 end
	if not glob.counter.gems then glob.counter.gems=0 end
	if not glob.counter.belt then glob.counter.belt=0 end
	if not glob.counter.turret then glob.counter.turret=0 end
	if not glob.counter.alien then glob.counter.alien=0 end
	if not glob.counter.science then glob.counter.science=0 end
	if not glob.counter.wall then glob.counter.wall=0 end
	if not glob.counter.modules then glob.counter.modules=0 end
	if not glob.combat then glob.combat={dytech=0, small=0, medium=0, big=0, berserker=0, elder=0, king=0, queen=0, dog=0, bird=0} end
	if not glob.combat.dytech then glob.combat.dytech=0 end
	if not glob.combat.small then glob.combat.small=0 end
	if not glob.combat.medium then glob.combat.medium=0 end
	if not glob.combat.big then glob.combat.big=0 end
	if not glob.combat.berserker then glob.combat.berserker=0 end
	if not glob.combat.elder then glob.combat.elder=0 end
	if not glob.combat.king then glob.combat.king=0 end
	if not glob.combat.queen then glob.combat.queen=0 end
	if not glob.combat.dog then glob.combat.dog=0 end
	if not glob.combat.bird then glob.combat.bird=0 end
	if not glob.reward then glob.reward={axe1=false, axe2=false, axe3=false, armor1=false, armor2=false, armor3=false, ammo1=false, ammo2=false} end
	if not glob.reward.axe1 then glob.reward.axe1=false end
	if not glob.reward.axe2 then glob.reward.axe2=false end
	if not glob.reward.axe3 then glob.reward.axe3=false end
	if not glob.reward.armor1 then glob.reward.armor1=false end
	if not glob.reward.armor2 then glob.reward.armor2=false end
	if not glob.reward.armor3 then glob.reward.armor3=false end
	if not glob.reward.ammo1 then glob.reward.ammo1=false end
	if not glob.reward.ammo2 then glob.reward.ammo2=false end
	if not glob.timer then glob.timer={seconds=0, minutes=0, hours=0} end
	if not glob.timer.seconds then glob.timer.seconds=0 end
	if not glob.timer.minutes then glob.timer.minutes=0 end
	if not glob.timer.hours then glob.timer.hours=0 end
end

function OnInit()
	game.player.print("Dynamic System starts Offline! You have to manually start it via the console command found at the Forum Topic 'Console Commands'")
glob.modules={core=false, energy=false, inserters=false, logistic=false, metallurgy=false, meteors=false, automation=false, modules=false, storage=false, tools=false, transportation=false, warfare=false, compatibility=false}
glob.counter={dytech=0, gear=0, resource=0, mining=0, robot=0, ammo=0, gun=0, machine=0, capsule=0, tech=0, plates=0, inserter=0, energy=0, chest=0, armor=0, gems=0, belt=0, turret=0, alien=0, science=0, wall=0, modules=0}
glob.combat={dytech=0, small=0, medium=0, big=0, berserker=0, elder=0, king=0, queen=0, dog=0, bird=0}
glob.reward={axe1=false, axe2=false, axe3=false, armor1=false, armor2=false, armor3=false, ammo1=false, ammo2=false}
glob.DynamicSystem=false
glob.HardMode=false
glob.CraftedItems = {}
glob.PickedItems = {}
glob.MinedItems = {}
glob.timer={seconds=0, minutes=0, hours=0}
end

function DynamicToggle()
	if glob.DynamicSystem==true then
		glob.DynamicSystem = false
		game.player.print("Dynamic System is now offline. Technologies however won't return! It's a shame to see you go :(")
	else
		glob.DynamicSystem = true
		game.player.print("Dynamic System is now online. Enjoy the System!")
	end
end

function HardModeToggle()
	if glob.HardMode==true then
		glob.HardMode = false
		game.player.print("Dynamic System Hard Mode is now offline. The normal System has been activated once again!")
	else
		glob.HardMode = true
		game.player.print("Dynamic System Hard Mode is now online. Enjoy the very hard System!")
	end
end	

function CounterTransfer()
glob.counter.dytech=0 
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
glob.counter.wall=0 
glob.counter.modules=0 
glob.counter.dytech = glob.counter.dytech + remote.call("DyTech-Core", "checkCounter", "dytech")
glob.counter.gear = glob.counter.gear + remote.call("DyTech-Core", "checkCounter", "gear")
glob.counter.resource = glob.counter.resource + remote.call("DyTech-Core", "checkCounter", "resource")
glob.counter.mining = glob.counter.mining + remote.call("DyTech-Core", "checkCounter", "mining")
glob.counter.robot = glob.counter.robot + remote.call("DyTech-Core", "checkCounter", "robot")
glob.counter.ammo = glob.counter.ammo + remote.call("DyTech-Core", "checkCounter", "ammo")
glob.counter.gun = glob.counter.gun + remote.call("DyTech-Core", "checkCounter", "gun")
glob.counter.machine = glob.counter.machine + remote.call("DyTech-Core", "checkCounter", "machine")
glob.counter.capsule = glob.counter.capsule + remote.call("DyTech-Core", "checkCounter", "capsule")
glob.counter.tech = glob.counter.tech + remote.call("DyTech-Core", "checkCounter", "tech")
glob.counter.plates = glob.counter.plates + remote.call("DyTech-Core", "checkCounter", "plates")
glob.counter.inserter = glob.counter.inserter + remote.call("DyTech-Core", "checkCounter", "inserter")
glob.counter.energy = glob.counter.energy + remote.call("DyTech-Core", "checkCounter", "energy")
glob.counter.chest = glob.counter.chest + remote.call("DyTech-Core", "checkCounter", "chest")
glob.counter.armor = glob.counter.armor + remote.call("DyTech-Core", "checkCounter", "armor")
glob.counter.gems = glob.counter.gems + remote.call("DyTech-Core", "checkCounter", "gems")
glob.counter.belt = glob.counter.belt + remote.call("DyTech-Core", "checkCounter", "belt")
glob.counter.turret = glob.counter.turret + remote.call("DyTech-Core", "checkCounter", "turret")
glob.counter.alien = glob.counter.alien + remote.call("DyTech-Core", "checkCounter", "alien")
glob.counter.science = glob.counter.science + remote.call("DyTech-Core", "checkCounter", "science")
glob.counter.wall = glob.counter.wall + remote.call("DyTech-Core", "checkCounter", "wall")
glob.counter.modules = glob.counter.modules + remote.call("DyTech-Core", "checkCounter", "modules")
glob.timer.hours=0 
glob.timer.minutes=0 
glob.timer.seconds=0 
glob.timer.hours = glob.timer.hours + remote.call("DyTech-Core", "checkTimer", "hours")
glob.timer.minutes = glob.timer.minutes + remote.call("DyTech-Core", "checkTimer", "minutes")
glob.timer.seconds = glob.timer.seconds + remote.call("DyTech-Core", "checkTimer", "seconds")
end

function ModuleCheck()
	if remote.call("DyTech-Core", "detectModule", "core")==true then glob.modules.core = true else glob.modules.core = false end 
	if remote.call("DyTech-Core", "detectModule", "automation")==true then glob.modules.automation = true else glob.modules.automation = false end 
	if remote.call("DyTech-Core", "detectModule", "compatibility")==true then glob.modules.compatibility = true else glob.modules.compatibility = false end 
	if remote.call("DyTech-Core", "detectModule", "energy")==true then glob.modules.energy = true else glob.modules.energy = false end 
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

function FailureReduction(CounterName, Number)
	local Random = math.random(CounterName/Number)
	remote.call("DyTech-Core", "removefromCounter", "CounterName", Random)
end 