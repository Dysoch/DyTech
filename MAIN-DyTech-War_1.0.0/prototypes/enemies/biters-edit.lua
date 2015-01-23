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