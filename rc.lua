-- External libraries
-- -----------------------------------------------------------------------------
pcall(require, "luarocks.loader") -- If LuaRocks is installed, make sure that packages installed through it are found. If LuaRocks is not installed, do nothing.
awful = require("awful")
beautiful = require("beautiful")

-- Variables
-- -----------------------------------------------------------------------------
globals = require("common/defines")
beautiful.init(globals.cwd .. "theme/rc.lua")
require("common/helpers")

-- Error-handling
-- -----------------------------------------------------------------------------
require("common/errors")

-- Window management (pre-DE)
-- -----------------------------------------------------------------------------
tags = require("wm/tags")

-- Desktop environment
-- -----------------------------------------------------------------------------
if globals.de then
    require("de/desktop")
    wibox   = require("wibox")
    widgets = require("de/widgets")
    panels  = require("de/panels")
end

-- Window management (post-DE)
-- -----------------------------------------------------------------------------
require("awful.autofocus")
require("wm/input")
require("wm/rules")
require("wm/signals")
