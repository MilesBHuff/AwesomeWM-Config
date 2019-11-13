-- Define tags
-- -----------------------------------------------------------------------------
local tags = {}
tags[1] = {
  name   = "MAIN",
  layout = globals.layouts[2],
}
tags[2] = {
  name   = "INET",
  layout = globals.layouts[1],
}
tags[3] = {
  name   = "OVER",
  layout = globals.layouts[4],
}

-- Get an attribute from all array indices at once
-- -----------------------------------------------------------------------------
local get_attrs = function(arr, attr)
    local attrs = {}
    for i = 1, #arr do
        attrs[i] = arr[i][attr]
    end
    return attrs
end

-- Apply tags
-- -----------------------------------------------------------------------------
awful.screen.connect_for_each_screen(function(screen)
    awful.tag(get_attrs(tags, "name"), screen, get_attrs(tags, "layout"))
end)

-- Export
-- -----------------------------------------------------------------------------
return tags
