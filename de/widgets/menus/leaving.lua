return {
	{"&Pause session",  cmd("light-locker"),       beautiful.get_icon("system-switch-user")},
	{"&End session",    awesome.exit,              beautiful.get_icon("system-log-out")},
	{"Reload &desktop", awesome.restart,           beautiful.get_icon("reload")},
	{nil, nil, nil},
	{"&Suspend",        cmd("systemctl suspend"),  beautiful.get_icon("system-suspend")},
	{"S&hut down",      cmd("systemctl poweroff"), beautiful.get_icon("system-shutdown")},
	{"&Reboot",         cmd("systemctl reboot"),   beautiful.get_icon("system-restart")},
}
