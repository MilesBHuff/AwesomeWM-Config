return {
	{"&Lock screen",    nil,                         nil},
	{"&End session",    awesome.exit,                beautiful.icons .. "-Darkest/actions/24/end-session.png"},
	{nil,               nil,                         nil},
	{"Reload &config'", awesome.restart,             nil},
	{nil,               nil,                         nil},
	{"&Suspend",        env .. "systemctl suspend",  beautiful.icons .. "-Darkest/actions/24/suspend.png"},
	{"S&hutdown",       env .. "systemctl poweroff", beautiful.icons .. "-Darkest/actions/24/shutdown.png"},
	{"&Reboot",         env .. "systemctl reboot",   beautiful.icons .. "-Darkest/actions/24/reboot.png"},
}
