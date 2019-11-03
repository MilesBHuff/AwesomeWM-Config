-- Defaults setter
-- -----------------------------------------------------------------------------
try_var = function(desired, default)
	return (desired ~= nil) and desired or default
end

-- Notifications
-- -----------------------------------------------------------------------------
notify = function(args)
    args = try_var(args, {})
    require("naughty").notify({
		preset = (args.preset ~= nil) and naughty.config.presets[args.preset] or nil,
		title  = try_var(args.title, "Notification"),
		text   = args.text,
    })
end
