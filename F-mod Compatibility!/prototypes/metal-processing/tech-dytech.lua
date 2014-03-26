data:extend({
	{
	type = "technology",
    name= "Advanced-metal-processing",
    prerequisites= {"steel-processing" },
	icon="__F-mod__/resources/technology/icons/blast-furnace.png",
    unit=
    {
      count= 100,
      time= 15,
      ingredients= { {"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1} }
    },
    effects=
    {
	  {
        type= "unlock-recipe",
        recipe= "pressure-vessel"
      },
      {
        type= "unlock-recipe",
        recipe= "electrolycer"
      },
      {
        type= "unlock-recipe",
        recipe= "foundry"
      },
      {
        type= "unlock-recipe",
        recipe= "forgesolderingtin" 
      },
      {
        type= "unlock-recipe",
        recipe= "soldering-tin"
      },
      {
        type= "unlock-recipe",
        recipe= "aluminium-plate"
      },
	  --[[{
        type= "unlock-recipe",
        recipe= "sodium-hidroxide"
      },
      {
        type= "unlock-recipe",
        recipe= "sodium-carbonate"
      },
      {
        type= "unlock-recipe",
        recipe= "molten-aluminium"
      },
      {
        type= "unlock-recipe",
        recipe= "aluminate"
      },
      {
        type= "unlock-recipe",
        recipe= "molten-aluminium-oxide"
      },
      {
        type= "unlock-recipe",
        recipe= "molten-copper"
      },
      {
        type= "unlock-recipe",
        recipe= "molten-iron"
      },
      {
        type= "unlock-recipe",
        recipe= "molten-gold"
      },
      {
        type= "unlock-recipe",
        recipe= "molten-silver"
      },
      {
        type= "unlock-recipe",
        recipe= "molten-tin"
      },]]
    }
  },
  
  })