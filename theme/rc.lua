theme = {}
theme.conffile   = globals.cwd .. "theme/rc.lua"
theme.icons      = globals.cwd .. "theme/.icon-cache"
theme.icon_theme = "Delft" -- Define the icon theme for application icons. If not set then the icons from /usr/share/icons and /usr/share/icons/hicolor will be used.

-- Get-Icon function
--------------------------------------------------------------------------------
theme.get_icon = function(icon)
    return theme.icons .. "/" .. icon .. ".png"
end
theme.get_system_icon = function(icon_path)
    return "/usr/share/icons/" .. theme.icon_theme .. icon_path
end

-- Base values
--------------------------------------------------------------------------------
theme.font_mono  = "monospace "
theme.font_sans  = "sans-serif "
theme.font_serif = "serif "
theme.view_bg_selected = "#A4A4A4"
theme.view_bg_focus    = "#909090"
theme.view_bg_normal   = "#6A6A6A"
theme.view_bg_inactive = "#626262"
theme.window_bg_border = "#4A4A4A"
theme.window_fg_border = "#777777"
theme.view_fg_active   = "#EFEFEF"
theme.view_fg_normal   = "#DFDFDF"
theme.view_fg_inactive = "#CFCFCF"
theme.view_fg_red      = "#FDAAAA"
theme.view_fg_orange   = "#F7CB9E"
theme.view_fg_yellow   = "#F3F385"
theme.view_fg_green    = "#88F888"
theme.view_fg_cyan     = "#85F3F3"
theme.view_fg_azure    = "#9ACBFC"
theme.view_fg_blue     = "#ABABFF"
theme.view_fg_purple   = "#D5AEFC"
theme.view_fg_magenta  = "#F89FF8"
theme.view_fg_tyrian   = "#FAA5CF"
theme.window_bg_selected = "#777777"
theme.window_bg_normal   = "#545454"
theme.window_bg_inactive = "#484848"
theme.window_bg_border   = "#343434"
theme.window_fg_border   = "#616161"
theme.window_fg_active   = "#CFCFCF"
theme.window_fg_normal   = "#BFBFBF"
theme.window_fg_inactive = "#AFAFAF"
theme.window_fg_red      = "#FD9A9A"
theme.window_fg_orange   = "#F7C38F"
theme.window_fg_yellow   = "#F3F394"
theme.window_fg_green    = "#97F897"
theme.window_fg_cyan     = "#94F3F3"
theme.window_fg_azure    = "#A9D2FC"
theme.window_fg_blue     = "#BABAFF"
theme.window_fg_purple   = "#CE9FFC"
theme.window_fg_magenta  = "#F890F8"
theme.window_fg_tyrian   = "#FA96C8"

-- Basic values
theme.font          = theme.font_sans .. "9.5"
theme.bg_normal     = theme.window_bg_normal
theme.bg_focus      = theme.window_bg_selected
theme.bg_urgent     = theme.window_fg_border
theme.bg_minimize   = theme.window_bg_inactive
theme.bg_systray    = theme.window_bg_normal
theme.fg_normal     = theme.window_fg_normal
theme.fg_focus      = theme.window_fg_active
theme.fg_urgent     = theme.window_fg_red
theme.fg_minimize   = theme.window_fg_inactive
theme.border_width  = 1
theme.border_normal = theme.window_bg_border
theme.border_focus  = theme.window_fg_border
theme.border_marked = theme.window_bg_selected

-- Wibar
theme.wibar_fg    = theme.fg_normal;
theme.wibar_bg    = theme.bg_normal;
theme.wibar_border_color = theme.border_focus;
theme.wibar_border_width = theme.border_width;

-- Taglist
theme.taglist_font          = theme.font_mono .. "9.3"
theme.taglist_squares_sel   = nil
theme.taglist_squares_unsel = nil
theme.taglist_bg_focus      = theme.window_bg_selected
theme.taglist_bg_urgent     = theme.window_bg_inactive
theme.taglist_bg_occupied   = theme.window_bg_inactive
theme.taglist_bg_empty      = theme.window_bg_inactive
theme.taglist_fg_focus      = theme.window_fg_active
theme.taglist_fg_urgent     = theme.window_fg_red
theme.taglist_fg_occupied   = theme.window_fg_yellow
theme.taglist_fg_empty      = theme.window_fg_green

-- Tasklist
theme.tasklist_bg_focus  = theme.bg_focus
theme.tasklist_bg_urgent = theme.bg_urgent
theme.tasklist_fg_focus  = theme.fg_focus
theme.tasklist_fg_urgent = theme.fg_urgent

-- Titlebar
theme.titlebar_bg_normal = theme.window_bg_normal
theme.titlebar_bg_focus  = theme.window_bg_normal
theme.titlebar_fg_normal = theme.window_fg_inactive
theme.titlebar_fg_focus  = theme.window_fg_active

-- Tooltip
theme.tooltip_font         = theme.font_mono .. "9.3"
-- theme.tooltip_opacity      = 0.92
theme.tooltip_bg_color     = theme.view_bg_normal
theme.tooltip_fg_color     = theme.view_fg_normal
theme.tooltip_border_width = 1
theme.tooltip_border_color = theme.view_bg_border

-- Mouse-finder
-- theme.mouse_finder_color           = ""
-- theme.mouse_finder_timeout         =
-- theme.mouse_finder_animate_timeout =
-- theme.mouse_finder_radius          =
-- theme.mouse_finder_factor          =

-- Menu
theme.menu_submenu_icon = theme.get_system_icon("-Darkest/actions/24/next.png")
theme.menu_height       = 24
theme.menu_width        = 192
theme.menu_bg_normal    = theme.window_bg_normal
theme.menu_bg_focus     = theme.window_bg_selected
theme.menu_fg_normal    = theme.window_fg_normal
theme.menu_fg_focus     = theme.window_fg_selected
theme.menu_border_color = theme.window_bg_border
theme.menu_border_width = 1

-- Custom settings
theme.normal_border_width = 0
theme.dialog_border_width = 4

-- Define the image to load
theme.titlebar_close_button_normal = theme.get_icon("exit")
theme.titlebar_close_button_focus  = theme.get_icon("exit")

theme.titlebar_floating_button_normal_inactive = theme.get_icon("float_inactive")
theme.titlebar_floating_button_focus_inactive  = theme.get_icon("float_inactive")
theme.titlebar_floating_button_normal_active   = theme.get_icon("float_active")
theme.titlebar_floating_button_focus_active    = theme.get_icon("float_active")

theme.titlebar_maximized_button_normal_inactive = theme.get_icon("maximize_inactive")
theme.titlebar_maximized_button_focus_inactive  = theme.get_icon("maximize_inactive")
theme.titlebar_maximized_button_normal_active   = theme.get_icon("maximize_active")
theme.titlebar_maximized_button_focus_active    = theme.get_icon("maximize_active")

theme.titlebar_ontop_button_normal_inactive = theme.get_icon("ontop_inactive")
theme.titlebar_ontop_button_focus_inactive  = theme.get_icon("ontop_inactive")
theme.titlebar_ontop_button_normal_active   = theme.get_icon("ontop_active")
theme.titlebar_ontop_button_focus_active    = theme.get_icon("ontop_active")

theme.titlebar_sticky_button_normal_inactive = theme.get_icon("sticky_inactive")
theme.titlebar_sticky_button_focus_inactive  = theme.get_icon("sticky_inactive")
theme.titlebar_sticky_button_normal_active   = theme.get_icon("sticky_active_active")
theme.titlebar_sticky_button_focus_active    = theme.get_icon("sticky_active")

theme.wallpaper = "/home/miles/.local/share/GUI/Wallpapers/Default.png"

-- You can use your own layout icons like this:
theme.layout_fairh      = "/usr/share/awesome/themes/default/layouts/fairhw.png"
theme.layout_fairv      = "/usr/share/awesome/themes/default/layouts/fairvw.png"
theme.layout_floating   = "/usr/share/awesome/themes/default/layouts/floatingw.png"
theme.layout_magnifier  = "/usr/share/awesome/themes/default/layouts/magnifierw.png"
theme.layout_max        = "/usr/share/awesome/themes/default/layouts/maxw.png"
theme.layout_fullscreen = "/usr/share/awesome/themes/default/layouts/fullscreenw.png"
theme.layout_tilebottom = "/usr/share/awesome/themes/default/layouts/tilebottomw.png"
theme.layout_tileleft   = "/usr/share/awesome/themes/default/layouts/tileleftw.png"
theme.layout_tile       = "/usr/share/awesome/themes/default/layouts/tilew.png"
theme.layout_tiletop    = "/usr/share/awesome/themes/default/layouts/tiletopw.png"
theme.layout_spiral     = "/usr/share/awesome/themes/default/layouts/spiralw.png"
theme.layout_dwindle    = "/usr/share/awesome/themes/default/layouts/dwindlew.png"

theme.awesome_icon = "/usr/share/awesome/icons/awesome16.png"

return theme
