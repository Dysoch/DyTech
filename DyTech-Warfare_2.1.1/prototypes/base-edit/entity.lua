data.raw["unit-spawner"]["biter-spawner"].maximum_count_of_owned_units = 25
data.raw["unit-spawner"]["biter-spawner"].max_friends_around_to_spawn = 14
data.raw["unit-spawner"]["biter-spawner"].spawning_cooldown = {900, 150}
data.raw["unit-spawner"]["biter-spawner"].max_health = 2500
data.raw["unit-spawner"]["biter-spawner"].result_units = (function()
                     local res = {}
                     res[1] = {unit = "small-biter", spawn_points = {{evolution_factor=0, spawn_weight=0.3},
                                                                    {evolution_factor=0.3, spawn_weight=0}}} --stops at 0.3 evo
                     if not data.isdemo then
                       res[2] = {"medium-biter", {{0.2, 0.3}, {0.5, 0}}} --stops at 0.5 evo
                       res[3] = {"big-biter", {{0.4, 0}, {1.0, 0.35}}} --35% max evo
					   res[4] = {"berserk-biter", {{0.5, 0.0}, {1.0, 0.30}}} --30% max evo
					   res[5] = {"elder-biter", {{0.65, 0.0}, {1.0, 0.20}}} --20% max evo
					   res[6] = {"king-biter", {{0.8, 0.0}, {1.0, 0.1}}} --10% max evo
					   res[7] = {"queen-biter", {{0.95, 0.0}, {1.0, 0.05}}} --5% max evo
                     end
                     return res
                   end)()
data.raw["unit-spawner"]["biter-spawner"].spawning_radius = 20
data.raw["unit-spawner"]["biter-spawner"].spawning_spacing = 2
data.raw["unit-spawner"]["biter-spawner"].max_spawn_shift = 0.65

data.raw["unit-spawner"]["spitter-spawner"].maximum_count_of_owned_units = 15
data.raw["unit-spawner"]["spitter-spawner"].max_friends_around_to_spawn = 14
data.raw["unit-spawner"]["spitter-spawner"].spawning_cooldown = {900, 210}
data.raw["unit-spawner"]["spitter-spawner"].max_health = 3500
data.raw["unit-spawner"]["spitter-spawner"].result_units = (function()
                     local res = {}
                     res[1] = {unit = "small-biter", spawn_points = {{evolution_factor=0, spawn_weight=0.3},
                                                                     {evolution_factor=0.25, spawn_weight=0}}} --stops at 0.25 evo
                     res[2] = {"small-spitter", {{0.25, 0.3}, {0.55, 0}}} --stops at 0.55 evo
                     res[3] = {"medium-spitter", {{0.45, 0.3}, {0.7, 0}}} --stops at 0.7 evo
                     res[4] = {"big-spitter", {{0.6, 0.0}, {1.0, 0.35}}} --35% max evo
					 res[5] = {"berserk-spitter", {{0.7, 0.0}, {1.0, 0.30}}} --30% max evo
					 res[6] = {"elder-spitter", {{0.8, 0.0}, {1.0, 0.20}}} --20% max evo
					 res[7] = {"king-spitter", {{0.9, 0.0}, {1.0, 0.10}}} --10% max evo
					 res[8] = {"queen-spitter", {{0.95, 0.0}, {1.0, 0.05}}} --5% max evo
                     return res
                   end)()
data.raw["unit-spawner"]["spitter-spawner"].spawning_radius = 20
data.raw["unit-spawner"]["spitter-spawner"].spawning_spacing = 2
data.raw["unit-spawner"]["spitter-spawner"].max_spawn_shift = 0.65

data.raw["projectile"]["laser"].damage = { amount = 4, type = "laser"}
data.raw["projectile"]["laser"].filename = "__DyTech-Warfare__/graphics/entity/laser/laser-ruby.png"
data.raw["projectile"]["laser"].speed = 0.10
data.raw["electric-turret"]["laser-turret"].icon = "__DyTech-Warfare__/graphics/icons/laser-ruby-1.png"
data.raw["electric-turret"]["laser-turret"].max_health = 150
data.raw["electric-turret"]["laser-turret"].fast_replaceable_group = "laser-turret"
data.raw["electric-turret"]["laser-turret"].energy_consumption = "30kJ"
data.raw["electric-turret"]["laser-turret"].buffer_capacity = "500kJ"
data.raw["electric-turret"]["laser-turret"].input_flow_limit = "25000kW"
data.raw["electric-turret"]["laser-turret"].drain = "25kW"
data.raw["electric-turret"]["laser-turret"].prepared_animation.filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-ruby.png"
data.raw["electric-turret"]["laser-turret"].base_picture.filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-base-1.png"
data.raw["electric-turret"]["laser-turret"].cooldown = 30
data.raw["electric-turret"]["laser-turret"].range = 15