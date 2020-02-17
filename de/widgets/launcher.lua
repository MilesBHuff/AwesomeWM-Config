local menubar = require("menubar")

--------------------------------------------------------------------------------
-- Applications
editor = os.getenv("VISUAL") or os.getenv("EDITOR")
steam    = " steam-runtime "
terminal = "terminator"
menubar.utils.terminal = terminal

--------------------------------------------------------------------------------
-- Wrapper variables
wrappers = globals.cwd .. "lib/wrappers"
edit     = terminal .. " -e " .. editor
game     = " " .. wrappers .. "/run-wo-comp.sh "

--------------------------------------------------------------------------------
-- Command wrappers
env      = " /usr/bin/env WINEDEBUG=-all "
kgtk     = " /usr/bin/kgtk-wrapper "
oput     = " 1>&- 2>&- "
cmd = function(cmd)
    return env .. cmd --.. oput
end

--------------------------------------------------------------------------------
local main_menu = awful.menu({items = {
	{"&Utilities",      require("de/widgets/menus/utilities"),      beautiful.get_icon("applications-accessories")},
	{"&Productivity",   require("de/widgets/menus/productivity"),   beautiful.get_icon("applications-office")},
	{"&Multimedia",     require("de/widgets/menus/multimedia"),     beautiful.get_icon("applications-multimedia")},
	{"G&raphics",       require("de/widgets/menus/graphics"),       beautiful.get_icon("applications-graphics")},
	{"&Gaming",         require("de/widgets/menus/gaming"),         beautiful.get_icon("applications-games")},
	{"&Administration", require("de/widgets/menus/administration"), beautiful.get_icon("applications-system")},
	{nil, nil, nil},
	{"&Quit",           require("de/widgets/menus/leaving"),        beautiful.get_icon("application-exit")},
}})

--------------------------------------------------------------------------------
return awful.widget.launcher({image = beautiful.get_icon("gnome-panel-launcher"), menu = main_menu})
