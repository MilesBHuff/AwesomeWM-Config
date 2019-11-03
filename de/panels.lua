-- Panels
-- #############################################################################

-- Defaults
-- =============================================================================
-- Some variables (notably the coordinates) do not work in the wibox/wibar constructor,
-- so instead of wrapping the default constructor and creating each panel in one call,
-- I'm going to create a default panel, create copies of it, and overritde its properties one-by-one.
-- Inelegant, but still functional and legible.
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

-- Define and Configure
-- =============================================================================
local panels = {}

-- Panel #1
-- -----------------------------------------------------------------------------
panels[1] = newWibar()

-- Dimensions
panels[1].width  = 37
panels[1].height = (panels[1].border_width * 2) + screen().geometry.height

-- Coordinates
panels[1].x = -panels[1].border_width
panels[1].y = -panels[1].border_width

-- Screen Settings
panels[1]:struts({left = panels[1].border_width + panels[1].width})

-- Panel #2
-- -----------------------------------------------------------------------------
panels[2] = newWibar()

-- Dimensions
panels[2].width  = (panels[2].border_width * 2) + screen().geometry.width - panels[1].width
panels[2].height = 21

-- Coordinates
panels[2].x = -panels[2].border_width + panels[1].width + panels[1].border_width
panels[2].y =  panels[2].border_width + screen().geometry.height - panels[2].height

-- Screen Settings
panels[2]:struts({bottom = panels[2].border_width + panels[2].height})

-- Layouts
-- #############################################################################

-- Define
-- =============================================================================
local layouts = {}

-- Layout #1
-- -----------------------------------------------------------------------------
layouts[1] = {}
layouts[1].panel   = wibox.layout.align.vertical()
layouts[1].onset   = wibox.layout.fixed.vertical()
-- layouts[1].nucleus = wibox.layout.fixed.vertical()
layouts[1].coda    = wibox.layout.fixed.vertical()

-- Layout #2
--------------------------------------------------------------------------------
layouts[2] = {}
layouts[2].panel   = wibox.layout.align.horizontal()
layouts[2].onset   = wibox.layout.fixed.horizontal()
-- layouts[2].nucleus = wibox.layout.fixed.horizontal()
layouts[2].coda    = wibox.layout.fixed.horizontal()

-- Configure
-- =============================================================================

-- Layout #1
-- -----------------------------------------------------------------------------
layouts[1].onset:  add(mylauncher)
layouts[1].onset:  add(myverticalspacer)
layouts[1].nucleus =   mytasklist[1]
layouts[1].coda:   add(myverticalspacer)
layouts[1].coda:   add(mycpumonitor)
layouts[1].coda:   add(myrammonitor)
layouts[1].coda:   add(myverticalspacer)
layouts[1].coda:   add(mytextclock)
layouts[1].coda:   add(myverticalspacer)
layouts[1].coda:   add(mytaglist[1])

-- Layout #2
--------------------------------------------------------------------------------
layouts[2].onset:add(mylayoutbox[1])
layouts[2].onset:add(myhorizontalspacer)
layouts[2].onset:add(myglobalmenu)
layouts[2].coda: add(systray)
-- layouts[2].coda: add(myhorizontalspacer)
-- layouts[2].coda: add(myrunbox)

-- Apply
-- =============================================================================

-- Layout #1
-- -----------------------------------------------------------------------------
layouts[1].panel:   set_top(layouts[1].onset)
layouts[1].panel:set_middle(layouts[1].nucleus)
layouts[1].panel:set_bottom(layouts[1].coda)
 panels[1]:      set_widget(layouts[1].panel)

-- Layout #2
--------------------------------------------------------------------------------
layouts[2].panel:  set_left(layouts[2].onset)
-- layouts[2].panel:set_center(layouts[2].nucleus)
layouts[2].panel: set_right(layouts[2].coda)
 panels[2]:      set_widget(layouts[2].panel)

-- Export
-- #############################################################################
return panels
