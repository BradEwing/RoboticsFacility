-- Logistics
data.raw.recipe["construction-robot"].category = "robotics"
data.raw.recipe["logistic-robot"].category = "robotics"
data.raw.recipe["roboport"].category = "robotics"
data.raw.recipe["active-provider-chest"].category = "robotics"
data.raw.recipe["passive-provider-chest"].category = "robotics"
data.raw.recipe["storage-chest"].category = "robotics"
data.raw.recipe["buffer-chest"].category = "robotics"
data.raw.recipe["requester-chest"].category = "robotics"

-- Inserters
data.raw.recipe["inserter"].category = "robotics"
data.raw.recipe["long-handed-inserter"].category = "robotics"
data.raw.recipe["fast-inserter"].category = "robotics"
data.raw.recipe["bulk-inserter"].category = "robotics"
data.raw.recipe["stack-inserter"].category = "robotics"

-- Spidertron
data.raw.recipe["spidertron"].category = "robotics"

-- Intermediates
data.raw.recipe["flying-robot-frame"].category = "robotics"

-- Capsules
data.raw.recipe["defender-capsule"].category = "robotics"
data.raw.recipe["distractor-capsule"].category = "robotics"
data.raw.recipe["destroyer-capsule"].category = "robotics"

-- Personal Equipment 
data.raw.recipe["exoskeleton-equipment"].category = "robotics"
data.raw.recipe["personal-roboport-equipment"].category = "robotics"
data.raw.recipe["personal-roboport-mk2-equipment"].category = "robotics"
data.raw.recipe["power-armor"].category = "robotics"
data.raw.recipe["power-armor-mk2"].category = "robotics"
data.raw.recipe["mech-armor"].category = "robotics"

-- Adopted from Lunar Landings: https://github.com/tburrows13/LunarLandings/blob/0214b4e48ce1dadf149d2fe8d4f878b0bafb7b62/prototypes/low-grav-assembling-machine.lua#L5C1-L20C4
local function add_to_crafting_categories(prototype)
    local crafting_categories = prototype.crafting_categories or {}
    for i, category in pairs(crafting_categories) do
        if category == "crafting" then
            table.insert(crafting_categories, "robotics")
            break
        end
    end
end
  
for _, prototype in pairs(data.raw["assembling-machine"]) do
    add_to_crafting_categories(prototype)
end
for _, prototype in pairs(data.raw["character"]) do
    add_to_crafting_categories(prototype)
end