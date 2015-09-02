Config = {} -- DONT TOCUH THIS!
-- Welcome to the config file of DyTech-Machine!
-- Here you can switch any (sub)module on or off!
-- And change anything!
-- The general rule is: TRUE is on, FALSE is off!

-- Radar Scan Distances --
-- This is the scan distance of the radars. The active reveal distance is the scan Distance divided by 5
RadarMk2ScanDistance = 20 --Default=20
RadarMk3ScanDistance = 30 --Default=30
RadarMk4ScanDistance = 40 --Default=40
RadarMk5ScanDistance = 50 --Default=50



-- SWITCHES!!!! --
--[[ Pipe Related Things ]]--
-- Here are all pipe related stuff, such as pipes, pumps and Pumpjacks.
Config.Pumpjacks = true
Config.Pipes = true
Config.OffshorePumps = true
Config.SmallPumps = true
Config.StorageTanks = true
-- NOTE: Small Pumps REQUIRES Offshore Pumps to be enabled!!!!!
-- NOTE: If Transport Belts is disabled, Pipe mk 4 and 5 are disabled!
-- NOTE: If you are using DyTech-Power, i advise you to enable Pipes and both Pumps!
-- This makes it easier to use the higher tier Steam Engines

--[[ Modules ]]--
-- Here is the toggle for the Modules (ingame modules)
Config.Modules = true

--[[ Logistic Related Things ]]--
-- Here are all logistic related stuff, such as robots and inserters.
Config.Roboports = true
Config.ConstructionRobots = true
Config.LogisticRobots = true
Config.Inserters = true
Config.SuperInserters = true
Config.TransportBelts = true
Config.LargeChests = true
Config.LargeLogisticChests = true
-- NOTE: Construction and Logistic Robots REQUIRES Roboports to be enabled!!!!!
-- NOTE: Super Inserters REQUIRES Inserters to be enabled!!!!!
-- NOTE: Large Logistic Chests REQUIRES Large Chests to be enabled!!!!!

--[[ Machines ]]--
-- Here are all machines, be that furnaces or assembling machines!
Config.AssemblingMachines = true
Config.MiningDrills = true
Config.SteelFurnaces = true
Config.ElectricFurnaces = true
Config.Radars = true
Config.Beacons = true
Config.Lamps = true
Config.Oil_Upgrades = true
-- Oil_Upgrades gives more chemical plants and oil refineries!
-- NOTE: Electric Furnaces REQUIRES Steel Furnaces to be enabled!!!!!

--[[ Transportation ]]--
-- Here are all transportation goods, such as Cars or Trains!
Config.ArmoredCar = true
Config.ArmoredTrain = true
Config.HighSpeedTrain = true

--[[ Tools ]]--
-- These are the tools of the game. There are currently 7!
Config.Tools = true
