for index, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipes = force.recipes
  
    function enableTech(tech)
      technologies[tech].researched = true
    end
    
    function enableRecipe(recipe)
      recipes[recipe].enabled = true
    end

    if technologies["rocket-fuel"].researched then
      game.print("Unlocking rocket fuel recipes.")
        enableTech("gasoline")
        enableRecipe("rocket-fuel")
    end

    if technologies["gasoline"].researched then
      game.print("Unlocking liquid fuel recipes")
      enableTech("advanced-oil-processing")
      enableTech("flammables")
      enableRecipe("to-gasoline")
      enableRecipe("gas-furnace")
      enableRecipe("gas-power-station")
      enableRecipe("fill-to-gasoline-barrel")
      enableRecipe("empty-to-gasoline-barrel")
    end

    if technologies["lubricant"].researched then
      game.print("Unlocking lubericant recipes")
      enableRecipe("lubricant")
      enableTech("sulfur-processing")
      enableTech("advanced-oil-processing")
      enableRecipe("fill-lubricant-barrel")
      enableRecipe("empty-lubricant-barrel")
    end

    if technologies["advanced-oil-processing"].researched then
      game.print("Unlocking advanced oil processing recipes")
      enableRecipe("to-adv-oil")
      enableRecipe("to-vacuum")
      enableRecipe("vacuum-pump")
      enableRecipe("fill-to-vacuum-barrel")
      enableRecipe("empty-to-vacuum-barrel")
    end

    if technologies["plastics"].researched then
      game.print("Unlocking plastics recipes")
      enableTech("sulfur-processing")
      enableRecipe("to-polyethylene")
      enableRecipe("fill-to-polyethylene-barrel")
      enableRecipe("empty-to-polyethylene-barrel")
    end

    if technologies["sulfur-processing"].researched then 
      game.print("Unlocking sulfur recipes")
      enableTech("oil-processing")
      enableRecipe("to-sulfide")
      enableRecipe("sulfuric-acid")
      enableRecipe("sulfur")
      enableRecipe("fill-to-sulfide-barrel")
      enableRecipe("empty-to-sulfide-barrel")
    end

    if technologies["oil-processing"].researched then 
      game.print("Unlocking oil recipes")
      enableRecipe("flare-stack")
      enableRecipe("to-basic-oil")
      enableRecipe("to-heavy-cracking")
      enableRecipe("vent-stack")
      enableRecipe("fuel-refinery")
      enableRecipe("fill-to-pollutant-barrel")
      enableRecipe("empty-to-pollutant-barrel")
    end

  game.print("Trig Oil updated via v2a to 2.1.0")

end