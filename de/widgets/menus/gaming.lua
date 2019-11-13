--------------------------------------------------------------------------------
local voxel_menu = {
	{"&Starbound", env .. steam .. "steam://rungameid/211820" .. oput,            beautiful.icons .. "Applications/starbound_original.png"},
	{"&Terraria",  env .. steam .. "steam://rungameid/105600" .. oput,            beautiful.icons .. "Applications/terraria_original.png"},
	{"&Minecraft", env .. "minecraft-launcher", beautiful.icons .. "Applications/mc_original.png"},
	{"&Robocraft", env .. steam .. "steam://rungameid/301520" .. oput,            beautiful.icons .. "Applications/robo_original.png"},
}
local strategy_menu = {
	{"&Stellaris",               env .. steam .. "steam://rungameid/281990" .. oput,                                            beautiful.icons .. "Applications/stellaris_original.png"},
	{"&Hearts of Iron IV",       env .. steam .. "steam://rungameid/394360" .. oput,                                            nil},
	{"&Victoria 2",              env .. "playonlinux --run 'v2game'",                                                           beautiful.icons .. "Applications/vicky2_steam.png"},
	{"&Europa Universalis IV",   env .. steam .. "steam://rungameid/236850" .. oput,                                            beautiful.icons .. "Applications/eu4_steam.png"},
	{"&Crusader Kings 2",        env .. steam .. "steam://rungameid/203770" .. oput,                                            beautiful.icons .. "Applications/ck2_original.png"},
	{nil,                        nil,                                                                                           nil},
	{"&Napoleon:  Total War",    env .. "wine 'C:/Program Files (x86)/Steam/steamapps/common/Napoleon Total War/Napolean.exe'", nil},
	{"Em&pire:  Total War",      env .. steam .. "steam://rungameid/10500" .. oput,                                             nil},
	{"&Shogun 2:  Total War",    env .. "wine 'C:/Program Files (x86)/Steam/steamapps/common/Total War SHOGUN 2/Shogun2.exe'",  nil},
	{"&Medieval II:  Total War", env .. steam .. "steam://rungameid/4700"  .. oput,                                             beautiful.icons .. "Applications/medieval2_original.png"},
	{"&Rome:  Total War",        env .. "wine 'C:/Program Files (x86)/Steam/steamapps/common/Rome Total War Gold/RomeTW.exe'",  nil},
	{nil,                        nil,                                                                                           nil},
	{"C&ivilization V",          env .. steam .. "steam://rungameid/8930" .. oput,                                              beautiful.icons .. "Applications/civ5_steam.png"},
	{"&Freeciv",                 env .. steam .. "steam://rungameid/15308920978231263232" .. oput,                              beautiful.icons .. "Applications/freeciv_steam.png"},
	{"Freec&ol",                 env .. "freecol",                                                                              nil},
}
local story_menu = {
	{"&Transistor",     env .. steam .. "steam://rungameid/237930" .. oput, beautiful.icons .. "Applications/transistor_original.png"},
	{"&Bastion",        env .. steam .. "steam://rungameid/107100" .. oput, beautiful.icons .. "Applications/bastion_original.png"},
	{nil,               nil,                                                nil},
	{"Legend of Korra", env .. "playonlinux --run 'LoK'",                   nil},
}
local simulation_stronghold_menu = {
	{"Stronghold &Kingdoms",      nil,                                                   nil},
	{"Stronghold &3",             env .. steam .. "steam://rungameid/47400" .. oput,     beautiful.icons .. "Applications/sh3_steam.png"},
	{"Stronghold &Legends Demo",  env .. "playonlinux --run 'Stronghold Legends Demo'",  nil},
	{"Stronghold &2",             env .. "playonlinux --run 'Stronghold 2'",             beautiful.icons .. "Applications/sh2_original.png"},
	{"Stronghold &Crusader Demo", env .. "playonlinux --run 'Stronghold Crusader Demo'", nil},
	{"Stronghold &HD",            nil,                                                   nil},
}
local simulation_menu = {
	{"&Banished",                   env .. "playonlinux --run 'Banished32x'",                        nil},
	{"&Stronghold games",           simulation_stronghold_menu,                                      nil},
	{"&0 A.D.",                     env .. steam .. "steam://rungameid/9937877960117714944" .. oput, beautiful.icons .. "Applications/0ad_steam.png"},
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
	{"&RuneScape",                 env .. "runescape-launcher",                                       beautiful.icons .. "Applications/rs3_original_3.png"},
	--	{"&RuneScape",                 "cd /opt/runescape/share/prms && cp -f runescape.prm.copy runescape.prm && cd /opt/runescape/share/configs && cp -f settings.conf.copy settings.conf && /opt/runescape/runescape", beautiful.icons .. "Applications/rs3_new.png"},
	{"&World of Warcraft",         env .. "playonlinux --run 'World of Warcraft'",                    beautiful.icons .. "Applications/wow_original.png.png"},
	{nil,                          nil,                                                               nil},
	{"Guild Wars &2",              env .. "bash '" .. globals.cwd .. "lib/wrappers/gw2.bash'",        beautiful.icons .. "Applications/gw2_original.png"},
	{"&Guild Wars",                env .. "playonlinux --run 'Guild Wars'",                           nil},
	{nil,                          nil,                                                               nil},
	{"&Dungeons & Dragons Online", env .. "playonlinux --run 'DDO'",                                  beautiful.icons .. "Applications/ddo_original.png"},
	{"&Lord of the Rings Online",  env .. "playonlinux --run 'LOTRO'",                                beautiful.icons .. "Applications/lotro_original.png"},
	{nil,                          nil,                                                               nil},
	{"Sk&yrim",                    env .. "bash '" .. globals.cwd .. "lib/wrappers/skyrim.bash'",     nil},
	{"&Oblivion",                  env .. "WINEDEBUG=-all playonlinux --run 'obse_loader'",           beautiful.icons .. "Applications/tesiv_original.png"},
	{"&Morrowind",                 nil,                                                               nil},
	{"&TESO",                      nil,                                                               nil},
}
local puzzle_menu = {
	{"Portal &2",     env .. steam .. "steam://rungameid/620"   .. oput, beautiful.icons .. "Applications/portal2_steam.png"},
	{"&Portal",       env .. steam .. "steam://rungameid/400"   .. oput, beautiful.icons .. "Applications/portal_steam.png"},
	{nil,             nil,                                               nil},
	{"&Braid",        env .. steam .. "steam://rungameid/26800" .. oput, beautiful.icons .. "Applications/braid_steam.png"},
	{"&World of Goo", env .. steam .. "steam://rungameid/22000" .. oput, beautiful.icons .. "Applications/goo_steam.png"},
}
local fps_menu = {
	{"M&&B:  Warband",   env .. steam .. "steam://rungameid/48700" .. oput,  nil},
	{nil,                nil,                                                nil},
	{"Gloria &Victis",   env .. "playonlinux --run 'GVLauncherUpdater'",     nil},
	{"&Chivalry",        env .. steam .. "steam://rungameid/219640" .. oput, beautiful.icons .. "Applications/chivalry_steam.png"},
	{nil,                nil,                                                nil},
	{"&Team Fortress 2", env .. steam .. "steam://rungameid/440" .. oput,    beautiful.icons .. "Applications/tf2_steam.png"},
	{"&Left 4 Dead 2",   env .. steam .. "steam://rungameid/550" .. oput,    beautiful.icons .. "Applications/l4d2_steam.png"},
	{"&Half-Life",       env .. steam .. "steam://rungameid/70" .. oput,     beautiful.icons .. "Applications/hl2_steam.png"},
}
local arcade_menu = {
	{"&SuperTux2",    env .. steam .. "steam://rungameid/10938015065550356480" .. oput, nil},
	{"S&uperTuxKart", env .. steam .. "steam://rungameid/12069604936476786688" .. oput, nil},
}
local other_menu = {
	{"&FTL", env .. steam .. "steam://rungameid/212680" .. oput, beautiful.icons .. "Applications/ftl_original.png"}
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
	{"Game&boy",         env .. "mgba-qt",                   beautiful.icons .. "Applications/gba.png"},
	{"Game&cube",        env .. "__GL_ALLOW_UNOFFICIAL_PROTOCOL=1 __GL_FSAA_MODE=0 dolphin-emu", beautiful.icons .. "Applications/gc.png"},
}

--------------------------------------------------------------------------------
local tools_tes_menu = {
	{"&Wrye Bash",         env .. "playonlinux --run 'Wrye Bash'",        beautiful.icons .. "Applications/wryebash_original.png"},
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
	{"&Voxel",      voxel_menu,      beautiful.icons .. "Categories/games.png"},
	{"&Strategy",   strategy_menu,   beautiful.icons .. "Categories/games.png"},
	{"Stor&y",      story_menu,      beautiful.icons .. "Categories/games.png"},
	{"S&imulation", simulation_menu, beautiful.icons .. "Categories/games.png"},
	{"&RPG",        rpg_menu,        beautiful.icons .. "Categories/games.png"},
	{"&Puzzle",     puzzle_menu,     beautiful.icons .. "Categories/games.png"},
	{"&FPS",        fps_menu,        beautiful.icons .. "Categories/games.png"},
	{"&Arcade",     arcade_menu,     beautiful.icons .. "Categories/games.png"},
	{"&Other",      other_menu,      beautiful.icons .. "Categories/games.png"},
	{nil,           nil,             nil},
	{"S&ervers",    servers_menu,    nil},
	{"&Tools",      tools_menu,      nil},
	{"P&latforms",  platforms_menu,  nil},
}
