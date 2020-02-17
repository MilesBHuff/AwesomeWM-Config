return {
	{"&Pause session",  env .. "light-locker",       beautiful.get_icon("system-switch-user")},
	{"&End session",    awesome.exit,                beautiful.get_icon("system-log-out")},
	{"Reload &desktop", awesome.restart,             beautiful.get_icon("reload")},
	{nil,               nil,                         nil},
	{"&Suspend",        env .. "systemctl suspend",  beautiful.get_icon("system-suspend")},
	{"S&hut down",      env .. "systemctl poweroff", beautiful.get_icon("system-shutdown")},
	{"&Reboot",         env .. "systemctl reboot",   beautiful.get_icon("system-restart")},
}
