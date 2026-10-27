require "__RoboticsFacility__.compatability.CombatRobotsOverhaul"
require "__RoboticsFacility__.compatability.botsbotsbotsfork"
require "__RoboticsFacility__.compatability.lokisbotsfork"
require "__RoboticsFacility__.compatability.5dim_logistic"
require "__RoboticsFacility__.compatability.5dim_transport"
local add_robotics_category = require("__RoboticsFacility__.lib.categories")

-- Logistics
add_robotics_category("construction-robot")
add_robotics_category("logistic-robot")
add_robotics_category("roboport")
add_robotics_category("active-provider-chest")
add_robotics_category("passive-provider-chest")
add_robotics_category("storage-chest")
add_robotics_category("buffer-chest")
add_robotics_category("requester-chest")

-- Inserters
add_robotics_category("inserter")
add_robotics_category("long-handed-inserter")
add_robotics_category("fast-inserter")
add_robotics_category("bulk-inserter")
add_robotics_category("stack-inserter")

-- Spidertron
add_robotics_category("spidertron")

-- Intermediates
add_robotics_category("flying-robot-frame")
add_robotics_category("engine-unit")
add_robotics_category("electric-engine-unit")

-- Space Buildings
add_robotics_category("asteroid-collector")

-- Capsules
add_robotics_category("defender-capsule")
add_robotics_category("distractor-capsule")
add_robotics_category("destroyer-capsule")

-- Personal Equipment 
add_robotics_category("exoskeleton-equipment")
add_robotics_category("personal-roboport-equipment")
add_robotics_category("personal-roboport-mk2-equipment")
add_robotics_category("power-armor")
add_robotics_category("power-armor-mk2")
add_robotics_category("mech-armor")

-- Ammo
add_robotics_category("capture-robot-rocket")