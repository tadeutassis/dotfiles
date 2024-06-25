return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("catppuccin-latte")
    require("catppuccin").setup({
      integrations = {
        neotree = true,
      }
    })
  end,
}
