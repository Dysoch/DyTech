module("Dyzilla", package.seeall)

function Startup()
glob.Dyzilla = {}
glob.Dyzilla.Chunks = 0
glob.Dyzilla.Alive = 0
glob.Dyzilla.Dead = 0
glob.Dyzilla.Max = 0
end

function Easy(event)
local Chance = math.random(2500)
glob.Dyzilla.Max = 1
	if Chance==5 then
		if (glob.Dyzilla.Max-glob.Dyzilla.Alive) > 0 then
		local BuildEntity = "iron-chest"--"dyzilla-spawner"
		local PosX = event.area.lefttop.x+math.random(32)
		local PosY = event.area.lefttop.y+math.random(32)
			if game.canplaceentity{name=(BuildEntity), position={PosX,PosY}} then 
				game.createentity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.enemy}
				PlayerPrint("Dyzilla Spawner has been FOUND!")
			end
		end
	end
end

function Medium(event)
end

function Hard(event)
end

function Insane(event)
end

function Extreme(event)
	glob.Dyzilla.Max = 9
	if math.random(50)==5 then
	debug("chance happened (Extreme)")
		if glob.Dyzilla.Alive <= glob.Dyzilla.Max and glob.Dyzilla.Chunks > 1000 then
		debug("Max spawners is not 0 (Extreme)")
		local BuildEntity = "dyzilla-spawner"
		local PosX = event.area.lefttop.x+math.random(32)
		local PosY = event.area.lefttop.y+math.random(32)
			if game.canplaceentity{name=(BuildEntity), position={PosX,PosY}} then 
				game.createentity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.enemy}
				glob.Dyzilla.Alive = glob.Dyzilla.Alive + 1
				PlayerPrint("Dyzilla Spawner has been FOUND!")
				debug(tostring(glob.Dyzilla.Alive))
			end
		end
	end
end