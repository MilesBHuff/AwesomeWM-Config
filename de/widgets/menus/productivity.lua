
local communication_menu = {
	{"&Webchat client",  cmd("franz"),   beautiful.get_icon("franz")},
	{"&IRC client",      cmd("hexchat"), beautiful.get_icon("hexchat")},
	{"I&M client",       cmd("pidgin"),  beautiful.get_icon("applications-chat-panel")},
	{nil, nil, nil},
	{"&Discord",         cmd("discord"), beautiful.get_icon("discord")},
  --{"&Skype",           cmd("skype"),   beautiful.get_icon("skype")},
}
local development_menu = {
	{"T&ext-editor",     cmd("code"),           beautiful.get_icon("accessories-text-editor")},
	{"&Hex-editor",      cmd("ghex"),           beautiful.get_icon("ghex")},
	{"&Diff viewer",     cmd("bcompare"),       beautiful.get_icon("kompare")},
	{nil, nil, nil},
	{"&Java IDE",        cmd("eclipse"),        beautiful.get_icon("eclipse")},
	{"&Android IDE",     cmd("android-studio"), beautiful.get_icon("android-studio")},
	{nil, nil, nil},
	{"&Enpoint-querier", cmd("postman"),        beautiful.get_icon("postman")},
}
local education_menu = {
    {"&RosettaStone",       cmd(""),      beautiful.get_icon("rosettastone")},
    {"&Kurso de esperanto", cmd("kurso"), beautiful.get_icon("kurso")},
}
local mapping_menu = {
	{"&Virtual globe", cmd("google-earth"),   beautiful.get_icon("googleearth")},
    {"Map &projector", cmd("flex-projector"), beautiful.get_icon("")},
}
local office_menu = {
	{"&Office suite",    cmd("libreoffice"),    beautiful.get_icon("libreoffice-main")},
	{"&Document viewer", cmd("okular"),         beautiful.get_icon("accessories-document-viewer")},
	{"&Notes",           cmd("standard-notes"), beautiful.get_icon("gnome-sticky-notes-applet")},
	{nil, nil, nil},
	{"&Email client",    cmd("thunderbird"),    beautiful.get_icon("applications-mail")},
    {"C&alendar",        cmd(""),               beautiful.get_icon("calendar")},
    {"&Contacts",        cmd(""),               beautiful.get_icon("gnome-contacts")},
}
local webbrowsers_menu = {
	{"&Secure browser",  cmd("firefox"),                          beautiful.get_icon("firefox")},
	{"&Vanilla browser", cmd("chromium"),                         beautiful.get_icon("google-chrome")},
    {"&Legacy browser",  cmd("playonlinux --run 'WineIexplore'"), beautiful.get_icon("wine-browser")},
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
