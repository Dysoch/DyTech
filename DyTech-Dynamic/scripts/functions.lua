module("fs", package.seeall)
require("util")

function CounterPrinterIntermediates()
	game.player.print("Here are all your Intermediates that you crafted!")
	game.player.print("Sticks:".." "..tostring(glob.crafted.intermediates.stick))
	game.player.print("Wood:".." "..tostring(glob.crafted.intermediates.wood))
	game.player.print("Electronic Circuits:".." "..tostring(glob.crafted.intermediates.circuit1))
	game.player.print("Advanced Circuits:".." "..tostring(glob.crafted.intermediates.circuit2))
	game.player.print("Processing Units:".." "..tostring(glob.crafted.intermediates.circuit3))
	game.player.print("Advanced Processing Units:".." "..tostring(glob.crafted.intermediates.circuit4))
	game.player.print("Battery:".." "..tostring(glob.crafted.intermediates.battery))
	game.player.print("Copper Cables:".." "..tostring(glob.crafted.intermediates.cable))
	game.player.print("Red Wires:".." "..tostring(glob.crafted.intermediates.wirered))
	game.player.print("Green Wires:".." "..tostring(glob.crafted.intermediates.wiregreen))
	game.player.print("Bundled Wires:".." "..tostring(glob.crafted.intermediates.bundledwire))
	game.player.print("Stone Gears:".." "..tostring(glob.crafted.intermediates.gear1))
	game.player.print("Iron Gears:".." "..tostring(glob.crafted.intermediates.gear2))
	game.player.print("Steel Gears:".." "..tostring(glob.crafted.intermediates.gear3))
	game.player.print("All Combined:".." "..tostring(glob.crafted.intermediates.dytech))
end

function OnLoad()
	if not glob.dynamic then glob.dynamic=false end
	if not glob.modules then glob.modules={core=false, energy=false, inserters=false, logistic=false, metallurgy=false, meteors=false, mining=false, modules=false, storage=false, tools=false, transportation=false, warfare=false, compatibility=false} end
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
end

function OnInit()
	game.player.print("Dynamic System starts Offline! You have to manually start it via the console command found at the Forum Topic 'Console Commands'")
glob.modules={core=false, energy=false, inserters=false, logistic=false, metallurgy=false, meteors=false, mining=false, modules=false, storage=false, tools=false, transportation=false, warfare=false, compatibility=false}
glob.counter={dytech=0, gear=0, resource=0, mining=0, robot=0, ammo=0, gun=0, machine=0, capsule=0, tech=0, plates=0, inserter=0, energy=0, chest=0, armor=0, gems=0, belt=0, turret=0, alien=0, science=0, wall=0, modules=0}
glob.combat={dytech=0, small=0, medium=0, big=0, berserker=0, elder=0, king=0, queen=0, dog=0, bird=0}
glob.reward={axe1=false, axe2=false, axe3=false, armor1=false, armor2=false, armor3=false, ammo1=false, ammo2=false}
glob.dynamic=false
glob.crafted={}
glob.crafted.energy={}
glob.crafted.inserters={}
glob.crafted.intermediates={}
glob.crafted.guns={}
glob.crafted.chests={}
glob.crafted.modules={}
glob.crafted.tools={}
glob.crafted.turrets={}
glob.crafted.miners={}
glob.crafted.furnaces={}
glob.crafted.logistics={}
glob.crafted.transport={}
glob.crafted.capsules={}
glob.crafted.armor={}
glob.crafted.science={}
glob.crafted.ammo={}
glob.crafted.crafters={}
glob.crafted.nature={}
glob.crafted.others={} -- last of the line, when they cant be added to an other group!
glob.crafted.energy={
dytech=0, boiler1=0, boiler2=0, boiler3=0, boiler4=0, boiler5=0, smallpole=0, mediumpole=0, largepole=0, substation=0, solar1=0, solar2=0, solar3=0, solar4=0, solar5=0, accu1=0, accu2=0, accu3=0, accu4=0, accu5=0, accu6=0, steam1=0, steam2=0, steam3=0, steam4=0, steam5=0}
glob.crafted.inserters={
dytech=0, burner=0, basic=0, fast=0, long=0, smart=0, half=0, veryfast=0}
glob.crafted.intermediates={
dytech=0, stick=0, wood=0, circuit1=0, circuit2=0, circuit3=0, circuit4=0, battery=0, cable=0, wirered=0, wiregreen=0, bundledwire=0, gear1=0, gear2=0, gear3=0, plastic=0, engine1=0, engine2=0, robotframe=0, explosives=0, gearmetallurgy=0, frames=0, itemexit=0, rotors=0, blades=0}
glob.crafted.guns={
dytech=0, pistol=0, submachine=0, shotgun=0, combatshotgun=0, sniper=0, railgun=0, flamethrower=0, rocket=0, mine=0}
glob.crafted.ammo={
dytech=0, basic=0, piercing=0, shotgun=0, piershotgun=0, sniper=0, railgun=0, rocket=0}
glob.crafted.chests={
dytech=0, wood=0, iron=0, steel=0, smart=0, logistic=0, medium=0, big=0}
glob.crafted.tools={
dytech=0, wooden=0, stone=0, copper=0, iron=0, steel=0, advsteel=0, sapphire=0, ruby=0, emerald=0, topaz=0, diamond=0, metallurgy=0}
glob.crafted.furnaces={
dytech=0, stone=0, steel=0, electric=0, forge=0, blastfurnace=0}
glob.crafted.transport={
dytech=0, belt1=0, belt2=0, belt3=0, belt4=0, belt5=0, underbelt1=0, underbelt2=0, underbelt3=0, underbelt4=0, underbelt5=0, splitter1=0, splitter2=0, splitter3=0, splitter4=0, splitter5=0, pipe1=0, pipe2=0, pipe3=0, pipe4=0, pipe5=0, underpipe1=0, underpipe2=0, underpipe3=0, underpipe4=0, underpipe5=0, pump1=0, pump2=0, pump3=0, pump4=0, pump5=0, car1=0, car2=0, rail1=0, rail2=0, diesel1=0, diesel2=0, diesel3=0, wagon1=0, wagon2=0, wagon3=0, wagon4=0, stop=0, signal=0, tank1=0, pipebig=0, pumpbig=0}
glob.crafted.miners={
dytech=0, burner=0, basic1=0, basic2=0, basic3=0, basic4=0, basic5=0, basic6=0, gems=0}
glob.crafted.armor={
dytech=0, basic=0, heavy=0, modular1=0, modular2=0, modular3=0, modular4=0, night=0, shield1=0, shield2=0, battery1=0, battery2=0, solar=0, fusion=0, laser1=0, laser2=0, laser3=0, discharge=0, exoskeleton=0}
glob.crafted.capsules={
dytech=0, poison=0, slowdown=0, grenade=0, defender=0, distractor=0, destroyer=0, discharge=0}
glob.crafted.crafters={
dytech=0, assem1=0, assem2=0, assem3=0, pumpjack=0, refinery=0, chemical=0, molds=0, airintake=0, centrifuge=0, geothermal=0, lavahandler=0, gem1=0, gem2=0, gem3=0, gem4=0}
glob.crafted.logistics={
dytech=0, repair1=0, repair2=0, repair3=0, robot1=0, robot2=0, robot3=0, chest1=0, chest2=0, chest3=0, port1=0, port2=0, port3=0, blueprint=0, deconstruct=0}
glob.crafted.turrets={
dytech=0, gun=0, laser1=0, laser2=0, laser3=0, laser4=0, laser5=0, laser6=0, laser7=0, laser8=0, laser9=0, laser10=0, laser11=0, laser12=0, sniper=0}
glob.crafted.modules={
dytech=0, speed1=0, speed2=0, speed3=0, speed4=0, speed5=0, speed6=0, speed7=0, speed8=0, effect1=0, effect2=0, effect3=0, effect4=0, effect5=0, effect6=0, effect7=0, effect8=0, prod1=0, prod2=0, prod3=0, prod4=0, prod5=0, prod6=0, prod7=0, prod8=0, poll1=0, poll=2, poll3=0, poll4=0, poll5=0, poll6=0, poll7=0, poll8=0}
glob.crafted.science={
dytech=0, lab=0, science1=0, science2=0, science3=0, science4=0, alienscience=0}
glob.crafted.nature={
dytech=0, rubberseed=0}
glob.crafted.others={
dytech=0, radar=0, lamp=0, port=0, wall=0, rocketdefense=0, beacon=0, plane=0, barrel=0, collectors=0, alien=0}
end

function DynamicToggle()
	if glob.dynamic==true then
		glob.dynamic = false
		game.player.print("Dynamic System is now offline. Technologies however won't return! It's a shame to see you go :(")
	else
		glob.dynamic = true
		game.player.print("Dynamic System is now online. Enjoy the System!")
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
end

function ModuleCheck()
	if remote.call("DyTech-Core", "detectModule", "core")==true then glob.modules.core = true else glob.modules.core = false end 
	if remote.call("DyTech-Core", "detectModule", "compatibility")==true then glob.modules.compatibility = true else glob.modules.compatibility = false end 
	if remote.call("DyTech-Core", "detectModule", "energy")==true then glob.modules.energy = true else glob.modules.energy = false end 
	if remote.call("DyTech-Core", "detectModule", "inserters")==true then glob.modules.inserters = true else glob.modules.inserters = false end 
	if remote.call("DyTech-Core", "detectModule", "logistic")==true then glob.modules.logistic = true else glob.modules.logistic = false end 
	if remote.call("DyTech-Core", "detectModule", "metallurgy")==true then glob.modules.metallurgy = true else glob.modules.metallurgy = false end 
	if remote.call("DyTech-Core", "detectModule", "meteors")==true then glob.modules.meteors = true else glob.modules.meteors = false end 
	if remote.call("DyTech-Core", "detectModule", "mining")==true then glob.modules.mining = true else glob.modules.mining = false end 
	if remote.call("DyTech-Core", "detectModule", "modules")==true then glob.modules.modules = true else glob.modules.modules = false end 
	if remote.call("DyTech-Core", "detectModule", "storage")==true then glob.modules.storage = true else glob.modules.storage = false end 
	if remote.call("DyTech-Core", "detectModule", "tools")==true then glob.modules.tools = true else glob.modules.tools = false end 
	if remote.call("DyTech-Core", "detectModule", "transportation")==true then glob.modules.transportation = true else glob.modules.transportation = false end 
	if remote.call("DyTech-Core", "detectModule", "warfare")==true then glob.modules.warfare = true else glob.modules.warfare = false end 
end