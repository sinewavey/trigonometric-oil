local furnacepipepictures = {
    north = {
      filename = "__trigonometric-oil__/graphics/gas-furnace/entity/"
        .."assembling-machine-1-pipe-N.png",
      priority = "extra-high",
      width = 35,
      height = 18,
      shift = util.by_pixel(2.5, 14),
      hr_version = {
        filename = "__trigonometric-oil__/graphics/gas-furnace/entity/"
          .."hr-assembling-machine-1-pipe-N.png",
        priority = "extra-high",
        width = 71,
        height = 38,
        shift = util.by_pixel(2.25, 13.5),
        scale = 0.5
      }
    },
    east = {
      filename = "__trigonometric-oil__/graphics/gas-furnace/entity/"
        .."assembling-machine-1-pipe-E.png",
      priority = "extra-high",
      width = 20,
      height = 38,
      shift = util.by_pixel(-25, 1),
      hr_version = {
        filename = "__trigonometric-oil__/graphics/gas-furnace/entity/"
          .."hr-assembling-machine-1-pipe-E.png",
        priority = "extra-high",
        width = 42,
        height = 76,
        shift = util.by_pixel(-24.5, 1),
        scale = 0.5
      }
    },
    south = {
        filename = "__trigonometric-oil__/graphics/gas-furnace/entity/"
        .."assembling-machine-1-pipe-S.png",
      priority = "extra-high",
      width = 44,
      height = 31,
      shift = util.by_pixel(0, -31.5),
      hr_version = {
        filename = "__trigonometric-oil__/graphics/gas-furnace/entity/"
          .."hr-assembling-machine-1-pipe-S.png",
        priority = "extra-high",
        width = 88,
        height = 61,
        shift = util.by_pixel(0, -31.25),
        scale = 0.5
      }
    },
    west = {
        filename = "__trigonometric-oil__/graphics/gas-furnace/entity/"
        .."assembling-machine-1-pipe-W.png",
      priority = "extra-high",
      width = 19,
      height = 37,
      shift = util.by_pixel(25.5, 1.5),
      hr_version = {
        filename = "__trigonometric-oil__/graphics/gas-furnace/entity/"
          .."hr-assembling-machine-1-pipe-W.png",
        priority = "extra-high",
        width = 39,
        height = 73,
        shift = util.by_pixel(25.75, 1.25),
        scale = 0.5
      }
    }
  }

  local draworders = {
    north = -16,
    east = -1,
    west = -1,
    south = -2,
  }
  local layers = 
  {
    {
      filename = "__trigonometric-oil__/graphics/gas-furnace/entity/entity.png",
      priority = "extra-high",
      width = 269,
      height = 221,
      frame_count = 1,
      shift = util.by_pixel(0,-12),
      scale = 0.5
    },
    {
      filename =
        "__base__/graphics/entity/steel-furnace/"
        .."hr-steel-furnace-shadow.png",
      priority = "high",
      width = 277,
      height = 85,
      frame_count = 1,
      draw_as_shadow = true,
      shift = util.by_pixel(60.25, 17.25),
      scale = 0.5
    }
  }
  local firevisualizations = 
  {
    {
      north_position = {0.0, 0.0},
      east_position = {0.0, 0.0},
      south_position = {0.0, 0.0},
      west_position = {0.0, 0.0},
      animation =
      {
        filename =
          "__base__/graphics/entity/steel-furnace/"
          .."hr-steel-furnace-fire.png",
        priority = "high",
        line_length = 8,
        width = 57,
        height = 81,
        frame_count = 48,
        direction_count = 1,
        shift = util.by_pixel(-0.5,-16.9),
        scale = 0.5
      }
    },
    {
      north_position = {0.0, 0.0},
      east_position = {0.0, 0.0},
      south_position = {0.0, 0.0},
      west_position = {0.0, 0.0},
      effect = "flicker",
      animation =
      {
        filename =
          "__base__/graphics/entity/steel-furnace/"
          .."steel-furnace-glow.png",
        priority = "high",
        width = 60,
        height = 43,
        frame_count = 1,
        shift = util.by_pixel(0,0),
        blend_mode = "additive"
      }
    },
    {
      north_position = {0.0, 0.0},
      east_position = {0.0, 0.0},
      south_position = {0.0, 0.0},
      west_position = {0.0, 0.0},
      effect = "flicker",
      animation =
      {
        filename = "__trigonometric-oil__/graphics/gas-furnace/entity/entity-working.png",
        priority = "high",
        width = 269,
        height = 221,
        direction_count = 1,
        frame_count = 1,
        shift = util.by_pixel(0,-12),
        scale = 0.5,
        blend_mode = "additive",
      }
    }
  }

  local furnace =
    table.deepcopy(data.raw.furnace["steel-furnace"])

  table.insert(furnace.crafting_categories,  "crafting-with-fluid")
  table.insert(furnace.crafting_categories,  "chemistry")

  furnace.name = "gas-furnace"
  furnace.icon = "__trigonometric-oil__/graphics/gas-furnace/icon.png"
  furnace.icon_size = 32
  furnace.collision_box = {{-0.95,-0.8},{0.95,0.8}}
  furnace.selection_box = {{-1,-1},{1,1}}
  furnace.minable = {
    mining_time = 0.2,
    result = "gas-furnace"
  }
  furnace.energy_usage = "500kW"
  furnace.energy_source = {
    type = "fluid",
    fluid_box = {
      base_area = 1,
      height = 1,
      base_level = -1,
      pipe_picture = furnacepipepictures,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        {type = "input-output", position = {-1.5, 0.5}},
        {type = "input-output", position = {-1.5,-0.5}},
        {type = "input-output", position = { 1.5, 0.5}},
        {type = "input-output", position = { 1.5,-0.5}},
        {type = "input-output", position = { 0.5, 1.5}},
        {type = "input-output", position = { 0.5,-1.5}},
        {type = "input-output", position = { -0.5, 1.5}},
        {type = "input-output", position = { -0.5,-1.5}},      
      },
      secondary_draw_orders = draworders,
    },
    burns_fluid = true,
    scale_fluid_usage = true,
    emissions_per_minute = 4,
    smoke = {{
        name = "smoke",
        north_position = {0.7,-1.9},
        south_position = {0.7,-1.9},
        east_position = {0.7,-1.9},
        west_position = {0.7,-1.9},
        frequency = 10,
        starting_vertical_speed = 0.08,
        starting_frame_deviation = 60,
        deviation = {0.075,0.075}
    }},
    light_flicker = {
      color = {r=1,g=0.5,b=0.5},
      minimum_light_size = 0.1,
      light_intensity_to_size_coefficient = 1
    }
  }

  furnace.animation = {
    layers = layers
  }
  furnace.working_visualisations = firevisualizations

data:extend{furnace}