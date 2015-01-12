-- Welcome to the data.lua file of DyTech-Machine!
-- Here you can switch any module on or off!
-- The general rule is: TRUE is on, FALSE is off!

[[ Pipe Related Things ]]
-- Here are all pipe related stuff, such as pipes, pumps and Pumpjacks.
Pumpjacks = true
Pipes = true
SmallPumps = true
OffshorePumps = true

[[ Modules ]]
-- Here is the toggle for the Modules (ingame modules)
Modules = true

[[ Logistic Related Things ]]
-- Here are all logistic related stuff, such as robots and inserters.
Roboports = true
ConstructionRobots = true
LogisticRobots = true
Inserters = true
SuperInserters = true
-- NOTE: Construction and Logistic Robots REQUIRE Roboports to be enabled!!!!!
-- NOTE: Super Inserters REQUIRES Inserters to be enabled!!!!!

[[ DO NOT TOUCH THE REST BELOW THIS LINE!!!! ]]
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------

[[ Pumpjacks Check ]]
if Pumpjacks then 
require("prototypes.pumpjacks.entity")
require("prototypes.pumpjacks.item")
require("prototypes.pumpjacks.recipe")
require("prototypes.pumpjacks.tech")
end

[[ Roboports Check ]]
if Roboports then 
require("prototypes.logistic-network.chest-entity")
require("prototypes.logistic-network.chest-item")
require("prototypes.logistic-network.chest-recipe")
require("prototypes.logistic-network.roboport-entity")
require("prototypes.logistic-network.roboport-item")
require("prototypes.logistic-network.roboport-recipe")
require("prototypes.logistic-network.tech")
end

[[ Construction Robots Check ]]
if Roboports and ConstructionRobots then 
require("prototypes.construction-robots.entity")
require("prototypes.construction-robots.item")
require("prototypes.construction-robots.recipe")
require("prototypes.construction-robots.tech")
end

[[ Inserters Check ]]
if Inserters then 
require("prototypes.inserters.normal-inserter-entity")
require("prototypes.inserters.normal-inserter-item")
require("prototypes.inserters.normal-inserter-recipe")
require("prototypes.inserters.smart-inserter-entity")
require("prototypes.inserters.smart-inserter-item")
require("prototypes.inserters.smart-inserter-recipe")
require("prototypes.inserters.inserter-tech")
end

[[ Super Inserters Check ]]
if Inserters and SuperInserters then 
require("prototypes.inserters.super-inserter-entity")
require("prototypes.inserters.super-inserter-item")
require("prototypes.inserters.super-inserter-recipe")
require("prototypes.inserters.super-inserter-tech")
end

[[ Modules Check ]]
if Modules then 
require("prototypes.modules.item")
require("prototypes.modules.recipe")
require("prototypes.modules.tech")
end