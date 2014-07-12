module("fs", package.seeall)
require("util")

function CounterPrinterIntermediates()
	game.player.print("Here are all your counters of the Intermediates!")
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
glob.crafted.capsules={}
glob.crafted.armor={}
glob.crafted.science={}
glob.crafted.ammo={}
glob.crafted.crafters={}
glob.crafted.others={} -- last of the line, when they cant be added to an other group!
glob.crafted.energy={
dytech=0, boiler1=0, boiler2=0, boiler3=0, boiler4=0, boiler5=0, smallpole=0, mediumpole=0, largepole=0, substation=0, solar1=0, solar2=0, solar3=0, solar4=0, solar5=0, accu1=0, accu2=0, accu3=0, accu4=0, accu5=0, accu6=0, steam1=0, steam2=0, steam3=0, steam4=0, steam5=0}
glob.crafted.inserter={
dytech=0, burner=0, basic=0, long=0, smart=0, half=0, veryfast=0}
glob.crafted.intermediates={
dytech=0, stick=0, wood=0, circuit1=0, circuit2=0, circuit3=0, circuit4=0, battery=0, cable=0, wirered=0, wiregreen=0, bundledwire=0, gear1=0, gear2=0, gear3=0, plastic=0}
glob.crafted.guns={
dytech=0, pistol=0, submachine=0, shotgun=0, combatshotgun=0, sniper=0, railgun=0, flamethrower=0, rocket=0}
glob.crafted.ammo={
dytech=0, basic=0, piercing=0, shotgun=0, piershotgun=0, sniper=0, railgun=0, rocket=0}
glob.crafted.chests={
dytech=0, wood=0, iron=0, steel=0, smart=0, logistic=0, medium=0, big=0}
glob.crafted.tools={
dytech=0, wooden=0, stone=0, copper=0, iron=0, steel=0, advsteel=0, sapphire=0, ruby=0, emerald=0, topaz=0, diamond=0, metallurgy=0}
glob.crafted.furnaces={
dytech=0, stone=0, steel=0, electric=0, forge=0, blastfurnace=0}
glob.crafted.transport={
dytech=0, belt1=0, belt2=0, belt3=0, belt4=0, belt5=0, underbelt1=0, underbelt2=0, underbelt3=0, underbelt4=0, underbelt5=0, splitter1=0, splitter2=0, splitter3=0, splitter4=0, splitter5=0, pipe1=0, pipe2=0, pipe3=0, pipe4=0, pipe5=0, underpipe1=0, underpipe2=0, underpipe3=0, underpipe4=0, underpipe5=0, pump1=0, pump2=0, pump3=0, pump4=0, pump5=0}
glob.crafted.miners={
dytech=0, burner=0, basic1=0, basic2=0, basic3=0, basic4=0, basic5=0, basic6=0, gems=0}
glob.crafted.armor={
dytech=0, basic=0}
glob.crafted.capsules={
dytech=0, poison=0, slowdown=0, grenade=0, defender=0, distractor=0, destroyer=0, discharge=0}
glob.crafted.crafters={
dytech=0, assem1=0, assem2=0, assem3=0}
glob.crafted.logistics={
dytech=0, repair1=0, repair2=0, repair3=0}
glob.crafted.others={
dytech=0, radar=0, lamp=0}
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