-- Vacuum category
local category = {
    type = "recipe-category",
    name = "vacuum"
}

-- Vacuum pump machine recipe

local machine = {
    type = "recipe",
    name = "vacuum-pump",
    icon = "__trigonometric-oil__/graphics/air-filtering/icons/air-filter-machine.png",
    icon_size = 32,
    energy_required = 10.0,
    enabled = "false",
    ingredients =
    {
      {"assembling-machine-1", 1},
      {"electronic-circuit", 2},
      {"pump", 1}
    },
    result = "vacuum-pump"
}

  -- Vacuum pressure fluid recipe
  
  local fluid = {
      category = "vacuum",
      enabled = false,
      energy_required = 0.75,
      ingredients = {},
      name = "to-vacuum",
      order = "z[vacuum]",
      results = {
        {
          amount = 10,
          name = "to-vacuum",
          type = "fluid"
        }
      },
      subgroup = "fluid-recipes",
      type = "recipe"
}

data:extend{category,machine,fluid}