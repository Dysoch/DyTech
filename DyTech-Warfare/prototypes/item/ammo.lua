data:extend(
{
  {
    type = "ammo",
    name = "sniper-magazine",
    icon = "__DyTech-Warfare__/graphics/icons/sniper-magazine.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "sniper-ammo",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
              type = "create-entity",
              entity_name = "explosion-gunshot"
          },
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion-gunshot"
            },
            {
              type = "damage",
              damage = { amount = 50 , type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 5,
    subgroup = "ammo",
    order = "s-m",
    stack_size = 25
  },
}
)