data.raw["assembling-machine"]["oil-refinery"].energy_usage = "450kW"
data.raw["assembling-machine"]["chemical-plant"].energy_usage = "250kW"

-- from brevven bzlead, add prod mods

addEffectsTo = {
  "to-polyethylene",
  "solid-fuel",
  "to-sulfide",
  "to-basic-oil",
  "to-adv-oil",
  "to-heavy-cracking"}

for i, recipe in pairs(addEffectsTo) do
  if data.raw.recipe[recipe] then
    for j, module in pairs(data.raw.module) do
      if module.effect then
        for effect_name, effect in pairs(module.effect) do
          if effect_name == "productivity" and effect.bonus > 0 and module.limitation and #module.limitation > 0 then
            table.insert(module.limitation, recipe)
          end
        end
      end
    end
  end
end

sg = data.raw["item-subgroup"]["raw-resource"]
sg.group = "intermediate-products"
sg.name = "raw-resource"
sg.order = "b-a"
sg.type = "item-subgroup"