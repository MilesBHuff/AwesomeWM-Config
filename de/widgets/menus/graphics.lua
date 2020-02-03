return {
	{"&Paint-program",        env .. "kolourpaint", beautiful.get_icon("paint")},
	{"&Image-viewer",         env .. "ristretto",   nil},
	{nil,                     nil,                  nil},
	{"&Vector-editor",        env .. "inkscape",    nil},
	{"&Raster-editor",        env .. "gimp-2.8",    beautiful.get_icon("raster-editor")},
	{"&Mesh-editor",          env .. "blender",     beautiful.get_icon("mesh-editor")},
	{"&Font-editor",          env .. "fontforge",   nil},
	{nil,                     nil,                  nil},
	{"P&hotobooth",           env .. "guvcview",    beautiful.get_icon("camera")},
  --{"&Color-profiler",       env .. "WINEPREFIX='/home/sweyn78/.wine' wine C:\\windows\\command\\start.exe /Unix /home/sweyn78/.wine/dosdevices/c:/users/maiyil78/Start\ Menu/Programs/LProf/LProf.lnk", nil},
	{"M&ass image-processor", env .. "phatch",      beautiful.get_icon("phatch")},
}
