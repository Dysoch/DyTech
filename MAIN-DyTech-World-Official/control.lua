require "defines"
require "config"

--[[Debug Functions]]--
debug_master = true -- Master switch for debugging, shows most things!
debug_ontick = false -- Ontick switch for debugging, shows all ontick event debugs
debug_chunks = false -- shows the chunks generated with this on
debug_GUI = false -- debugger for GUI
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

game.on_init(function()
	global.RandomEntity = {}
	global.RandomEntity.Tier1 = {"stone-wall", "wooden-chest"}
	global.RandomEntity.Tier2 = {"iron-chest"}
	global.RandomEntity.Tier3 = {"steel-chest"}
	global.RandomEntity.Tier4 = {"smart-chest"}
end)

game.on_save(function()

end)

game.on_load(function()

end)

game.on_event(defines.events.on_chunk_generated, function(event)
	if math.random(10)==1 then
		local chance = math.random(100)
		local pos = 1 -- 'saved' state for checkMatch
		local chances = {
		66, 30, 100, 29, 28, 59, 69, 9, 6, 70, 18, 23, 76, 81, 57, 68, 22, 75, 52, 14, 73, 15, 37, 7, 39, 25, 96, 34, 80, 87, 21, 17, 92, 13, 63, 99, 47, 65, 38, 61, 84, 55, 1, 3, 89, 41, 83, 74, 5, 27, 53, 4, 49, 44, 67, 71, 91, 24, 46, 64, 48, 95, 98, 94, 35, 90, 79, 42, 58, 36, 16, 93, 8, 10, 31, 86, 62, 11, 20, 2, 50, 12, 60, 54, 97, 82, 45, 33, 56, 43, 51, 26, 72, 32, 19, 88, 78, 77, 40, 85}
		local function checkMatch(percent)
			for i=pos, (pos+percent) do
				if chance == chances[i] then 
					return true 
				end
			end
		pos = pos + percent 
			return false
		end
		if checkMatch(50) then
		-- LOOT ON GROUND 50%
		local BuildEntity=global.RandomEntity.Tier1[math.random(#global.RandomEntity.Tier1)]
		local PosX = event.area.left_top.x+math.random(32)
		local PosY = event.area.left_top.y+math.random(32)
		local ItemAmount = math.random(1,10)
			if game.get_surface("nauvis").can_place_entity{name=(BuildEntity), position={PosX,PosY}} then 
				game.get_surface("nauvis").create_entity{name = "item-on-ground", position = player.position, stack = {name=(BuildEntity), count = ItemAmount}}
				debug("Created Item-On_Ground: "..BuildEntity.." at "..PosX..", "..PosY)
			end
		elseif checkMatch(27) then
		-- WALLS 27%
		local BuildEntity=global.RandomEntity.Tier2[math.random(#global.RandomEntity.Tier2)]
		local PosX = event.area.left_top.x+math.random(32)
		local PosY = event.area.left_top.y+math.random(32)
			if game.get_surface("nauvis").can_place_entity{name=(BuildEntity), position={PosX,PosY}} then 
				game.get_surface("nauvis").create_entity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.neutral}
				debug("Created "..BuildEntity.." at "..PosX..", "..PosY)
			end
		elseif checkMatch(21) then
		-- CHEST WITH LOOT 21%
		local BuildEntity=global.RandomEntity.Tier3[math.random(#global.RandomEntity.Tier3)]
		local PosX = event.area.left_top.x+math.random(32)
		local PosY = event.area.left_top.y+math.random(32)
			if game.get_surface("nauvis").can_place_entity{name=(BuildEntity), position={PosX,PosY}} then 
				game.get_surface("nauvis").create_entity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.neutral}
				debug("Created "..BuildEntity.." at "..PosX..", "..PosY)
			end
		elseif checkMatch(2) then
		-- MACHINES 2%
		local BuildEntity=global.RandomEntity.Tier4[math.random(#global.RandomEntity.Tier4)]
		local PosX = event.area.left_top.x+math.random(32)
		local PosY = event.area.left_top.y+math.random(32)
			if game.get_surface("nauvis").can_place_entity{name=(BuildEntity), position={PosX,PosY}} then 
				game.get_surface("nauvis").create_entity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.neutral}
				debug("Created "..BuildEntity.." at "..PosX..", "..PosY)
			end
		end
	end
end)

remote.add_interface("DyTech-World",
{  
	Chart = function(Amount)
		game.forces.player.chart({left_top = {x = -Amount, y = -Amount}, right_bottom = {x = Amount, y = Amount}})
	end
})