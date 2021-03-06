--------------------------------------------------------------------------------

local get_usage = function(args)
    return io.popen(globals.cwd .. "lib/applets/cpu-ram.bash " .. args):read("*all")
end

--------------------------------------------------------------------------------

local monitors  = {}
local tooltips  = {}
local timers    = {}
local callbacks = {}

--------------------------------------------------------------------------------

monitors.cpu = wibox.widget{
    widget = wibox.widget.textbox,
    align  = 'center',
    valign = 'center',
}
tooltips.cpu = awful.tooltip({objects = {monitors.cpu}})

monitors.cpu:set_font(beautiful.font_mono .. "7.5")
--tooltips.cpu:set_font(beautiful.font_mono .. "7.5")

callbacks.cpu = function()
    monitors.cpu:set_text(get_usage("-1n"))
    tooltips.cpu:set_text("\n  CPU:  " .. get_usage("-1nv") .. "  \n")
end
callbacks.cpu();

timers.cpu = timer({timeout = 1.5})
timers.cpu:connect_signal("timeout", callbacks.cpu)
timers.cpu:start()

--------------------------------------------------------------------------------

monitors.ram = wibox.widget{
    widget = wibox.widget.textbox,
    align  = 'center',
    valign = 'center',
}
tooltips.ram = awful.tooltip({objects = {monitors.ram}})

monitors.ram:set_font(beautiful.font_mono .. "7.5")
--tooltips.ram:set_font(beautiful.font_mono .. "7.5")

callbacks.ram = function()
    monitors.ram:set_text(get_usage("-1nr"))
    tooltips.ram:set_text("\n  RAM:  " .. get_usage("-1nrv") .. "  \n")
end
callbacks.ram();

timers.ram = timer({timeout = 3.0})
timers.ram:connect_signal("timeout", callbacks.ram)
timers.ram:start()

--------------------------------------------------------------------------------

return monitors
