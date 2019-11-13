--------------------------------------------------------------------------------
local taglist_buttons = awful.util.table.join(
    awful.button({},               1, awful.tag.viewonly),
    awful.button({globals.modkey}, 1, awful.client.movetotag),
    awful.button({},               3, awful.tag.viewtoggle),
    awful.button({globals.modkey}, 3, awful.client.toggletag),
    awful.button({},               5, function(t) awful.tag.viewnext(awful.tag.getscreen(t)) end),
    awful.button({},               4, function(t) awful.tag.viewprev(awful.tag.getscreen(t)) end)
)
--------------------------------------------------------------------------------
taglist = {};
for s = 1, screen.count() do
    -- It would be interesting to try having the current tag always be centered, so that when I scroll on the taglist, the tags' names move, rather than the highlight.
    taglist[s] = awful.widget.taglist(s, awful.widget.taglist.filter.all, taglist_buttons, nil, nil, wibox.layout.fixed.vertical())
end
--------------------------------------------------------------------------------
return taglist
