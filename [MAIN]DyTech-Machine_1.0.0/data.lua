-- Welcome to the data.lua file of DyTech-Machine!
-- Here you can switch any module on or off!
-- The general rule is: TRUE is on, FALSE is off!

--[[ Pipe Related Things ]]--
-- Here are all pipe related stuff, such as pipes, pumps and Pumpjacks.
Pumpjacks = true
Pipes = true
SmallPumps = true
OffshorePumps = true

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
-- NOTE: Construction and Logistic Robots REQUIRES Roboports to be enabled!!!!!
-- NOTE: Super Inserters REQUIRES Inserters to be enabled!!!!!

--[[ Machines ]]--
-- Here are all machines, be that furnaces or assembling machines!
AssemblingMachines = true
MiningDrills = true
SteelFurnaces = true
ElectricFurnaces = true
-- NOTE: Electric Furnaces REQUIRES Steel Furnaces to be enabled!!!!!

--[[ Transportation ]]--
-- Here are all transportation goods, such as Cars or Trains!
ArmoredCar = true

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
require("prototypes.inserters.normal-inserter-recipe")
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