-- Check if awesome encountered an error during startup and fell back to
-- another config (This code will only ever execute for the fallback config)
if awesome.startup_errors then
    naughty.notify({
		preset = naughty.config.presets.critical,
		title = "Startup-error!",
		text = awesome.startup_errors,
	})
end

-- Handle runtime errors after startup
do
    local in_error = false -- Make sure we don't go into an endless error loop
    awesome.connect_signal("debug::error", function(err)

        if in_error then return end
        in_error = true

        naughty.notify({
            preset = naughty.config.presets.critical,
            title = "Error!",
            text = tostring(err)
        })
        in_error = false
    end)
end
