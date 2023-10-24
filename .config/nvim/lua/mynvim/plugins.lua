vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
    print("Packer is not installed.")
    return
end

vim.cmd([[packadd packer.nvim]])

return packer.startup(function(use)
    use("wbthomason/packer.nvim")

    ---- color theme - NeoSolarized
    -- use { 'svrana/neosolarized.nvim', requires = { 'tjdevries/colorbuddy.nvim' } }

    ---- color theme - gruvbox
    -- use("morhetz/gruvbox")

    ---- color theme - nightfly
    -- use("bluz71/vim-nightfly-guicolors")

    ---- color theme - melange
    -- use("savq/melange-nvim")

    ---- color theme - tokyonight
    use("folke/tokyonight.nvim")

    ---- color theme - Apprentice
    -- use("romainl/Apprentice")

    ---- color theme - onedark
    -- use("joshdick/onedark.vim")

    ---- NVimTree - file explorer
    use("nvim-tree/nvim-tree.lua")

    ---- LuaLine - status bar at the bottom
    use("nvim-lualine/lualine.nvim")

    ---- File icons
    use("kyazdani42/nvim-web-devicons")
    -- use("nvim-tree/nvim-web-devicons")

    ---- Utils (required by telescope and others)
    use("nvim-lua/plenary.nvim")

    ---- telescope
    use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })
    use("nvim-telescope/telescope-file-browser.nvim")
    use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

    ---- tabs
    use("akinsho/nvim-bufferline.lua")

    ---- Mason - manag & install LSP servers, linters and formatters
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")

    ---- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua

    ---- formatting & linting
    use("jose-elias-alvarez/null-ls.nvim")
    use("jayp0521/mason-null-ls.nvim")

    ---- LSP - configure LSP servers
    use("neovim/nvim-lspconfig") -- LSP
    use({ "glepnir/lspsaga.nvim", branch = "main" }) -- LSP UIs
    -- use("jose-elias-alvarez/typescript.nvim")
    use("onsails/lspkind.nvim") -- vscode-like pictograms
    use("hrsh7th/cmp-buffer") -- nvim-cmp source for buffer words
    use("hrsh7th/cmp-path") -- nvim-cmp source for file path
    use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for neovim's built-in LSP
    use("hrsh7th/nvim-cmp") -- Completion
    use("mfussenegger/nvim-jdtls") -- jdtls

    ---- Snippet
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    use("rafamadriz/friendly-snippets")

    ---- TreeSitter
    use({
        "nvim-treesitter/nvim-treesitter",
        run = function()
            require("nvim-treesitter.install").update({ with_sync = true })
        end,
    })

    ---- autotag & autopair
    use("windwp/nvim-autopairs")
    use("windwp/nvim-ts-autotag")

    ---- Colorizer
    use("norcalli/nvim-colorizer.lua")

    ---- git decorations
    use("lewis6991/gitsigns.nvim")
    ---- For git blame & browse
    use("dinhhuy258/git.nvim")

    -- packer.sync()
end)
