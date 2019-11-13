return {
	{"&Lock screen",    nil,                         nil},
	{"&End session",    awesome.exit,                beautiful.icons .. "Actions/end-session.png"},
	{nil,               nil,                         nil},
	{"Reload &config'", awesome.restart,             nil},
	{nil,               nil,                         nil},
	{"&Suspend",        env .. "systemctl suspend",  beautiful.icons .. "Actions/suspend.png"},
	{"S&hutdown",       env .. "systemctl poweroff", beautiful.icons .. "Actions/shutdown.png"},
	{"&Reboot",         env .. "systemctl reboot",   beautiful.icons .. "Actions/reboot.png"},
}
