local sounds = require("__base__.prototypes.entity.sounds")

local recipe = {
    type = "recipe",
    name = "robotics-facility",
    category = "robotics",
    enabled = false,
    energy_required = 10,
    ingredients = {
        { type = "item", name = "processing-unit", amount = 50 },
        { type = "item", name = "steel-plate", amount = 50 },
        { type = "item", name = "superconductor", amount = 50 },
        { type = "item", name = "refined-concrete", amount = 20 },
    },
    results = {
        {
            type = "item",
            name = "robotics-facility",
            amount = 1,
        }
    },
    fixed_quality = false,
    surface_conditions = {
        {
            property = "magnetic-field",
            min = 99,
        }
    }
}

local item = {
    type = "item",
    name = "robotics-facility",
    icon = "__RoboticsFacility__/graphics/rf-icon.png",
    icon_size = 64,
    subgroup = "production-machine",
    order = "f[centrifuge]",
    place_result = "robotics-facility",
    stack_size = 20,
    default_import_location = "fulgora",
    weight = 200 * kg,
}

local assemblingMachine = {
    type = "assembling-machine",
    name = "robotics-facility",
    icon = "__RoboticsFacility__/graphics/rf-icon.png",
    icon_size = 64,
    flags = {
        "placeable-neutral",
        "placeable-player",
        "player-creation"
    },
    minable = {
        mining_time = 0.2,
        result = "robotics-facility"
    },
    max_health = 800,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["electromagnetic-plant"],
    heating_energy = "100kW",
    effect_receiver = { 
        base_effect = {   
            productivity = 0.5
        }
    },
    icon_draw_specification = {
        shift = {0, -0.6}, 
        scale = 1.8, 
        scale_for_many = 1,
        render_layer = "entity-info-icon"
    },
    icons_positioning = {
        {
            inventory_index = defines.inventory.assembling_machine_modules, shift = {0, 1}
        },
    },
    vehicle_impact_sound =  { 
        filename = "__base__/sound/car-metal-impact.ogg", 
        volume = 0.65 
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound = {
        sound = {
            {
                filename = "__base__/sound/assembling-machine-t3-1.ogg",
                volume = 0.8
            },
            {
                filename = "__base__/sound/assembling-machine-t3-2.ogg",
                volume = 0.8
            },
        },
        idle_sound = { 
            filename = "__base__/sound/idle1.ogg", volume = 0.6 
        },
        apparent_volume = 1.5,
    },
    collision_box = {
        {-2.2, -2.2}, 
        {2.2, 2.2}
    },
    selection_box = {
        {-2.5, -2.5}, 
        {2.5, 2.5}
    },
    drawing_box = {
        {-2.5, -2.5}, 
        {2.5, 2.5}
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = assembler2pipepictures(),
            pipe_covers = pipecoverspictures(),
            volume = 1000,
            pipe_connections = {{ flow_direction="input", direction = defines.direction.north, position = {0, -2} }},
            secondary_draw_orders = { north = -1 }
        }
    },
    graphics_set = {
        animation = {
            layers = {
                {
                  draw_as_shadow = true,
                  filename = "__RoboticsFacility__/graphics/rf-shadow.png",
                  priority = "high",
                  width = 520,
                  height = 500,
                  frame_count = 1,
                  line_length = 1,
                  repeat_count = 99,
                  animation_speed = 0.5,
                  shift = util.by_pixel_hr(0, -16),
                  scale = 0.5,
                },
                {
                  priority = "high",
                  width = 320,
                  height = 320,
                  frame_count = 99,
                  shift = util.by_pixel_hr(0, -16),
                  animation_speed = 0.5,
                  scale = 0.5,
                  stripes =
                  {
                    {
                      filename = "__RoboticsFacility__/graphics/rf-animation-1.png",
                      width_in_frames = 8,
                      height_in_frames = 8,
                    },
                    {
                      filename = "__RoboticsFacility__/graphics/rf-animation-2.png",
                      width_in_frames = 8,
                      height_in_frames = 8,
                    },
                  },
                },
              },
        },
        working_visualisations = {
            {
                fadeout = true,
                secondary_draw_order = 1,
                animation = {
                    layers = {
                        {
                            size = {320, 320},
                            shift = util.by_pixel_hr(0, -16),
                            scale = 0.5,
                            frame_count = 99,
                            draw_as_glow = true,
                            blend_mode = "additive",
                            animation_speed = 0.5,
                            stripes = {
                                {
                                    filename = "__RoboticsFacility__/graphics/rf-animation-emission-1.png",
                                    width_in_frames = 8,
                                    height_in_frames = 8,
                                },
                                {
                                    filename = "__RoboticsFacility__/graphics/rf-animation-emission-2.png",
                                    width_in_frames = 8,
                                    height_in_frames = 8,
                                },
                            },
                        },
                    },
                },
            }
        },
    },
    crafting_categories = {
        "robotics"
    },
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage = "1500kW",
    module_slots = 5,
    allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
    match_animation_speed_to_activity = true,
    fluid_boxes_off_when_no_fluid_recipe = true,
}

local technology = {
    type = "technology",
    name = "robotics-facility",
    icon = "__RoboticsFacility__/graphics/rf-icon-big.png",
    icon_size = 640,
    effects = {
        {
            type = "unlock-recipe",
            recipe = "robotics-facility"
        },
    },
    prerequisites = {
        "electromagnetic-science-pack", 
        "utility-science-pack", 
        "production-science-pack",
    },
    unit = {
        count = 1000,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"utility-science-pack", 1},
            {"production-science-pack", 1},
            {"space-science-pack", 1},
            {"electromagnetic-science-pack", 1},
      },
      time = 60
    }
}

data:extend{recipe, item, assemblingMachine, technology}