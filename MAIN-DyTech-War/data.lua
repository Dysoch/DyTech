require "config"

--[[ Mandatory Stuff ]]--
require("prototypes.functions.projectiles")
require("prototypes.damage-type")

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
require("prototypes.enemies.projectiles")
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
if GunTurret and SniperRifle and Ammo then 
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

--[[ Laser Turret Check ]]--
if LaserTurret then 
require("prototypes.turrets-laser.entity")
require("prototypes.turrets-laser.item")
require("prototypes.turrets-laser.recipe")
require("prototypes.turrets-laser.tech")
require("prototypes.turrets-laser.tech-upgrade")
end

--[[ Capsules Check ]]--
if CombatRobots then 
require("prototypes.capsules.robots.entity")
require("prototypes.capsules.robots.item")
require("prototypes.capsules.robots.projectiles")
require("prototypes.capsules.robots.recipe")
require("prototypes.capsules.robots.tech")
end

if PoisonCapsules then 
require("prototypes.capsules.poison.entity")
require("prototypes.capsules.poison.item")
require("prototypes.capsules.poison.projectiles")
require("prototypes.capsules.poison.recipe")
require("prototypes.capsules.poison.tech")
end

if AcidCapsules then 
require("prototypes.capsules.acid.entity")
require("prototypes.capsules.acid.item")
require("prototypes.capsules.acid.projectiles")
require("prototypes.capsules.acid.recipe")
require("prototypes.capsules.acid.tech")
end

if SlowdownCapsules then 
require("prototypes.capsules.slowdown.entity")
require("prototypes.capsules.slowdown.item")
require("prototypes.capsules.slowdown.projectiles")
require("prototypes.capsules.slowdown.recipe")
require("prototypes.capsules.slowdown.tech")
end

if NapalmCapsules then 
require("prototypes.capsules.napalm.entity")
require("prototypes.capsules.napalm.item")
require("prototypes.capsules.napalm.projectiles")
require("prototypes.capsules.napalm.recipe")
require("prototypes.capsules.napalm.tech")
require("prototypes.capsules.firestorm.entity")
require("prototypes.capsules.firestorm.item")
require("prototypes.capsules.firestorm.projectiles")
require("prototypes.capsules.firestorm.recipe")
require("prototypes.capsules.firestorm.tech")
end

if RadiationCapsules then 
require("prototypes.capsules.radiation.entity")
require("prototypes.capsules.radiation.item")
require("prototypes.capsules.radiation.projectiles")
require("prototypes.capsules.radiation.recipe")
require("prototypes.capsules.radiation.tech")
end

if Grenades then 
require("prototypes.capsules.grenades.item")
require("prototypes.capsules.grenades.projectiles")
require("prototypes.capsules.grenades.recipe")
require("prototypes.capsules.grenades.tech")
end

--[[ Tanks Check ]]--
if Tanks and LaserWeapons then 
require("prototypes.tanks.entity")
require("prototypes.tanks.item")
require("prototypes.tanks.recipe")
require("prototypes.tanks.tech")
end

--[[ Walls Check ]]--
if Walls then 
require("prototypes.walls.entity")
require("prototypes.walls.item")
require("prototypes.walls.recipe")
require("prototypes.walls.tech")
end

--[[ Gates Check ]]--
if Walls and Gates then 
require("prototypes.gates.entity")
require("prototypes.gates.item")
require("prototypes.gates.recipe")
require("prototypes.walls.tech")
end

--[[ Equipment Check ]]--
if Equipment then 
require("prototypes.equipment.entity")
require("prototypes.equipment.item")
require("prototypes.equipment.recipe")
require("prototypes.equipment.tech")
end

--[[ Armor Check ]]--
if Armor then 
require("prototypes.armor.item")
require("prototypes.armor.recipe")
require("prototypes.armor.tech")
end