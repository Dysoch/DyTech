data:extend(
{
  {
    type = "logistic-robot",
    name = "capacity-logistic-robot-1",
    icon = "__base__/graphics/icons/logistic-robot.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "capacity-logistic-robot-1"},
    max_health = 100,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 200,
    speed = 0.01,
    transfer_distance = 0.5,
    max_energy = "3000kJ",
    energy_per_tick = "0.01kJ",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "0.4kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    picture =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
      priority = "high",
      width = 37,
      height = 34
    },
    working_sound = flying_robot_sounds(),
    shadow =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37
    }
  },
}
)