local which_key = require("which-key")
require("neogit").setup()

which_key.register({
	n = {
		name = "Neogit",
		n = { "<cmd>:Neogit<CR>", "Neogit" }
	}
}, { mode = "n", prefix = "<leader>" })
