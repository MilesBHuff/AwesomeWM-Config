return {
	{"&Terminal",        env .. terminal,                                             beautiful.get_icon("utilities-terminal")},
	{"&File-manager",    env .. "dolphin",                                            beautiful.get_icon("file-manager")},
	{nil,                nil,                                                         nil},
	{"&Authenticator",   env .. "chromium --app-id=gaedmjdfmmahhbjefcbgaolhhanlaolb", beautiful.get_icon("authy")},
	{"C&haracter map",   env .. "gnome-character-map",                                beautiful.get_icon("accessories-character-map")},
	{"&Calculator",      env .. "qalculate-gtk",                                      beautiful.get_icon("accessories-calculator")},
	{nil,                nil,                                                         nil},
    {"A&rchiver",        env .. "xarchiver",                                          beautiful.get_icon("archive-manager")},
	{"&Torrent client",  env .. "deluge-gtk -q",                                      beautiful.get_icon("application-x-bittorrent")},
	{"&Virtual machine", env .. "bash '" .. globals.cwd .. "lib/wrappers/vbox.bash'", beautiful.get_icon("virtualbox")},
}
