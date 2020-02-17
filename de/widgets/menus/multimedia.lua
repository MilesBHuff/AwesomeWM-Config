return {
	{"&Video-player",          cmd("vlc"),            beautiful.get_icon("video-player")},
	{"&Internet radio",        cmd("pithos"),         beautiful.get_icon("radio")},
	{"&Audio-player",          cmd("wine 'C:/Program Files (x86)/Winamp/winamp.exe'"), beautiful.get_icon("")},
	{nil, nil, nil},
	{"&Disc-burner",           cmd("simpleburn"),     beautiful.get_icon("")},
	{"Audio-&converter",       cmd("soundkonverter"), beautiful.get_icon("audio-converter")},
	{nil, nil, nil},
	{"&Speech-analyzer",       cmd("praat"),          beautiful.get_icon("")},
	{"Audio-&editor",          cmd("audacity"),       beautiful.get_icon("")},
	{"&Entrainment-generator", cmd("gnaural"),        beautiful.get_icon("")},
}
