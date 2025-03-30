data:extend
({
  {
    type = "assembling-machine",
    name = "rlcpc-planet-cyber",
    icon = "__planet-cyber__/graphics/icons/planet-cyber.png",
    icon_size = 64,
    icon_draw_specification = {shift = {0, -0.0}},
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.1, result = "rlcpc-planet-cyber"},
    max_health = 300,
    corpse = "assembling-machine-1-remnants",
    dying_explosion = "assembling-machine-1-explosion",
    crafting_categories = {"crafting", "basic-crafting", "advanced-crafting"},
    crafting_speed = 1,
    energy_usage = "100kW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 4 }
    },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-3.5, -3.5}, {3.5, 3.5}},
    selection_box = {{-4, -4}, {4, 4}},
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["assembling-machine"],
    alert_icon_shift = util.by_pixel(0, -12),
    graphics_set =
    {
      animation =
      {
        layers =
        {
          {
            filename = "__planet-cyber__/graphics/entity/planet-cyber.png",
            priority="high",
            width = 256,
            height = 256,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 0),
            scale = 1
          }
        }
      }
    },
    allowed_effects = {"speed", "consumption", "pollution"},
    effect_receiver = {uses_module_effects = true, uses_beacon_effects = true, uses_surface_effects = true},
    impact_category = "metal",
    working_sound =
    {
      sound = { filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.5 },
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    }
  },
})