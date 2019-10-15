terminal = "terminator"
editor = os.getenv("VISUAL") or "nano"
editor_cmd = terminal .. " -e " .. editor

--------------------------------------------------------------------------------
env   = " /usr/bin/env "
kgtk  = " /usr/bin/kgtk-wrapper "
oput  = " 1>&- 2>&- "
steam = " LD_PRELOAD=/usr/lib32/libudev.so.1 /usr/bin/steam-native "
game  = " /home/miles/.local/src/personal/misc-code/code/wrappers/LoadGame.sh "
wine  = " WINEPREFIX='/home/miles/.wine' "

--------------------------------------------------------------------------------
mymainmenu = awful.menu({
    items = {
	{"&Utilities"     , require("src/menus/utilities")     , beautiful.icons .. "Categories/accessories.png"},
	{"&Productivity"  , require("src/menus/productivity")  , beautiful.icons .. "Categories/office.png"     },
	{"&Multimedia"    , require("src/menus/multimedia")    , beautiful.icons .. "Categories/multimedia.png" },
	{"G&raphics"      , require("src/menus/graphics")      , beautiful.icons .. "Categories/graphics.png"   },
	{"&Gaming"        , require("src/menus/gaming")        , beautiful.icons .. "Categories/games.png"      },
	{"&Administration", require("src/menus/administration"), beautiful.icons .. "Categories/system.png"     },
	{nil              , nil                                , nil                                            },
	{"&Leaving"       , require("src/menus/leaving")       , nil                                            },
    }
})

--------------------------------------------------------------------------------
mylauncher = awful.widget.launcher({image = beautiful.icons .. "Categories/launcher.png", menu = mymainmenu})
menubar.utils.terminal = terminal
