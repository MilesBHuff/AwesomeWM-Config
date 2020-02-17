local settings_menu = {
    {"&QT-settings",           cmd("systemsettings5"),                 beautiful.get_icon("")},
	{"G&TK-settings",          cmd(""),                                beautiful.get_icon("")},
	{nil, nil, nil},
	{"Key&board-settings",     cmd("ibus-setup"),                      beautiful.get_icon("")},
	{"Gamepad-&mapper",        cmd("qjoypad"),                         beautiful.get_icon("")},
	{nil, nil, nil},
	{"&Printer-settings",      cmd("system-config-printer"),           beautiful.get_icon("")},
	{"&Keyring-configuration", cmd("seahorse"),                        beautiful.get_icon("")},
	{"&Audio-settings",        cmd("pavucontrol"),                     beautiful.get_icon("")},
	{nil, nil, nil},
	{"&GPU-settings",          cmd("nvidia-settings"),                 beautiful.get_icon("")},
	{"&3D-accel' settings",    cmd("driconf"),                         beautiful.get_icon("")},
	{nil, nil, nil},
	{"&Java-settings",         cmd("jcontrol"),                        beautiful.get_icon("")},
	{"Ja&va-policy",           cmd("policytool"),                      beautiful.get_icon("")},
	{"&Flash-settings",        cmd(""),                                beautiful.get_icon("")},
	{nil, nil, nil},
	{"Awesome-t&heme",         cmd(edit .. " " .. beautiful.conffile), beautiful.get_icon("")},
	{"A&wesome-configuration", cmd(edit .. " " .. awesome.conffile),   beautiful.get_icon("")},
}
return {
	{"&Settings",                 settings_menu,                      beautiful.get_icon("preferences-desktop")},
	{nil, nil, nil},
	{"&Wine-manager",             cmd("playonlinux"),                 beautiful.get_icon("wine")},
	{"System-&monitor",           cmd("ksysguard"),                   beautiful.get_icon("system-monitor")},
	{"&Info-center",              cmd("hardinfo"),                    beautiful.get_icon("system-info")},
	{"&Help",                     cmd(terminal .. " -e man awesome"), beautiful.get_icon("help-browser")},
	{"&Cleaner",                  cmd("bleachbit"),                   beautiful.get_icon("")},
	{nil, nil, nil},
	{"&User-manager (root)",      cmd("gksudo kuser %i -caption %c"), beautiful.get_icon("")},
	{"&Partition-manager (root)", cmd("gksudo gparted"),              beautiful.get_icon("partitioner")},
	{"SMART-&inspector (root)",   cmd("gksudo gsmartcontrol"),        beautiful.get_icon("disk-configurer")},
	{"C&leaner (root)",           cmd("gksudo bleachbit"),            beautiful.get_icon("")},
}
