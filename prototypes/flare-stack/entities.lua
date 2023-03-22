data:extend(
{
  -- Flare Stack *************************************************************************
  {
    type = "furnace",
    name = "flare-stack",
    icon = "__trigonometric-oil__/graphics/flare-stack/icons/flare-stack.png",
    icon_size = 32,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "flare-stack"},
    fast_replaceable_group = "fluid-incinerator",
    max_health = 250,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    drawing_box = {{-0.5, -4.0}, {0.5, 0.5}},
    crafting_categories = {"flaring"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 10
    },
    energy_usage = "1kW",
    ingredient_count = 1,
    source_inventory_size = 0,
    result_inventory_size = 0,
    animation =
    {
      filename = "__trigonometric-oil__/graphics/flare-stack/entities/flare-stack.png",
      priority="high",
      width = 160,
      height = 160,
      frame_count = 1,
      shift = {1.5, -1.59375}
    },
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__trigonometric-oil__/graphics/flare-stack/entities/flare-stack-fire.png",
          priority = "extra-high",
          frame_count = 29,
          width = 48,
          height = 105,
          shift = {0, -5},
          run_mode="backward"
        },
        light = {intensity = 1, size = 32},
        constant_speed = true
      }
    },
    vehicle_impact_sound =
    {
      filename = "__base__/sound/car-metal-impact.ogg",
      volume = 0.65
    },
    working_sound =
    {
      sound = { filename = "__trigonometric-oil__/sounds/fluid-burner.ogg", volume = 1.2 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.7 },
      apparent_volume = 3,
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture =
        {
          north =
          {
            filename = "__core__/graphics/empty.png",
            priority = "extra-high",
            width = 1,
            height = 1
          },
          east =
          {
            filename = "__core__/graphics/empty.png",
            priority = "extra-high",
            width = 1,
            height = 1
          },
          south =
          {
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 1,
            shift = util.by_pixel(0, -32),
            hr_version = {
              filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north.png",
              priority = "extra-high",
              width = 128,
              height = 128,
              frame_count = 1,
              shift = util.by_pixel(0, -32),
              scale = 0.5
            }
          },
          west =
          {
            filename = "__core__/graphics/empty.png",
            priority = "extra-high",
            width = 1,
            height = 1
          }
        },
        pipe_covers = pipecoverspictures(),
        base_area = 1,
        base_level = -1,
        pipe_connections =
        {
          { position = {0, -1} }
        }
      }
    },
    pipe_covers = pipecoverspictures()
  },

  
  {
    type = "trivial-smoke",
    name = "incinerator-smoke",
    duration = 150,
    fade_in_duration = 0,
    fade_away_duration = 100,
    spread_duration = 100,
    start_scale = 0.4,
    end_scale = 1.5,
    color = {r = 0.3, g = 0.3, b = 0.3, a = 0.3},
    cyclic = true,
    affected_by_wind = true,
    animation =
    {
      width = 152,
      height = 120,
      line_length = 5,
      frame_count = 60,
      shift = {-0.53125, -0.4375},
      priority = "high",
      animation_speed = 0.25,
      filename = "__base__/graphics/entity/smoke/smoke.png",
      flags = { "smoke" }
    }
  }
})

-- Vent Stack ****************************************************************************
ventstack = (util.table.deepcopy(data.raw["furnace"]["flare-stack"]))
ventstack.name = "vent-stack"
ventstack.icon = "__trigonometric-oil__/graphics/flare-stack/icons/vent-stack.png"
ventstack.minable = {mining_time = 1, result = "vent-stack"}
ventstack.fast_replaceable_group = "fluid-incinerator"
ventstack.crafting_categories = {"venting"}
ventstack.crafting_speed = 1
ventstack.energy_source = {type = "void", emissions_per_minute = 10}
ventstack.working_visualisations =
{
  {
    animation =
    {
      filename = "__trigonometric-oil__/graphics/flare-stack/entities/vent-stack-fumes.png",
      priority = "extra-high",
      frame_count = 29,
      width = 48,
      height = 105,
      shift = {-0.05, -5.65},
      animation_speed = 0.5,
      scale = 1.5,
      run_mode="backward"
    },
    constant_speed = true
  }
}
ventstack.animation.filename = "__trigonometric-oil__/graphics/flare-stack/entities/vent-stack.png"

data:extend(
{
  ventstack
})