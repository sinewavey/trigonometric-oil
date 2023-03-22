-- subgroup

data:extend{
  {
    group = "intermediate-products",
    name = "chemicals",
    order = "b-z",
    type = "item-subgroup"
  }
}

-- solids

local solidFuel = {
  icons = {
    {
      icon = "__base__/graphics/icons/coal-1.png",
      tint = { b = 0.9, g = 0.75, r = 0.9 }
    },
  },
  icon_size = 64, icon_mipmaps = 4,
  name = "solid-fuel",
  order = "g[petroleum-coke]",
  stack_size = 50,
  fuel_acceleration_multiplier = 1.25,
  fuel_category = "chemical",
  fuel_top_speed_multiplier = 1.15,
  fuel_value = "10MJ",
  stack_size = 50,
  subgroup = "chemicals",
  type = "item",
  pictures = {
    {
      filename = "__base__/graphics/icons/coal.png",
      mipmap_count = 4,
      scale = 0.25,
      size = 64,
      tint = { b = 0.9, g = 0.75, r = 0.9 }
    },
    {
      filename = "__base__/graphics/icons/coal-1.png",
      mipmap_count = 4,
      scale = 0.25,
      size = 64,
      tint = { b = 0.9, g = 0.75, r = 0.9 }
    },
    {
      filename = "__base__/graphics/icons/coal-2.png",
      mipmap_count = 4,
      scale = 0.25,
      size = 64,
      tint = { b = 0.9, g = 0.75, r = 0.9 }
    },
    {
      filename = "__base__/graphics/icons/coal-3.png",
      mipmap_count = 4,
      scale = 0.25,
      size = 64,
      tint = { b = 0.9, g = 0.75, r = 0.9 }
    }
  },
}

local asphaltItem = {
  icons = {
    {
      icon = "__base__/graphics/icons/stone-2.png",
      tint = { b = 0.2, g = 0.2, r = 0.2 }
    },
  },
  icon_size = 64, icon_mipmaps = 4,
  name = "to-asphalt",
  order = "g[asphalt]",
  stack_size = 50,
  subgroup = "chemicals",
  type = "item",
  pictures = {
    {
      filename = "__base__/graphics/icons/stone.png",
      mipmap_count = 4,
      scale = 0.25,
      size = 64,
      tint = { b = 0.2, g = 0.2, r = 0.2 }
    },
    {
      filename = "__base__/graphics/icons/stone-1.png",
      mipmap_count = 4,
      scale = 0.25,
      size = 64,
      tint = { b = 0.2, g = 0.2, r = 0.2 }
    },
    {
      filename = "__base__/graphics/icons/stone-2.png",
      mipmap_count = 4,
      scale = 0.25,
      size = 64,
      tint = { b = 0.2, g = 0.2, r = 0.2 }
    },
    {
      filename = "__base__/graphics/icons/stone-3.png",
      mipmap_count = 4,
      scale = 0.25,
      size = 64,
      tint = { b = 0.2, g = 0.2, r = 0.2 }
    }
  }
}

data:extend{
  asphaltItem,
  solidFuel
}