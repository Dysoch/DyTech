require "config"

--[[ Mandatory Stuff ]]--
require("prototypes.functions.projectiles")

--[[ EnemiesBaseEdit Check ]]--
if Config.EnemiesBaseEdit then 
require("prototypes.enemies.base-edit")
end

--[[ Biters Check ]]--
if Config.Biters then 
require("prototypes.enemies.biters")
require("prototypes.enemies.biters-edit")
end

--[[ Spitters Check ]]--
if Config.Spitters then 
require("prototypes.enemies.spitters")
require("prototypes.enemies.spitters-edit")
end

--[[ Enemies Loot Check ]]--
if Config.Spitters or Config.Biters then 
require("prototypes.enemies.item")
require("prototypes.enemies.projectiles")
require("prototypes.enemies.recipe")
end

--[[ Dyzilla Check ]]--
if Config.Dyzilla_Spawner then
require("prototypes.dyzilla.spawner")
require("prototypes.dyzilla.units")
end

--[[ Ammo Check ]]--
if Config.Ammo then 
require("prototypes.ammo.item")
require("prototypes.ammo.recipe")
end

--[[ Sniper Rifle Check ]]--
if Config.SniperRifle and Config.Ammo then 
require("prototypes.gun-sniper.item")
require("prototypes.gun-sniper.recipe")
require("prototypes.gun-sniper.tech")
end

--[[ Laser Weapons Check ]]--
if Config.LaserWeapons and Config.Ammo then 
require("prototypes.gun-laser.item")
require("prototypes.gun-laser.recipe")
require("prototypes.gun-laser.tech")
end

--[[ Flamethrower Turret Check ]]--
if Config.FlameThrowerTurret then 
require("prototypes.turrets-flame.entity")
require("prototypes.turrets-flame.item")
require("prototypes.turrets-flame.recipe")
require("prototypes.turrets-flame.tech")
end

--[[ Laser Turret Check ]]--
if Config.LaserTurret then 
require("prototypes.turrets-laser.entity")
require("prototypes.turrets-laser.item")
require("prototypes.turrets-laser.recipe")
require("prototypes.turrets-laser.tech")
require("prototypes.turrets-laser.tech-upgrade")
end

--[[ Capsules Check ]]--
if Config.CombatRobots then 
require("prototypes.capsules.robots.beams")
require("prototypes.capsules.robots.entity")
require("prototypes.capsules.robots.item")
require("prototypes.capsules.robots.projectiles")
require("prototypes.capsules.robots.recipe")
require("prototypes.capsules.robots.tech")
end

if Config.PoisonCapsules then 
require("prototypes.capsules.poison.entity")
require("prototypes.capsules.poison.item")
require("prototypes.capsules.poison.projectiles")
require("prototypes.capsules.poison.recipe")
require("prototypes.capsules.poison.tech")
end

if Config.AcidCapsules then 
require("prototypes.capsules.acid.entity")
require("prototypes.capsules.acid.item")
require("prototypes.capsules.acid.projectiles")
require("prototypes.capsules.acid.recipe")
require("prototypes.capsules.acid.tech")
end

if Config.SlowdownCapsules then 
require("prototypes.capsules.slowdown.entity")
require("prototypes.capsules.slowdown.item")
require("prototypes.capsules.slowdown.projectiles")
require("prototypes.capsules.slowdown.recipe")
require("prototypes.capsules.slowdown.tech")
end

if Config.NapalmCapsules then 
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

if Config.RadiationCapsules and Config.AcidCapsules and Config.PoisonCapsules then 
require("prototypes.capsules.radiation.entity")
require("prototypes.capsules.radiation.item")
require("prototypes.capsules.radiation.projectiles")
require("prototypes.capsules.radiation.recipe")
require("prototypes.capsules.radiation.tech")
end

if Config.Grenades then 
require("prototypes.capsules.grenades.item")
require("prototypes.capsules.grenades.projectiles")
require("prototypes.capsules.grenades.recipe")
require("prototypes.capsules.grenades.tech")
end

--[[ Tanks Check ]]--
if Config.Tanks and Config.LaserWeapons then 
require("prototypes.tanks.entity")
require("prototypes.tanks.item")
require("prototypes.tanks.recipe")
require("prototypes.tanks.tech")
end

--[[ Walls Check ]]--
if Config.Walls then 
require("prototypes.walls.entity")
require("prototypes.walls.item")
require("prototypes.walls.recipe")
require("prototypes.walls.tech")
end

--[[ Gates Check ]]--
if Config.Walls and Config.Gates then 
require("prototypes.gates.entity")
require("prototypes.gates.item")
require("prototypes.gates.recipe")
require("prototypes.gates.tech")
end

--[[ Equipment Check ]]--
if Config.Equipment then 
require("prototypes.equipment.entity")
require("prototypes.equipment.item")
require("prototypes.equipment.recipe")
require("prototypes.equipment.tech")
end

--[[ Armor Check ]]--
if Config.Armor then 
require("prototypes.armor.item")
require("prototypes.armor.recipe")
require("prototypes.armor.tech")
end

--[[ Sniper Turret Check ]]--
if Config.GunTurret and Config.SniperRifle and Config.Ammo then 
require("prototypes.turrets-gun.entity")
require("prototypes.turrets-gun.item")
require("prototypes.turrets-gun.recipe")
require("prototypes.turrets-gun.tech")
if Config.PoisonCapsules and Config.AcidCapsules and Config.NapalmCapsules and Config.RadiationCapsules and Config.SlowdownCapsules and Config.SpecialAmmo then
require("prototypes.turrets-gun.ammo.capsule.item")
require("prototypes.turrets-gun.ammo.capsule.recipe")
require("prototypes.turrets-gun.ammo.capsule.tech")
require("prototypes.turrets-gun.ammo.normal.item")
require("prototypes.turrets-gun.ammo.normal.recipe")
require("prototypes.turrets-gun.ammo.normal.tech")
end
end