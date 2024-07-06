local configs = require("nvim-treesitter.configs")
configs.setup({
  ensure_installed = {
    "c",
    "cpp",
    "lua",
    "vim",
    "vimdoc",
    "query",
    "python",
    "html",
    "css",
  },
  highlight = {
    enable = true,
    disable = { "latex" },
    -- additional_vim_regex_highlighting = { "latex", "markdown" },
  },
  indent = { enable = true },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<C-space>",
      node_incremental = "<C-space>",
      scope_incremental = false,
      node_decremental = "<bs>",
    },
  },
})
