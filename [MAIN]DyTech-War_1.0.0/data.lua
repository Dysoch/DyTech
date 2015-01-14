-- Welcome to the data.lua file of DyTech-War!
-- Here you can switch any module on or off!
-- The general rule is: TRUE is on, FALSE is off!

--[[ Enemies ]]--
-- Here you can disable or enable the enemies.
-- Base edit means the change in the spawners, to make them stronger!
EnemiesBaseEdit = true
Biters = true
Spitters = true

--[[ Weapons and Ammo ]]--
-- Here are all forms of weapons and ammo!
Ammo = true
SniperRifle = true
LaserWeapons = true
-- NOTE: Sniper Rifle and Laser Weapons REQUIRES Ammo to be enabled!!!

--[[ Turrets ]]--
-- Here you can find all kinds of Turrets!
SniperTurret = true
-- NOTE: Sniper Turret REQUIRES Sniper Rifle to be enabled!!!

--[[ DO NOT TOUCH THE REST BELOW THIS LINE!!!! ]]--
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------

--[[ EnemiesBaseEdit Check ]]--
if EnemiesBaseEdit then 
require("prototypes.enemies.base-edit")
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

--[[ Enemies Loot Check ]]--
if Spitters or Biters then 
require("prototypes.enemies.item")
require("prototypes.enemies.recipe")
end

--[[ Ammo Check ]]--
if Ammo then 
require("prototypes.ammo.item")
require("prototypes.ammo.recipe")
end

--[[ Sniper Rifle Check ]]--
if SniperRifle and Ammo then 
require("prototypes.gun-sniper.item")
require("prototypes.gun-sniper.recipe")
require("prototypes.gun-sniper.tech")
end

--[[ Laser Weapons Check ]]--
if LaserWeapons and Ammo then 
require("prototypes.gun-laser.item")
require("prototypes.gun-laser.recipe")
require("prototypes.gun-laser.tech")
end

--[[ Sniper Turret Check ]]--
if SniperTurret and SniperRifle then 
require("prototypes.turrets-gun.entity")
require("prototypes.turrets-gun.item")
require("prototypes.turrets-gun.recipe")
require("prototypes.turrets-gun.tech")
end

--[[ Flamethrower Turret Check ]]--
if FlameThrowerTurret then 
require("prototypes.turrets-flame.entity")
require("prototypes.turrets-flame.item")
require("prototypes.turrets-flame.recipe")
require("prototypes.turrets-flame.tech")
end