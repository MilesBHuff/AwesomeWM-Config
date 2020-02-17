--------------------------------------------------------------------------------
local voxel_menu = {
	{"&Starbound", env .. steam .. "steam://rungameid/211820" .. oput,            beautiful.get_icon("starbound_original")},
	{"&Terraria",  env .. steam .. "steam://rungameid/105600" .. oput,            beautiful.get_icon("terraria_original")},
	{"&Minecraft", env .. "minecraft-launcher", beautiful.get_icon("mc_original")},
	{"&Robocraft", env .. steam .. "steam://rungameid/301520" .. oput,            beautiful.get_icon("robo_original")},
}
local strategy_menu = {
	{"&Stellaris",               env .. steam .. "steam://rungameid/281990" .. oput,                                            beautiful.get_icon("stellaris_original")},
	{"&Hearts of Iron IV",       env .. steam .. "steam://rungameid/394360" .. oput,                                            nil},
	{"&Victoria 2",              env .. "playonlinux --run 'v2game'",                                                           beautiful.get_icon("vicky2_steam")},
	{"&Europa Universalis IV",   env .. steam .. "steam://rungameid/236850" .. oput,                                            beautiful.get_icon("eu4_steam")},
	{"&Crusader Kings 2",        env .. steam .. "steam://rungameid/203770" .. oput,                                            beautiful.get_icon("ck2_original")},
	{nil,                        nil,                                                                                           nil},
	{"&Napoleon:  Total War",    env .. "wine 'C:/Program Files (x86)/Steam/steamapps/common/Napoleon Total War/Napolean.exe'", nil},
	{"Em&pire:  Total War",      env .. steam .. "steam://rungameid/10500" .. oput,                                             nil},
	{"&Shogun 2:  Total War",    env .. "wine 'C:/Program Files (x86)/Steam/steamapps/common/Total War SHOGUN 2/Shogun2.exe'",  nil},
	{"&Medieval II:  Total War", env .. steam .. "steam://rungameid/4700"  .. oput,                                             beautiful.get_icon("medieval2_original")},
	{"&Rome:  Total War",        env .. "wine 'C:/Program Files (x86)/Steam/steamapps/common/Rome Total War Gold/RomeTW.exe'",  nil},
	{nil,                        nil,                                                                                           nil},
	{"C&ivilization V",          env .. steam .. "steam://rungameid/8930" .. oput,                                              beautiful.get_icon("civ5_steam")},
	{"&Freeciv",                 env .. steam .. "steam://rungameid/15308920978231263232" .. oput,                              beautiful.get_icon("freeciv_steam")},
	{"Freec&ol",                 env .. "freecol",                                                                              nil},
}
local story_menu = {
	{"&Transistor",     env .. steam .. "steam://rungameid/237930" .. oput, beautiful.get_icon("transistor_original")},
	{"&Bastion",        env .. steam .. "steam://rungameid/107100" .. oput, beautiful.get_icon("bastion_original")},
	{nil,               nil,                                                nil},
	{"Legend of Korra", env .. "playonlinux --run 'LoK'",                   nil},
}
local simulation_stronghold_menu = {
	{"Stronghold &Kingdoms",      nil,                                                   nil},
	{"Stronghold &3",             env .. steam .. "steam://rungameid/47400" .. oput,     beautiful.get_icon("sh3_steam")},
	{"Stronghold &Legends Demo",  env .. "playonlinux --run 'Stronghold Legends Demo'",  nil},
	{"Stronghold &2",             env .. "playonlinux --run 'Stronghold 2'",             beautiful.get_icon("sh2_original")},
	{"Stronghold &Crusader Demo", env .. "playonlinux --run 'Stronghold Crusader Demo'", nil},
	{"Stronghold &HD",            nil,                                                   nil},
}
local simulation_menu = {
	{"Cities: Skylines",            env .. steam .. "steam://rungameid/255710" .. oput,              nil},
	{"&Banished",                   env .. "playonlinux --run 'Banished32x'",                        nil},
	{"&Stronghold games",           simulation_stronghold_menu,                                      nil},
	{"&0 A.D.",                     env .. steam .. "steam://rungameid/9937877960117714944" .. oput, beautiful.get_icon("0ad_steam")},
	{nil,                           nil,                                                             nil},
	{"&The Guild II:  Renaissance", env .. "playonlinux --run 'Guild2Ren'",                          nil},
	{"The &Guild:  1400",           env .. "playonlinux --run 'Guild1400'",                          nil},
	{nil,                           nil,                                                             nil},
	{"&Roller Coaster Tycoon 3",    env .. "playonlinux --run 'RCT3'",                               nil},
	{"R&oller Coaster Tycoon 2",    env .. "playonlinux --run 'RCT2'",                               nil},
}
local rpg_menu = {
	{"The &Secret World",          env .. "playonlinux --run 'SecretWorld'",                          nil},
	{"&PokéMMO",                   env .. "pokemmo-launcher",                                         nil},
	{nil,                          nil,                                                               nil},
	{"Rappel&z",                   env .. "playonlinux --run 'Rappelz'",                              nil},
	{"&RuneScape",                 env .. "runescape-launcher",                                       beautiful.get_icon("rs3_original_3")},
	--	{"&RuneScape",                 "cd /opt/runescape/share/prms && cp -f runescape.prm.copy runescape.prm && cd /opt/runescape/share/configs && cp -f settings.conf.copy settings.conf && /opt/runescape/runescape", beautiful.get_icon("rs3_new")},
	{"&World of Warcraft",         env .. "playonlinux --run 'World of Warcraft'",                    beautiful.get_icon("wow_original.png")},
	{nil,                          nil,                                                               nil},
	{"Guild Wars &2",              env .. "bash '" .. globals.cwd .. "lib/wrappers/gw2.bash'",        beautiful.get_icon("gw2_original")},
	{"&Guild Wars",                env .. "playonlinux --run 'Guild Wars'",                           nil},
	{nil,                          nil,                                                               nil},
	{"&Dungeons & Dragons Online", env .. "playonlinux --run 'DDO'",                                  beautiful.get_icon("ddo_original")},
	{"&Lord of the Rings Online",  env .. "playonlinux --run 'LOTRO'",                                beautiful.get_icon("lotro_original")},
	{nil,                          nil,                                                               nil},
	{"Sk&yrim",                    env .. "bash '" .. globals.cwd .. "lib/wrappers/skyrim.bash'",     nil},
	{"&Oblivion",                  env .. "playonlinux --run 'obse_loader'",                          beautiful.get_icon("tesiv_original")},
	{"&Morrowind",                 nil,                                                               nil},
	{"&TESO",                      nil,                                                               nil},
}
local puzzle_menu = {
	{"Portal &2",     env .. steam .. "steam://rungameid/620"   .. oput, beautiful.get_icon("portal2_steam")},
	{"&Portal",       env .. steam .. "steam://rungameid/400"   .. oput, beautiful.get_icon("portal_steam")},
	{nil,             nil,                                               nil},
	{"&Braid",        env .. steam .. "steam://rungameid/26800" .. oput, beautiful.get_icon("braid_steam")},
	{"&World of Goo", env .. steam .. "steam://rungameid/22000" .. oput, beautiful.get_icon("goo_steam")},
}
local fps_menu = {
	{"M&&B:  Warband",   env .. steam .. "steam://rungameid/48700" .. oput,  nil},
	{nil,                nil,                                                nil},
	{"Gloria &Victis",   env .. "playonlinux --run 'GVLauncherUpdater'",     nil},
	{"&Chivalry",        env .. steam .. "steam://rungameid/219640" .. oput, beautiful.get_icon("chivalry_steam")},
	{nil,                nil,                                                nil},
	{"&Team Fortress 2", env .. steam .. "steam://rungameid/440" .. oput,    beautiful.get_icon("tf2_steam")},
	{"&Left 4 Dead 2",   env .. steam .. "steam://rungameid/550" .. oput,    beautiful.get_icon("l4d2_steam")},
	{"&Half-Life",       env .. steam .. "steam://rungameid/70" .. oput,     beautiful.get_icon("hl2_steam")},
}
local arcade_menu = {
	{"&SuperTux2",    env .. steam .. "steam://rungameid/10938015065550356480" .. oput, nil},
	{"S&uperTuxKart", env .. steam .. "steam://rungameid/12069604936476786688" .. oput, nil},
}
local other_menu = {
	{"&FTL", env .. steam .. "steam://rungameid/212680" .. oput, beautiful.get_icon("ftl_original")}
}

--------------------------------------------------------------------------------
local servers_menu = {
	{"&Governcraft", env .. "terminator -x dash /home/sweyn78/Apps/!Projects/Governcraft/start.dash", nil},
	{"&Freeciv",     env .. "terminator -x freeciv-server",                                           nil},
}
local platforms_menu = {
	{"Steam (&Linux)",   env .. steam .. oput,               nil},
	{"Steam (&Windows)", env .. "playonlinux --run 'Steam'", nil},
	{nil,                nil,                                nil},
	{"Game&boy",         env .. "mgba-qt",                   beautiful.get_icon("gba")},
	{"Game&cube",        env .. "__GL_ALLOW_UNOFFICIAL_PROTOCOL=1 __GL_FSAA_MODE=0 dolphin-emu", beautiful.get_icon("gc")},
}

--------------------------------------------------------------------------------
local tools_tes_menu = {
	{"&Wrye Bash",         env .. "playonlinux --run 'Wrye Bash'",        beautiful.get_icon("wryebash_original")},
	{"&TES5Edit",          env .. "playonlinux --run 'TES5Edit'",         nil},
	{"&ModOrganizer",      env .. "playonlinux --run 'ModOrganizer'",     nil},
	{"&Nexus Mod-Manager", env .. "playonlinux --run 'Nexus ModManager'", nil},
	{"&LOOT",              env .. "playonlinux --run 'LOOT'",             nil},
}
local tools_ftl_menu = {
	{"&Mod-manager",    env .. "terminator -x 'cd \'/home/sweyn78/Apps/Usable/FTL Mod Manager/\' && sh ./modman.command'",           nil},
	{"&Profile-editor", env .. "terminator -x 'cd \'/home/sweyn78/Apps/Usable/FTL Mod Manager/\' && sh ./FTLProfileEditor.command'", nil},
	{"&Ship-editor",    env .. "java -jar '/home/sweyn78/Apps/Usable/FTL Ship Creator/superluminal2-linux.jar'",                     nil},
}
local tools_other_menu = {
	{"&Freeciv-modpacks", env .. "freeciv-modpack", nil},
}
local tools_menu = {
	{"&TES",   tools_tes_menu,   nil},
	{"&FTL",   tools_ftl_menu,   nil},
	{"&Other", tools_other_menu, nil},
}

--------------------------------------------------------------------------------
return {
	{"&Voxel",      voxel_menu,      beautiful.get_icon("games")},
	{"&Strategy",   strategy_menu,   beautiful.get_icon("games")},
	{"Stor&y",      story_menu,      beautiful.get_icon("games")},
	{"S&imulation", simulation_menu, beautiful.get_icon("games")},
	{"&RPG",        rpg_menu,        beautiful.get_icon("games")},
	{"&Puzzle",     puzzle_menu,     beautiful.get_icon("games")},
	{"&FPS",        fps_menu,        beautiful.get_icon("games")},
	{"&Arcade",     arcade_menu,     beautiful.get_icon("games")},
	{"&Other",      other_menu,      beautiful.get_icon("games")},
	{nil,           nil,             nil},
	{"S&ervers",    servers_menu,    nil},
	{"&Tools",      tools_menu,      nil},
	{"P&latforms",  platforms_menu,  nil},
}
