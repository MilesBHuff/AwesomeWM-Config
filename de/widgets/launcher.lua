local menubar = require("menubar")

--------------------------------------------------------------------------------
-- Applications
terminal = "terminator"
menubar.utils.terminal = terminal
editor = os.getenv("VISUAL") or os.getenv("EDITOR")

--------------------------------------------------------------------------------
-- Menu variables
edit  = terminal .. " -e " .. editor
env   = " /usr/bin/env "
kgtk  = " /usr/bin/kgtk-wrapper "
oput  = " 1>&- 2>&- "
steam = " LD_PRELOAD=/usr/lib32/libudev.so.1 /usr/bin/steam-native "
game  = " " .. globals.cwd .. "lib/wrappers/run-wo-comp.sh "
wine  = " WINEPREFIX='/home/miles/.wine' "

--------------------------------------------------------------------------------
local main_menu = awful.menu({items = {
	{"&Utilities",      require("de/widgets/menus/utilities"),      beautiful.getIcon("categories", "applications-accessories")},
	{"&Productivity",   require("de/widgets/menus/productivity"),   beautiful.getIcon("categories", "applications-office")},
	{"&Multimedia",     require("de/widgets/menus/multimedia"),     beautiful.getIcon("categories", "applications-multimedia")},
	{"G&raphics",       require("de/widgets/menus/graphics"),       beautiful.getIcon("categories", "applications-graphics")},
	{"&Gaming",         require("de/widgets/menus/gaming"),         beautiful.getIcon("categories", "applications-games")},
	{"&Administration", require("de/widgets/menus/administration"), beautiful.getIcon("categories", "applications-system")},
	{nil,               nil,                                        nil},
	{"&Leaving",        require("de/widgets/menus/leaving"),        nil},
}})

--------------------------------------------------------------------------------
return awful.widget.launcher({image = beautiful.getIcon("apps", "gnome-panel-launcher"), menu = main_menu})
