return {
    vertical   = wibox.widget{
        widget = wibox.widget.textbox,
        markup = "<span font='Noto Mono 9.3'>────</span>", -- <span font='Noto Mono 32.6'>⁀</span>
        align  = 'center',
        valign = 'center',
    },
    horizontal = wibox.widget{
        widget = wibox.widget.textbox,
        markup = "<span font='Noto Mono 9.3'>   </span>",
        align  = 'center',
        valign = 'center',
    },
}
