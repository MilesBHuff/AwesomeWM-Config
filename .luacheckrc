self = false
cache = true
color = true
-- The default config may set global variables
files["rc.lua"].allow_defined_top = true
-- These globals can be set and accessed.
globals = {
    -- external
    "awful",
    "beautiful",
    "wibox",
    -- defines
    "cwd",
    "de",
    "layouts",
    -- helpers
    "notify",
    "try_var",
    -- other
    "panels",
    -- defined in C
    "screen",
    "mouse",
    "root",
    "client"
},
-- These globals can only be accessed.
read_globals = {
    -- defined in C
    "awesome",
    "button",
    "dbus",
    "drawable",
    "drawin",
    "key",
    "keygrabber",
    "mousegrabber",
    "selection",
    "tag",
    "window",
    "table.unpack",
    "math.atan2",
},
