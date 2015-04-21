data:extend(
{
  {
    type = "mining-tool",
    name = "zinc-axe",
    icon = "__MAIN-DyTech-Machine__/graphics/tools/zinc-axe.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type="direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 5 , type = "physical"}
        }
      }
    },
    durability = 7500,
    subgroup = "dytech-intermediates-tools",
    order = "a[mining]-c[zinc-axe]",
    speed = 4,
    stack_size = 20
  },
  {
    type = "mining-tool",
    name = "tin-axe",
    icon = "__MAIN-DyTech-Machine__/graphics/tools/tin-axe.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type="direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 9 , type = "physical"}
        }
      }
    },
    durability = 6000,
    subgroup = "dytech-intermediates-tools",
    order = "a[mining]-d[tin-axe]",
    speed = 4.25,
    stack_size = 20
  },
  {
    type = "mining-tool",
    name = "silver-axe",
    icon = "__MAIN-DyTech-Machine__/graphics/tools/silver-axe.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type="direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 3 , type = "physical"}
        }
      }
    },
    durability = 5000,
    subgroup = "dytech-intermediates-tools",
    order = "a[mining]-e[silver-axe]",
    speed = 7.5,
    stack_size = 20
  },
  {
    type = "mining-tool",
    name = "lead-axe",
    icon = "__MAIN-DyTech-Machine__/graphics/tools/lead-axe.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type="direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 10 , type = "physical"}
        }
      }
    },
    durability = 12000,
    subgroup = "dytech-intermediates-tools",
    order = "a[mining]-f[lead-axe]",
    speed = 5,
    stack_size = 20
  },
  {
    type = "mining-tool",
    name = "tungsten-axe",
    icon = "__MAIN-DyTech-Machine__/graphics/tools/tungsten-axe.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type="direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 18 , type = "physical"}
        }
      }
    },
    durability = 25000,
    subgroup = "dytech-intermediates-tools",
    order = "a[mining]-g[tungsten-axe]",
    speed = 7.5,
    stack_size = 20
  },
  {
    type = "mining-tool",
    name = "cobalt-axe",
    icon = "__MAIN-DyTech-Machine__/graphics/tools/cobalt-axe.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type="direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 21 , type = "physical"}
        }
      }
    },
    durability = 30000,
    subgroup = "dytech-intermediates-tools",
    order = "a[mining]-h[cobalt-axe]",
    speed = 10,
    stack_size = 20
  },
  {
    type = "mining-tool",
    name = "ardite-axe",
    icon = "__MAIN-DyTech-Machine__/graphics/tools/ardite-axe.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type="direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 30 , type = "physical"}
        }
      }
    },
    durability = 25000,
    subgroup = "dytech-intermediates-tools",
    order = "a[mining]-i[ardite-axe]",
    speed = 15,
    stack_size = 20
  },
}
)