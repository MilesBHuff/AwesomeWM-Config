local webbrowsers_menu = {
	{"&Firefox",           env .. "firefox",                          nil},
	{"&Chromium",          env .. "chromium",                         nil},
	{"&Internet Explorer", env .. "playonlinux --run 'WineIexplore'", nil},
}
local office_menu = {
	{"&Office suite",    env .. "libreoffice", beautiful.getIcon("apps", "libreoffice-main")},
	{"&Email client",    env .. "thunderbird", nil},
  --{"C&alendar",        env .. "",            beautiful.getIcon("apps", "calendar")},
	{nil,                nil,                  nil},
	{"&Mind-mapper",     env .. "vym",         nil},
	{"&Document-viewer", env .. "okular",      nil},
}
local mapping_menu = {
	{"&Virtual globe", env .. "google-earth",   beautiful.getIcon("apps", "globe-viewer")},
	{"Map-&projector", env .. "flex-projector", nil},
}
local languages_menu = {
  --{"&RosettaStone",       env .. "",      nil},
	{"&Kurso de esperanto", env .. "kurso", nil},
}
local development_menu = {
	{"T&ext-editor", env .. "code",     beautiful.getIcon("apps", "text-editor")},
	{"&Java IDE",    env .. "eclipse",  nil},
	{nil,            nil,               nil},
	{"&Diff'-tool",  env .. "bcompare", beautiful.getIcon("apps", "diff-viewer")},
}

--------------------------------------------------------------------------------
return {
	{"&Web-browsers", webbrowsers_menu, beautiful.getIcon("categories", "web-browsers")},
	{"&Office",       office_menu,      nil},
	{nil,             nil,              nil},
	{"&Development",  development_menu, nil},
	{"&Languages",    languages_menu,   nil},
	{"&Mapping",      mapping_menu,     nil},
}
