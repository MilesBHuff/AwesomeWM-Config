-- Panels
-- #############################################################################
-- Some variables (notably the coordinates) do not work in the wibox/wibar constructor,
-- so instead of wrapping the default constructor and creating each panel in one call,
-- I'm going to create a default panel, create copies of it, and overritde its properties one-by-one.
-- Inelegant, but still functional and legible.

-- Custom wibar
-- -----------------------------------------------------------------------------
local new_wibar = function()
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
for s = 1, screen.count() do
	panels[s] = {}

	-- Panel #1
	-- -----------------------------------------------------------------------------
	panels[s][1] = new_wibar()

	-- Dimensions
	panels[s][1].width  = 37
	panels[s][1].height = (panels[s][1].border_width * 2) + screen().geometry.height

	-- Coordinates
	panels[s][1].x = -panels[s][1].border_width
	panels[s][1].y = -panels[s][1].border_width

	-- Screen Settings
	panels[s][1]:struts({left = panels[s][1].border_width + panels[s][1].width})

	-- -- Panel #2
	-- -- -----------------------------------------------------------------------------
	-- panels[s][2] = new_wibar()

	-- -- Dimensions
	-- panels[s][2].width  = (panels[s][2].border_width * 2) + screen().geometry.width - panels[s][1].width
	-- panels[s][2].height = 21

	-- -- Coordinates
	-- panels[s][2].x = -panels[s][2].border_width + panels[s][1].width + panels[s][1].border_width
	-- panels[s][2].y =  panels[s][2].border_width + screen().geometry.height - panels[s][2].height

	-- -- Screen Settings
	-- panels[s][2]:struts({bottom = panels[s][2].border_width + panels[s][2].height})

end
-- Layouts
-- #############################################################################

-- Define
-- =============================================================================
local layouts = {}
for s = 1, screen.count() do
	layouts[s] = {}

	-- Layout #1
	-- -----------------------------------------------------------------------------
	layouts[s][1] = {}
	layouts[s][1].panel   = wibox.layout.align.vertical()
	layouts[s][1].onset   = wibox.layout.fixed.vertical()
  --layouts[s][1].nucleus = wibox.layout.fixed.vertical()
	layouts[s][1].coda    = wibox.layout.fixed.vertical()

	-- -- Layout #2
	-- --------------------------------------------------------------------------------
	-- layouts[s][2] = {}
	-- layouts[s][2].panel   = wibox.layout.align.horizontal()
	-- layouts[s][2].onset   = wibox.layout.fixed.horizontal()
	-- --layouts[s][2].nucleus = wibox.layout.fixed.horizontal()
	-- layouts[s][2].coda    = wibox.layout.fixed.horizontal()

	-- Configure
	-- =============================================================================

	-- Layout #1
	-- -----------------------------------------------------------------------------
	layouts[s][1].onset:add(widgets.launcher)
	layouts[s][1].onset:add(widgets.spacers.vertical)
	layouts[s][1].nucleus = widgets.tasklist[s]
	layouts[s][1].coda: add(widgets.spacers.vertical)
	layouts[s][1].coda: add(widgets.apptray[s])
	layouts[s][1].coda: add(widgets.spacers.vertical)
	layouts[s][1].coda: add(widgets.monitors.cpu)
	layouts[s][1].coda: add(widgets.monitors.ram)
	layouts[s][1].coda: add(widgets.spacers.vertical)
	layouts[s][1].coda: add(widgets.datetime)
	layouts[s][1].coda: add(widgets.spacers.vertical)
	layouts[s][1].coda: add(widgets.taglist[s])

	-- -- Layout #2
	-- --------------------------------------------------------------------------------
	-- layouts[s][2].onset:add(widgets.menubar)
	-- layouts[s][2].coda: add(widgets.runbox)

	-- Apply
	-- =============================================================================

	-- Layout #1
	-- -----------------------------------------------------------------------------
	layouts[s][1].panel:   set_top(layouts[s][1].onset)
	layouts[s][1].panel:set_middle(layouts[s][1].nucleus)
	layouts[s][1].panel:set_bottom(layouts[s][1].coda)
	 panels[s][1]:      set_widget(layouts[s][1].panel)

	-- -- Layout #2
	-- --------------------------------------------------------------------------------
	-- layouts[s][2].panel:  set_left(layouts[s][2].onset)
	-- --layouts[s][2].panel:set_center(layouts[s][2].nucleus)
	-- layouts[s][2].panel: set_right(layouts[s][2].coda)
	--  panels[s][2]:      set_widget(layouts[s][2].panel)

end
-- Export
-- #############################################################################
return panels
