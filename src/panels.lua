--------------------------------------------------------------------------------
-- Some variables (notably the coordinates) do not work in the wibox/wibar constructor,
-- so instead of wrapping the default constructor and creating each panel in one call,
-- I'm going to create a default panel, create copies of it, and overritde its properties one-by-one.
-- Inelegant, but still functional and legible.
--------------------------------------------------------------------------------
local function newWibar()
	return wibox({

		-- Misc
		drawable = nil,
		widget = nil,
		screen = nil,

		-- X properties
		ontop = false,
		type = "dock",
		window = nil,

		-- Mouse
		cursor = nil,
		input_passthrough = false,

		-- Coordinates
		x = 0,
		y = 0,

		-- Dimensions
		width = screen().geometry.width,
		height = 32,

		-- Shape
		shape = nil,
		shape_bounding = nil,
		shape_clip = nil,
		shape_input = nil,

		-- Style
		fg = beautiful.wibar_border_fg,
		bg = beautiful.wibar_border_bg,
		bgimage = nil,
		border_color = beautiful.wibar_border_color,
		border_width = beautiful.wibar_border_width,

		-- Visibility
		opacity = 1.0,
		visible = true,
	})
end
--------------------------------------------------------------------------------
local panels = {}
--------------------------------------------------------------------------------
panels[1] = newWibar()
-- Dimensions
panels[1].width  = 37
panels[1].height = (panels[1].border_width * 2) + screen().geometry.height
-- Coordinates
panels[1].x = -panels[1].border_width
panels[1].y = -panels[1].border_width
-- Screen Settings
panels[1]:struts({left = panels[1].border_width + panels[1].width})
--------------------------------------------------------------------------------
panels[2] = newWibar()
-- Dimensions
panels[2].width  = (panels[2].border_width * 2) + screen().geometry.width - panels[1].width
panels[2].height = 21
-- Coordinates
panels[2].x = -panels[2].border_width + panels[1].width + panels[1].border_width
panels[2].y =  panels[2].border_width + screen().geometry.height - panels[2].height
-- Screen Settings
panels[2]:struts({bottom = panels[2].border_width + panels[2].height})
--------------------------------------------------------------------------------
top_layout = wibox.layout.fixed.vertical()
top_layout:add(mylauncher)
top_layout:add(myverticalspacer)
bottom_layout = wibox.layout.fixed.vertical()
bottom_layout:add(myverticalspacer)
bottom_layout:add(mycpumonitor)
bottom_layout:add(myrammonitor)
bottom_layout:add(myverticalspacer)
bottom_layout:add(mytextclock)
bottom_layout:add(myverticalspacer)
bottom_layout:add(mytaglist[1])
local vertical_layout
vertical_layout = wibox.layout.align.vertical()
vertical_layout:set_top(top_layout)
vertical_layout:set_middle(mytasklist[1])
vertical_layout:set_bottom(bottom_layout)
panels[1]:set_widget(vertical_layout)
--------------------------------------------------------------------------------
local left_layout
left_layout = wibox.layout.fixed.horizontal()
left_layout:add(mylayoutbox[1])
left_layout:add(myhorizontalspacer)
left_layout:add(myglobalmenu)
local right_layout
right_layout = wibox.layout.fixed.horizontal()
right_layout:add(systray)
-- right_layout:add(myhorizontalspacer)
-- right_layout:add(myrunbox)
local horizontal_layout
horizontal_layout = wibox.layout.align.horizontal()
horizontal_layout:set_left(left_layout)
horizontal_layout:set_right(right_layout)
panels[2]:set_widget(horizontal_layout)
--------------------------------------------------------------------------------
