-- @FIXME(jakehamilton): Enable this again when this issue is fixed:
-- https://github.com/neovim/neovim/issues/19464
-- local context = require("treesitter-context")
-- local which_key = require("which-key")

-- context.setup {
-- 	enable = true,
-- 	max_lines = 10,
-- 	line_numbers = true,
-- 	trim_scope = "outer",
-- 	mode = "topline",
-- }

-- which_key.register({
-- 	g = {
-- 		name = "Go",
-- 		C = {
-- 			function()
-- 				context.go_to_context()
-- 			end,
-- 			"Go to context"
-- 		},
-- 	},
-- }, { mode = "n", noremap = true, silent = true })
--
