data.raw["unit-spawner"]["biter-spawner"].maximum_count_of_owned_units = 10
data.raw["unit-spawner"]["biter-spawner"].result_units = (function()
                     local res = {}
                     res[1] = {"small-biter", 0.25} --25%
                     if not data.isdemo then
                       res[2] = {"medium-biter", 0.20} --45%
                       res[3] = {"big-biter", 0.15} --60%
					   res[4] = {"berserk-biter", 0.15} --75%
					   res[5] = {"elder-biter", 0.12} --87%
					   res[6] = {"king-biter", 0.08} --95%
					   res[7] = {"queen-biter", 0.05} --100%
                     end
                     return res
                   end)()
data.raw["unit-spawner"]["biter-spawner"].spawning_radius = 15
data.raw["unit-spawner"]["biter-spawner"].spawning_spacing = 2
data.raw["unit-spawner"]["biter-spawner"].max_spawn_shift = 0.65
data.raw["projectile"]["laser"].damage = { amount = 4, type = "laser"}
data.raw["projectile"]["laser"].filename = "__DyTech-Warfare__/graphics/entity/laser/laser-ruby.png"
data.raw["projectile"]["laser"].speed = 0.10
data.raw["electric-turret"]["laser-turret"].icon = "__DyTech-Warfare__/graphics/icons/laser-ruby-1.png"
data.raw["electric-turret"]["laser-turret"].max_health = 150
data.raw["electric-turret"]["laser-turret"].fast_replaceable_group = "laser-turret"
data.raw["electric-turret"]["laser-turret"].energy_consumption = "50kJ"
data.raw["electric-turret"]["laser-turret"].buffer_capacity = "500kJ"
data.raw["electric-turret"]["laser-turret"].input_flow_limit = "25000kW"
data.raw["electric-turret"]["laser-turret"].drain = "25kW"
data.raw["electric-turret"]["laser-turret"].prepared_animation.filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-ruby.png"
data.raw["electric-turret"]["laser-turret"].base_picture.filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-base-1.png"
data.raw["electric-turret"]["laser-turret"].cooldown = 30
data.raw["electric-turret"]["laser-turret"].range = 15