--------------------------------------------------------------------------------
local voxel_menu = {
	{"&Starbound", cmd(steam .. "steam://rungameid/211820"), beautiful.get_icon("starbound_original")},
	{"&Terraria",  cmd(steam .. "steam://rungameid/105600"), beautiful.get_icon("terraria_original")},
	{"&Minecraft", cmd("minecraft-launcher"),                beautiful.get_icon("minecraft")},
	{"&Robocraft", cmd(steam .. "steam://rungameid/301520"), beautiful.get_icon("robo_original")},
}
local strategy_menu = {
	{"&Stellaris",               cmd(steam .. "steam://rungameid/281990"), beautiful.get_icon("stellaris_original")},
	{"&Hearts of Iron IV",       cmd(steam .. "steam://rungameid/394360"), beautiful.get_icon("")},
	{"&Victoria 2",              cmd("playonlinux --run 'v2game'"),        beautiful.get_icon("vicky2_steam")},
	{"&Europa Universalis IV",   cmd(steam .. "steam://rungameid/236850"), beautiful.get_icon("eu4_steam")},
	{"&Crusader Kings 2",        cmd(steam .. "steam://rungameid/203770"), beautiful.get_icon("ck2_original")},
	{nil, nil, nil},
	{"&Napoleon:  Total War",    cmd("wine 'C:/Program Files (x86)/Steam/steamapps/common/Napoleon Total War/Napolean.exe'"), beautiful.get_icon("")},
	{"Em&pire:  Total War",      cmd(steam .. "steam://rungameid/10500"),                                                     beautiful.get_icon("")},
	{"&Shogun 2:  Total War",    cmd("wine 'C:/Program Files (x86)/Steam/steamapps/common/Total War SHOGUN 2/Shogun2.exe'"),  beautiful.get_icon("")},
	{"&Medieval II:  Total War", cmd(steam .. "steam://rungameid/4700"),                                                      beautiful.get_icon("medieval2_original")},
	{"&Rome:  Total War",        cmd("wine 'C:/Program Files (x86)/Steam/steamapps/common/Rome Total War Gold/RomeTW.exe'"),  beautiful.get_icon("")},
	{nil, nil, nil},
	{"C&ivilization V",          cmd(steam .. "steam://rungameid/8930"),                 beautiful.get_icon("civ5_steam")},
	{"&Freeciv",                 cmd(steam .. "steam://rungameid/15308920978231263232"), beautiful.get_icon("freeciv_steam")},
	{"Freec&ol",                 cmd("freecol"),                                         beautiful.get_icon("")},
}
local story_menu = {
	{"&Transistor",     cmd(steam .. "steam://rungameid/237930"), beautiful.get_icon("transistor_original")},
	{"&Bastion",        cmd(steam .. "steam://rungameid/107100"), beautiful.get_icon("bastion_original")},
	{nil, nil, nil},
	{"Legend of Korra", cmd("playonlinux --run 'LoK'"),           beautiful.get_icon("")},
}
local simulation_stronghold_menu = {
	{"Stronghold &Kingdoms",      cmd(""),                                             beautiful.get_icon("")},
	{"Stronghold &3",             cmd(steam .. "steam://rungameid/47400"),             beautiful.get_icon("sh3_steam")},
	{"Stronghold &Legends Demo",  cmd("playonlinux --run 'Stronghold Legends Demo'"),  beautiful.get_icon("")},
	{"Stronghold &2",             cmd("playonlinux --run 'Stronghold 2'"),             beautiful.get_icon("sh2_original")},
	{"Stronghold &Crusader Demo", cmd("playonlinux --run 'Stronghold Crusader Demo'"), beautiful.get_icon("")},
	{"Stronghold &HD",            cmd(""),                                             beautiful.get_icon("")},
}
local simulation_menu = {
	{"Cities: Skylines",            cmd(steam .. "steam://rungameid/255710"), beautiful.get_icon("")},
	{"&Banished",                   cmd("playonlinux --run 'Banished32x'"),   beautiful.get_icon("")},
	{"&Stronghold games",           simulation_stronghold_menu,               beautiful.get_icon("")},
	{"&0 A.D.",                     cmd("0ad"),                               beautiful.get_icon("0ad")},
	{nil, nil, nil},
	{"&The Guild II:  Renaissance", cmd("playonlinux --run 'Guild2Ren'"),     beautiful.get_icon("")},
	{"The &Guild:  1400",           cmd("playonlinux --run 'Guild1400'"),     beautiful.get_icon("")},
	{nil, nil, nil},
	{"&Roller Coaster Tycoon 3",    cmd("playonlinux --run 'RCT3'"),          beautiful.get_icon("")},
	{"R&oller Coaster Tycoon 2",    cmd("playonlinux --run 'RCT2'"),          beautiful.get_icon("")},
}
local rpg_menu = {
	{"The &Secret World",          cmd("playonlinux --run 'SecretWorld'"),       beautiful.get_icon("")},
	{"&PokéMMO",                   cmd("pokemmo-launcher"),                      beautiful.get_icon("")},
	{nil, nil, nil},
	{"Rappel&z",                   cmd("playonlinux --run 'Rappelz'"),           beautiful.get_icon("")},
	{"&RuneScape",                 cmd("runescape-launcher"),                    beautiful.get_icon("rs3_original_3")},
	{"&World of Warcraft",         cmd("playonlinux --run 'World of Warcraft'"), beautiful.get_icon("wow_original.png")},
	{nil, nil, nil},
	{"Guild Wars &2",              cmd("bash '" .. wrappers .. "/gw2.bash'"),    beautiful.get_icon("gw2_original")},
	{"&Guild Wars",                cmd("playonlinux --run 'Guild Wars'"),        beautiful.get_icon("")},
	{nil, nil, nil},
	{"&Dungeons & Dragons Online", cmd("playonlinux --run 'DDO'"),               beautiful.get_icon("ddo_original")},
	{"&Lord of the Rings Online",  cmd("playonlinux --run 'LOTRO'"),             beautiful.get_icon("lotro_original")},
	{nil, nil, nil},
	{"Sk&yrim",                    cmd("bash '" .. wrappers .. "/skyrim.bash'"), beautiful.get_icon("")},
	{"&Oblivion",                  cmd("playonlinux --run 'obse_loader'"),       beautiful.get_icon("tesiv_original")},
	{"&Morrowind",                 cmd(""),                                      beautiful.get_icon("")},
	{"&TESO",                      cmd(""),                                      beautiful.get_icon("")},
}
local puzzle_menu = {
	{"Portal &2",     cmd(steam .. "steam://rungameid/620"),   beautiful.get_icon("portal2_steam")},
	{"&Portal",       cmd(steam .. "steam://rungameid/400"),   beautiful.get_icon("portal_steam")},
	{nil, nil, nil},
	{"&Braid",        cmd(steam .. "steam://rungameid/26800"), beautiful.get_icon("braid_steam")},
	{"&World of Goo", cmd(steam .. "steam://rungameid/22000"), beautiful.get_icon("goo_steam")},
}
local fps_menu = {
	{"M&&B:  Warband",   cmd(steam .. "steam://rungameid/48700"),      beautiful.get_icon("")},
	{nil, nil, nil},
	{"Gloria &Victis",   cmd("playonlinux --run 'GVLauncherUpdater'"), beautiful.get_icon("")},
	{"&Chivalry",        cmd(steam .. "steam://rungameid/219640"),     beautiful.get_icon("chivalry_steam")},
	{nil, nil, nil},
	{"&Team Fortress 2", cmd(steam .. "steam://rungameid/440"),        beautiful.get_icon("tf2_steam")},
	{"&Left 4 Dead 2",   cmd(steam .. "steam://rungameid/550"),        beautiful.get_icon("l4d2_steam")},
	{"&Half-Life",       cmd(steam .. "steam://rungameid/70"),         beautiful.get_icon("hl2_steam")},
}
local arcade_menu = {
	{"&SuperTux2",    cmd(steam .. "steam://rungameid/10938015065550356480"), beautiful.get_icon("")},
	{"S&uperTuxKart", cmd(steam .. "steam://rungameid/12069604936476786688"), beautiful.get_icon("")},
}
local other_menu = {
	{"&FTL", cmd(steam .. "steam://rungameid/212680"), beautiful.get_icon("ftl_original")}
}

--------------------------------------------------------------------------------
local servers_menu = {
	{"&Freeciv", cmd("terminator -x freeciv-server"), beautiful.get_icon("")},
}
local platforms_menu = {
	{"Steam (&Linux)",   cmd(steam),                       beautiful.get_icon("")},
	{"Steam (&Windows)", cmd("playonlinux --run 'Steam'"), beautiful.get_icon("")},
	{nil, nil, nil},
	{"Game&boy",         cmd("mgba-qt"),                   beautiful.get_icon("gba")},
	{"Game&cube",        cmd("__GL_ALLOW_UNOFFICIAL_PROTOCOL=1 __GL_FSAA_MODE=0 dolphin-emu"), beautiful.get_icon("gc")},
}

--------------------------------------------------------------------------------
local tools_tes_menu = {
	{"&Wrye Bash",         cmd("playonlinux --run 'Wrye Bash'"),        beautiful.get_icon("wryebash_original")},
	{"&TES5Edit",          cmd("playonlinux --run 'TES5Edit'"),         beautiful.get_icon("")},
	{"&ModOrganizer",      cmd("playonlinux --run 'ModOrganizer'"),     beautiful.get_icon("")},
	{"&Nexus Mod-Manager", cmd("playonlinux --run 'Nexus ModManager'"), beautiful.get_icon("")},
	{"&LOOT",              cmd("playonlinux --run 'LOOT'"),             beautiful.get_icon("")},
}
local tools_ftl_menu = {
	{"&Mod-manager",    cmd("terminator -x 'cd \'/home/sweyn78/Apps/Usable/FTL Mod Manager/\' && sh ./modman.command'"),           beautiful.get_icon("")},
	{"&Profile-editor", cmd("terminator -x 'cd \'/home/sweyn78/Apps/Usable/FTL Mod Manager/\' && sh ./FTLProfileEditor.command'"), beautiful.get_icon("")},
	{"&Ship-editor",    cmd("java -jar '/home/sweyn78/Apps/Usable/FTL Ship Creator/superluminal2-linux.jar'"),                     beautiful.get_icon("")},
}
local tools_other_menu = {
	{"&Freeciv-modpacks", cmd("freeciv-modpack"), beautiful.get_icon("")},
}
local tools_menu = {
	{"&TES",   tools_tes_menu,   beautiful.get_icon("")},
	{"&FTL",   tools_ftl_menu,   beautiful.get_icon("")},
	{"&Other", tools_other_menu, beautiful.get_icon("")},
}

--------------------------------------------------------------------------------
return {
	{"&Voxel",      voxel_menu,      beautiful.get_icon("applications-games")},
	{"&Strategy",   strategy_menu,   beautiful.get_icon("applications-games")},
	{"Stor&y",      story_menu,      beautiful.get_icon("applications-games")},
	{"S&imulation", simulation_menu, beautiful.get_icon("applications-games")},
	{"&RPG",        rpg_menu,        beautiful.get_icon("applications-games")},
	{"&Puzzle",     puzzle_menu,     beautiful.get_icon("applications-games")},
	{"&FPS",        fps_menu,        beautiful.get_icon("applications-games")},
	{"&Arcade",     arcade_menu,     beautiful.get_icon("applications-games")},
	{"&Other",      other_menu,      beautiful.get_icon("applications-games")},
	{nil, nil, nil},
	{"S&ervers",    servers_menu,    beautiful.get_icon("")},
	{"&Tools",      tools_menu,      beautiful.get_icon("")},
	{"P&latforms",  platforms_menu,  beautiful.get_icon("")},
}
