local furnaceRecipe = {
    type = "recipe",
    name = "gas-furnace",
    ingredients = {
      {"steel-furnace",1},
      {"pipe", 4},
      {"pump", 2},
    },
    result = "gas-furnace",
    energy_required = 3,
    enabled = false
  }

data:extend{furnaceRecipe}