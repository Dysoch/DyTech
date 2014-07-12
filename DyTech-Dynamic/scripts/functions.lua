module("fs", package.seeall)
require("util")

function CounterPrinter()
	game.player.print("Here are all your counters with their current status!")
	game.player.print("Gear:".." "..tostring(glob.counter.gear))
	game.player.print("Resource:".." "..tostring(glob.counter.resource))
	game.player.print("Mining:".." "..tostring(glob.counter.mining))
	game.player.print("Robot:".." "..tostring(glob.counter.robot))
	game.player.print("Machine:".." "..tostring(glob.counter.machine))
	game.player.print("Gun:".." "..tostring(glob.counter.gun))
	game.player.print("Ammo:".." "..tostring(glob.counter.ammo))
	game.player.print("Capsule:".." "..tostring(glob.counter.capsule))
	game.player.print("Tech:".." "..tostring(glob.counter.tech))
	game.player.print("Plates:".." "..tostring(glob.counter.plates))
	game.player.print("Inserter:".." "..tostring(glob.counter.inserter))
	game.player.print("Energy:".." "..tostring(glob.counter.energy))
	game.player.print("Chest:".." "..tostring(glob.counter.chest))
	game.player.print("Armor:".." "..tostring(glob.counter.armor))
	game.player.print("Gems:".." "..tostring(glob.counter.gems))
	game.player.print("Belt:".." "..tostring(glob.counter.belt))
	game.player.print("Turret:".." "..tostring(glob.counter.turret))
	game.player.print("Alien:".." "..tostring(glob.counter.alien))
	game.player.print("Science:".." "..tostring(glob.counter.science))
	game.player.print("Wall:".." "..tostring(glob.counter.wall))
	game.player.print("Modules:".." "..tostring(glob.counter.modules))
	game.player.print("All Counters Combined:".." "..tostring(glob.counter.dytech))
end

function OnLoad()
	if not glob.modules then glob.modules={core=false, energy=false, inserters=false, logistic=false, metallurgy=false, meteors=false, mining=false, modules=false, storage=false, tools=false, transportation=false, warfare=false, compatibility=false} end
end

function OnInit()
glob.modules={core=false, energy=false, inserters=false, logistic=false, metallurgy=false, meteors=false, mining=false, modules=false, storage=false, tools=false, transportation=false, warfare=false, compatibility=false}
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
glob.crafted.energy={boiler1=0, boiler2=0, boiler3=0, boiler4=0, boiler5=0, smallpole=0, mediumpole=0, largepole=0, substation=0, solar1=0, solar2=0, solar3=0, solar4=0, solar5=0, accu1=0, accu2=0, accu3=0, accu4=0, accu5=0, accu6=0}
glob.crafted.inserter={burner=0, basic=0, long=0, smart=0, half=0, veryfast=0}
glob.crafted.intermediates={stick=0, wood=0, circuit1=0, circuit2=0, circuit3=0, circuit4=0, battery=0, cable=0, wirered=0, wiregreen=0, bundledwire=0, gear1=0, gear2=0, gear3=0}
glob.crafted.guns={pistol=0, submachine=0, shotgun=0, combatshotgun=0, sniper=0, railgun=0, flamethrower=0}
glob.crafted.chests={wood=0, iron=0, steel=0, smart=0, logistic=0, medium=0, big=0}

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