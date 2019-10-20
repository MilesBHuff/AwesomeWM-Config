return {
	{"&Video-player"         , env .. "vlc"           , beautiful.icons .. "Applications/video-player.png"   },
	{"&Internet radio"       , env .. "pithos"        , beautiful.icons .. "Applications/radio.png"          },
	{"&Audio-player"         , env .. "wine 'C:/Program Files (x86)/Winamp/winamp.exe'", nil},
	{nil                     , nil                    , nil                                                  },
	{"&Disc-burner"          , env .. "simpleburn"    , nil                                                  },
	{"Audio-&converter"      , env .. "soundkonverter", beautiful.icons .. "Applications/audio-converter.png"},
	{nil                     , nil                    , nil                                                  },
	{"&Speech-analyzer"      , env .. "praat"         , nil                                                  },
	{"Audio-&editor"         , env .. "audacity"      , nil                                                  },
	{"&Entrainment-generator", env .. "gnaural"       , nil                                                  },
}
