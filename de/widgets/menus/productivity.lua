local webbrowsers_menu = {
	{"&Firefox",           env .. "firefox",                          nil},
	{"&Chromium",          env .. "chromium",                         nil},
	{"&Internet Explorer", env .. "playonlinux --run 'WineIexplore'", nil},
}
local office_menu = {
	{"&Office suite",    env .. "libreoffice", beautiful.icons .. "Applications/libreoffice-main.png"},
	{"&Email client",    env .. "thunderbird", nil},
  --{"C&alendar",        env .. "",            beautiful.icons .. "Applications/calendar.png"},
	{nil,                nil,                  nil},
	{"&Mind-mapper",     env .. "vym",         nil},
	{"&Document-viewer", env .. "okular",      nil},
}
local mapping_menu = {
	{"&Virtual globe", env .. "google-earth",   beautiful.icons .. "Applications/globe-viewer.png"},
	{"Map-&projector", env .. "flex-projector", nil},
}
local languages_menu = {
  --{"&RosettaStone",       env .. "",      nil},
	{"&Kurso de esperanto", env .. "kurso", nil},
}
local development_menu = {
	{"T&ext-editor", env .. "code",     beautiful.icons .. "Applications/text-editor.png"},
	{"&Java IDE",    env .. "eclipse",  nil},
	{nil,            nil,               nil},
	{"&Diff'-tool",  env .. "bcompare", beautiful.icons .. "Applications/diff-viewer.png"},
}

--------------------------------------------------------------------------------
return {
	{"&Web-browsers", webbrowsers_menu, beautiful.icons .. "Categories/web-browsers.png"},
	{"&Office",       office_menu,      nil},
	{nil,             nil,              nil},
	{"&Development",  development_menu, nil},
	{"&Languages",    languages_menu,   nil},
	{"&Mapping",      mapping_menu,     nil},
}
