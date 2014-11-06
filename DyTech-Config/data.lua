-- this is the config mod for DyTech. Here you can edit a lot of the things, like resistances of biters, health of biters, etc
-- It is rather easy to do. It will be seperated per module, and easy to understand.
-- Keep in mind, you dont need this module. This is if you want to change certain things in the Modules.

--[[Master Switches!]]--
-- These switched are here if you mess up, and dont know the normal values of everything.
-- Setting these to true will use the values below,
-- False means that it will not use the values below, and just use their own values!
-- Default is false
Factorio = false
DyTech_Core = false
DyTech_Automation = false
DyTech_Dynamic = false
DyTech_Energy = false
DyTech_Genetics = false
DyTech_Inserters = false
DyTech_Logistic = false
DyTech_Metallurgy = false
DyTech_Modules = false
DyTech_Storage = false
DyTech_Tools = false
DyTech_Transportation = false
DyTech_Warfare = false


--[[Factorio Edits:]]--
-- This will allow you to modify the base game :D
-- The following lines are for the Small Biter
Small_Health = 15 -- default is 15
Small_Biter_Attack_Range = 0.5 -- default is 0.5
Small_Biter_Attack_Damage = 6 -- default is 6

-- The following lines are for the Medium Biter
Medium_Health = 75 -- default is 75
Medium_Biter_Attack_Range = 1.0 -- default is 1.0
Medium_Biter_Attack_Damage = 15 -- default is 15

-- The following lines are for the Big Biter
Big_Health = 375 -- default is 375
Big_Biter_Attack_Range = 1.5 -- default is 1.5
Big_Biter_Attack_Damage = 30 -- default is 30

--[[DyTech-Warfare Edits:]]--
-- In Warfare, the health applies to both the Biter and Spitter (when spitter is released)
-- The following lines are for the Berserker Biter (and Spitter when it is released).
Berserker_Health = 1500 -- default is 1500
Berserker_Biter_Attack_Range = 1.5 -- default is 1.5
Berserker_Biter_Attack_Damage = 60 -- default is 60

-- The following lines are for the Elder Biter (and Spitter when it is released).
Elder_Health = 1000 -- default is 1000
Elder_Biter_Attack_Range = 1.0 -- default is 1.0
Elder_Biter_Attack_Damage = 75 -- default is 75

-- The following lines are for the King Biter (and Spitter when it is released).
King_Health = 10000 -- default is 10000
King_Biter_Attack_Range = 4.5 -- default is 4.5
King_Biter_Attack_Damage = 75 -- default is 75

-- The following lines are for the Queen Biter (and Spitter when it is released).
Queen_Health = 1000  -- default is 1000
Queen_Biter_Attack_Range = 2.0 -- default is 2.0
Queen_Biter_Attack_Damage = 25 -- default is 25

--[[THE ACTUAL EDITS!!! DO NOT TOUCH THE LINES BELOW, KEEP TO THE LINES ABOVE!!!!]]--
--[[Factorio]]--
if data.raw.item["iron-plate"] and Factorio==true then
data.raw["unit"]["small-biter"].max_health = Small_Health
data.raw["unit"]["small-biter"].attack_parameters.range = Small_Biter_Attack_Range
data.raw["unit"]["small-biter"].attack_parameters.ammo_type = make_unit_melee_ammo_type(Small_Biter_Attack_Damage)
data.raw["unit"]["medium-biter"].max_health = Medium_Health
data.raw["unit"]["medium-biter"].attack_parameters.range = Medium_Biter_Attack_Range
data.raw["unit"]["medium-biter"].attack_parameters.ammo_type = make_unit_melee_ammo_type(Medium_Biter_Attack_Damage)
data.raw["unit"]["big-biter"].max_health = Big_Health
data.raw["unit"]["big-biter"].attack_parameters.range = Big_Biter_Attack_Range
data.raw["unit"]["big-biter"].attack_parameters.ammo_type = make_unit_melee_ammo_type(Big_Biter_Attack_Damage)
end
--[[DyTech-Warfare]]--
if data.raw.item["biter-small-corpse"] and DyTech_Warfare==true then
data.raw["unit"]["berserk-biter"].max_health = Berserker_Health
data.raw["unit"]["berserk-biter"].attack_parameters.range = Berserker_Biter_Attack_Range
data.raw["unit"]["berserk-biter"].attack_parameters.ammo_type = make_unit_melee_ammo_type(Berserker_Biter_Attack_Damage)
data.raw["unit"]["elder-biter"].max_health = Elder_Health
data.raw["unit"]["elder-biter"].attack_parameters.range = Elder_Biter_Attack_Range
data.raw["unit"]["elder-biter"].attack_parameters.ammo_type = make_unit_melee_ammo_type(Elder_Biter_Attack_Damage)
data.raw["unit"]["king-biter"].max_health = King_Health
data.raw["unit"]["king-biter"].attack_parameters.range = King_Biter_Attack_Range
data.raw["unit"]["king-biter"].attack_parameters.ammo_type = make_unit_melee_ammo_type(King_Biter_Attack_Damage)
data.raw["unit"]["queen-biter"].max_health = Queen_Health
data.raw["unit"]["queen-biter"].attack_parameters.range = Queen_Biter_Attack_Range
data.raw["unit"]["queen-biter"].attack_parameters.ammo_type = make_unit_melee_ammo_type(Queen_Biter_Attack_Damage)
end