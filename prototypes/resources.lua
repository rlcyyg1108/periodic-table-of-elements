local resource_autoplace = require("resource-autoplace")
local color_steel_blue = {0.275, 0.510, 0.706}----------Steel Blue-钢蓝 #4682B4

data:extend
({
  --自动放置，地图生成上的那个玩意
  {
    type = "autoplace-control",
    name = "rlcpc-ore",
    localised_name = {"", "[entity=rlcpc-ore] ", {"entity-name.rlcpc-ore"}},
    richness = true,
    order = "a-a",
    category = "resource",
  },
  ----资源，挖的那东西
  --矿
  {
    type = "resource",
    name = "rlcpc-ore",
    icon = "__planet-cyber__/graphics/icons/planet-cyber.png",
    flags = {"placeable-neutral"},
    order = "a-b-h",
    map_color = color_steel_blue,
    minable = {
      mining_particle = "iron-ore-particle",
      mining_time = 1.0,
      result = "rlcpc-ore"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
    stages = {
      sheet = {
        filename = "__base__/graphics/entity/iron-ore/iron-ore.png",
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5,
        tint = color_steel_blue
      }
    },
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "rlcpc-ore",
      order = "a",
      base_density = 6,
      base_spots_per_km2 = 1.5,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1.2,
      starting_rq_factor_multiplier = 1.4,
      random_spot_size_minimum = 0.5,
      random_spot_size_maximum = 2,
      tile_restriction = nil,
      additional_richness = 0
    }
  },
  --喷泉一类的无限单体资源
  --[[{
    type = "resource",
    name = "steam-geyser",
    icon = "__Moshine-assets__/graphics/icons/steam-geyser.png",
    flags = {"placeable-neutral"},
    category = "basic-fluid",
    subgroup = "mineable-fluids",
    order="a-b-a",
    infinite = true,
    highlight = true,
    minimum = 70000,
    normal = 7000000,
    infinite_depletion_amount = 10,
    resource_patch_search_radius = 9,
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    draw_stateless_visualisation_under_building = false,
    minable =
    {
      mining_time = 1,
      results =
      {
        {
          type = "fluid",
          name = "steam",
          temperature = 175,
          amount_min = 10,
          amount_max = 10,
          probability = 1,
        }
      }
    },
    walking_sound = sounds.oil,
    working_sound =
    {
      sound =
      {
        category = "world-ambient", variations = sound_variations("__space-age__/sound/world/resources/sulfuric-acid-geyser", 1, 0.3),
        advanced_volume_control =
        {
          fades = {fade_in = {curve_type = "S-curve", from = {control = 0.3, volume_percentage = 0.0}, to = {2.0, 100.0}}}
        },
        audible_distance_modifier = 0.3,
      },
      max_sounds_per_prototype = 3,
    },
    --collision_mask = {layers={is_object = true, is_lower_object = true, water_tile = true}},
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      --control = "sulfuric-acid-geyser",
      order = "b", -- Other resources are "b"; oil won't get placed if something else is already there.
      probability_expression = 0
    },
    stage_counts = {0},
    stages =
    {
      layers =
      {
        util.sprite_load("__Moshine-assets__/graphics/entity/steam-geyser/steam-geyser",
        {
          priority = "high",
          frame_count = 4,
          scale = 0.5,
        })
      }
    },
    stateless_visualisation =
    {
      -- expanded 2 animation layers into 2 visualisations to demo multiple visualisations
      {
        count = 1,
        render_layer = "smoke",
        animation =
        {
          filename = "__Moshine-assets__/graphics/entity/steam-geyser/steam-geyser-gas-outer.png",
          frame_count = 47,
          line_length = 16,
          width = 90,
          height = 188,
          animation_speed = 1,
          shift = util.by_pixel(-6, -89),
          scale = 0.8,
          tint = util.multiply_color({r=1, g=1, b=1}, 0.2)
        }
      },
      {
        count = 1,
        render_layer = "smoke",
        animation =
        {
           filename = "__Moshine-assets__/graphics/entity/steam-geyser/steam-geyser-gas-inner.png",
           frame_count = 47,
           line_length = 16,
           width = 40,
           height = 84,
           animation_speed = 1,
           shift = util.by_pixel(-4, -30),
           scale = 0.8,
           tint = util.multiply_color({r=1, g=1, b=1}, 0.3)
        }
      }
    },
    map_color = {r = 189/256, g = 189/256, b = 189/256, a = 1.000},
    map_grid = false
  },]]
})







