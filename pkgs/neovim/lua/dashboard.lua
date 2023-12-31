local home = os.getenv("HOME")
local db = require("dashboard")

db.session_directory = home .. "/.config/dashboard-nvim/";

db.setup({
	theme = 'hyper',
	config = {
		week_header = {
			enable = true,
		},
		packages = { enable = false },
		project = { enable = true, limit = 8, icon = '  ', label = 'Recent Projects:',
			action = 'Telescope find_files cwd=' },
		mru = { limit = 16, icon = '  ', label = 'Recent files:', },
		shortcut = {
			{
				icon = ' ',
				icon_hl = '@variable',
				desc = 'Files',
				group = 'Label',
				action = 'Telescope find_files',
				key = 'f',
			},
			{
				desc = ' dotfiles',
				group = 'Number',
				action = "Telescope find_files cwd=" .. home .. "/Projects/nix-config",
				key = 'd',
			},
		},
	},
})

db.custom_center = {
	{
		icon = "  ",
		desc = "Last session                         ",
		shortcut = "SPC s l",
		action = "SessionLoad",
	},
	{
		icon = "  ",
		desc = "Recent Files                         ",
		shortcut = "SPC f r",
		action = "Telescope oldfiles",
	},
	{
		icon = "  ",
		desc = "Open File                            ",
		shortcut = "SPC f f",
		action = "Telescope find_files",
	},
	{
		icon = "  ",
		desc = "Open Dotfiles                        ",
		shortcut = "SPC f d",
		action = "Telescope path=" .. home .. "/work/config",
	},
}
