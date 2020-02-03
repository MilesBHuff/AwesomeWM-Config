return {
	{"&Video-player",          env .. "vlc",            beautiful.get_icon("video-player")},
	{"&Internet radio",        env .. "pithos",         beautiful.get_icon("radio")},
	{"&Audio-player",          env .. "wine 'C:/Program Files (x86)/Winamp/winamp.exe'", nil},
	{nil,                      nil,                     nil},
	{"&Disc-burner",           env .. "simpleburn",     nil},
	{"Audio-&converter",       env .. "soundkonverter", beautiful.get_icon("audio-converter")},
	{nil,                      nil,                     nil},
	{"&Speech-analyzer",       env .. "praat",          nil},
	{"Audio-&editor",          env .. "audacity",       nil},
	{"&Entrainment-generator", env .. "gnaural",        nil},
}
