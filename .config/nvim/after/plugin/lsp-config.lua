require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "clangd",
    "html",
    "pyright",
  },
})

local null_ls = require("null-ls")
null_ls.setup({
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.black,
    -- null_ls.builtins.disgnostics.
  },
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({
  capabilities = capabilities,
})

lspconfig.clangd.setup({
  capabilities = capabilities,
})

lspconfig.html.setup({
  capabilities = capabilities,
})

lspconfig.pyright.setup({
  capabilities = capabilities,
})

lspconfig.texlab.setup({
	capabilities = capabilities,
	settings = {
		texlab = {
			build = {
				forwardSearchAfter = true,
			},
			forwardSearch = {
				executable = "zathura",
				args = { "--synctex-forward", "%l:1:%f", "%p" },
				onSave = true,
			},
		},
	},
})
vim.keymap.set("n", "\\ll", "<cmd>TexlabBuild<CR>")
