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

game.oninit(function()
	glob.RandomEntity = {}
	glob.RandomEntity.Tier1 = {"stone-wall", "wooden-chest"}
	glob.RandomEntity.Tier2 = {"iron-chest"}
	glob.RandomEntity.Tier3 = {"steel-chest"}
	glob.RandomEntity.Tier4 = {"smart-chest"}
end)

game.onsave(function()

end)

game.onload(function()

end)

game.onevent(defines.events.onchunkgenerated, function(event)
	if math.random(10)==1 then
	local Chance = math.random(4)
		if Chance==1 then
		local BuildEntity=glob.RandomEntity.Tier1[math.random(#glob.RandomEntity.Tier1)]
		local PosX = event.area.lefttop.x+math.random(32)
		local PosY = event.area.lefttop.y+math.random(32)
			if game.canplaceentity{name=(BuildEntity), position={PosX,PosY}} then 
				game.createentity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.neutral}
			end
		elseif Chance==2 then
		local BuildEntity=glob.RandomEntity.Tier2[math.random(#glob.RandomEntity.Tier2)]
		local PosX = event.area.lefttop.x+math.random(32)
		local PosY = event.area.lefttop.y+math.random(32)
			if game.canplaceentity{name=(BuildEntity), position={PosX,PosY}} then 
				game.createentity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.neutral}
			end
		elseif Chance==3 then
		local BuildEntity=glob.RandomEntity.Tier3[math.random(#glob.RandomEntity.Tier3)]
		local PosX = event.area.lefttop.x+math.random(32)
		local PosY = event.area.lefttop.y+math.random(32)
			if game.canplaceentity{name=(BuildEntity), position={PosX,PosY}} then 
				game.createentity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.neutral}
			end
		elseif Chance==4 then
		local BuildEntity=glob.RandomEntity.Tier4[math.random(#glob.RandomEntity.Tier4)]
		local PosX = event.area.lefttop.x+math.random(32)
		local PosY = event.area.lefttop.y+math.random(32)
			if game.canplaceentity{name=(BuildEntity), position={PosX,PosY}} then 
				game.createentity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.neutral}
			end
		end
	end
end)

remote.addinterface("DyTech-World",
{  
	Chart = function(Amount)
		game.forces.player.chart({lefttop = {x = -Amount, y = -Amount}, rightbottom = {x = Amount, y = Amount}})
	end,
	
	FindEntity = function(Name, Amount)
		glob.Found = 0
		for found in pairs(game.findentitiesfiltered{area = {{-Amount, -Amount}, {Amount, Amount}}, name = Name}) do
			if found then glob.Found = glob.Found + 1 end
		end
		PlayerPrint("Found "..tostring(glob.Found).." "..Name)
	end,
	
	TileProperties = function(Spot1, Spot2)
		glob.Tile = {}
		glob.Tile.Temperature = game.gettileproperties(Spot1,Spot2).temperature
		glob.Tile.WeightStart = game.gettileproperties(Spot1,Spot2).starting_area_weight
		glob.Tile.Roughness = game.gettileproperties(Spot1,Spot2).roughness
		glob.Tile.Elevation = game.gettileproperties(Spot1,Spot2).elevation
		glob.Tile.Water = game.gettileproperties(Spot1,Spot2).available_water
		glob.Tile.TierStart = game.gettileproperties(Spot1,Spot2).tier_from_start
		PlayerPrint("Temperature: "..tostring(glob.Tile.Temperature))
		PlayerPrint("WeightStart: "..tostring(glob.Tile.WeightStart))
		PlayerPrint("Roughness: "..tostring(glob.Tile.Roughness))
		PlayerPrint("Elevation: "..tostring(glob.Tile.Elevation))
		PlayerPrint("Water: "..tostring(glob.Tile.Water))
		PlayerPrint("TierStart: "..tostring(glob.Tile.TierStart))
	end
})