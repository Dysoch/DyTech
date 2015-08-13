Config = {} -- DONT TOCUH THIS!
-- Welcome to the config file of DyTech-War!
-- Here you can switch any module on or off!
-- The general rule is: TRUE is on, FALSE is off!

--[[ Difficulty ]]
Config.Difficulty = 5
-- Difficulty 1 = EASY
-- Difficulty 2 = MEDIUM (difficulty of old DyTech!)
-- Difficulty 3 = HARD
-- Difficulty 4 = INSANE
-- Difficulty 5 = EXTREME DEATH MODE (How long can you last? :D )
-- Input anything other then those 5 numbers will result in an error at start of game!

--[[ Toggles ]]--

--[[ Enemies ]]--
-- Here you can disable or enable the enemies.
-- Base edit means the change in the spawners, to make them stronger!
Config.EnemiesBaseEdit = true
Config.Biters = true
Config.Spitters = true
Config.Dyzilla_Spawner = true
Config.Dyzilla_Spawner_Supplies = false
-- CAREFULL!!! Dyzilla spawner is incredible HARD, even on easy difficulty!
-- Supplies are only given on Difficulty 5 and with Dyzilla active!

--[[ Weapons and Ammo ]]--
-- Here are all forms of weapons and ammo!
Config.Ammo = true
Config.SpecialAmmo = true
Config.SniperRifle = true
Config.LaserWeapons = true
Config.Tanks = true
Config.Equipment = true
Config.Armor = true
Config.Experimental_Feature = false
-- NOTE: Sniper Rifle and Laser Weapons REQUIRES Ammo to be enabled!!!!!
-- NOTE: Tanks REQUIRES Laser Rifle to be enabled!!!!!
-- NOTE: SpecialAmmo REQUIRES the following to be active: PoisonCapsules, AcidCapsules, NapalmCapsules, RadiationCapsules, SlowdownCapsules, Ammo, GunTurret, SniperRifle!!!!
-- NOTE: Experimental Feature currently contains collisions for projectiles! ALL OF THEM! this is however, highly experimental, and might break your turrets behind the walls! Enable on your own risk!

--[[ Capsules ]]--
-- Here are all different Capsules:
Config.CombatRobots = true
Config.PoisonCapsules = true
Config.AcidCapsules = true
Config.NapalmCapsules = true
Config.RadiationCapsules = true
Config.SlowdownCapsules = true
Config.Grenades = true

--[[ Defences ]]--
-- Here you can find all kinds of defensive items!
Config.GunTurret = true
Config.FlameThrowerTurret = true
Config.LaserTurret = true
Config.Walls = true
Config.Gates = true
-- NOTE: Gun Turret REQUIRES Sniper Rifle to be enabled!!!!!
-- NOTE: Gates REQUIRES Walls to be enabled!!!!!

-- [[ General Config Options ]]--

--[[ Enemies Health ]]--
Berserker_Health = 1000 --Default = 1000
Elder_Health = 750 --Default = 750
King_Health = 5000 --Default = 5000
Queen_Health = 1000 --Default = 1000
Biter_Modifier = 1.5
-- Biter Modifier is an option to have Biters have more health then Spitters. Default = 1.5 times the health of the Spitters! (so 50% more!)

Config.Evolution_Reduced = true
-- This will halve the evolution factors, meaning you have twice as long till stronger enemies appear. This is leveled by difficulty