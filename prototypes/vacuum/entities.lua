local entity = {
  type = "assembling-machine",
  fixed_recipe="to-vacuum",
  name = "vacuum-pump",
  map_color = {r = 0.4, g = 0.75, b = 0.2},
  icon = "__trigonometric-oil__/graphics/air-filtering/icons/air-filter-machine.png",
  icon_size = 32,
  flags = {"placeable-neutral", "placeable-player", "player-creation"},
  minable = {hardness = 0.2, mining_time = 0.5, result = "vacuum-pump"},
  max_health = 150,
  corpse = "big-remnants",
  collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
  selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
  animation =
  {
    filename = "__trigonometric-oil__/graphics/air-filtering/entities/air-filter-machine.png",
    priority = "high",
    width = 99,
    height = 102,
    frame_count = 32,
    line_length = 8,
    shift = {0.4, -0.06}
  },
  open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
  close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  working_sound = {
    fade_in_ticks = 4,
    fade_out_ticks = 20,
    sound = {
      {
        filename = "__base__/sound/centrifuge-1.ogg",
        volume = 0.3
      },
      {
        filename = "__base__/sound/centrifuge-2.ogg",
        volume = 0.3
      },
      {
        filename = "__base__/sound/centrifuge-6.ogg",
        volume = 0.3
      }
    }
  },
  allowed_effects = {
    "consumption",
    "pollution"
  },
  crafting_categories = {"vacuum"},
  ingredient_count = 0,
  crafting_speed = 1.0,
  energy_source =
  {
    type = "electric",
    usage_priority = "secondary-input",
    emissions_per_minute = -5
  },
  energy_usage = "120kW",
  module_slots = 1,
  fluid_boxes = {
      {
        base_area = 10,
        base_level = -1,
        pipe_connections = {
          {
            position = {
              0,
              -2
            },
            type = "input"
          }
        },
        pipe_covers = {
          east = {
            layers = {
              {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
                height = 64,
                hr_version = {
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              },
              {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east-shadow.png",
                height = 64,
                hr_version = {
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east-shadow.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              }
            }
          },
          north = {
            layers = {
              {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
                height = 64,
                hr_version = {
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              },
              {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north-shadow.png",
                height = 64,
                hr_version = {
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north-shadow.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              }
            }
          },
          south = {
            layers = {
              {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
                height = 64,
                hr_version = {
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              },
              {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south-shadow.png",
                height = 64,
                hr_version = {
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south-shadow.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              }
            }
          },
          west = {
            layers = {
              {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
                height = 64,
                hr_version = {
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              },
              {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west-shadow.png",
                height = 64,
                hr_version = {
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west-shadow.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              }
            }
          }
        },
        pipe_picture = {
          east = {
            filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-E.png",
            height = 38,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-pipe-E.png",
              height = 76,
              priority = "extra-high",
              scale = 0.5,
              shift = {
                -0.765625,
                0.03125
              },
              width = 42
            },
            priority = "extra-high",
            shift = {
              -0.78125,
              0.03125
            },
            width = 20
          },
          north = {
            filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-N.png",
            height = 18,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-pipe-N.png",
              height = 38,
              priority = "extra-high",
              scale = 0.5,
              shift = {
                0.0703125,
                0.421875
              },
              width = 71
            },
            priority = "extra-high",
            shift = {
              0.078125,
              0.4375
            },
            width = 35
          },
          south = {
            filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-S.png",
            height = 31,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-pipe-S.png",
              height = 61,
              priority = "extra-high",
              scale = 0.5,
              shift = {
                0,
                -0.9765625
              },
              width = 88
            },
            priority = "extra-high",
            shift = {
              0,
              -0.984375
            },
            width = 44
          },
          west = {
            filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-W.png",
            height = 37,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-pipe-W.png",
              height = 73,
              priority = "extra-high",
              scale = 0.5,
              shift = {
                0.8046875,
                0.0390625
              },
              width = 39
            },
            priority = "extra-high",
            shift = {
              0.796875,
              0.046875
            },
            width = 19
          }
        },
        production_type = "input",
        secondary_draw_orders = {
          north = -1
        }
      },
      {
        base_area = 10,
        base_level = 1,
        pipe_connections = {
          {
            position = {
              0,
              2
            },
            type = "output"
          }
        },
        pipe_covers = {
          east = {
            layers = {
              {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
                height = 64,
                hr_version = {
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              },
              {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east-shadow.png",
                height = 64,
                hr_version = {
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east-shadow.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              }
            }
          },
          north = {
            layers = {
              {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
                height = 64,
                hr_version = {
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              },
              {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north-shadow.png",
                height = 64,
                hr_version = {
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north-shadow.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              }
            }
          },
          south = {
            layers = {
              {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
                height = 64,
                hr_version = {
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              },
              {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south-shadow.png",
                height = 64,
                hr_version = {
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south-shadow.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              }
            }
          },
          west = {
            layers = {
              {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
                height = 64,
                hr_version = {
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              },
              {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west-shadow.png",
                height = 64,
                hr_version = {
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west-shadow.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              }
            }
          }
        },
        pipe_picture = {
          east = {
            filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-E.png",
            height = 38,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-pipe-E.png",
              height = 76,
              priority = "extra-high",
              scale = 0.5,
              shift = {
                -0.765625,
                0.03125
              },
              width = 42
            },
            priority = "extra-high",
            shift = {
              -0.78125,
              0.03125
            },
            width = 20
          },
          north = {
            filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-N.png",
            height = 18,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-pipe-N.png",
              height = 38,
              priority = "extra-high",
              scale = 0.5,
              shift = {
                0.0703125,
                0.421875
              },
              width = 71
            },
            priority = "extra-high",
            shift = {
              0.078125,
              0.4375
            },
            width = 35
          },
          south = {
            filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-S.png",
            height = 31,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-pipe-S.png",
              height = 61,
              priority = "extra-high",
              scale = 0.5,
              shift = {
                0,
                -0.9765625
              },
              width = 88
            },
            priority = "extra-high",
            shift = {
              0,
              -0.984375
            },
            width = 44
          },
          west = {
            filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-W.png",
            height = 37,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-pipe-W.png",
              height = 73,
              priority = "extra-high",
              scale = 0.5,
              shift = {
                0.8046875,
                0.0390625
              },
              width = 39
            },
            priority = "extra-high",
            shift = {
              0.796875,
              0.046875
            },
            width = 19
          }
        },
        production_type = "output",
        secondary_draw_orders = {
          north = -1
        }
      },
      off_when_no_fluid_recipe = true
    },
}

data:extend{entity}