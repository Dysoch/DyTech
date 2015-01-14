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