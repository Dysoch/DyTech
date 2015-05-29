data.raw["unit-spawner"]["spitter-spawner"].result_units = (function()
                     local res = {}
                     res[1] = {unit = "small-biter", spawn_points = {{evolution_factor=0, spawn_weight=0.3},
                                                                     {evolution_factor=0.25, spawn_weight=0}}} --stops at 0.25 evo
                       res[2] = {"small-spitter", {{0.200, 0.3}, {0.319, 0}}}
                       res[3] = {"medium-spitter", {{0.225, 0.3}, {0.319, 0}}}
                       res[4] = {"big-spitter", {{0.256, 0}, {0.387, 0.35}}}
					   res[5] = {"young-berserk-spitter", {{0.311, 0.30}, {0.456, 0.0}}}
					   res[6] = {"young-elder-spitter", {{0.367, 0.20}, {0.524, 0.0}}}
					   res[7] = {"young-king-spitter", {{0.422, 0.1}, {0.593, 0.0}}}
					   res[8] = {"young-queen-spitter", {{0.478, 0.05}, {0.661, 0.0}}}
					   res[9] = {"teen-berserk-spitter", {{0.533, 0.30}, {0.730, 0.0}}}
					   res[10] = {"teen-elder-spitter", {{0.589, 0.20}, {0.798, 0.0}}}
					   res[11] = {"teen-king-spitter", {{0.644, 0.1}, {0.867, 0.0}}}
					   res[12] = {"teen-queen-spitter", {{0.700, 0.05}, {0.935, 0.0}}}
					   res[13] = {"adult-berserk-spitter", {{0.756, 0.0}, {1.0, 0.40}}}
					   res[14] = {"adult-elder-spitter", {{0.811, 0.0}, {1.0, 0.30}}}
					   res[15] = {"adult-king-spitter", {{0.867, 0.0}, {1.0, 0.20}}}
					   res[16] = {"adult-queen-spitter", {{0.922, 0.0}, {1.0, 0.10}}}
                     return res
                   end)()