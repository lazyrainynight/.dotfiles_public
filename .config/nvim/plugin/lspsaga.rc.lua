local status, saga = pcall(require, "lspsaga")
if not status then
    print("lspconfig not installed")
    return
end

-- saga.init_lsp_saga {
--     server_filetype_map = {
--         typescript = 'typescript'
--     }
-- }

local opts = { noremap = true, silent = true }
vim.keymap.set('n', 'gn', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gf', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', 'gs', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gq', '<Cmd>Lspsaga preview_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
