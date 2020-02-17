return {
	{"&Terminal",        cmd(terminal),                                             beautiful.get_icon("utilities-terminal")},
	{"&File-manager",    cmd("dolphin"),                                            beautiful.get_icon("file-manager")},
	{nil, nil, nil},
	{"&Authenticator",   cmd("chromium --app-id=gaedmjdfmmahhbjefcbgaolhhanlaolb"), beautiful.get_icon("authy")},
	{"C&haracter map",   cmd("gnome-character-map"),                                beautiful.get_icon("accessories-character-map")},
	{"&Calculator",      cmd("qalculate-gtk"),                                      beautiful.get_icon("accessories-calculator")},
	{nil, nil, nil},
    {"A&rchiver",        cmd("xarchiver"),                                          beautiful.get_icon("archive-manager")},
	{"&Torrent client",  cmd("deluge-gtk -q"),                                      beautiful.get_icon("application-x-bittorrent")},
	{"&Virtual machine", cmd("bash '" .. wrappers .. "/vbox.bash'"),                beautiful.get_icon("virtualbox")},
}
