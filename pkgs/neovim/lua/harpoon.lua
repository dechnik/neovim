require("harpoon").setup({
	menu = {
		width = vim.api.nvim_win_get_width(0) - 4,
	}
})

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local which_key = require("which-key")

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-j>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-k>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-l>", function() ui.nav_file(4) end)

which_key.register({
	a = {
		name = "Harpoon",
		a = { mark.add_file, "Add File" },
		e = { ui.toggle_quick_menu, "Quick menu" }
	}
}, { mode = "n", prefix = "<leader>" })
