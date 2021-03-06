return {

  -- -----------------------------------------------------------------------------
  de = true,
  cwd = "/home/miles/.config/awesome/",
  icon_size = 22,

  -- -----------------------------------------------------------------------------
  -- Default globals.modkey.
  -- Usually, Mod4 is the key with a logo between Control and Alt.
  -- If you do not like this or do not have such a key,
  -- I suggest you to remap Mod4 to another key using xmodmap or other tools.
  -- However, you can use another modifier like Mod1, but it may interact with others.
  modkey = "Mod4",

  -- -----------------------------------------------------------------------------
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
  },
}
