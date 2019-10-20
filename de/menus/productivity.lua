local webbrowsersMenu = {
	{"&Firefox"          , env .. "firefox"                         , nil},
	{"&Google Chrome"    , env .. "google-chrome-stable --audio-buffer-size=2048 --cipher-suite-blacklist=0x0001,0x0002,0x0004,0x0005,0x0017,0x0018,0xc002,0xc007,0xc00c,0xc011,0xc016,0xff80,0xff81,0xff82,0xff83", nil},
	{"&Opera"            , env .. "opera-beta"                      , nil},
	{"&Internet Explorer", env .. "playonlinux --run 'WineIexplore'", nil},
}
local officeMenu = {
	{"&Office-suite"   , env .. "libreoffice", beautiful.icons .. "Applications/libreoffice-main.png"},
	{"&Email-client"   , env .. "thunderbird", nil                                                   },
  --{"C&alendar"       , nil                 , beautiful.icons .. "Applications/calendar.png"        },
	{nil               , nil                 , nil                                                   },
	{"&Mind-mapper"    , env .. "vym"        , nil                                                   },
	{"&Document-viewer", env .. "okular"     , nil                                                   },
}
local mappingMenu = {
	{"&Virtual globe", env .. "/opt/google/earth/free/google-earth"                                   , beautiful.icons .. "Applications/globe-viewer.png"},
	{"Map-&projector", env .. "java -jar /home/sweyn78/Apps/Usable/Map Projector/FlexProjectorJar.zip", nil                                              },
}
local languagesMenu = {
	{"&RosettaStone"      , nil           , nil},
	{"&Kurso de esperanto", env .. "kurso", nil},
}
local developmentMenu = {
	{"T&ext-editor", env .. "atom"    , beautiful.icons .. "Applications/text-editor.png"},
	{"&Java"       , env .. "eclipse" , nil                                              },
	{"&Generic"    , env .. "bluefish", nil                                              },
	{nil           , nil              , nil                                              },
	{"&Diff'-tool" , env .. "bcompare", beautiful.icons .. "Applications/diff-viewer.png"},
}

--------------------------------------------------------------------------------
return {
	{"&Web-browsers", webbrowsersMenu, beautiful.icons .. "Categories/web-browsers.png"},
	{"&Office"      , officeMenu     , nil                                             },
	{nil            , nil            , nil                                             },
	{"&Development" , developmentMenu, nil                                             },
	{"&Languages"   , languagesMenu  , nil                                             },
	{"&Mapping"     , mappingMenu    , nil                                             },
}
