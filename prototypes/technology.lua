data:extend({
  {
    type = "technology",
    name = "roboport-ext",
    icon_size = 256, icon_minimaps = 4,
    icon = "__base__/graphics/technology/construction-robotics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "roboport-ext"
      }
    },
    prerequisites = {"construction-robotics"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1},
        {"production-science-pack", 1},
				{"space-science-pack", 2},
      },
      time = 30
    },
    order = "c-k-a",
  },
  {
    type = "technology",
    name = "roboport-prod",
    icon_size = 256, icon_minimaps = 4,
    icon = "__base__/graphics/technology/construction-robotics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "roboport-prod"
      },
      {
        type = "unlock-recipe",
        recipe = "roboport-prod2"
      }
      
    },
    prerequisites = {"roboport-ext"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1},
				{"production-science-pack", 1},
				{"space-science-pack", 2},
     	  },
      time = 30
    },
    order = "c-k-a",
  },
})