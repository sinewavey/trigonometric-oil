-- tech hooks back into old tree

data.raw.technology["rocket-fuel"].prerequisites = {"gasoline","advanced-oil-processing","petcoke"}
data.raw.technology["lubricant"].prerequisites = {"sulfur-processing","advanced-oil-processing"}

-- adjustments

local coalLiquefaction = data.raw.technology["coal-liquefaction"]

coalLiquefaction.icon = "__trigonometric-oil__/graphics/icons/coal-liquefaction.png"
coalLiquefaction.icon_size = 64
coalLiquefaction.mipmaps = 1

local basicOil = data.raw.technology["oil-processing"]

basicOil.effects =
{
  {type = "unlock-recipe",recipe = "pumpjack"},
  {type = "unlock-recipe",recipe = "to-basic-oil"},
  {type = "unlock-recipe",recipe = "chemical-plant"},
  {type = "unlock-recipe",recipe = "to-heavy-cracking"},
  {type = "unlock-recipe",recipe = "oil-refinery"},
  {type = "unlock-recipe",recipe = "fuel-refinery"},
  {type = "unlock-recipe",recipe = "flare-stack"},
  {type = "unlock-recipe",recipe = "vent-stack"}
}
basicOil.order = "d-a"

local advOil = data.raw.technology["advanced-oil-processing"]

advOil.prerequisites = {"oil-processing", "chemical-science-pack"}
advOil.icon_size = 64
advOil.icon_mipmaps = 1
advOil.icon = "__trigonometric-oil__/graphics/icons/advanced-oil-processing-v2.png"
advOil.effects = {
  {type = "unlock-recipe", recipe = "to-adv-oil"},
  {type = "unlock-recipe", recipe = "to-vacuum"},
  {type = "unlock-recipe", recipe = "vacuum-pump"}
}
advOil.order = "d-b"

local sulfur = data.raw.technology["sulfur-processing"]

sulfur.effects = {
  {
    recipe = "sulfuric-acid",
    type = "unlock-recipe"
  },
  {
    type = "unlock-recipe",
    recipe = "to-sulfide"
  },
  {
    type = "unlock-recipe",
    recipe = "sulfur"
  }
}
sulfur.icon = "__base__/graphics/technology/sulfur-processing.png"
sulfur.icon_mipmaps = 4
sulfur.icon_size = 256
sulfur.order = "d-d"

local plastics = data.raw.technology["plastics"]

plastics.effects = {
  {
    type = "unlock-recipe",
    recipe = "to-polyethylene"
  },
  {
    type = "unlock-recipe",
    recipe = "plastic-bar"
  }
}
plastics.prerequisites = {"sulfur-processing"}

-- new techs

local gasoline = {
  type = "technology",
  name = "gasoline",
  order = "d-b",
  prerequisites = {
    "advanced-oil-processing","flammables"
  },
  icon_size = 64,
  icon_mipmaps = 4,
  icons = {
    {
      icon = "__trigonometric-oil__/graphics/icons/gasoline.png",
      tint = { b = 0.9, g = 0.75, r = 0.9 }
    }
  },
  effects = {
    {type = "unlock-recipe", recipe = "to-gasoline"},
    {type = "unlock-recipe", recipe = "gas-furnace"},
    {type = "unlock-recipe", recipe = "gas-power-station"}
  },
  unit =
  {
    count = 75,
    ingredients = {{"automation-science-pack", 1},{"logistic-science-pack",1}},
    time = 30
  }
}

local petcoke = {
  type = "technology",
  name = "petcoke",
  order = "d-b",
  prerequisites = {
    "oil-processing"
  },
  icon_size = 64,
  icon_mipmaps = 4,
  icons = {
    {
      icon = "__base__/graphics/icons/coal.png",
      tint = { b = 0.9, g = 0.75, r = 0.9 }
    }
  },
  effects = {{type = "unlock-recipe", recipe = "to-petcoke"}},
  unit =
  {
    count = 75,
    ingredients = {{"automation-science-pack", 1},{"logistic-science-pack",1}},
    time = 30
  }
}

data:extend{
  basicOil,
  advOil,
  gasoline,
  plastics,
  petcoke,
  sulfur}