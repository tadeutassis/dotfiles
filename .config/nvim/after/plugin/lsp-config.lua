require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "clangd",
    "html",
    "pylsp",
    "marksman",
  },
})

local null_ls = require("null-ls")
null_ls.setup({
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.prettier,
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

lspconfig.pylsp.setup({
  capabilities = capabilities,
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          enabled = false,
        },
      },
    },
  },
})

lspconfig.marksman.setup({
  capabilities = capabilities,
})

-- lspconfig.texlab.setup({
--   capabilities = capabilities,
--   settings = {
--     texlab = {
--       build = {
--         forwardSearchAfter = true,
--         onSave = true,
--       },
--       forwardSearch = {
--         executable = "zathura",
--         args = { "--synctex-forward", "%l:1:%f", "%p" },
--         -- onSave = true,
--       },
--     },
--   },
-- })
-- vim.keymap.set("n", "\\ll", "<cmd>TexlabBuild<CR>")
-- vim.keymap.set("n", "\\lv", "<cmd>TexlabForward<CR>")
