terminal = "terminator"
editor = os.getenv("VISUAL") or "nano"
editor_cmd = terminal .. " -e " .. editor

local env   = " /usr/bin/env "
local kgtk  = " /usr/bin/kgtk-wrapper "
local oput  = " 1>&- 2>&- "
local steam = " LD_PRELOAD=/usr/lib32/libudev.so.1 /usr/bin/steam-native "
local game  = " /home/miles/.local/src/personal/misc-code/code/wrappers/LoadGame.sh "
local wine  = " WINEPREFIX='/home/miles/.wine' "

-- UTILITIES
utilities_communication_menu = {
	{"&VoIP-client"    , env .. "skype"  , beautiful.icons .. "Applications/voip-client.png"},
	{"&IRC-client"     , env .. "hexchat", nil                                              },
	{"I&M-client"      , env .. "pidgin" , nil                                              },
}
utilities_menu = {
	{"&Terminal"       , env .. terminal                                            , beautiful.icons .. "Applications/terminal.png"          },
	{"&File-manager"   , env .. "dolphin"                                           , beautiful.icons .. "Applications/file-manager.png"      },
	{nil               , nil                                                        , nil                                                     },
	{"&Char'-selector" , env .. "gnome-character-map"                               , beautiful.icons .. "Applications/character-selector.png"},
	{"Ca&lculator"     , env .. "qalculate-gtk"                                     , beautiful.icons .. "Applications/calculator.png"        },
	{nil               , nil                                                        , nil                                                     },
	{"Communications"  , utilities_communication_menu                               , nil                                                     },
	{nil               , nil                                                        , nil                                                     },
  --{"archiver"        , env .. "chrt -b 0 WINEPREFIX='/home/Sweyn78/~/.wine' wine 'C:\\windows\\command\\start.exe /Unix' /home/Sweyn78/~/.wine/dosdevices/c:/users/sweyn78/Start\ Menu/Programs/7-Zip/7-Zip\ File\ Manager.lnk" }
	{"&Torrent-client" , env .. "deluge-gtk -q"                                     , nil                                                     },
	{"&Virtual machine", env .. "bash /home/sweyn78/.local/scripts/launch/VBox.bash", nil                                                     },
}

-- PRODUCTIVITY
productivity_webbrowsers_menu = {
	{"&Firefox"          , env .. "firefox"                         , nil},
	{"&Google Chrome"    , env .. "google-chrome-stable --audio-buffer-size=2048 --cipher-suite-blacklist=0x0001,0x0002,0x0004,0x0005,0x0017,0x0018,0xc002,0xc007,0xc00c,0xc011,0xc016,0xff80,0xff81,0xff82,0xff83", nil},
	{"&Opera"            , env .. "opera-beta"                      , nil},
	{"&Internet Explorer", env .. "playonlinux --run 'WineIexplore'", nil},
}
productivity_office_menu = {
	{"&Office-suite"   , env .. "libreoffice", beautiful.icons .. "Applications/libreoffice-main.png"},
	{"&Email-client"   , env .. "thunderbird", nil                                                   },
  --{"C&alendar"       , nil                 , beautiful.icons .. "Applications/calendar.png"        },
	{nil               , nil                 , nil                                                   },
	{"&Mind-mapper"    , env .. "vym"        , nil                                                   },
	{"&Document-viewer", env .. "okular"     , nil                                                   },
}
productivity_mapping_menu = {
	{"&Virtual globe", env .. "/opt/google/earth/free/google-earth"                                   , beautiful.icons .. "Applications/globe-viewer.png"},
	{"Map-&projector", env .. "java -jar /home/sweyn78/Apps/Usable/Map Projector/FlexProjectorJar.zip", nil                                              },
}
productivity_languages_menu = {
	{"&RosettaStone"      , nil           , nil},
	{"&Kurso de esperanto", env .. "kurso", nil},
}
productivity_development_menu = {
	{"T&ext-editor", env .. "atom"    , beautiful.icons .. "Applications/text-editor.png"},
	{"&Java"       , env .. "eclipse" , nil                                              },
	{"&Generic"    , env .. "bluefish", nil                                              },
	{nil           , nil              , nil                                              },
	{"&Diff'-tool" , env .. "bcompare", beautiful.icons .. "Applications/diff-viewer.png"},
}
productivity_menu = {
	{"&Web-browsers", productivity_webbrowsers_menu, beautiful.icons .. "Categories/web-browsers.png"},
	{"&Office"      , productivity_office_menu     , nil                                             },
	{nil            , nil                          , nil                                             },
	{"&Development" , productivity_development_menu, nil                                             },
	{"&Languages"   , productivity_languages_menu  , nil                                             },
	{"&Mapping"     , productivity_mapping_menu    , nil                                             },
}

-- MULTIMEDIA
multimedia_menu = {
	{"&Video-player"         , env .. "vlc"           , beautiful.icons .. "Applications/video-player.png"   },
	{"&Internet radio"       , env .. "pithos"        , beautiful.icons .. "Applications/radio.png"          },
	{"&Audio-player"         , env .. "wine 'C:/Program Files (x86)/Winamp/winamp.exe'", nil},
	{nil                     , nil                    , nil                                                  },
	{"&Disc-burner"          , env .. "simpleburn"    , nil                                                  },
	{"Audio-&converter"      , env .. "soundkonverter", beautiful.icons .. "Applications/audio-converter.png"},
	{nil                     , nil                    , nil                                                  },
	{"&Speech-analyzer"      , env .. "praat"         , nil                                                  },
	{"Audio-&editor"         , env .. "audacity"      , nil                                                  },
	{"&Entrainment-generator", env .. "gnaural"       , nil                                                  },
}

-- GRAPHICS
graphics_menu = {
	{"&Paint-program"       , env .. "kolourpaint", beautiful.icons .. "Applications/paint.png"        },
	{"&Image-viewer"        , env .. "ristretto"  , nil                                                },
	{nil                    , nil                 , nil                                                },
	{"&Vector-editor"       , env .. "inkscape"   , nil                                                },
	{"&Raster-editor"       , env .. "gimp-2.8"   , beautiful.icons .. "Applications/raster-editor.png"},
	{"&Mesh-editor"         , env .. "blender"    , beautiful.icons .. "Applications/mesh-editor.png"  },
	{"&Font-editor"         , env .. "fontforge"  , nil                                                },
	{nil                    , nil                 , nil                                                },
	{"P&hotobooth"          , env .. "guvcview"   , beautiful.icons .. "Applications/camera.png"       },
  --{"&Color-profiler"      , env .. "WINEPREFIX='/home/sweyn78/.wine' wine C:\\windows\\command\\start.exe /Unix /home/sweyn78/.wine/dosdevices/c:/users/maiyil78/Start\ Menu/Programs/LProf/LProf.lnk", nil},
	{"M&ass image-processor", env .. "phatch"     , beautiful.icons .. "Applications/phatch.png"       },
}

-- GAMING
gaming_voxel_menu = {
	{"&Starbound", env .. steam .. "steam://rungameid/211820" .. oput           , beautiful.icons .. "Applications/starbound_original.png"},
	{"&Terraria" , env .. steam .. "steam://rungameid/105600" .. oput           , beautiful.icons .. "Applications/terraria_original.png" },
	{"&Minecraft", env .. "java -jar /home/sweyn78/.minecraft/MagicLauncher.jar", beautiful.icons .. "Applications/mc_original.png"       },
	{"&Robocraft", env .. steam .. "steam://rungameid/301520" .. oput           , beautiful.icons .. "Applications/robo_original.png"     },
}
gaming_strategy_menu = {
	{"&Stellaris"              , env .. steam .. "steam://rungameid/281990" .. oput                                           , beautiful.icons .. "Applications/stellaris_original.png"},
	{"&Hearts of Iron IV"      , env .. steam .. "steam://rungameid/394360" .. oput                                           , nil                                                     },
	{"&Victoria 2"             , env .. "playonlinux --run 'v2game'"                                                          , beautiful.icons .. "Applications/vicky2_steam.png"      },
	{"&Europa Universalis IV"  , env .. steam .. "steam://rungameid/236850" .. oput                                           , beautiful.icons .. "Applications/eu4_steam.png"         },
	{"&Crusader Kings 2"       , env .. steam .. "steam://rungameid/203770" .. oput                                           , beautiful.icons .. "Applications/ck2_original.png"      },
	{nil                       , nil                                                                                          , nil                                                     },
	{"&Napoleon:  Total War"   , env .. "wine 'C:/Program Files (x86)/Steam/steamapps/common/Napoleon Total War/Napolean.exe'", nil                                                     },
	{"Em&pire:  Total War"     , env .. steam .. "steam://rungameid/10500" .. oput                                            , nil                                                     },
	{"&Shogun 2:  Total War"   , env .. "wine 'C:/Program Files (x86)/Steam/steamapps/common/Total War SHOGUN 2/Shogun2.exe'" , nil                                                     },
	{"&Medieval II:  Total War", env .. steam .. "steam://rungameid/4700"  .. oput                                            , beautiful.icons .. "Applications/medieval2_original.png"},
	{"&Rome:  Total War"       , env .. "wine 'C:/Program Files (x86)/Steam/steamapps/common/Rome Total War Gold/RomeTW.exe'" , nil                                                     },
	{nil                       , nil                                                                                          , nil                                                     },
	{"C&ivilization V"         , env .. steam .. "steam://rungameid/8930" .. oput                                             , beautiful.icons .. "Applications/civ5_steam.png"        },
	{"&Freeciv"                , env .. steam .. "steam://rungameid/15308920978231263232" .. oput                             , beautiful.icons .. "Applications/freeciv_steam.png"     },
	{"Freec&ol"                , env .. "freecol"                                                                             , nil                                                     },
}
gaming_story_menu = {
	{"&Transistor"    , env .. steam .. "steam://rungameid/237930" .. oput, beautiful.icons .. "Applications/transistor_original.png"},
	{"&Bastion"       , env .. steam .. "steam://rungameid/107100" .. oput, beautiful.icons .. "Applications/bastion_original.png"   },
	{nil              , nil                                               , nil                                                      },
	{"Legend of Korra", env .. "playonlinux --run 'LoK'"                  , nil                                                      },
}
gaming_simulation_stronghold_menu = {
	{"Stronghold &Kingdoms"     , nil                                                  , nil                                              },
	{"Stronghold &3"            , env .. steam .. "steam://rungameid/47400" .. oput    , beautiful.icons .. "Applications/sh3_steam.png"  },
	{"Stronghold &Legends Demo" , env .. "playonlinux --run 'Stronghold Legends Demo'" , nil                                              },
	{"Stronghold &2"            , env .. "playonlinux --run 'Stronghold 2'"            , beautiful.icons .. "Applications/sh2_original.png"},
	{"Stronghold &Crusader Demo", env .. "playonlinux --run 'Stronghold Crusader Demo'", nil                                              },
	{"Stronghold &HD"           , nil                                                  , nil                                              },
}
gaming_simulation_menu = {
	{"&Banished"                  , env .. "playonlinux --run 'Banished32x'"                       , nil                                            },
	{"&Stronghold games"          , gaming_simulation_stronghold_menu                              , nil                                            },
	{"&0 A.D."                    , env .. steam .. "steam://rungameid/9937877960117714944" .. oput, beautiful.icons .. "Applications/0ad_steam.png"},
	{nil                          , nil                                                            , nil                                            },
	{"&The Guild II:  Renaissance", env .. "playonlinux --run 'Guild2Ren'"                         , nil                                            },
	{"The &Guild:  1400"          , env .. "playonlinux --run 'Guild1400'"                         , nil                                            },
	{nil                          , nil                                                            , nil                                            },
	{"&Roller Coaster Tycoon 3"   , env .. "playonlinux --run 'RCT3'"                              , nil                                            },
	{"R&oller Coaster Tycoon 2"   , env .. "playonlinux --run 'RCT2'"                              , nil                                            },
}
gaming_rpg_menu = {
	{"The &Secret World"         , env .. "playonlinux --run 'SecretWorld'"                         , nil                                                   },
	{"&PokéMMO"                  , env .. "pokemmo-launcher"                                        , nil                                                   },
	{nil                         , nil                                                              , nil                                                   },
	{"Rappel&z"                  , env .. "playonlinux --run 'Rappelz'"                             , nil                                                   },
	{"&RuneScape"                , env .. "runescape-launcher"                                      , beautiful.icons .. "Applications/rs3_original_3.png"  },
	--	{"&RuneScape"                , "cd /opt/runescape/share/prms && cp -f runescape.prm.copy runescape.prm && cd /opt/runescape/share/configs && cp -f settings.conf.copy settings.conf && /opt/runescape/runescape", beautiful.icons .. "Applications/rs3_new.png"},
	{"&World of Warcraft"        , env .. "playonlinux --run 'World of Warcraft'"                   , beautiful.icons .. "Applications/wow_original.png.png"},
	{nil                         , nil                                                              , nil                                                   },
	{"Guild Wars &2"             , env .. "bash /home/sweyn78/.local/scripts/launch/GuildWars2.bash", beautiful.icons .. "Applications/gw2_original.png"    },
	{"&Guild Wars"               , env .. "playonlinux --run 'Guild Wars'"                          , nil                                                   },
	{nil                         , nil                                                              , nil                                                   },
	{"&Dungeons & Dragons Online", env .. "playonlinux --run 'DDO'"                                 , beautiful.icons .. "Applications/ddo_original.png"    },
	{"&Lord of the Rings Online" , env .. "playonlinux --run 'LOTRO'"                               , beautiful.icons .. "Applications/lotro_original.png"  },
	{nil                         , nil                                                              , nil                                                   },
	{"Sk&yrim"                   , env .. "dash /home/sweyn78/.local/scripts/launch/Skyrim.dash"    , nil                                                   },
	{"&Oblivion"                 , env .. "WINEDEBUG=-all playonlinux --run 'obse_loader'"          , beautiful.icons .. "Applications/tesiv_original.png"  },
	{"&Morrowind"                , nil                                                              , nil                                                   },
	{"&TESO"                     , nil                                                              , nil                                                   },
}
gaming_puzzle_menu = {
	{"Portal &2"    , env .. steam .. "steam://rungameid/620"   .. oput, beautiful.icons .. "Applications/portal2_steam.png"},
	{"&Portal"      , env .. steam .. "steam://rungameid/400"   .. oput, beautiful.icons .. "Applications/portal_steam.png" },
	{nil            , nil                                              , nil                                                },
	{"&Braid"       , env .. steam .. "steam://rungameid/26800" .. oput, beautiful.icons .. "Applications/braid_steam.png"  },
	{"&World of Goo", env .. steam .. "steam://rungameid/22000" .. oput, beautiful.icons .. "Applications/goo_steam.png"    },
}
gaming_fps_menu = {
	{"M&&B:  Warband"  , env .. steam .. "steam://rungameid/48700" .. oput , nil                                                 },
	{nil               , nil                                               , nil                                                 },
	{"Gloria &Victis"  , env .. "playonlinux --run 'GVLauncherUpdater'"    , nil                                                 },
	{"&Chivalry"       , env .. steam .. "steam://rungameid/219640" .. oput, beautiful.icons .. "Applications/chivalry_steam.png"},
	{nil               , nil                                               , nil                                                 },
	{"&Team Fortress 2", env .. steam .. "steam://rungameid/440" .. oput   , beautiful.icons .. "Applications/tf2_steam.png"     },
	{"&Left 4 Dead 2"  , env .. steam .. "steam://rungameid/550" .. oput   , beautiful.icons .. "Applications/l4d2_steam.png"    },
	{"&Half-Life"      , env .. steam .. "steam://rungameid/70" .. oput    , beautiful.icons .. "Applications/hl2_steam.png"     },
}
gaming_arcade_menu = {
	{"&SuperTux2"   , env .. steam .. "steam://rungameid/10938015065550356480" .. oput, nil},
	{"S&uperTuxKart", env .. steam .. "steam://rungameid/12069604936476786688" .. oput, nil},
}
gaming_other_menu = {
	{"&FTL", env .. steam .. "steam://rungameid/212680" .. oput, beautiful.icons .. "Applications/ftl_original.png" }
}
gaming_servers_menu = {
	{"&Governcraft", env .. "terminator -x dash /home/sweyn78/Apps/!Projects/Governcraft/start.dash", nil},
	{"&Freeciv"    , env .. "terminator -x freeciv-server"                                          , nil},
}
gaming_tools_tes_menu = {
	{"&Wrye Bash"        , env .. "playonlinux --run 'Wrye Bash'"       , beautiful.icons .. "Applications/wryebash_original.png"},
	{"&TES5Edit"         , env .. "playonlinux --run 'TES5Edit'"        , nil                                                    },
	{"&ModOrganizer"     , env .. "playonlinux --run 'ModOrganizer'"    , nil                                                    },
	{"&Nexus Mod-Manager", env .. "playonlinux --run 'Nexus ModManager'", nil                                                    },
	{"&LOOT"             , env .. "playonlinux --run 'LOOT'"            , nil                                                    },
}
gaming_tools_ftl_menu = {
	{"&Mod-manager"   , env .. "terminator -x 'cd \'/home/sweyn78/Apps/Usable/FTL Mod Manager/\' && sh ./modman.command'"          , nil},
	{"&Profile-editor", env .. "terminator -x 'cd \'/home/sweyn78/Apps/Usable/FTL Mod Manager/\' && sh ./FTLProfileEditor.command'", nil},
	{"&Ship-editor"   , env .. "java -jar '/home/sweyn78/Apps/Usable/FTL Ship Creator/superluminal2-linux.jar'"                    , nil},
}
gaming_tools_other_menu = {
	{"&Freeciv-modpacks", env .. "freeciv-modpack", nil},
}
gaming_tools_menu = {
	{"&TES"  , gaming_tools_tes_menu, nil},
	{"&FTL"  , gaming_tools_ftl_menu, nil},
	{"&Other", gaming_tools_ftl_menu, nil},
}
gaming_platforms_menu = {
	{"Steam (&Linux)"  , env .. steam .. oput              , nil},
	{"Steam (&Windows)", env .. "playonlinux --run 'Steam'", nil                                      },
	{nil               , nil                               , nil                                      },
	{"Game&boy"        , env .. "mgba-qt"                  , beautiful.icons .. "Applications/gba.png"},
	{"Game&cube"       , env .. "__GL_ALLOW_UNOFFICIAL_PROTOCOL=1 __GL_FSAA_MODE=0 dolphin-emu", beautiful.icons .. "Applications/gc.png" },
}
gaming_menu = {
	{"&Voxel"     , gaming_voxel_menu     , beautiful.icons .. "Categories/games.png"},
	{"&Strategy"  , gaming_strategy_menu  , beautiful.icons .. "Categories/games.png"},
	{"Stor&y"     , gaming_story_menu     , beautiful.icons .. "Categories/games.png"},
	{"S&imulation", gaming_simulation_menu, beautiful.icons .. "Categories/games.png"},
	{"&RPG"       , gaming_rpg_menu       , beautiful.icons .. "Categories/games.png"},
	{"&Puzzle"    , gaming_puzzle_menu    , beautiful.icons .. "Categories/games.png"},
	{"&FPS"       , gaming_fps_menu       , beautiful.icons .. "Categories/games.png"},
	{"&Arcade"    , gaming_arcade_menu    , beautiful.icons .. "Categories/games.png"},
	{"&Other"     , gaming_other_menu     , beautiful.icons .. "Categories/games.png"},
	{nil          , nil                   , nil                                      },
	{"S&ervers"   , gaming_servers_menu   , nil                                      },
	{"&Tools"     , gaming_tools_menu     , nil                                      },
	{"P&latforms" , gaming_platforms_menu , nil                                      },
}

-- ADMINISTRATION
administration_settings_menu = {
    {"&QT-settings"          , env .. "systemsettings5"                      , nil},
	{"G&TK-settings"         , nil                                           , nil},
	{nil                     , nil                                           , nil},
	{"Key&board-settings"    , env .. "ibus-setup"                           , nil},
	{"Gamepad-&mapper"       , env .. "qjoypad"                              , nil},
	{nil                     , nil                                           , nil},
	{"&Printer-settings"     , env .. "system-config-printer"                , nil},
	{"&Keyring-configuration", env .. "seahorse"                             , nil},
	{"&Audio-settings"       , env .. "pavucontrol"                          , nil},
	{nil                     , nil                                           , nil},
	{"&GPU-settings"         , env .. "nvidia-settings"                      , nil},
	{"&3D-accel' settings"   , env .. "driconf"                              , nil},
	{nil                     , nil                                           , nil},
	{"&Java-settings"        , env .. "jcontrol"                             , nil},
	{"Ja&va-policy"          , env .. "policytool"                           , nil},
	{"&Flash-settings"       , nil                                           , nil},
	{nil                     , nil                                           , nil},
	{"Awesome-t&heme"        , env .. editor_cmd .. " " .. beautiful.conffile, nil},
	{"A&wesome-configuration", env .. editor_cmd .. " " .. awesome.conffile  , nil},
}
administration_menu = {
	{"&Settings"                , administration_settings_menu        , beautiful.icons .. "Categories/preferences.png"      },
	{nil                        , nil                                 , nil                                                  },
	{"&Wine-manager"            , env .. "playonlinux"                , beautiful.icons .. "Applications/wine.png"           },
	{"System-&monitor"          , env .. "ksysguard"                  , beautiful.icons .. "Applications/system-monitor.png" },
	{"&Info-center"             , env .. "hardinfo"                   , beautiful.icons .. "Applications/system-info.png"    },
	{"&Help"                    , env .. terminal .. " -e man awesome", beautiful.icons .. "Applications/help-browser.png"   },
	{"&Cleaner"                 , env .. "bleachbit"                  , nil                                                  },
	{nil                        , nil                                 , nil                                                  },
	{"&User-manager (root)"     , env .. "gksudo kuser %i -caption %c", nil                                                  },
	{"&Partition-manager (root)", env .. "gksudo gparted"             , beautiful.icons .. "Applications/partitioner.png"    },
	{"SMART-&inspector (root)"  , env .. "gksudo gsmartcontrol"       , beautiful.icons .. "Applications/disk-configurer.png"},
	{"C&leaner (root)"          , env .. "gksudo bleachbit"           , nil                                                  },
}

-- LEAVING OPTIONS
leaving_menu = {
	{"&Lock screen"   , nil                        , nil                                         },
	{"&End session"   , awesome.exit               , beautiful.icons .. "Actions/end-session.png"},
	{nil              , nil                        , nil                                         },
	{"Reload &config'", awesome.restart            , nil                                         },
	{nil              , nil                        , nil                                         },
	{"&Suspend"       , env .. "systemctl suspend" , beautiful.icons .. "Actions/suspend.png"    },
	{"S&hutdown"      , env .. "systemctl poweroff", beautiful.icons .. "Actions/shutdown.png"   },
	{"&Reboot"        , env .. "systemctl reboot"  , beautiful.icons .. "Actions/reboot.png"     },
}

-- MAIN MENU
mymainmenu = awful.menu({
    items = {
	{"&Utilities"     , utilities_menu     , beautiful.icons .. "Categories/accessories.png"},
	{"&Productivity"  , productivity_menu  , beautiful.icons .. "Categories/office.png"     },
	{"&Multimedia"    , multimedia_menu    , beautiful.icons .. "Categories/multimedia.png" },
	{"G&raphics"      , graphics_menu      , beautiful.icons .. "Categories/graphics.png"   },
	{"&Gaming"        , gaming_menu        , beautiful.icons .. "Categories/games.png"      },
	{"&Administration", administration_menu, beautiful.icons .. "Categories/system.png"     },
	{nil              , nil                , nil                                                         },
	{"&Leaving"       , leaving_menu       , nil                                                         },
    }
})

mylauncher = awful.widget.launcher({image = beautiful.icons .. "Categories/launcher.png", menu = mymainmenu})

-- Menubar configuration
menubar.utils.terminal = terminal -- Set the terminal for applications that require it
