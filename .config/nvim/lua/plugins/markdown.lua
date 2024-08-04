return {
  "jakewvincent/mkdnflow.nvim",
  config = function()
    require("mkdnflow").setup({
      modules = {
        cmp = true,
      },
      mappings = {
        MkdnIncreaseHeading = { "n", "<leader><<" },
        MkdnDecreaseHeading = { "n", "<leader>>>" },
      },
    })
  end,
}
