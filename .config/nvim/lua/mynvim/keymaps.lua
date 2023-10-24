local opts = { noremap = true, silent = true }
local keymap = vim.keymap

---- Clear search highlights
keymap.set("n", "<leader>sc", ":nohl<CR>")

---- Do not yank with x
keymap.set("n", "x", '"_x')
keymap.set("n", "dd", '"_dd')

---- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

---- Delete word backwards
keymap.set("n", "dw", 'vb"_d')

---- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")
keymap.set("n", "<leader>a", "gg<S-v>G")

---- Save
keymap.set("n", "<C-s>", ":w")
keymap.set("n", "<leader>s", ":w")

---- Indent - tab/untab
keymap.set("v", ".", ">gv")
keymap.set("v", "<C-S-Right>", ">gv")
keymap.set("v", ",", "<gv")
keymap.set("v", "<C-S-Left>", "<gv")

---- Move text up and down
vim.api.nvim_set_keymap("v", "<C-S-j>", ":m .+1<CR>==", opts)
vim.api.nvim_set_keymap("v", "<C-S-Down>", ":m .+1<CR>==", opts)
vim.api.nvim_set_keymap("v", "<C-S-k>", ":m .-2<CR>==", opts)
vim.api.nvim_set_keymap("v", "<C-S-Up>", ":m .-2<CR>==", opts)
vim.api.nvim_set_keymap("x", "<C-S-j>", ":move '>+1<CR>gv-gv", opts)
vim.api.nvim_set_keymap("x", "<C-S-Down>", ":move '>+1<CR>gv-gv", opts)
vim.api.nvim_set_keymap("x", "<C-S-k>", ":move '<-2<CR>gv-gv", opts)
vim.api.nvim_set_keymap("x", "<C-S-Up>", ":move '<-2<CR>gv-gv", opts)

---- Do not yank with paste
keymap.set("v", "p", '"_dP')

---- Save with root permission (not working for now)
-- vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

---- New tab
keymap.set("n", "te", ":tabedit<Return>")
---- Split window
keymap.set("n", "ss", ":split<Return><C-w>w")
keymap.set("n", "sv", ":vsplit<Return><C-w>w")
---- Move focus on windows
keymap.set("n", "<C-p>", "<C-w>w")

---- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

---- nvim-tree
keymap.set("n", "<C-q>", ":NvimTreeToggle<Return>")

---- bufferline
vim.keymap.set("n", "<C-Right>", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<C-Left>", "<Cmd>BufferLineCyclePrev<CR>", {})
