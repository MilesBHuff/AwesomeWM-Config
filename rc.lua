-- Global variables
DE = true
cwd = "/home/miles/.config/awesome/"

-- Global imports
pcall(require, "luarocks.loader") -- If LuaRocks is installed, make sure that packages installed through it are found. If LuaRocks is not installed, do nothing.
awful = require("awful")

-- Theme
beautiful = require("beautiful")
beautiful.init(cwd .. "theme/rc.lua")

-- Prerequisites
require("de/notifications")
require("wm/tags")

-- Desktop environment
if DE then
    require("de/menu")
    wibox = require("wibox")
    require("de/widgets")
    require("de/panels")
end

-- Window management
require("awful.autofocus")
require("wm/input")
require("wm/rules")
require("wm/signals")
