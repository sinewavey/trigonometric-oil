data:extend{
{
    type = "recipe",
    name = "fuel-refinery",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { "iron-plate", 10 },
      { "iron-gear-wheel", 4 },
      { "stone-brick", 10 },
      { "electronic-circuit", 4 },
      { "pipe", 6 },
    },
    result = "fuel-refinery",
  },

{
    type = "recipe",
    name = "gas-power-station",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { "iron-plate", 10 },
      { "steel-plate", 4},
      { "engine-unit", 10 },
      { "electronic-circuit", 2 },
      { "pipe", 4 },
      { "copper-cable", 6 },
    },
    result = "gas-power-station",
  }
}