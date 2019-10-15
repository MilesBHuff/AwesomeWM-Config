-- Rules to apply to new clients (through the "manage" signal).
-- For help, please see:
-- * http://new.awesomewm.org/apidoc/classes/client.html
-- * http://awesome.naquadah.org/doc/api/modules/client.html#Tables
-- * http://awesome.naquadah.org/wiki/Understanding_Rules
awful.rules.rules = {
    -- All windows
    {rule = {}, properties = {
        border_color         = beautiful.border_normal,
        buttons              = clientbuttons,
        focus                = awful.client.focus.filter,
        keys                 = clientkeys,
        maximized_horizontal = false,
        maximized_vertical   = false,
        raise                = true
    }},
    ---- Disable focus-stealing prevention for XV
    --{rule_any = {class = "^xv .*", type = 4294967295}, properties = {
    --    raise = false
    --}},
    -- Window-types
    {rule_any = {type = {"desktop", "toolbar"}}, properties = {
        border_width = 0,
        floating     = true,
    }},
    {rule = {type = "splash"}, properties = {
        border_width = beautiful.normal_border_width,
        floating     = true,
    }},
    {rule = {type = "normal"}, properties = {
        border_width = beautiful.normal_border_width,
    }},
    {rule_any = {type = {"dialog", "notification"}}, properties = {
        border_width = beautiful.dialog_border_width,
        floating     = true,
    }},
    {rule_any = {type = {"dock", "menu", "dropdown_menu", "popup_menu", "tooltip", "combo"}}, properties = {
        border_width = beautiful.menu_border_width,
        floating     = true,
    }},
    -- Applets
    {rule = {instance = "deluge-gtk"}, properties = {
        icon_name    = "Torrent-client",
        sticky       = true,
        skip_taskbar = true,
    }},
    {rule = {instance = "pithos"}, properties = {
        height       =  493,
        -- icon         = beautiful.icons .. "Applications/library-internet-radio.png",
        icon_name    = "Internet radio",
        floating     = true,
        ontop        = true,
        sticky       = true,
        skip_taskbar = true,
        width        =   493,
        x            = (1920 - 493 - 38),
        y            =     0,
    }},
    {rule = {instance = "steam", name = "Chat"}, properties = {
        floating = true,
        height   =   540,
        ontop    = true,
        sticky   = true,
        width    =   540,
        x        = (1920 - 536 - 38),
        y        =     0,
    }},
    -- PROD
    {rule = {instance = "atom"}, properties = {
        icon_name = "Text-editor",
        tag       = tags[1],
    }},
    {rule = {class = "dolphin"}, properties = {
        icon_name = "File-manager",
        tag       = tags[1],
    }},
    {rule = {class = "dolphin", name = "File Already Exists"}, properties = {
        tag = tags[1],
    }},
    {rule = {instance = "gimp"}, properties = {
        tag = tags[1],
    }},
    {rule = {instance = "inkscape"}, properties = {
        tag = tags[1],
    }},
    {rule = {instance = "kate"}, properties = {
        tag = tags[1],
    }},
    {rule = {instance = "okular"}, properties = {
        tag = tags[1],
    }},
    {rule = {instance = "playonlinux"}, properties = {
        tag = tags[1],
    }},
    {rule = {class = "Steam"}, properties = {
        tag = tags[1],
    }},
    {rule = {class = "Steam.exe"}, properties = {
        tag  = tags[1],
    }},
    {rule = {instance = "terminator"}, properties = {
        icon_name = "Terminal",
        tag       = tags[1],
    }},
    -- WEBS
    {rule = {class = "Firefox", type = "normal"}, properties = {
        height    = 1056,
        icon_name = "Web-Browser",
        tag       = tags[2],
        width     = 1259,
        x         =    0,
        y         =    0,
    }},
    {rule = {class = "Thunderbird", type = "normal"}, properties = {
        height    =  1056,
        icon_name = "Email Client",
        tag       = tags[2],
        width     =  622,
        x         = 1260,
        y         =    0,
        -- Eventually set a minimum size
    }},
    {rule = {instance = "plugin-container"}, properties = {
        raise = true,
        tag   = tags[2],
    }},
    -- OVER
    {rule_any = {instance = {"Application-steam-x32.exe", "Application-steam-x64.exe"}}, properties = {
        fullscreen = true,
        ontop      = true,
        tag        = tags[3],
    }},
    {rule = {instance = "Bastion.bin.x86"}, properties = {
        fullscreen = true,
        ontop      = true,
        tag        = tags[3],
    }},
    {rule = {instance = "Braid.bin.x86"}, properties = {
        fullscreen = true,
        ontop      = true,
        tag        = tags[3],
    }},
    {rule = {instance = "Cities.x64"}, properties = {
        fullscreen = true,
        ontop      = true,
        tag        = tags[3],
    }},
    {rule = {instance = "ck2"}, properties = {
        minimized  = false,
        tag        = tags[3],
    }},
    {rule = {class = "CrossCode"}, properties = {
        fullscreen = true,
        ontop      = true,
        tag        = tags[3],
    }},
    {rule = {instance = "eu4"}, properties = {
        ontop      = true,
        tag        = tags[3],
    }},
    {rule = {instance = "freeciv-gtk3"}, properties = {
        fullscreen = false,
        maximised  = true,
        tag        = tags[3],
    }},
    {rule = {instance = "GuildII.exe"}, properties = {
        fullscreen = true,
        ontop      = true,
        tag        = tags[3],
    }},
    {rule = {instance = "hl2_linux"}, properties = {
        fullscreen = true,
        ontop      = true,
        tag        = tags[3],
    }},
    {rule = {instance = "hoi4"}, properties = {
        ontop      = true,
        tag        = tags[3],
    }},
    {rule = {instance = "KSP.x86"}, properties = {
        fullscreen = false,
        maximised  = true,
        tag        = tags[3],
    }},
    {rule = {instance = "LoK.exe"}, properties = {
        fullscreen = true,
        ontop      = true,
        tag        = tags[3],
    }},
    {rule = {instance = "lotroclient.exe"}, properties = {
        fullscreen = true,
        ontop      = true,
        tag        = tags[3],
    }},
    {rule = {instance = "mb_warband_linux"}, properties = {
        fullscreen = true,
        ontop      = true,
        tag        = tags[3],
    }},
    {rule = {instance = "Medieval2"}, properties = {
        fullscreen = true,
        ontop      = true,
        tag        = tags[3],
    }},
    {rule = {instance = "pokemmo_launcher"}, properties = {
        fullscreen = false,
        maximised  = true,
        tag        = tags[3],
    }},
    {rule = {instance = "portal2_linux"}, properties = {
        fullscreen = true,
        ontop      = true,
        tag        = tags[3],
    }},
    {rule = {instance = "runescape"}, properties = {
        fullscreen = false,
        maximised  = true,
        tag        = tags[3],
    }},
    {rule = {instance = "skse_loader.exe"}, properties = {
        minimized = true,
        tag       = tags[3],
    }},
    {rule = {instance = "stellaris"}, properties = {
        ontop      = true,
        tag        = tags[3],
    }},
    {rule = {instance = "supertux2"}, properties = {
        fullscreen = true,
        ontop      = true,
        tag        = tags[3],
    }},
    {rule = {class = "SuperTuxKart"}, properties = {
        fullscreen = false,
        maximised  = true,
        tag        = tags[3],
    }},
    {rule = {instance = "TESV.exe"}, properties = {
        fullscreen = true,
        ontop      = true,
        tag        = tags[3],
    }},
    {rule_any = {instance = {"tld.x86", "tld.x86_64"}}, properties = {
        fullscreen = true,
        ontop      = true,
        tag        = tags[3],
    }},
    {rule = {instance = "Tyranny"}, properties = {
        fullscreen = true,
        ontop      = true,
        tag        = tags[3],
    }},
    {rule = {instance = "v2game.exe"}, properties = {
        fullscreen = true,
        ontop      = true,
        tag        = tags[3],
    }},
    {rule = {instance = "vlc", name="VLC media player"}, properties = {
        tag = tags[3],
    }},
    {rule = {instance = "WorldOfGoo"}, properties = {
        fullscreen = true,
        tag        = tags[3],
    }},
}
