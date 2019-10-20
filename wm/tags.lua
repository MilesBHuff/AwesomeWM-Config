local gears = require("gears")

-- Layouts, in order of appearance (awful.layout.inc)
layouts = {
    awful.layout.suit.floating,
  --awful.layout.suit.fair,
  --awful.layout.suit.fair.horizontal,
  --awful.layout.suit.tile.left,
    awful.layout.suit.tile,
  --awful.layout.suit.tile.bottom,
    awful.layout.suit.tile.top,
  --awful.layout.suit.spiral.dwindle,
  --awful.layout.suit.spiral,
    awful.layout.suit.max,
  --awful.layout.suit.max.fullscreen,
  --awful.layout.suit.magnifier,
  --awful.layout.suit.corner.nw,
  --awful.layout.suit.corner.ne,
  --awful.layout.suit.corner.sw,
  --awful.layout.suit.corner.se,
}

-- Virtual desktops
tags = {
    count  = 3,
    names  = {"MAIN",     "INET",     "OVER"    },
    layout = {layouts[2], layouts[1], layouts[4]},
}
awful.screen.connect_for_each_screen(function(screen)

    -- Create the tags
    tags[screen] = awful.tag(tags.names, screen, tags.layout)

    -- Give the tags wallpapers
    for t = 1, tags.count do
        tags[screen][t]:connect_signal("property::selected", function(tag)
            if not tag.selected then return end
            gears.wallpaper.maximized("/home/miles/.local/share/GUI/Wallpapers/Workspace" .. t .. ".png", screen, true)
        end)
    end
end)
