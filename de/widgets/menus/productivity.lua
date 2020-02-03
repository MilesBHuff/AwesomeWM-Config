local webbrowsers_menu = {
	{"&Firefox",           env .. "firefox",                          nil},
	{"&Chromium",          env .. "chromium",                         nil},
	{"&Internet Explorer", env .. "playonlinux --run 'WineIexplore'", nil},
}
local office_menu = {
	{"&Office suite",    env .. "libreoffice", beautiful.get_icon("libreoffice-main")},
	{"&Email client",    env .. "thunderbird", nil},
  --{"C&alendar",        env .. "",            beautiful.get_icon("calendar")},
	{nil,                nil,                  nil},
	{"&Mind-mapper",     env .. "vym",         nil},
	{"&Document-viewer", env .. "okular",      nil},
}
local mapping_menu = {
	{"&Virtual globe", env .. "google-earth",   beautiful.get_icon("globe-viewer")},
	{"Map-&projector", env .. "flex-projector", nil},
}
local languages_menu = {
  --{"&RosettaStone",       env .. "",      nil},
	{"&Kurso de esperanto", env .. "kurso", nil},
}
local development_menu = {
	{"T&ext-editor", env .. "code",     beautiful.get_icon("text-editor")},
	{"&Java IDE",    env .. "eclipse",  nil},
	{nil,            nil,               nil},
	{"&Diff'-tool",  env .. "bcompare", beautiful.get_icon("diff-viewer")},
}

--------------------------------------------------------------------------------
return {
	{"&Web-browsers", webbrowsers_menu, beautiful.get_icon("web-browsers")},
	{"&Office",       office_menu,      nil},
	{nil,             nil,              nil},
	{"&Development",  development_menu, nil},
	{"&Languages",    languages_menu,   nil},
	{"&Mapping",      mapping_menu,     nil},
}
