-- Welcome to the data.lua file of DyTech-Machine!
-- Here you can switch any (sub)module on or off!
-- The general rule is: TRUE is on, FALSE is off!

--[[ Pipe Related Things ]]--
-- Here are all pipe related stuff, such as pipes, pumps and Pumpjacks.
Pumpjacks = true
Pipes = true
OffshorePumps = true
SmallPumps = true
StorageTanks = true
-- NOTE: Small Pumps REQUIRES Offshore Pumps to be enabled!!!!!
-- NOTE: If Transport Belts is disabled, Pipe mk 4 and 5 are disabled!
-- NOTE: If you are using DyTech-Power, i advise you to enable Pipes and both Pumps!
-- This makes it easier to use the higher tier Steam Engines

--[[ Modules ]]--
-- Here is the toggle for the Modules (ingame modules)
Modules = true

--[[ Logistic Related Things ]]--
-- Here are all logistic related stuff, such as robots and inserters.
Roboports = true
ConstructionRobots = true
LogisticRobots = true
Inserters = true
SuperInserters = true
TransportBelts = true
LargeChests = true
LargeLogisticChests = true
-- NOTE: Construction and Logistic Robots REQUIRES Roboports to be enabled!!!!!
-- NOTE: Super Inserters REQUIRES Inserters to be enabled!!!!!
-- NOTE: Large Logistic Chests REQUIRES Large Chests to be enabled!!!!!

--[[ Machines ]]--
-- Here are all machines, be that furnaces or assembling machines!
AssemblingMachines = true
MiningDrills = true
SteelFurnaces = true
ElectricFurnaces = true
Radars = true
-- NOTE: Electric Furnaces REQUIRES Steel Furnaces to be enabled!!!!!

--[[ Transportation ]]--
-- Here are all transportation goods, such as Cars or Trains!
ArmoredCar = true
ArmoredTrain = true
HighSpeedTrain = true

--[[ Tools ]]--
-- These are the tools of the game. There are currently 7!
Tools = true

--[[ DO NOT TOUCH THE REST BELOW THIS LINE!!!! ]]--
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------

--[[ Pumpjacks Check ]]--
if Pumpjacks then 
require("prototypes.pumpjacks.entity")
require("prototypes.pumpjacks.item")
require("prototypes.pumpjacks.recipe")
require("prototypes.pumpjacks.tech")
end

--[[ Roboports Check ]]--
if Roboports then 
require("prototypes.logistic-network.chest-entity")
require("prototypes.logistic-network.chest-item")
require("prototypes.logistic-network.chest-recipe")
require("prototypes.logistic-network.roboport-entity")
require("prototypes.logistic-network.roboport-item")
require("prototypes.logistic-network.roboport-recipe")
require("prototypes.logistic-network.tech")
end

--[[ Construction Robots Check ]]--
if Roboports and ConstructionRobots then 
require("prototypes.construction-robots.entity")
require("prototypes.construction-robots.item")
require("prototypes.construction-robots.recipe")
require("prototypes.construction-robots.tech")
end

--[[ Logistic Robots Check ]]--
if Roboports and LogisticRobots then 
require("prototypes.logistic-robots.entity")
require("prototypes.logistic-robots.item")
require("prototypes.logistic-robots.recipe")
require("prototypes.logistic-robots.tech")
end

--[[ Inserters Check ]]--
if Inserters then 
require("prototypes.inserters.normal-inserter-entity")
require("prototypes.inserters.normal-inserter-item")
--require("prototypes.inserters.normal-inserter-recipe")
require("prototypes.inserters.smart-inserter-entity")
require("prototypes.inserters.smart-inserter-item")
require("prototypes.inserters.smart-inserter-recipe")
require("prototypes.inserters.inserter-tech")
end

--[[ Super Inserters Check ]]--
if Inserters and SuperInserters then 
require("prototypes.inserters.super-inserter-entity")
require("prototypes.inserters.super-inserter-item")
require("prototypes.inserters.super-inserter-recipe")
require("prototypes.inserters.super-inserter-tech")
end

--[[ Modules Check ]]--
if Modules then 
require("prototypes.modules.item")
require("prototypes.modules.recipe")
require("prototypes.modules.tech")
end

--[[ Assembling Machines Check ]]--
if AssemblingMachines then 
require("prototypes.assembling-machines.entity")
require("prototypes.assembling-machines.item")
require("prototypes.assembling-machines.recipe")
require("prototypes.assembling-machines.tech")
end

--[[ Armored Car Check ]]--
if ArmoredCar then 
require("prototypes.cars.entity")
require("prototypes.cars.item")
require("prototypes.cars.recipe")
require("prototypes.cars.tech")
end

--[[ Steel Furnaces Check ]]--
if SteelFurnaces then 
require("prototypes.steel-furnaces.entity")
require("prototypes.steel-furnaces.item")
require("prototypes.steel-furnaces.recipe")
require("prototypes.steel-furnaces.tech")
end

--[[ Electric Furnaces Check ]]--
if ElectricFurnaces and SteelFurnaces then 
require("prototypes.electric-furnaces.entity")
require("prototypes.electric-furnaces.item")
require("prototypes.electric-furnaces.recipe")
table.insert(data.raw["technology"]["advanced-material-processing-3"].effects,{type = "unlock-recipe",recipe = "electric-furnace-mk2"})
table.insert(data.raw["technology"]["advanced-material-processing-4"].effects,{type = "unlock-recipe",recipe = "electric-furnace-mk3"})
table.insert(data.raw["technology"]["advanced-material-processing-5"].effects,{type = "unlock-recipe",recipe = "electric-furnace-mk4"})
table.insert(data.raw["technology"]["advanced-material-processing-6"].effects,{type = "unlock-recipe",recipe = "electric-furnace-mk5"})
end

--[[ Mining Drills Check ]]--
if MiningDrills then 
require("prototypes.mining-drills.entity")
require("prototypes.mining-drills.item")
require("prototypes.mining-drills.recipe")
require("prototypes.mining-drills.tech")
end

--[[ Offshore Pumps Check ]]--
if OffshorePumps then 
require("prototypes.offshore-pumps.entity")
require("prototypes.offshore-pumps.item")
require("prototypes.offshore-pumps.recipe")
require("prototypes.offshore-pumps.tech")
end

--[[ Small Pumps Check ]]--
if OffshorePumps and SmallPumps then 
require("prototypes.small-pumps.entity")
require("prototypes.small-pumps.item")
require("prototypes.small-pumps.recipe")
table.insert(data.raw["technology"]["pump-1"].effects,{type = "unlock-recipe",recipe = "small-pump-mk2"})
table.insert(data.raw["technology"]["pump-2"].effects,{type = "unlock-recipe",recipe = "small-pump-mk3"})
table.insert(data.raw["technology"]["pump-3"].effects,{type = "unlock-recipe",recipe = "small-pump-mk4"})
table.insert(data.raw["technology"]["pump-4"].effects,{type = "unlock-recipe",recipe = "small-pump-mk5"})
end

--[[ Transport Belt Check ]]--
if TransportBelts then 
require("prototypes.transport-belts.entity")
require("prototypes.transport-belts.item")
require("prototypes.transport-belts.recipe")
require("prototypes.transport-belts.tech")
end

--[[ Pipes Check ]]--
if Pipes then 
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
if TransportBelts then
table.insert(data.raw["technology"]["logistics-4"].effects,{type = "unlock-recipe",recipe = "pipe-mk4"})
table.insert(data.raw["technology"]["logistics-4"].effects,{type = "unlock-recipe",recipe = "pipe-to-ground-mk4"})
table.insert(data.raw["technology"]["logistics-5"].effects,{type = "unlock-recipe",recipe = "pipe-mk5"})
table.insert(data.raw["technology"]["logistics-5"].effects,{type = "unlock-recipe",recipe = "pipe-to-ground-mk5"})
end
end

--[[ Radars Check ]]--
if Radars then 
require("prototypes.radars.entity")
require("prototypes.radars.item")
require("prototypes.radars.recipe")
require("prototypes.radars.tech")
end

--[[ Armored Train Check ]]--
if ArmoredTrain then 
require("prototypes.trains.armored-entity")
require("prototypes.trains.armored-item")
require("prototypes.trains.armored-recipe")
require("prototypes.trains.armored-tech")
end

--[[ High Speed Train Check ]]--
if HighSpeedTrain then 
require("prototypes.trains.speed-entity")
require("prototypes.trains.speed-item")
require("prototypes.trains.speed-recipe")
require("prototypes.trains.speed-tech")
end

--[[ Storage Tanks Check ]]--
if StorageTanks then 
require("prototypes.storage-tanks.entity")
require("prototypes.storage-tanks.item")
require("prototypes.storage-tanks.recipe")
require("prototypes.storage-tanks.tech")
end

--[[ Large Chests Check ]]--
if LargeChests then 
require("prototypes.chests.chest-entity")
require("prototypes.chests.chest-item")
require("prototypes.chests.chest-recipe")
require("prototypes.chests.chest-tech")
end

--[[ Large Logistic Chests Check ]]--
if LargeLogisticChests and LargeChests then 
require("prototypes.chests.logistic-chest-entity")
require("prototypes.chests.logistic-chest-item")
require("prototypes.chests.logistic-chest-recipe")
require("prototypes.chests.logistic-chest-tech")
end

--[[ Tools Check ]]--
if Tools then 
require("prototypes.tools.item")
require("prototypes.tools.recipe")
require("prototypes.tools.tech")
end