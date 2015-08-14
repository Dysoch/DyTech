require "config"
require "prototypes.internal-config"
require "prototypes.enemies.functions"

data:extend(
{
  {
    type = "corpse",
    name = "young-berserk-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-d[berserker]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation((Enemies.BerserkerScale*Enemies.Young_Factor), Enemies.Berserker_Tint1, Enemies.Berserker_Tint2)
  },
  {
    type = "corpse",
    name = "teen-berserk-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-d[berserker]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation((Enemies.BerserkerScale*Enemies.Teen_Factor), Enemies.Berserker_Tint1, Enemies.Berserker_Tint2)
  },
  {
    type = "corpse",
    name = "adult-berserk-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-d[berserker]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation((Enemies.BerserkerScale*Enemies.Adult_Factor), Enemies.Berserker_Tint1, Enemies.Berserker_Tint2)
  },
  {
    type = "corpse",
    name = "young-elder-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-e[elder]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation((Enemies.ElderScale*Enemies.Young_Factor), Enemies.Elder_Tint1, Enemies.Elder_Tint2)
  },
  {
    type = "corpse",
    name = "teen-elder-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-d[elder]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation((Enemies.ElderScale*Enemies.Teen_Factor), Enemies.Elder_Tint1, Enemies.Elder_Tint2)
  },
  {
    type = "corpse",
    name = "adult-elder-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-d[elder]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation((Enemies.ElderScale*Enemies.Adult_Factor), Enemies.Elder_Tint1, Enemies.Elder_Tint2)
  },
  {
    type = "corpse",
    name = "young-king-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-f[king]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation((Enemies.KingScale*Enemies.Young_Factor), Enemies.King_Tint1, Enemies.King_Tint2)
  },
  {
    type = "corpse",
    name = "teen-king-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-d[berserker]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation((Enemies.KingScale*Enemies.Teen_Factor), Enemies.King_Tint1, Enemies.King_Tint2)
  },
  {
    type = "corpse",
    name = "adult-king-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-d[berserker]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation((Enemies.KingScale*Enemies.Adult_Factor), Enemies.King_Tint1, Enemies.King_Tint2)
  },
  {
    type = "corpse",
    name = "young-queen-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-g[queen]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation((Enemies.QueenScale*Enemies.Young_Factor), Enemies.Queen_Tint1, Enemies.Queen_Tint2)
  },
  {
    type = "corpse",
    name = "teen-queen-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-d[queen]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation((Enemies.QueenScale*Enemies.Teen_Factor), Enemies.Queen_Tint1, Enemies.Queen_Tint2)
  },
  {
    type = "corpse",
    name = "adult-queen-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-d[queen]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation((Enemies.QueenScale*Enemies.Adult_Factor), Enemies.Queen_Tint1, Enemies.Queen_Tint2)
  },
}
)