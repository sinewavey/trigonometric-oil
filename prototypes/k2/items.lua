data:extend{
    {
    type = "item",
    name = "fuel-refinery",
    icon = "__trigonometric-oil__/graphics/k2/icons/entities/fuel-refinery.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "e[petrochemical-plant]",
    place_result = "fuel-refinery",
    stack_size = 50,
},
{
    type = "item",
    name = "gas-power-station",
    icon = "__trigonometric-oil__/graphics/k2/icons/entities/gas-power-station.png",
    icon_size = 64,
    icon_mipmaps = 4,
    stack_size = 10,
    subgroup = "energy",
    order = "c[solar-panel]-b[gas-power-station]",
    place_result = "gas-power-station",
}
}