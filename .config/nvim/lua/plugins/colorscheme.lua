return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("catppuccin-frappe")
    end,
  },
  -- {
  --   "sainnhe/everforest",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.g.everforest_enable_italic = true
  --     vim.cmd.colorscheme("everforest")
  --   end,
  -- },
  -- {
  --   "morhetz/gruvbox",
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.colorscheme("gruvbox")
  --   end
  -- },
  -- {
  --   "rebelot/kanagawa.nvim",
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.colorscheme("kanagawa")
  --   end
  -- },
}
