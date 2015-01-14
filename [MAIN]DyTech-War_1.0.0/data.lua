-- Welcome to the data.lua file of DyTech-War!
-- Here you can switch any module on or off!
-- The general rule is: TRUE is on, FALSE is off!

--[[ Enemies ]]--
-- Here you can disable or enable the enemies.
-- Base edit means the change in the spawners, to have more units available.
EnemiesBaseEdit = true
Biters = true
Spitters = true

--[[ DO NOT TOUCH THE REST BELOW THIS LINE!!!! ]]--
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------

--[[ EnemiesBaseEdit Check ]]--
if EnemiesBaseEdit then 
require("prototypes.enemies.base-edit")
require("prototypes.enemies.item")
end

--[[ Biters Check ]]--
if Biters then 
require("prototypes.enemies.biters")
require("prototypes.enemies.biters-edit")
end

--[[ Spitters Check ]]--
if Spitters then 
require("prototypes.enemies.spitters")
require("prototypes.enemies.spitters-edit")
end