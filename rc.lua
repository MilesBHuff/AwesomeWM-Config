-- Get current working directory
cwd = "/home/miles/.config/awesome/"

-- If LuaRocks is installed, make sure that packages installed through it are found. If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

-- Basics
gears = require("gears")
awful = require("awful")

-- Themes
beautiful = require("beautiful")
beautiful.init(cwd .. "themes/optimality/theme.lua")

-- Widgets
wibox = require("wibox")
menubar = require("menubar")
naughty = require("naughty")

-- Window management
require("awful.autofocus")

-- Hotkeys
hotkeys_popup = require("awful.hotkeys_popup")
require("awful.hotkeys_popup.keys")

-- Custom code
require("src/errors")
require("src/tags")
require("src/menu")
require("src/widgets")
require("src/panels")
-- require("src/oldpanel")
require("src/input")
require("src/rules")
require("src/signals")
