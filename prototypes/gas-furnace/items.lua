local gasFurnace = {
    type = "item",
    name = "gas-furnace",
    icon = "__trigonometric-oil__/graphics/gas-furnace/icon.png",
    icon_size = 32,
    subgroup = "smelting-machine",
    order = "c1[gas-furnace]",
    place_result = "gas-furnace",
    stack_size = 50
  }

data:extend{gasFurnace}