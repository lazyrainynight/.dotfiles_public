local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
    print("nvim-tree not installed")
    return
end

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#7a8b9c ]])

nvimtree.setup({
    renderer = {
        icons = {
            glyphs = {
                folder = {
                    arrow_closed = "", -- arrow when folder is closed
                    arrow_open = "", -- arrow when folder is open
                },
            },
        },
    },
    actions = {
        open_file = {
            window_picker = {
                enable = false,
            },
        },
    },
})
