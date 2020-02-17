--------------------------------------------------------------------------------
-- Using a textbox instead of a proper awesome spacer so that spacing etc is all handled by the font.
local new_spacer = function(markup)
    return wibox.widget{
        widget = wibox.widget.textbox,
        markup = markup,
        align  = "center",
        valign = "center",
        wrap   = "word",
        font   = beautiful.font_mono .. "9.3"
    }
end
--------------------------------------------------------------------------------
return {
    vertical   = new_spacer("─────"),
    horizontal = new_spacer(" | "),
}
--------------------------------------------------------------------------------
