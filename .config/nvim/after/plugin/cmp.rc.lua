local status1, cmp = pcall(require, 'cmp')
if not status1 then
    print("cmp not installed")
    return
end

local status2, luasnip = pcall(require, 'luasnip')
if not status2 then
    print("luasnip not installed")
    return
end

local status3, lspkind = pcall(require, 'lspkind')
if not status3 then
    print("lspkind not installed")
    return
end

-- ---- load friendly-snippets
-- require("luasnip/loaders/from_vscode").lazy_load()

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-k>'] = cmp.mapping.select_prev_item(), -- prev suggestion
        ['<C-j>'] = cmp.mapping.select_next_item(), -- next suggestion
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
        }),
    }),
    sources = cmp.config.sources({
        { name = 'luasnip' }, -- snippets
        { name = 'nvim_lsp' }, -- lsp
        { name = 'buffer' }, -- text within current buffer
        { name = 'path' }, -- file system paths
    }),
    formatting = {
        format = lspkind.cmp_format({
            with_text = false,
            maxwidth = 50,
            ellipsis_char = "...",
        })
    }
})

vim.cmd [[
    set completeopt=menu,menuone,noinsert,noselect
    highlight! default link CmpItemKind CmpItemMenuDefault
]]

-- " Use <Tab> and <S-Tab> to navigate through popup menu
-- inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
-- inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
