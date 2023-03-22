-- require("code.vanilla-overrides")

-- thank you, GotLag for the original code and asset work below!
-- https://mods.factorio.com/mod/Flare%20Stack

function generate_recipe(fluid,filename,category)
    data:extend({
        {
          type = "recipe",
          name = fluid .. "-" .. category,
          category = category,
          enabled = true,
          emissions_multiplier = 1,
          hidden = true,
          energy_required = 1,
          ingredients =
          {
            {type="fluid", name=fluid, amount=25}
          },
          results = { },
          icons = {
            {
              icon = "__trigonometric-oil__/graphics/icons/" .. filename .. ".png",
              icon_size = 64,
              icon_mipmaps = 4
            },
            {
            icon = "__trigonometric-oil__/graphics/flare-stack/icons/no.png",
            icon_size = 32
            },
          },
          subgroup = "fluid-recipes",
          order = "z[incineration]"
        }
      })
end

generate_recipe("crude-oil","crude-oil","flaring")
generate_recipe("heavy-oil","heavy-oil","flaring")
generate_recipe("light-oil","light-oil","flaring")
generate_recipe("petroleum-gas","ethylene","flaring")
generate_recipe("to-gasoline","gasoline","flaring")

generate_recipe("steam","steam","venting")
generate_recipe("petroleum-gas","ethylene","venting")
generate_recipe("to-pollutant","carbon-dioxide","venting")
generate_recipe("to-sulfide","hydrogen-sulfide","venting")
generate_recipe("to-vacuum","vacuum","venting")

-- Compatibility 

if mods["aai-industry"] then
data.raw.recipe["oil-processing-heavy"].hidden = true
data.raw.recipe["oil-processing-heavy"].enabled = false
data.raw.technology["advanced-oil-processing"].effects = {
  {type = "unlock-recipe", recipe = "to-adv-oil"},
  {type = "unlock-recipe", recipe = "to-vacuum"},
  {type = "unlock-recipe", recipe = "vacuum-pump"}
}
end

if mods["AsphaltPaving"] then
  data.raw.recipe["Arci-asphalt"].ingredients =
  {
      {type="fluid", name="heavy-oil", amount=10},
      {type="item", name="to-asphalt", amount=5},
      {type="item", name="stone-brick", amount=4}
  }
end

if mods["bzlead"] then 
  data.raw.recipe["to-gasoline"].ingredients = {
    {
    amount = 30,
    name = "light-oil",
    type = "fluid"
    },
    {
    amount = 1,
    name = "lead-plate",
    type = "item"
    }
  }
end