if not mods["maraxsis"] then return end 

-- Maraxsis appends "maraxsis-hydro-plant" to these recipes; restore it after our categories override.
table.insert(data.raw.recipe["engine-unit"].categories, "maraxsis-hydro-plant")
table.insert(data.raw.recipe["electric-engine-unit"].categories, "maraxsis-hydro-plant")