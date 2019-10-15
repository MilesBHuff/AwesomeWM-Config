-- Create a wibox for each screen and add it
myverticalwibox   = {}
myhorizontalwibox = {}
myglobalmenu      = {}
mypromptbox       = {}
mylayoutbox       = {}
mytaglist         = {} -- base_widget = awful.wibox.layout.fixed.vertical
mytaglist.buttons = awful.util.table.join(
    awful.button({}      , 1, awful.tag.viewonly    ),
    awful.button({modkey}, 1, awful.client.movetotag),
    awful.button({}      , 3, awful.tag.viewtoggle  ),
    awful.button({modkey}, 3, awful.client.toggletag),
    awful.button({}      , 5, function(t) awful.tag.viewnext(awful.tag.getscreen(t)) end),
    awful.button({}      , 4, function(t) awful.tag.viewprev(awful.tag.getscreen(t)) end))
mytasklist = {} --awful.wibox.layout.flex.vertical}
mytasklist.buttons = awful.util.table.join(
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

for s = 1, screen.count() do
	-- Create the borders
	-- local myhorizontalborder1 = awful.wibox({position = "right",  screen = s, y = 0, width = 38, height = 1920, border_width = 0 })
	-- local myverticalborder1   = awful.wibox({position = "bottom", screen = s, y = 0, width = 1884, height = 24, border_width = 0 })
	-- local myhorizontalborder2 = awful.wibox({position = "right",  screen = s, y = 0, width = 37, height = 1920, border_width = 0 })
	-- local myverticalborder2   = awful.wibox({position = "bottom", screen = s, y = 0, width = 1884, height = 23, border_width = 0 })
	-- myhorizontalborder1 : set_bg(beautiful.window_bg_border)
	-- myverticalborder1   : set_bg(beautiful.window_bg_border)
	-- myhorizontalborder2 : set_bg(beautiful.window_fg_border)
	-- myverticalborder2   : set_bg(beautiful.window_fg_border)

	-- Create the wibox
	myhorizontalwibox[s] = awful.wibox({position = "bottom", screen = s, y = 0, width = 1884, height = 22, border_width = 0 })

	-- Create an imagebox widget which will contains an icon indicating which layout we're using.
	-- We need one layoutbox per screen.
	mylayoutbox[s] = awful.widget.layoutbox(s)
	mylayoutbox[s] : buttons(awful.util.table.join(
		awful.button({}, 1, function () awful.layout.inc(layouts,  1) end),
		awful.button({}, 3, function () awful.layout.inc(layouts, -1) end),
		awful.button({}, 5, function () awful.layout.inc(layouts,  1) end),
		awful.button({}, 4, function () awful.layout.inc(layouts, -1) end)
	))

	-- Create a spacer-widget
    local myhorizontalspacer = wibox.widget.textbox("<span font='Noto Mono 9.3'>   </span>")

	-- Create a global-menu widget
	myglobalmenu[s] = wibox.widget.textbox("<span font='Noto Sans 9.5'>File    Edit    View    Help  </span>")  -- Obviously just a shim.

	-- Create a systray-widget
	local systray = wibox.widget.systray()
	      systray : set_horizontal(true)

	-- Widgets that are aligned to the left
	local left_layout
	left_layout = wibox.layout.fixed.horizontal()
	left_layout : add(mylayoutbox[s])
	left_layout : add(myhorizontalspacer)
	left_layout : add(myglobalmenu[s])

	-- Widgets that are aligned to the right
	local right_layout
	right_layout = wibox.layout.fixed.horizontal()
	right_layout : add(systray)
	right_layout : add(myhorizontalspacer)
	-- right_layout : add(myrunbox)

	-- Now bring it all together
	local horizontal_layout
	horizontal_layout = wibox.layout.align.horizontal()
	horizontal_layout : set_left(left_layout)
	horizontal_layout : set_right(right_layout)

	myhorizontalwibox[s] : set_widget(horizontal_layout)

    -- Create the wibox
    myverticalwibox[s] = awful.wibox({position = "right", screen = s, y = 0, width = 36, height = 1080, border_width = 0 })

    -- Create a spacer-widget
    local myverticalspacer = wibox.widget.textbox("<span font='Noto Mono 9.3'>────</span>")  -- <span font='Noto Mono 32.6'>⁀</span>

    -- Create a tasklist widget
    mytasklist[s] = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, mytasklist.buttons, nil, nil, wibox.layout.flex.vertical()) -- A good temporary fix for the font-direction would be to simply rotate the entie tasklist, but I'm not sure how to do that...

	-- Create a widgets to monitor CPU- and RAM-usage
	function get_usage(s)
		-- local fd  = io.popen("/home/miles/.local/src/personal/misc-code/code/applets/cpu-ram.bash " .. s)
        -- local str = fd:read ("*all")
        str = "[    ]"
		return str
	end
    local mycpumonitor = wibox.widget.textbox("<span font='Noto Mono 7.5'>[    ]</span>")
 	local mycpumonitor_t = awful.tooltip({objects = {mycpumonitor}})
		  mycpumonitor_t : set_text("\n  CPU:  ?%  \n")
    local myrammonitor = wibox.widget.textbox("<span font='Noto Mono 7.5'>[    ]</span>")
	local myrammonitor_t = awful.tooltip({objects = {myrammonitor}})
		  myrammonitor_t : set_text("\n  RAM:  ?%  \n")
	update_cpu = timer({ timeout = 1.5 })
	update_cpu : connect_signal("timeout", function()
		mycpumonitor   : set_text(get_usage("-1n"))
		mycpumonitor   : set_font("Noto Mono 7.5")
		mycpumonitor_t : set_text("\n  CPU:  " .. get_usage("-1nv") .. "  \n")
	end)
	update_cpu : start()
	update_ram = timer({ timeout = 3.0 })
	update_ram : connect_signal("timeout", function()
	  myrammonitor   : set_text(get_usage("-1nr"))
	  myrammonitor   : set_font("Noto Mono 7.5")
	  myrammonitor_t : set_text("\n  RAM:  " .. get_usage("-1nrv") .. "  \n")
	end)
	update_ram : start()

    -- Create a textclock widget with a calendar tooltip
    local mytextclock = awful.widget.textclock("<span font='Noto Sans 7.5'>%b %d</span>" .. "%n" .. "<span font='Noto Mono Bold 9.0'>%H:%M</span>" .. "<span font='Noto Sans 7.5'>UTC-4</span>", 1)  -- "%-d" and "UTC%-:::z"
    function display_calendar()
		local fd  = io.popen("/home/miles/.local/src/personal/misc-code/code/applets/display-calendar.bash")
		local str = fd:read ("*all")
		return str
    end
    local original_tooltip_font  = beautiful.tooltip_font
          beautiful.tooltip_font = 'Noto Mono 9.5'
    local mytextclock_t          = awful.tooltip({objects = {mytextclock}})
          mytextclock_t          : set_text(display_calendar())
          beautiful.tooltip_font = original_tooltip_font

    -- Create a taglist widget
    mytaglist[s] = awful.widget.taglist(s, awful.widget.taglist.filter.all, mytaglist.buttons, nil, nil, wibox.layout.fixed.vertical())  -- It would be awesome if the current tag were always centered, so that when I scroll on the taglist, the tags' names move, rather than the highlight.

    -- Widgets that are aligned to the top
    top_layout = wibox.layout.fixed.vertical()
    top_layout : add(mylauncher)
    top_layout : add(myverticalspacer)

    -- Widgets that are aligned to the bottom
    bottom_layout = wibox.layout.fixed.vertical()
    bottom_layout : add(myverticalspacer)
    bottom_layout : add(mycpumonitor)
    bottom_layout : add(myrammonitor)
    bottom_layout : add(myverticalspacer)
    bottom_layout : add(mytextclock)
    bottom_layout : add(myverticalspacer)
    bottom_layout : add(mytaglist[s])

    -- Now bring it all together (with the tasklist in the middle)
    local vertical_layout
    vertical_layout = wibox.layout.align.vertical()
    vertical_layout : set_top(top_layout)
    vertical_layout : set_middle(mytasklist[s])
    vertical_layout : set_bottom(bottom_layout)

    myverticalwibox[s] : set_widget(vertical_layout)
end

-- Make an autohidden command-runner
--    mypromptbox[s] = awful.widget.prompt()
--    top_layout:add(mypromptbox[s])

-- Make a unified menubar
