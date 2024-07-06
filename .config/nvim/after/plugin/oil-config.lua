require("oil").setup({
  default_file_explorer = true,
  columns = {
    "mtime",
    "icon",
  },
  delete_to_trash = true,
  skip_confirm_for_simple_edits = true,
})

vim.keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Open parent directory" })
