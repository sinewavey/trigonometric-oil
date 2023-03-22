data:extend({
  {
    type = "recipe-category",
    name = "special-oil"
  }
})

local lubricant = data.raw.recipe["lubricant"]
local plastic = data.raw.recipe["plastic-bar"]
local sulfur = data.raw.recipe["sulfur"]
local coalLiquefaction = data.raw.recipe["coal-liquefaction"]

data.raw.recipe["battery"].subgroup = "chemicals"
data.raw.recipe["battery"].order = "g[sulfur]-d"

data.raw.recipe["explosives"].subgroup = "chemicals"
data.raw.recipe["explosives"].order = "g[sulfur]-e"

data.raw.recipe["sulfuric-acid"].order = "g[sulfur]-b"
data.raw.recipe["sulfuric-acid"].subgroup = "chemicals"

data.raw.recipe["rocket-fuel"].ingredients = {
    {amount = 5, name = "solid-fuel", type = "item"},
    {amount = 20, name = "to-gasoline", type = "fluid"}
}

coalLiquefaction.always_show_made_in = true
coalLiquefaction.ingredients = {
  {
    amount = 10,
    name = "coal",
    type = "item"
  },
  {
    amount = 25,
    name = "heavy-oil",
    type = "fluid"
  },
  {
    amount = 50,
    name = "steam",
    type = "fluid"
  }
}
coalLiquefaction.results = {
  {
    amount_min = 1,
    amount_max = 3,
    name = "to-asphalt",
    type = "item"
  },
  {
    amount = 1,
    probability = 0.10,
    name = "solid-fuel",
    type = "item"
  },
  {
    amount = 15,
    fluidbox_index = 1,
    name = "heavy-oil",
    type = "fluid"
  },
  {
    amount = 35,
    fluidbox_index = 2,
    name = "light-oil",
    type = "fluid"
  },
  {
    amount = 50,
    fluidbox_index = 3,
    name = "to-pollutant",
    type = "fluid"
  }
}
coalLiquefaction.order = "a[oil-processing]-b[coal-liq]"
coalLiquefaction.icon = "__trigonometric-oil__/graphics/icons/coal-liquefaction.png"
coalLiquefaction.icon_size = 64
coalLiquefaction.mipmaps = 1

lubricant.ingredients = {
    {type = "fluid", name = "heavy-oil", amount = 20}, 
    {type = "item", name = "sulfur", amount = 2},
    {type = "item", name = "iron-ore", amount = 1}
}
lubricant.order = "g[sulfur]-c"
lubricant.subgroup = "chemicals"

plastic.category = "crafting-with-fluid"
plastic.order = "g[plastic]-b"
plastic.ingredients = {{amount = 25, name = "to-polyethylene", type = "fluid"}}
plastic.results = {{amount = , name = "plastic-bar", type = "item"}}
plastic.subgroup = "chemicals"

sulfur.ingredients = {
  {type = "fluid", name = "to-sulfide", amount = 30}, 
  {type = "fluid", name = "water", amount = 20},
}
sulfur.icons = {
  {
    icon = "__base__/graphics/icons/sulfur.png",
  }
}
sulfur.icon_size = 64
sulfur.icon_mipmaps = 4
sulfur.order = "g[sulfur]-a"
sulfur.subgroup = "chemicals"
sulfur.results = {
  { 
    amount_min = 5,
    amount_max = 13,
    temperature = 100,
    name = "steam",
    type = "fluid"
  },
  {
    amount = 4,
    name = "sulfur",
    type = "item"
  }
}

-- Basic Distillation
  
local basicOil = {
  always_show_made_in = true,
  category = "oil-processing",
  enabled = false,
  energy_required = 5,
  icon = "__trigonometric-oil__/graphics/icons/basic-oil-processing-v2.png",
  icon_size = 64,
  icon_mipmaps = 1,
  ingredients = {
    {
      amount = 100,
      fluidbox_index = 1,
      name = "crude-oil",
      type = "fluid"
    },
    {
      amount = 50,
      fluidbox_index = 2,
      name = "water",
      type = "fluid"
    }
  },
  main_product = "",
  name = "to-basic-oil",
  order = "a[oil-processing]-a[atmospheric-dist]",
  results = {
    {
      amount = 5,
      name = "to-asphalt",
      type = "item"
    },
    {
      amount = 35,
      fluidbox_index = 1,
      name = "heavy-oil",
      type = "fluid"
    },
    {
      amount = 40,
      fluidbox_index = 2,
      name = "light-oil",
      type = "fluid"
    },
    {
      amount = 60,
      fluidbox_index = 3,
      name = "to-pollutant",
      type = "fluid"
    }
  },
  subgroup = "fluid-recipes",
  type = "recipe"
}

-- Vacuum Distillation

local advOil = {
  always_show_made_in = true,
  category = "oil-processing",
  enabled = false,
  energy_required = 5,
  icon = "__trigonometric-oil__/graphics/icons/advanced-oil-processing-v2.png",
  icon_size = 64,
  icon_mipmaps = 1,
  ingredients = {
      {
        amount = 100,
        fluidbox_index = 1,
        name = "crude-oil",
        type = "fluid"
      },
      {
        amount = 50,
        fluidbox_index = 2,
        name = "to-vacuum",
        type = "fluid"
      }
  },
  main_product = "",
  name = "to-adv-oil",
  order = "a[oil-processing]-a[vacuum-dist]",
  results = {
      {
        probability = 0.25,
        amount = 1,
        name = "to-asphalt",
        type = "item"
      },
      {
        amount = 45,
        fluidbox_index = 1,
        name = "heavy-oil",
        type = "fluid"
      },
      {
        amount = 45,
        fluidbox_index = 2,
        name = "light-oil",
        type = "fluid"
      },
      {
        amount = 40,
        fluidbox_index = 3,
        name = "to-pollutant",
        type = "fluid"
      }
  },
  subgroup = "fluid-recipes",
  type = "recipe"
}

-- Polyethylene

local plasticFluid = {
  category = "chemistry",
  enabled = false,
  energy_required = 1,
  ingredients = {
      {type = "fluid", name = "petroleum-gas", amount = 15}, 
      {type = "fluid", name = "water", amount = 20},
      {type = "item", name = "coal", amount = 1}
  },
  always_show_made_in = true,
  name = "to-polyethylene",
  order = "g[plastic]-a",
  results = {
      {
      amount = 25,
      name = "to-polyethylene",
      type = "fluid"
      }
  },
  subgroup = "chemicals",
  type = "recipe"
}

-- Petroleum Coke

local petcoke = {
    category = "special-oil",
    crafting_machine_tint = {
      primary = {
        a = 1,
        b = 0.56599999999999993,
        g = 0.62800000000000002,
        r = 0.88900000000000006
      },
      quaternary = {
        a = 1,
        b = 0.127,
        g = 0.39500000000000002,
        r = 1
      },
      secondary = {
        a = 1,
        b = 0.64400000000000004,
        g = 0.66800000000000006,
        r = 0.80300000000000011
      },
      tertiary = {
        a = 1,
        b = 0.57599999999999998,
        g = 0.65899999999999999,
        r = 0.85399999999999991
      }
    },
    enabled = false,
    energy_required = 2,
    icons = {
        {
        icon = "__base__/graphics/icons/stone.png",
        tint = { b = 0.2, g = 0.2, r = 0.2 }
        },
    },
    icon_size = 64, icon_mipmaps = 4,
    ingredients = {
        {type = "fluid", name = "heavy-oil", amount = 15}, 
        {type = "item", name = "to-asphalt", amount = 3}
    },
    name = "to-petcoke",
    order = "g[petcoke]",
    always_show_made_in = true,
    results = {
        {
          amount = 1,
          name = "solid-fuel",
          type = "item"
        },
        {
          amount = 20,
          name = "to-pollutant",
          type = "fluid"
        }
          
    },
    subgroup = "fluid-recipes",
    type = "recipe"
}

-- Sulfur Hydrotreatment

local lightCracking = {
    category = "special-oil",
    crafting_machine_tint = {
        primary = {
          a = 1,
          b = 0.088999999999999986,
          g = 0.99499999999999993,
          r = 1
        },
        quaternary = {
          a = 1,
          b = 0.35,
          g = 1,
          r = 0.95399999999999991
        },
        secondary = {
          a = 1,
          b = 0.69099999999999993,
          g = 0.97400000000000002,
          r = 1
        },
        tertiary = {
          a = 1,
          b = 0.71399999999999997,
          g = 0.63799999999999999,
          r = 0.72299999999999995
        }
    },
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "light-oil", amount = 45}, 
        {type = "fluid", name = "water", amount = 20},
        {type = "item", name = "iron-plate", amount = 2}
    },
    name = "to-sulfide",
    order = "a[oil-processing]-b[sulfur-hydro]",
    always_show_made_in = true,
    icon = "__trigonometric-oil__/graphics/icons/light-oil-cracking.png",
    icon_mipmaps = 1,
    icon_size = 64,
    results = {
        {
            amount = 25,
            name = "to-sulfide",
            type = "fluid"
        },
        {
            amount = 20,
            name = "petroleum-gas",
            type = "fluid"
        },
        
    },
    subgroup = "fluid-recipes",
    type = "recipe"
}

-- Fluid Catalytic Cracking

local heavyCracking = {
  crafting_machine_tint = {
    primary = {
      a = 1,
      b = 0.26100000000000003,
      g = 0.64199999999999999,
      r = 1
    },
    quaternary = {
      a = 1,
      b = 0.271,
      g = 0.49399999999999995,
      r = 1
    },
    secondary = {
      a = 1,
      b = 0.37599999999999998,
      g = 0.72199999999999998,
      r = 1
    },
    tertiary = {
      a = 1,
      b = 0.57599999999999998,
      g = 0.65899999999999999,
      r = 0.85399999999999991
    }
  },
  category = "special-oil",
  enabled = false,
  energy_required = 4,
  icon = "__trigonometric-oil__/graphics/icons/heavy-oil-cracking.png",
  icon_mipmaps = 1,
  icon_size = 64,
  ingredients = {
      {
      amount = 30,
      fluidbox_index = 1,
      name = "heavy-oil",
      type = "fluid"
      },
      {
      amount = 6,
      fluidbox_index = 2,
      name = "sulfuric-acid",
      type = "fluid"
      }
  },
  main_product = "",
  name = "to-heavy-cracking",
  order = "a[oil-processing]-b[fluid-catalytic]",
  always_show_made_in = true,
  results = {
      {
        amount = 25,
        fluidbox_index = 1,
        name = "light-oil",
        type = "fluid"
      },
      {
        amount = 25,
        fluidbox_index = 2,
        name = "to-pollutant",
        type = "fluid"
      },
      {
        probability = 0.75,
        amount = 1,
        name = "to-asphalt",
        type = "item"
      }
  },
  subgroup = "fluid-recipes",
  type = "recipe"
}

-- Gasoline

local gasoline = {
  crafting_machine_tint = {
    primary = {
      a = 1,
      b = 0.427,
      g = 0.78,
      r = 0.73
    },
    quaternary = {
      a = 1,
      b = 0.427,
      g = 0.78,
      r = 0.73
    },
    secondary = {
      a = 1,
      b = 0.427,
      g = 0.78,
      r = 0.73
    },
    tertiary = {
      a = 1,
      b = 0.427,
      g = 0.78,
      r = 0.73
    }
  },
  category = "special-oil",
  enabled = false,
  energy_required = 4,
  icon = "__trigonometric-oil__/graphics/icons/gasoline.png",
  icon_mipmaps = 4,
  icon_size = 64,
  ingredients = {
      {
      amount = 30,
      name = "light-oil",
      type = "fluid"
      },
      {
      amount = 1,
      name = "copper-ore",
      type = "item"
      }
  },
  main_product = "",
  name = "to-gasoline",
  order = "a[oil-processing]-b[liqid-fuel]",
  always_show_made_in = true,
  results = {
      {
        amount = 25,
        fluidbox_index = 2,
        name = "to-gasoline",
        type = "fluid"
      },
      {
        amount = 10,
        fluidbox_index = 1,
        name = "to-pollutant",
        type = "fluid"
      },
      {
        probability = 0.05,
        amount = 1,
        name = "to-asphalt",
        type = "item"
      }
  },
  subgroup = "fluid-recipes",
  type = "recipe"
}

data:extend{
  advOil,
  basicOil,
  gasoline,
  heavyCracking,
  lightCracking,
  petcoke,
  plastic,
  plasticFluid,
  rocketFuel,
  sulfur
}
  