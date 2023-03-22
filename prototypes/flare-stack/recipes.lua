data:extend(
{
  -- Vent Stack **************************************************************************
  {
    type = "recipe",
    name = "vent-stack",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {"iron-plate", 5},
      {"iron-gear-wheel", 5},
      {"electronic-circuit", 2},
      {"pipe", 5}
    },
    result = "vent-stack"
  },
  
  -- Venting recipes *********************************************************************
  {
    type = "recipe-category",
    name = "venting"
  },
  
  -- Flare Stack *************************************************************************
  {
    type = "recipe",
    name = "flare-stack",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 5},
      {"iron-gear-wheel", 5},
      {"electronic-circuit", 2},
      {"pipe", 5}
    },
    result = "flare-stack"
  },
  
  -- Flaring recipes *********************************************************************
  -- see data-final-fixes for list of fluids to be flared
  {
    type = "recipe-category",
    name = "flaring"
  }
})