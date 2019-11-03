-- External libraries
-- -----------------------------------------------------------------------------
pcall(require, "luarocks.loader") -- If LuaRocks is installed, make sure that packages installed through it are found. If LuaRocks is not installed, do nothing.
awful = require("awful")
beautiful = require("beautiful")

-- Variables
-- -----------------------------------------------------------------------------
require("common/defines")
beautiful.init(cwd .. "theme/rc.lua")
require("common/helpers")

-- Error-handling
-- -----------------------------------------------------------------------------
require("common/errors")

-- Window management (pre-DE)
-- -----------------------------------------------------------------------------
tags = require("wm/tags")

-- Desktop environment
-- -----------------------------------------------------------------------------
if de then
    require("de/desktop")
    require("de/menu")
    wibox = require("wibox")
    require("de/widgets")
    panels = require("de/panels")
end

-- Window management (post-DE)
-- -----------------------------------------------------------------------------
require("awful.autofocus")
require("wm/input")
require("wm/rules")
require("wm/signals")
