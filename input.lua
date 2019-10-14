-- Default modkey.
-- Usually, Mod4 is the key with a logo between Control and Alt.
-- If you do not like this or do not have such a key,
-- I suggest you to remap Mod4 to another key using xmodmap or other tools.
-- However, you can use another modifier like Mod1, but it may interact with others.
modkey = "Mod4"

-- Mouse bindings
root.buttons(awful.util.table.join(
    awful.button({}, 3, function() mymainmenu:toggle() end),
    awful.button({}, 5, awful.tag.viewnext),
    awful.button({}, 4, awful.tag.viewprev)
))

-- Key bindings
-- Maybe redo so they can be accessed one-handedly?
globalkeys = awful.util.table.join(

	-- AwesomeWM-related
	awful.key({modkey,}, "Return", function() awful.util.spawn(terminal) end),
	awful.key({modkey,}, "Escape", awesome.restart),
	awful.key({modkey,}, "`"     , awful.client.restore),

	-- Utility
	awful.key({       }, "Print" , function() io.popen("/home/sweyn78/.local/scripts/ScreenShot.sh") end),
	awful.key({modkey,}, "Menu"  , function() mymainmenu:show() end),
	awful.key({modkey,}, "Print" , function() io.popen("/home/sweyn78/.local/scripts/CompToggle.sh") end),
	awful.key({modkey,}, "Return", function() mypromptbox[mouse.screen]:run() end),
	awful.key({modkey,}, "Delete", function() awful.util.spawn("xkill") end),
	awful.key({modkey,}, "F5"    , function() awful.util.spawn("xrandr --output HDMI-0 --auto") end),

	-- Workspace-navigation
	-- awful.key({modkey,}, "Escape", awful.tag.history.restore),
    awful.key({modkey,}, "Up"    , awful.tag.viewprev),
    awful.key({modkey,}, "Down"  , awful.tag.viewnext),
    awful.key({modkey,}, "Left"  , function() awful.screen.focus_relative(-1) end),
    awful.key({modkey,}, "Right" , function() awful.screen.focus_relative( 1) end),

	-- Focus-manipulation
	-- TODO:  Would be cool to have it select focus based on the locations of the windows.
    awful.key({modkey, "Control"}, "Return", awful.client.urgent.jumpto),
    awful.key({modkey, "Control"}, "Up"    , function()
		awful.client.focus.byidx(-1)
		if client.focus then
			client.focus:raise()
		end
    end),
    awful.key({modkey, "Control"}, "Down"  , function()
		awful.client.focus.byidx( 1)
		if client.focus then
			client.focus:raise()
		end
    end),
    awful.key({modkey, "Control"}, "Left"  , function() -- awful.client.focus.history.previous()
		awful.client.focus.byidx(-1)
		if client.focus then
		    client.focus:raise()
		end
    end),
    awful.key({modkey, "Control"}, "Right" , function() -- awful.client.focus.history.previous()
		awful.client.focus.byidx( 1)
		if client.focus then
		    client.focus:raise()
		end
    end),

    -- Layout-manipulation
	awful.key({modkey, "Shift"}, "Up"   , function() awful.layout.inc(layouts, -1   ) end),
    awful.key({modkey, "Shift"}, "Down" , function() awful.layout.inc(layouts,  1   ) end),
    awful.key({modkey, "Shift"}, "Left" , function() awful.client.swap.byidx(   1   ) end),
    awful.key({modkey, "Shift"}, "Right", function() awful.client.swap.byidx(  -1   ) end),
	awful.key({modkey, "Shift"}, ","    , function() awful.tag.incmwfact(      -0.05) end),
	awful.key({modkey, "Shift"}, "."    , function() awful.tag.incmwfact(       0.05) end),
	awful.key({modkey, "Shift"}, "]"    , function() awful.tag.incnmaster(     -1   ) end),
	awful.key({modkey, "Shift"}, "["    , function() awful.tag.incnmaster(      1   ) end),
	awful.key({modkey, "Shift"}, "-"    , function() awful.tag.incncol(        -1   ) end),
	awful.key({modkey, "Shift"}, "="    , function() awful.tag.incncol(         1   ) end),

	-- Compatibility
	awful.key({"Mod1", "Control"}, "Delete", function() awful.util.spawn("xkill") end),
	--awful.key({"Mod1", "Control"}, "Esc"   , function() awful.util.spawn("xkill") end),
	awful.key({"Mod1"           }, "F2"    , function() mypromptbox[mouse.screen]:run() end),
    awful.key({"Mod1", "Shift"  }, "Tab"   , function() -- awful.client.focus.history.previous()
		awful.client.focus.byidx(-1)
		if client.focus then
		    client.focus:raise()
		end
    end),
    awful.key({"Mod1", "Shift"  }, "F12"   , function() io.popen("/home/sweyn78/.local/scripts/CompToggle.sh") end),
    awful.key({"Mod1",          }, "Tab"   , function() -- awful.client.focus.history.previous()
		awful.client.focus.byidx( 1)
		if client.focus then
		    client.focus:raise()
		end
    end)
)

clientkeys = awful.util.table.join(
    awful.key({modkey,          }, "r",      function (c) c.fullscreen = not c.fullscreen  end),
    awful.key({modkey,          }, "q",      function (c) c:kill()                         end),
--    awful.key({modkey, "Control"}, "space",  awful.client.floating.toggle                     ),
    awful.key({modkey, "Control"}, "Return", function (c) c:swap(awful.client.getmaster()) end),
    awful.key({modkey,          }, "t",      awful.client.movetoscreen                        ),
    awful.key({modkey,          }, "f",      function (c) c.ontop = not c.ontop            end),
    awful.key({modkey,          }, "s",
        function (c)
            -- The client currently has the input focus, so it cannot be
            -- minimized, since minimized clients can't have the focus.
            c.minimized = true
        end),
    awful.key({modkey,          }, "m",
        function (c)
            c.maximized_horizontal = not c.maximized_horizontal
            c.maximized_vertical   = not c.maximized_vertical
        end)
)

-- Bind all key numbers to tags.
-- Be careful: we use keycodes to make it works on any keyboard layout.
-- This should map on the top row of your keyboard, usually 1 to 9.
for i = 1, 3 do
    globalkeys = awful.util.table.join(globalkeys,
        -- View tag only.
        awful.key({modkey}, "#" .. i + 3,
                  function ()
                        local screen = mouse.screen
                        local tag = awful.tag.gettags(screen)[i]
                        if tag then
                           awful.tag.viewonly(tag)
                        end
                  end),
        -- Toggle tag.
        awful.key({modkey, "Control"}, "#" .. i + 3,
                  function ()
                      local screen = mouse.screen
                      local tag = awful.tag.gettags(screen)[i]
                      if tag then
                         awful.tag.viewtoggle(tag)
                      end
                  end),
        -- Move client to tag.
        awful.key({modkey, "Shift"}, "#" .. i + 3,
                  function ()
                      if client.focus then
                          local tag = awful.tag.gettags(client.focus.screen)[i]
                          if tag then
                              awful.client.movetotag(tag)
                          end
                     end
                  end),
        -- Toggle tag.
        awful.key({modkey, "Control", "Shift"}, "#" .. i + 3,
                  function ()
                      if client.focus then
                          local tag = awful.tag.gettags(client.focus.screen)[i]
                          if tag then
                              awful.client.toggletag(tag)
                          end
                      end
                  end))
end

clientbuttons = awful.util.table.join(
    awful.button({modkey}, 4, function (c) client.focus = c; c:raise() end),
    awful.button({modkey}, 5, function (c) client.focus = c; c:lower() end),
    awful.button({modkey}, 1, awful.mouse.client.move  ),
    awful.button({modkey}, 3, awful.mouse.client.resize)
)

-- Set keys
root.keys(globalkeys)
