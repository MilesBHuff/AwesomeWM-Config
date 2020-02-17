--------------------------------------------------------------------------------
local voxel_menu = {
	{"&Starbound", env .. steam .. "steam://rungameid/211820" .. oput, beautiful.get_icon("starbound_original")},
	{"&Terraria",  env .. steam .. "steam://rungameid/105600" .. oput, beautiful.get_icon("terraria_original")},
	{"&Minecraft", env .. "minecraft-launcher"                .. oput, beautiful.get_icon("minecraft")},
	{"&Robocraft", env .. steam .. "steam://rungameid/301520" .. oput, beautiful.get_icon("robo_original")},
}
local strategy_menu = {
	{"&Stellaris",               env .. steam .. "steam://rungameid/281990"                                                    .. oput, beautiful.get_icon("stellaris_original")},
	{"&Hearts of Iron IV",       env .. steam .. "steam://rungameid/394360"                                                    .. oput, beautiful.get_icon("")},
	{"&Victoria 2",              env .. "playonlinux --run 'v2game'"                                                           .. oput, beautiful.get_icon("vicky2_steam")},
	{"&Europa Universalis IV",   env .. steam .. "steam://rungameid/236850"                                                    .. oput, beautiful.get_icon("eu4_steam")},
	{"&Crusader Kings 2",        env .. steam .. "steam://rungameid/203770"                                                    .. oput, beautiful.get_icon("ck2_original")},
	{nil, nil, nil},
	{"&Napoleon:  Total War",    env .. "wine 'C:/Program Files (x86)/Steam/steamapps/common/Napoleon Total War/Napolean.exe'" .. oput, beautiful.get_icon("")},
	{"Em&pire:  Total War",      env .. steam .. "steam://rungameid/10500"                                                     .. oput, beautiful.get_icon("")},
	{"&Shogun 2:  Total War",    env .. "wine 'C:/Program Files (x86)/Steam/steamapps/common/Total War SHOGUN 2/Shogun2.exe'"  .. oput, beautiful.get_icon("")},
	{"&Medieval II:  Total War", env .. steam .. "steam://rungameid/4700"                                                      .. oput, beautiful.get_icon("medieval2_original")},
	{"&Rome:  Total War",        env .. "wine 'C:/Program Files (x86)/Steam/steamapps/common/Rome Total War Gold/RomeTW.exe'"  .. oput, beautiful.get_icon("")},
	{nil, nil, nil},
	{"C&ivilization V",          env .. steam .. "steam://rungameid/8930"                                                      .. oput, beautiful.get_icon("civ5_steam")},
	{"&Freeciv",                 env .. steam .. "steam://rungameid/15308920978231263232"                                      .. oput, beautiful.get_icon("freeciv_steam")},
	{"Freec&ol",                 env .. "freecol"                                                                              .. oput, beautiful.get_icon("")},
}
local story_menu = {
	{"&Transistor",     env .. steam .. "steam://rungameid/237930" .. oput, beautiful.get_icon("transistor_original")},
	{"&Bastion",        env .. steam .. "steam://rungameid/107100" .. oput, beautiful.get_icon("bastion_original")},
	{nil, nil, nil},
	{"Legend of Korra", env .. "playonlinux --run 'LoK'"           .. oput, beautiful.get_icon("")},
}
local simulation_stronghold_menu = {
	{"Stronghold &Kingdoms",      env .. ""                                             .. oput, beautiful.get_icon("")},
	{"Stronghold &3",             env .. steam .. "steam://rungameid/47400"             .. oput, beautiful.get_icon("sh3_steam")},
	{"Stronghold &Legends Demo",  env .. "playonlinux --run 'Stronghold Legends Demo'"  .. oput, beautiful.get_icon("")},
	{"Stronghold &2",             env .. "playonlinux --run 'Stronghold 2'"             .. oput, beautiful.get_icon("sh2_original")},
	{"Stronghold &Crusader Demo", env .. "playonlinux --run 'Stronghold Crusader Demo'" .. oput, beautiful.get_icon("")},
	{"Stronghold &HD",            env .. ""                                             .. oput, beautiful.get_icon("")},
}
local simulation_menu = {
	{"Cities: Skylines",            env .. steam .. "steam://rungameid/255710" .. oput, beautiful.get_icon("")},
	{"&Banished",                   env .. "playonlinux --run 'Banished32x'"   .. oput, beautiful.get_icon("")},
	{"&Stronghold games",           simulation_stronghold_menu,                         beautiful.get_icon("")},
	{"&0 A.D.",                     env .. "0ad"                               .. oput, beautiful.get_icon("0ad")},
	{nil, nil, nil},
	{"&The Guild II:  Renaissance", env .. "playonlinux --run 'Guild2Ren'"     .. oput, beautiful.get_icon("")},
	{"The &Guild:  1400",           env .. "playonlinux --run 'Guild1400'"     .. oput, beautiful.get_icon("")},
	{nil, nil, nil},
	{"&Roller Coaster Tycoon 3",    env .. "playonlinux --run 'RCT3'"          .. oput, beautiful.get_icon("")},
	{"R&oller Coaster Tycoon 2",    env .. "playonlinux --run 'RCT2'"          .. oput, beautiful.get_icon("")},
}
local rpg_menu = {
	{"The &Secret World",          env .. "playonlinux --run 'SecretWorld'"                      .. oput, beautiful.get_icon("")},
	{"&PokéMMO",                   env .. "pokemmo-launcher"                                     .. oput, beautiful.get_icon("")},
	{nil, nil, nil},
	{"Rappel&z",                   env .. "playonlinux --run 'Rappelz'"                          .. oput, beautiful.get_icon("")},
	{"&RuneScape",                 env .. "runescape-launcher"                                   .. oput, beautiful.get_icon("rs3_original_3")},
	{"&World of Warcraft",         env .. "playonlinux --run 'World of Warcraft'"                .. oput, beautiful.get_icon("wow_original.png")},
	{nil, nil, nil},
	{"Guild Wars &2",              env .. "bash '" .. globals.cwd .. "lib/wrappers/gw2.bash'"    .. oput, beautiful.get_icon("gw2_original")},
	{"&Guild Wars",                env .. "playonlinux --run 'Guild Wars'"                       .. oput, beautiful.get_icon("")},
	{nil, nil, nil},
	{"&Dungeons & Dragons Online", env .. "playonlinux --run 'DDO'"                              .. oput, beautiful.get_icon("ddo_original")},
	{"&Lord of the Rings Online",  env .. "playonlinux --run 'LOTRO'"                            .. oput, beautiful.get_icon("lotro_original")},
	{nil, nil, nil},
	{"Sk&yrim",                    env .. "bash '" .. globals.cwd .. "lib/wrappers/skyrim.bash'" .. oput, beautiful.get_icon("")},
	{"&Oblivion",                  env .. "playonlinux --run 'obse_loader'"                      .. oput, beautiful.get_icon("tesiv_original")},
	{"&Morrowind",                 env .. ""                                                     .. oput, beautiful.get_icon("")},
	{"&TESO",                      env .. ""                                                     .. oput, beautiful.get_icon("")},
}
local puzzle_menu = {
	{"Portal &2",     env .. steam .. "steam://rungameid/620"   .. oput, beautiful.get_icon("portal2_steam")},
	{"&Portal",       env .. steam .. "steam://rungameid/400"   .. oput, beautiful.get_icon("portal_steam")},
	{nil, nil, nil},
	{"&Braid",        env .. steam .. "steam://rungameid/26800" .. oput, beautiful.get_icon("braid_steam")},
	{"&World of Goo", env .. steam .. "steam://rungameid/22000" .. oput, beautiful.get_icon("goo_steam")},
}
local fps_menu = {
	{"M&&B:  Warband",   env .. steam .. "steam://rungameid/48700"      .. oput, beautiful.get_icon("")},
	{nil, nil, nil},
	{"Gloria &Victis",   env .. "playonlinux --run 'GVLauncherUpdater'" .. oput, beautiful.get_icon("")},
	{"&Chivalry",        env .. steam .. "steam://rungameid/219640"     .. oput, beautiful.get_icon("chivalry_steam")},
	{nil, nil, nil},
	{"&Team Fortress 2", env .. steam .. "steam://rungameid/440"        .. oput, beautiful.get_icon("tf2_steam")},
	{"&Left 4 Dead 2",   env .. steam .. "steam://rungameid/550"        .. oput, beautiful.get_icon("l4d2_steam")},
	{"&Half-Life",       env .. steam .. "steam://rungameid/70"         .. oput, beautiful.get_icon("hl2_steam")},
}
local arcade_menu = {
	{"&SuperTux2",    env .. steam .. "steam://rungameid/10938015065550356480" .. oput, beautiful.get_icon("")},
	{"S&uperTuxKart", env .. steam .. "steam://rungameid/12069604936476786688" .. oput, beautiful.get_icon("")},
}
local other_menu = {
	{"&FTL", env .. steam .. "steam://rungameid/212680" .. oput, beautiful.get_icon("ftl_original")}
}

--------------------------------------------------------------------------------
local servers_menu = {
	{"&Freeciv",     env .. "terminator -x freeciv-server"                                           .. oput, beautiful.get_icon("")},
}
local platforms_menu = {
	{"Steam (&Linux)",   env .. steam                       .. oput, beautiful.get_icon("")},
	{"Steam (&Windows)", env .. "playonlinux --run 'Steam'" .. oput, beautiful.get_icon("")},
	{nil, nil, nil},
	{"Game&boy",         env .. "mgba-qt"                   .. oput, beautiful.get_icon("gba")},
	{"Game&cube",        env .. "__GL_ALLOW_UNOFFICIAL_PROTOCOL=1 __GL_FSAA_MODE=0 dolphin-emu" .. oput, beautiful.get_icon("gc")},
}

--------------------------------------------------------------------------------
local tools_tes_menu = {
	{"&Wrye Bash",         env .. "playonlinux --run 'Wrye Bash'"        .. oput, beautiful.get_icon("wryebash_original")},
	{"&TES5Edit",          env .. "playonlinux --run 'TES5Edit'"         .. oput, beautiful.get_icon("")},
	{"&ModOrganizer",      env .. "playonlinux --run 'ModOrganizer'"     .. oput, beautiful.get_icon("")},
	{"&Nexus Mod-Manager", env .. "playonlinux --run 'Nexus ModManager'" .. oput, beautiful.get_icon("")},
	{"&LOOT",              env .. "playonlinux --run 'LOOT'"             .. oput, beautiful.get_icon("")},
}
local tools_ftl_menu = {
	{"&Mod-manager",    env .. "terminator -x 'cd \'/home/sweyn78/Apps/Usable/FTL Mod Manager/\' && sh ./modman.command'"           .. oput, beautiful.get_icon("")},
	{"&Profile-editor", env .. "terminator -x 'cd \'/home/sweyn78/Apps/Usable/FTL Mod Manager/\' && sh ./FTLProfileEditor.command'" .. oput, beautiful.get_icon("")},
	{"&Ship-editor",    env .. "java -jar '/home/sweyn78/Apps/Usable/FTL Ship Creator/superluminal2-linux.jar'"                     .. oput, beautiful.get_icon("")},
}
local tools_other_menu = {
	{"&Freeciv-modpacks", env .. "freeciv-modpack" .. oput, beautiful.get_icon("")},
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
