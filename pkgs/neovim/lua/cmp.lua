local cmp = require("cmp")
local luasnip = require("luasnip")
local lspkind = require("lspkind")

cmp.setup {
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert {
		["<C-j>"] = cmp.mapping.scroll_docs(4),
		["<C-k>"] = cmp.mapping.scroll_docs(-4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<CR>"] = cmp.mapping.confirm {
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		},
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, { "i", "s" }),
	},
    formatting = {
      format = lspkind.cmp_format({
          mode = "symbol",
          max_width = 50,
          symbol_map = { Copilot = "" }
      })
    },
	sources = {
        -- Copilot Source
        { name = "copilot", group_index = 2 },
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	},
}
