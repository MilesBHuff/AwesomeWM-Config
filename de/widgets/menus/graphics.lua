return {
	{"&Paint-program",        cmd("kolourpaint"), beautiful.get_icon("paint")},
	{"&Image-viewer",         cmd("ristretto"),   beautiful.get_icon("")},
	{nil, nil, nil},
	{"&Vector-editor",        cmd("inkscape"),    beautiful.get_icon("")},
	{"&Raster-editor",        cmd("gimp-2.8"),    beautiful.get_icon("raster-editor")},
	{"&Mesh-editor",          cmd("blender"),     beautiful.get_icon("mesh-editor")},
	{"&Font-editor",          cmd("fontforge"),   beautiful.get_icon("")},
	{nil, nil, nil},
	{"P&hotobooth",           cmd("guvcview"),    beautiful.get_icon("camera")},
  --{"&Color-profiler",       cmd("wine C:\\windows\\command\\start.exe /Unix /home/miles/.wine/dosdevices/c:/users/maiyil78/Start\ Menu/Programs/LProf/LProf.lnk"), nil},
	{"M&ass image-processor", cmd("phatch"),      beautiful.get_icon("phatch")},
}
