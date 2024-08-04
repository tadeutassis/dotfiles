return {
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_indent_on_ampersands = 0
    end,
  },
  { "micangl/cmp-vimtex" },
}
