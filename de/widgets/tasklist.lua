--------------------------------------------------------------------------------
local tasklist_buttons = awful.util.table.join(
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
--------------------------------------------------------------------------------
local tasklist = {};
for s = 1, screen.count() do
	-- A good temporary fix for the font-direction would be to simply rotate the entie tasklist, but I'm not sure how to do that...
	tasklist[s] = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, tasklist_buttons, nil, nil, wibox.layout.flex.vertical())
end
--------------------------------------------------------------------------------
return tasklist
