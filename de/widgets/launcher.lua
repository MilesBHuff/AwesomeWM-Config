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
game  = " /home/miles/.local/src/personal/misc-code/code/wrappers/LoadGame.sh "
wine  = " WINEPREFIX='/home/miles/.wine' "

--------------------------------------------------------------------------------
local main_menu = awful.menu({items = {
	{"&Utilities",      require("de/widgets/menus/utilities"),      beautiful.icons .. "Categories/accessories.png"},
	{"&Productivity",   require("de/widgets/menus/productivity"),   beautiful.icons .. "Categories/office.png"},
	{"&Multimedia",     require("de/widgets/menus/multimedia"),     beautiful.icons .. "Categories/multimedia.png"},
	{"G&raphics",       require("de/widgets/menus/graphics"),       beautiful.icons .. "Categories/graphics.png"},
	{"&Gaming",         require("de/widgets/menus/gaming"),         beautiful.icons .. "Categories/games.png"},
	{"&Administration", require("de/widgets/menus/administration"), beautiful.icons .. "Categories/system.png"},
	{nil,               nil,                                        nil},
	{"&Leaving",        require("de/widgets/menus/leaving"),        nil},
}})

--------------------------------------------------------------------------------
return awful.widget.launcher({image = beautiful.icons .. "Categories/launcher.png", menu = main_menu})
