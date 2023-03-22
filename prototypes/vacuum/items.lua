-- Vacuum pressure

local fluid = {
  base_color = {
    b = 0,
    g = 0,
    r = 0
  },
  default_temperature = 25,
  flow_color = {
    b = 0,
    g = 0,
    r = 0
  },
  icon = "__trigonometric-oil__/graphics/icons/vacuum.png",
  icon_mipmaps = 4,
  icon_size = 64,
  name = "to-vacuum",
  order = "a[fluid]-z[vacuum]",
  type = "fluid"
}

-- Vacuum pump machine item

local item = {
  type = "item",
  name = "vacuum-pump",
  icon = "__trigonometric-oil__/graphics/air-filtering/icons/air-filter-machine.png",
  icon_size = 32,
  flags = {},
  subgroup = "production-machine",
  order = "e[vacuum-pump]",
  place_result = "vacuum-pump",
  stack_size = 10
}


data:extend({fluid, item})
