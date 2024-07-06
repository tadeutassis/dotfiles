vim.keymap.set("n", "<leader>ch", "<cmd>nohl<CR>") -- clean search highlights

vim.keymap.set("n", "<A-j>", "ddp") -- swap with line below
vim.keymap.set("n", "<A-k>", "ddkP") -- swap with line above

-- windows

vim.keymap.set("n", "<A-J>", "<cmd>resize +1<CR>") -- resize split height
vim.keymap.set("n", "<A-K>", "<cmd>resize -1<CR>") -- resize split height
vim.keymap.set("n", "<A-H>", "<cmd>vertical resize +1<CR>") -- resize split width
vim.keymap.set("n", "<A-L>", "<cmd>vertical resize -1<CR>") -- resize split width

vim.keymap.set("n", "<leader>ss", "<cmd>vnew<CR>") -- new vertical split
vim.keymap.set("n", "<leader>sh", "<cmd>new<CR>") -- new horizontal split
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>") -- close split

vim.keymap.set("n", "<C-j>", "<C-w>j") -- move to split below
vim.keymap.set("n", "<C-Down>", "<C-w>j") -- move to split below
vim.keymap.set("n", "<C-k>", "<C-w>k") -- move to split above
vim.keymap.set("n", "<C-Up>", "<C-w>k") -- move to split above
vim.keymap.set("n", "<C-h>", "<C-w>h") -- move to split to left
vim.keymap.set("n", "<C-Left>", "<C-w>h") -- move to split to left
vim.keymap.set("n", "<C-l>", "<C-w>l") -- move to split to right
vim.keymap.set("n", "<C-Right>", "<C-w>l") -- move to split to right

-- lsp keymaps
vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format) -- code format
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action) -- code actions
