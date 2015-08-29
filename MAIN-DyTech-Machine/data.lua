require "config"

--[[ Pumpjacks Check ]]--
if Config.Pumpjacks then 
require("prototypes.pumpjacks.entity")
require("prototypes.pumpjacks.item")
require("prototypes.pumpjacks.recipe")
require("prototypes.pumpjacks.tech")
end

--[[ Roboports Check ]]--
if Config.Roboports then 
require("prototypes.logistic-network.chest-entity")
require("prototypes.logistic-network.chest-item")
require("prototypes.logistic-network.chest-recipe")
require("prototypes.logistic-network.roboport-entity")
require("prototypes.logistic-network.roboport-item")
require("prototypes.logistic-network.roboport-recipe")
require("prototypes.logistic-network.tech")
end

--[[ Construction Robots Check ]]--
if Config.Roboports and Config.ConstructionRobots then 
require("prototypes.construction-robots.entity")
require("prototypes.construction-robots.item")
require("prototypes.construction-robots.recipe")
require("prototypes.construction-robots.tech")
end

--[[ Logistic Robots Check ]]--
if Config.Roboports and Config.LogisticRobots then 
require("prototypes.logistic-robots.entity")
require("prototypes.logistic-robots.item")
require("prototypes.logistic-robots.recipe")
require("prototypes.logistic-robots.tech")
end

--[[ Inserters Check ]]--
if Config.Inserters then 
require("prototypes.inserters.normal-inserter-entity")
require("prototypes.inserters.normal-inserter-item")
--require("prototypes.inserters.normal-inserter-recipe")
require("prototypes.inserters.smart-inserter-entity")
require("prototypes.inserters.smart-inserter-item")
require("prototypes.inserters.smart-inserter-recipe")
require("prototypes.inserters.inserter-tech")
end

--[[ Super Inserters Check ]]--
if Config.Inserters and Config.SuperInserters then 
require("prototypes.inserters.super-inserter-entity")
require("prototypes.inserters.super-inserter-item")
require("prototypes.inserters.super-inserter-recipe")
require("prototypes.inserters.super-inserter-tech")
end

--[[ Modules Check ]]--
if Config.Modules then 
require("prototypes.modules.item")
require("prototypes.modules.recipe")
require("prototypes.modules.tech")
end

--[[ Assembling Machines Check ]]--
if Config.AssemblingMachines then 
require("prototypes.assembling-machines.entity")
require("prototypes.assembling-machines.item")
require("prototypes.assembling-machines.recipe")
require("prototypes.assembling-machines.tech")
end

--[[ Armored Car Check ]]--
if Config.ArmoredCar then 
require("prototypes.cars.entity")
require("prototypes.cars.item")
require("prototypes.cars.recipe")
require("prototypes.cars.tech")
end

--[[ Steel Furnaces Check ]]--
if Config.SteelFurnaces then 
require("prototypes.steel-furnaces.entity")
require("prototypes.steel-furnaces.item")
require("prototypes.steel-furnaces.recipe")
require("prototypes.steel-furnaces.tech")
end

--[[ Electric Furnaces Check ]]--
if Config.ElectricFurnaces and Config.SteelFurnaces then 
require("prototypes.electric-furnaces.entity")
require("prototypes.electric-furnaces.item")
require("prototypes.electric-furnaces.recipe")
table.insert(data.raw["technology"]["advanced-material-processing-3"].effects,{type = "unlock-recipe",recipe = "electric-furnace-mk2"})
table.insert(data.raw["technology"]["advanced-material-processing-4"].effects,{type = "unlock-recipe",recipe = "electric-furnace-mk3"})
table.insert(data.raw["technology"]["advanced-material-processing-5"].effects,{type = "unlock-recipe",recipe = "electric-furnace-mk4"})
table.insert(data.raw["technology"]["advanced-material-processing-6"].effects,{type = "unlock-recipe",recipe = "electric-furnace-mk5"})
end

--[[ Mining Drills Check ]]--
if Config.MiningDrills then 
require("prototypes.mining-drills.entity")
require("prototypes.mining-drills.item")
require("prototypes.mining-drills.recipe")
require("prototypes.mining-drills.tech")
end

--[[ Offshore Pumps Check ]]--
if Config.OffshorePumps then 
require("prototypes.offshore-pumps.entity")
require("prototypes.offshore-pumps.item")
require("prototypes.offshore-pumps.recipe")
require("prototypes.offshore-pumps.tech")
end

--[[ Small Pumps Check ]]--
if Config.OffshorePumps and Config.SmallPumps then 
require("prototypes.small-pumps.entity")
require("prototypes.small-pumps.item")
require("prototypes.small-pumps.recipe")
table.insert(data.raw["technology"]["pump-1"].effects,{type = "unlock-recipe",recipe = "small-pump-mk2"})
table.insert(data.raw["technology"]["pump-2"].effects,{type = "unlock-recipe",recipe = "small-pump-mk3"})
table.insert(data.raw["technology"]["pump-3"].effects,{type = "unlock-recipe",recipe = "small-pump-mk4"})
table.insert(data.raw["technology"]["pump-4"].effects,{type = "unlock-recipe",recipe = "small-pump-mk5"})
end

--[[ Transport Belt Check ]]--
if Config.TransportBelts then 
require("prototypes.transport-belts.entity")
require("prototypes.transport-belts.item")
require("prototypes.transport-belts.recipe")
require("prototypes.transport-belts.tech")
data.raw["transport-belt-to-ground"]["basic-transport-belt-to-ground"].max_distance = 10
data.raw["transport-belt-to-ground"]["fast-transport-belt-to-ground"].max_distance = 20
data.raw["transport-belt-to-ground"]["express-transport-belt-to-ground"].max_distance = 30
end

--[[ Pipes Check ]]--
if Config.Pipes then 
require("prototypes.pipes.pipes-entity")
require("prototypes.pipes.pipes-item")
require("prototypes.pipes.pipes-recipe")
require("prototypes.pipes.pipes-to-ground-entity")
require("prototypes.pipes.pipes-to-ground-item")
require("prototypes.pipes.pipes-to-ground-recipe")
table.insert(data.raw["technology"]["logistics-2"].effects,{type = "unlock-recipe",recipe = "pipe-mk2"})
table.insert(data.raw["technology"]["logistics-2"].effects,{type = "unlock-recipe",recipe = "pipe-to-ground-mk2"})
table.insert(data.raw["technology"]["logistics-3"].effects,{type = "unlock-recipe",recipe = "pipe-mk3"})
table.insert(data.raw["technology"]["logistics-3"].effects,{type = "unlock-recipe",recipe = "pipe-to-ground-mk3"})
if Config.TransportBelts then
table.insert(data.raw["technology"]["logistics-4"].effects,{type = "unlock-recipe",recipe = "pipe-mk4"})
table.insert(data.raw["technology"]["logistics-4"].effects,{type = "unlock-recipe",recipe = "pipe-to-ground-mk4"})
table.insert(data.raw["technology"]["logistics-5"].effects,{type = "unlock-recipe",recipe = "pipe-mk5"})
table.insert(data.raw["technology"]["logistics-5"].effects,{type = "unlock-recipe",recipe = "pipe-to-ground-mk5"})
end
end

--[[ Radars Check ]]--
if Config.Radars then 
require("prototypes.radars.entity")
require("prototypes.radars.item")
require("prototypes.radars.recipe")
require("prototypes.radars.tech")
end

--[[ Armored Train Check ]]--
if Config.ArmoredTrain then 
require("prototypes.trains.armored-entity")
require("prototypes.trains.armored-item")
require("prototypes.trains.armored-recipe")
require("prototypes.trains.armored-tech")
end

--[[ High Speed Train Check ]]--
if Config.HighSpeedTrain then 
require("prototypes.trains.speed-entity")
require("prototypes.trains.speed-item")
require("prototypes.trains.speed-recipe")
require("prototypes.trains.speed-tech")
end

--[[ Storage Tanks Check ]]--
if Config.StorageTanks then 
require("prototypes.storage-tanks.entity")
require("prototypes.storage-tanks.item")
require("prototypes.storage-tanks.recipe")
require("prototypes.storage-tanks.tech")
end

--[[ Large Chests Check ]]--
if Config.LargeChests then 
require("prototypes.chests.chest-entity")
require("prototypes.chests.chest-item")
require("prototypes.chests.chest-recipe")
require("prototypes.chests.chest-tech")
end

--[[ Large Logistic Chests Check ]]--
if Config.LargeLogisticChests and Config.LargeChests then 
require("prototypes.chests.logistic-chest-entity")
require("prototypes.chests.logistic-chest-item")
require("prototypes.chests.logistic-chest-recipe")
require("prototypes.chests.logistic-chest-tech")
end

--[[ Tools Check ]]--
if Config.Tools then 
require("prototypes.tools.item")
require("prototypes.tools.recipe")
require("prototypes.tools.tech")
end

--[[ Beacons Check ]]--
if Config.Beacons then
require("prototypes.beacons.entity")
require("prototypes.beacons.item")
require("prototypes.beacons.recipe")
require("prototypes.beacons.tech")
end

--[[ Lamps Check ]]--
if Config.Lamps then
require("prototypes.lamps.entity")
require("prototypes.lamps.item")
require("prototypes.lamps.recipe")
require("prototypes.lamps.tech")
end

--[[ Oil_Upgrades Check ]]--
if Config.Oil_Upgrades then
require("prototypes.oil-refinery.entity")
require("prototypes.oil-refinery.item")
require("prototypes.oil-refinery.recipe")
require("prototypes.chemical-plants.entity")
require("prototypes.chemical-plants.item")
require("prototypes.chemical-plants.recipe")
require("prototypes.chemical-plants.tech")
end