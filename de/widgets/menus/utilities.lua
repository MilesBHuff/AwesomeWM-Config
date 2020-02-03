local communication_menu = {
	{"&Webchat client",  env .. "franz",   beautiful.get_icon("franz")},
	{"&IRC client",      env .. "hexchat", beautiful.get_icon("hexchat")},
	{"I&M client",       env .. "pidgin",  beautiful.get_icon("applications-chat-panel")},
	{nil,                nil,              nil},
	{"&Discord",         env .. "discord", beautiful.get_icon("discord")},
  --{"&Skype",           env .. "skype",   beautiful.get_icon("skype")},
}
return {
	{"&Terminal",        env .. terminal,                                             beautiful.get_icon("utilities-terminal")},
	{"&File-manager",    env .. "dolphin",                                            beautiful.get_icon("file-manager")},
	{nil,                nil,                                                         nil},
	{"C&haracter map",   env .. "gnome-character-map",                                beautiful.get_icon("accessories-character-map")},
	{"&Calculator",      env .. "qalculate-gtk",                                      beautiful.get_icon("accessories-calculator")},
    {"A&rchiver",        env .. "xarchiver",                                          beautiful.get_icon("archive-manager")},
	{nil,                nil,                                                         nil},
	{"Communications",   communication_menu,                                          beautiful.get_icon("ekiga")},
	{nil,                nil,                                                         nil},
	{"&Authenticator",   env .. "chromium --app-id=gaedmjdfmmahhbjefcbgaolhhanlaolb", beautiful.get_icon("authy")},
	{"&Torrent client",  env .. "deluge-gtk -q",                                      beautiful.get_icon("application-x-bittorrent")},
	{"&Virtual machine", env .. "bash '" .. globals.cwd .. "lib/wrappers/vbox.bash'", beautiful.get_icon("virtualbox")},
}
