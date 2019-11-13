--------------------------------------------------------------------------------
local systray = wibox.widget{
	widget = wibox.widget.systray,
	horizontal = false,
	base_size = globals.icon_size,
}

--------------------------------------------------------------------------------
local layoutbox = {}
for s = 1, screen.count() do
	layoutbox[s] = awful.widget.layoutbox(s)
	layoutbox[s]:buttons(awful.util.table.join(
		awful.button({}, 1, function () awful.layout.inc(globals.layouts,  1) end),
		awful.button({}, 3, function () awful.layout.inc(globals.layouts, -1) end),
		awful.button({}, 5, function () awful.layout.inc(globals.layouts,  1) end),
		awful.button({}, 4, function () awful.layout.inc(globals.layouts, -1) end)
	))
	layoutbox[s].forced_width  = globals.icon_size
	layoutbox[s].forced_height = globals.icon_size
end

--------------------------------------------------------------------------------
local apptray = {}
for s = 1, screen.count() do
	local tray_layout = wibox.layout.fixed.vertical()
	tray_layout:add(systray)
	tray_layout:add(layoutbox[s])
	-- The most ridiculous workaround.  Required to horizontally center the apptray.
	apptray[s] = wibox.layout.align.horizontal()
	apptray[s].expand = "outside"
	apptray[s].first  = wibox.widget{}
	apptray[s].second = tray_layout
	apptray[s].third  = wibox.widget{}
end
return apptray
