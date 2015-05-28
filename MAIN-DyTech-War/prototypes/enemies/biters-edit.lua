data.raw["unit-spawner"]["biter-spawner"].result_units = (function()
                     local res = {}
                     res[1] = {unit = "small-biter", spawn_points = {{evolution_factor=0, spawn_weight=0.3},
                                                                    {evolution_factor=0.250, spawn_weight=0}}} --stops at 0.3 evo
                     if not data.isdemo then
                       res[2] = {"medium-biter", {{0.200, 0.3}, {0.319, 0}}}
                       res[3] = {"big-biter", {{0.256, 0}, {0.387, 0.35}}}
					   res[4] = {"young-berserk-biter", {{0.311, 0.30}, {0.456, 0.0}}}
					   res[5] = {"young-elder-biter", {{0.367, 0.20}, {0.524, 0.0}}}
					   res[6] = {"young-king-biter", {{0.422, 0.1}, {0.593, 0.0}}}
					   res[7] = {"young-queen-biter", {{0.478, 0.05}, {0.661, 0.0}}}
					   res[8] = {"teen-berserk-biter", {{0.533, 0.30}, {0.730, 0.0}}}
					   res[9] = {"teen-elder-biter", {{0.589, 0.20}, {0.798, 0.0}}}
					   res[10] = {"teen-king-biter", {{0.644, 0.1}, {0.867, 0.0}}}
					   res[11] = {"teen-queen-biter", {{0.700, 0.05}, {0.935, 0.0}}}
					   res[12] = {"adult-berserk-biter", {{0.756, 0.0}, {1.0, 0.40}}}
					   res[13] = {"adult-elder-biter", {{0.811, 0.0}, {1.0, 0.30}}}
					   res[14] = {"adult-king-biter", {{0.867, 0.0}, {1.0, 0.20}}}
					   res[15] = {"adult-queen-biter", {{0.922, 0.0}, {1.0, 0.10}}}
                     end
                     return res
                   end)()