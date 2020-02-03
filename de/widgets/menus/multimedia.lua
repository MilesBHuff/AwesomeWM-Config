return {
	{"&Video-player",          env .. "vlc",            beautiful.getIcon("apps", "video-player")},
	{"&Internet radio",        env .. "pithos",         beautiful.getIcon("apps", "radio")},
	{"&Audio-player",          env .. "wine 'C:/Program Files (x86)/Winamp/winamp.exe'", nil},
	{nil,                      nil,                     nil},
	{"&Disc-burner",           env .. "simpleburn",     nil},
	{"Audio-&converter",       env .. "soundkonverter", beautiful.getIcon("apps", "audio-converter")},
	{nil,                      nil,                     nil},
	{"&Speech-analyzer",       env .. "praat",          nil},
	{"Audio-&editor",          env .. "audacity",       nil},
	{"&Entrainment-generator", env .. "gnaural",        nil},
}
