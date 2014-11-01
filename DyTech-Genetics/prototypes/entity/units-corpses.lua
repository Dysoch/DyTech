
DogPlayerScale = 1
Dog_Player_Tint1 = {r=0.56, g=0.46, b=0.42, a=0.65}
Dog_Player_Tint2 = {r=1, g=0.63, b=0, a=0.4}

DogEnemyScale = 0.3
Dog_Enemy_Tint1 = {r=0.56, g=0.46, b=0.42, a=0.65}
Dog_Enemy_Tint2 = {r=1, g=0.63, b=0, a=0.4}

data:extend(
{
  {
    type = "corpse",
    name = "dog-player-corpse",
    icon = "__base__/graphics/icons/small-biter-corpse.png",
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-b[wildlife]-a[dog-player]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation(DogPlayerScale, Dog_Player_Tint1, Dog_Player_Tint2)
  },
  {
    type = "corpse",
    name = "dog-enemy-corpse",
    icon = "__base__/graphics/icons/small-biter-corpse.png",
    selection_box = {{-0.65, -0.65}, {0.65, 0.65}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-b[wildlife]-a[dog-enemy]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation(DogEnemyScale, Dog_Enemy_Tint1, Dog_Enemy_Tint2)
  },
}
)