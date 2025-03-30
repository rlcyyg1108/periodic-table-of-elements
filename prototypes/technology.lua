local techicons = "__planet-cyber__/graphics/technology/"

data:extend
({
  {
    type = "technology",
    name = "rlcpc-planet-cyber",
    icon = "__planet-cyber__/graphics/technology/planet-cyber.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rlcpc-planet-cyber"
      }
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 10
    }
  },
  -------------------------------------------------------------------------- 发现星球：赛博星
  {
    type = "technology",
    name = "planet-discovery-cyber",
    icons = util.technology_icon_constant_planet("__planet-cyber__/graphics/technology/planet-cyber.png"),
    icon_size = 256,
    essential = true,
    effects =
    {
      {
        type = "unlock-space-location",
        space_location = "cyber",
        use_icon_overlay_constant = true
      },
    },
    prerequisites = {"electromagnetic-science-pack"},
    unit =
    {
      count = 1500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"space-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 60
    }
  },
})