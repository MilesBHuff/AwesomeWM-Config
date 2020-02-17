
local communication_menu = {
	{"&Webchat client",  env .. "franz",   beautiful.get_icon("franz")},
	{"&IRC client",      env .. "hexchat", beautiful.get_icon("hexchat")},
	{"I&M client",       env .. "pidgin",  beautiful.get_icon("applications-chat-panel")},
	{nil,                nil,              nil},
	{"&Discord",         env .. "discord", beautiful.get_icon("discord")},
  --{"&Skype",           env .. "skype",   beautiful.get_icon("skype")},
}
local development_menu = {
	{"T&ext-editor",     env .. "code",           beautiful.get_icon("accessories-text-editor")},
	{"&Hex-editor",      env .. "ghex",           beautiful.get_icon("ghex")},
	{"&Diff viewer",     env .. "bcompare",       beautiful.get_icon("kompare")},
	{nil,                nil,                     nil},
	{"&Java IDE",        env .. "eclipse",        beautiful.get_icon("eclipse")},
	{"&Android IDE",     env .. "android-studio", beautiful.get_icon("android-studio")},
	{nil,                nil,                     nil},
	{"&Enpoint-querier", env .. "postman",        beautiful.get_icon("postman")},
}
local education_menu = {
    {"&RosettaStone",       env .. "",      beautiful.get_icon("rosettastone")},
    {"&Kurso de esperanto", env .. "kurso", beautiful.get_icon("kurso")},
}
local mapping_menu = {
	{"&Virtual globe", env .. "google-earth",   beautiful.get_icon("googleearth")},
    {"Map &projector", env .. "flex-projector", beautiful.get_icon("")},
}
local office_menu = {
	{"&Office suite",    env .. "libreoffice",    beautiful.get_icon("libreoffice-main")},
	{"&Document viewer", env .. "okular",         beautiful.get_icon("accessories-document-viewer")},
	{"&Notes",           env .. "standard-notes", beautiful.get_icon("gnome-sticky-notes-applet")},
	{nil,                nil,                     nil},
	{"&Email client",    env .. "thunderbird",    beautiful.get_icon("applications-mail")},
    {"C&alendar",        env .. "",               beautiful.get_icon("calendar")},
    {"&Contacts",        env .. "",               beautiful.get_icon("gnome-contacts")},
}
local webbrowsers_menu = {
	{"&Secure browser",  env .. "firefox",                          beautiful.get_icon("firefox")},
	{"&Vanilla browser", env .. "chromium",                         beautiful.get_icon("google-chrome")},
    {"&Legacy browser",  env .. "playonlinux --run 'WineIexplore'", beautiful.get_icon("wine-browser")},
}

--------------------------------------------------------------------------------
return {
	{"&Web browsers",    webbrowsers_menu,     beautiful.get_icon("applications-webbrowsers")},
	{"Communications",   communication_menu,   beautiful.get_icon("ekiga")},
	{"&Office",          office_menu,          beautiful.get_icon("libreoffice-main")},
	{"&Development",     development_menu,     beautiful.get_icon("applications-development")},
    {"&Education",       education_menu,       beautiful.get_icon("applications-science")},
	{"&Mapping",         mapping_menu,         beautiful.get_icon("applications-interfacedesign")},
}
