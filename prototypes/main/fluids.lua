-- New fluids

local gasoline = {
  base_color = {
    b = 0.427,
    g = 0.78,
    r = 0.73
  },
  default_temperature = 25,
  flow_color = {
    b = 0.427,
    g = 0.78,
    r = 0.73
  },
  icon = "__trigonometric-oil__/graphics/icons/gasoline.png",
  icon_mipmaps = 4,
  icon_size = 64,
  fuel_value = "0.4MJ",
  name = "to-gasoline",
  order = "a[fluid]-d[liquid-fuel]",
  type = "fluid"
}

local plasticFluid = {
    base_color = {
      b = 0.8,
      g = 0.8,
      r = 0.8
    },
    default_temperature = 25,
    flow_color = {
      b = 0.8,
      g = 0.8,
      r = 0.8
    },
    icon = "__trigonometric-oil__/graphics/icons/polyethylene.png",
    icon_mipmaps = 4,
    icon_size = 64,
    fuel_value = "0KJ",
    name = "to-polyethylene",
    order = "a[fluid]-d[polyethylene]",
    type = "fluid"
}
  
local sulfideFluid = {
    base_color = {
      b = 0.1,
      g = 0.65,
      r = 0.75
    },
    default_temperature = 25,
    flow_color = {
      b = 0.1,
      g = 1,
      r = 0.7
    },
    icon = "__trigonometric-oil__/graphics/icons/hydrogen-sulfide.png",
    icon_mipmaps = 4,
    icon_size = 64,
    fuel_value = "0KJ",
    name = "to-sulfide",
    order = "a[fluid]-f[hydrogen-sulfide]",
    type = "fluid"
  }
  
local pollutionFluid = {
    emissions_multiplier = 1,
    base_color = {
      b = 0.2,
      g = 0.2,
      r = 0.2
    },
    default_temperature = 25,
    flow_color = {
      b = 0.2,
      g = 0.2,
      r = 0.2
    },
    icon = "__trigonometric-oil__/graphics/icons/carbon-dioxide.png",
    icon_mipmaps = 4,
    icon_size = 64,
    fuel_value = "0KJ",
    name = "to-pollutant",
    order = "a[fluid]-y[pollutant]",
    type = "fluid"
}

data:extend{
gasoline,
plasticFluid,
sulfideFluid,
pollutionFluid
}

-- vanilla overrides

local acid = data.raw.fluid["sulfuric-acid"]

acid.fuel_value = "0KJ"
acid.icon = "__trigonometric-oil__/graphics/icons/sulfuric-acid.png"
acid.icon_size = 64
acid.icon_mipmaps = 4
acid.order = "g[sulfur]-b"

local crude = data.raw.fluid["crude-oil"]

crude.fuel_value = "2KJ"
crude.icon = "__trigonometric-oil__/graphics/icons/crude-oil.png"
crude.icon_size = 64
crude.icon_mipmaps = 4

local heavyOil = {
  base_color = {
    b = 0,
    g = 0.04,
    r = 0.5
  },
  default_temperature = 25,
  flow_color = {
    b = 0.3,
    g = 0.6,
    r = 0.85
  },
  icon = "__trigonometric-oil__/graphics/icons/heavy-oil.png",
  icon_mipmaps = 4,
  icon_size = 64,
  fuel_value = "5KJ",
  name = "heavy-oil",
  order = "a[fluid]-b[heavy-oil]",
  type = "fluid"
}

local lightGas = {
base_color = {
  b = 0,
  g = 0.33000000000000003,
  r = 0.56999999999999993
},
default_temperature = 25,
flow_color = {
  b = 0.070000000000000009,
  g = 0.72999999999999998,
  r = 1
},
icon = "__trigonometric-oil__/graphics/icons/light-oil.png",
icon_mipmaps = 4,
icon_size = 64,
fuel_value = "10KJ",
name = "light-oil",
order = "a[fluid]-c[light-gas]",
type = "fluid"
}

local ethylene = {
  base_color = {
    b = 0.3,
    g = 0.1,
    r = 0.3
  },
  default_temperature = 25,
  flow_color = {
    b = 0.8,
    g = 0.8,
    r = 0.8
  },
  icon = "__trigonometric-oil__/graphics/icons/ethylene.png",
  icon_mipmaps = 4,
  icon_size = 64,
  fuel_value = "15KJ",
  name = "petroleum-gas",
  order = "a[fluid]-d[ethylene]",
  type = "fluid"
}

data:extend{heavyOil, lightGas, ethylene}