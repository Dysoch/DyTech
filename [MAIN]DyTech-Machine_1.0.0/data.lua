-- Welcome to the data.lua file of DyTech-Machine!
-- Here you can switch any module on or off!
-- The general rule is: TRUE is on, FALSE is off!

--[[ Pumpjacks ]]--
-- Don't like the Pumpjacks? Here you can switch them off!
Pumpjacks = true

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