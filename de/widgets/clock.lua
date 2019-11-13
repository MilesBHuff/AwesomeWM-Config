-- Digital clock with calendar tooltip
--------------------------------------------------------------------------------
local clock = wibox.widget{
    widget = wibox.widget.textclock,
    format = "<span font='Noto Sans 7.5'>%b %d</span>" .. "%n" .. "<span font='Noto Mono Bold 9.0'>%H:%M</span>" .. "<span font='Noto Sans 7.5'>UTC-4</span>", -- "%-d" and "UTC%-:::z"
    align  = 'center',
    valign = 'center',
}
--------------------------------------------------------------------------------
local calendar = awful.widget.calendar_popup.month()
calendar:attach(clock, "bl")
--------------------------------------------------------------------------------
return clock
