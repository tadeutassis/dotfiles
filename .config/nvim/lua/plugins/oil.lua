return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup({
      default_file_explorer = true,
      columns = {
        -- "mtime",
        "icon",
      },
      delete_to_trash = true,
      skip_confirm_for_simple_edits = true,
    })
    vim.keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Open parent directory" })
  end,
}
