communication_menu = {
	{"&VoIP-client",     env .. "skype",   beautiful.icons .. "Applications/voip-client.png"},
	{"&IRC-client",      env .. "hexchat", nil},
	{"I&M-client",       env .. "pidgin",  nil},
}
return {
	{"&Terminal",        env .. terminal,                                             beautiful.icons .. "Applications/terminal.png"},
	{"&File-manager",    env .. "dolphin",                                            beautiful.icons .. "Applications/file-manager.png"},
	{nil,                nil,                                                         nil},
	{"&Char'-selector",  env .. "gnome-character-map",                                beautiful.icons .. "Applications/character-selector.png"},
	{"Ca&lculator",      env .. "qalculate-gtk",                                      beautiful.icons .. "Applications/calculator.png"},
	{nil,                nil,                                                         nil},
	{"Communications",   communication_menu,                                          nil},
	{nil,                nil,                                                         nil},
  --{"archiver",         env .. "chrt -b 0 WINEPREFIX='/home/Sweyn78/~/.wine' wine 'C:\\windows\\command\\start.exe /Unix' /home/Sweyn78/~/.wine/dosdevices/c:/users/sweyn78/Start\ Menu/Programs/7-Zip/7-Zip\ File\ Manager.lnk"}
	{"&Torrent-client",  env .. "deluge-gtk -q",                                      nil},
	{"&Virtual machine", env .. "bash /home/sweyn78/.local/scripts/launch/VBox.bash", nil},
}
