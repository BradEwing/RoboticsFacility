-- Adds "robotics" alongside a recipe's existing categories, so it can still be crafted wherever it could before.
local function add_robotics_category(name)
    local recipe = data.raw.recipe[name]
    recipe.categories = recipe.categories or {"crafting"}
    for _, category in pairs(recipe.categories) do
        if category == "robotics" then return end
    end
    table.insert(recipe.categories, "robotics")
end

return add_robotics_category
