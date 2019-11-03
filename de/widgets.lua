
--------------------------------------------------------------------------------
-- Create an imagebox widget which will contains an icon indicating which layout we're using. We need one layoutbox per screen.
mylayoutbox = {}
for s = 1, screen.count() do
	mylayoutbox[s] = awful.widget.layoutbox(s)
	mylayoutbox[s]:buttons(awful.util.table.join(
		awful.button({}, 1, function () awful.layout.inc(layouts,  1) end),
		awful.button({}, 3, function () awful.layout.inc(layouts, -1) end),
		awful.button({}, 5, function () awful.layout.inc(layouts,  1) end),
		awful.button({}, 4, function () awful.layout.inc(layouts, -1) end)
	))
end

--------------------------------------------------------------------------------
local mytasklistbuttons = awful.util.table.join(
    awful.button({}, 1, function(c)  -- left-click
		if c == client.focus then
		    c.minimized = true
		else
		    -- Without this, the following :isvisible() makes no sense
		    c.minimized = false
		    if not c:isvisible() then awful.tag.viewonly(c:tags()[1]) end
		    -- This will also un-minimize the client, if needed
		    client.focus = c
		    c:raise()
		end
    end),
    awful.button({}, 3, function()  -- right-click
		if instance then
		    instance:hide()
		    instance = nil
		else
		    instance = awful.menu.clients({theme = {width = 250}})
		end
    end),
    awful.button({}, 5, function()  -- scroll-up
		awful.client.focus.byidx(1)
		if client.focus then
			client.focus:raise()
		end
    end),
    awful.button({}, 4, function()  -- scroll-down
		awful.client.focus.byidx(-1)
		if client.focus then
			client.focus:raise()
		end
    end)
)
mytasklist = {};
for s = 1, screen.count() do
    mytasklist[s] = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, mytasklistbuttons, nil, nil, wibox.layout.flex.vertical()) -- A good temporary fix for the font-direction would be to simply rotate the entie tasklist, but I'm not sure how to do that...
end

--------------------------------------------------------------------------------
local mytaglistbuttons = awful.util.table.join(
    awful.button({}      , 1, awful.tag.viewonly    ),
    awful.button({modkey}, 1, awful.client.movetotag),
    awful.button({}      , 3, awful.tag.viewtoggle  ),
    awful.button({modkey}, 3, awful.client.toggletag),
    awful.button({}      , 5, function(t) awful.tag.viewnext(awful.tag.getscreen(t)) end),
    awful.button({}      , 4, function(t) awful.tag.viewprev(awful.tag.getscreen(t)) end)
)
mytaglist = {};
for s = 1, screen.count() do
    mytaglist[s] = awful.widget.taglist(s, awful.widget.taglist.filter.all, mytaglistbuttons, nil, nil, wibox.layout.fixed.vertical())  -- It would be awesome if the current tag were always centered, so that when I scroll on the taglist, the tags' names move, rather than the highlight.
end

--------------------------------------------------------------------------------
myverticalspacer = wibox.widget{
    widget = wibox.widget.textbox,
    markup = "<span font='Noto Mono 9.3'>────</span>", -- <span font='Noto Mono 32.6'>⁀</span>
    align  = 'center',
    valign = 'center',
}
myhorizontalspacer = wibox.widget{
    widget = wibox.widget.textbox,
    markup = "<span font='Noto Mono 9.3'>   </span>",
    align  = 'center',
    valign = 'center',
}
myglobalmenu = wibox.widget.textbox("<span font='Noto Sans 9.5'>File    Edit    View    Help  </span>")  -- Obviously just a shim.

--------------------------------------------------------------------------------
-- Create a systray-widget
systray = wibox.widget{
    widget = wibox.widget.systray,
    base_size = 22,
    horizontal = false,
    -- layout = wibox.layout.grid,
}

--------------------------------------------------------------------------------
-- CPU and RAM usage
function get_usage(s)
    -- local fd  = io.popen("/home/miles/.local/src/personal/misc-code/code/applets/cpu-ram.bash " .. s)
    -- local str = fd:read ("*all")
    str = "[    ]"
    return str
end
      mycpumonitor = wibox.widget.textbox("<span font='Noto Mono 7.5'>[    ]</span>")
local mycpumonitor_t = awful.tooltip({objects = {mycpumonitor}})
      mycpumonitor_t:set_text("\n  CPU:  ?%  \n")
      myrammonitor = wibox.widget.textbox("<span font='Noto Mono 7.5'>[    ]</span>")
local myrammonitor_t = awful.tooltip({objects = {myrammonitor}})
      myrammonitor_t:set_text("\n  RAM:  ?%  \n")
update_cpu = timer({ timeout = 1.5 })
update_cpu:connect_signal("timeout", function()
    mycpumonitor  :set_text(get_usage("-1n"))
    mycpumonitor  :set_font("Noto Mono 7.5")
    mycpumonitor_t:set_text("\n  CPU:  " .. get_usage("-1nv") .. "  \n")
end)
update_cpu:start()
update_ram = timer({ timeout = 3.0 })
update_ram:connect_signal("timeout", function()
    myrammonitor  :set_text(get_usage("-1nr"))
    myrammonitor  :set_font("Noto Mono 7.5")
    myrammonitor_t:set_text("\n  RAM:  " .. get_usage("-1nrv") .. "  \n")
end)
update_ram:start()

--------------------------------------------------------------------------------
-- Digital clock with calendar tooltip
mytextclock = wibox.widget{
    widget = wibox.widget.textclock,
    format = "<span font='Noto Sans 7.5'>%b %d</span>" .. "%n" .. "<span font='Noto Mono Bold 9.0'>%H:%M</span>" .. "<span font='Noto Sans 7.5'>UTC-4</span>", -- "%-d" and "UTC%-:::z"
    align  = 'center',
    valign = 'center',
}
local mycalendar = awful.widget.calendar_popup.month()
mycalendar:attach( mytextclock, "bl" )
--------------------------------------------------------------------------------
-- Autohidden command-runner
--    mypromptbox = awful.widget.prompt()
--    top_layout:add(mypromptbox[s])
