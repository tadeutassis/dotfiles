-- create md file with unique filename
vim.api.nvim_create_user_command("Newmd", 'lua vim.cmd("e " .. os.date("%Y%m%d%H%M") .. ".md")', {})
vim.keymap.set("n", "<leader>zn", "<cmd>Newmd<CR>")
vim.keymap.set("n", "<leader>zi",
  function ()
    vim.cmd("cd ~/sync/zk")
    vim.cmd("e index.md")
  end
)
