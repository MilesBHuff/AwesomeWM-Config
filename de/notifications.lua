-- Notification wrapper
-- -----------------------------------------------------------------------------
local notify = function(args)
    args = args or {}
    require("naughty").notify({
		preset = args.preset and naughty.config.presets[args.preset] or nil,
		title  = args.title and args.title or "Notification",
		text   = args.text,
    })
end

-- Handle errors from another instance
-- -----------------------------------------------------------------------------
-- Check if awesome encountered an error during startup and fell back to another config
-- (This code will only ever execute for the fallback config.)
if awesome.startup_errors then
    notify({
		preset = "critical",
		title  = "Startup Error!",
		text   = awesome.startup_errors,
	})
end

-- Handle runtime errors after startup
-- -----------------------------------------------------------------------------
do
    local in_error = false -- Make sure we don't go into an endless error loop
    awesome.connect_signal("debug::error", function(error)
        if in_error then return end
        in_error = true
        notify({
            preset = "critical",
            title  = "Runtime Error!",
            text   = tostring(error)
        })
        in_error = false
    end)
end

-- Export
-- -----------------------------------------------------------------------------
return notify
