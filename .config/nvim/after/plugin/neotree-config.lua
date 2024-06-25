require("neo-tree").setup({
  filesystem = {
    hijack_netrw_behavior = "open_current",
  },
  window = {
    position = "current",
    mappings = {
      ["-"] = "navigate_up"
    },
  },
})
vim.keymap.set("n", "-", "<cmd>Neotree position=current<CR>")
-- vim.keymap.set("n", "-", "<cmd>Neotree position=current<CR>")
