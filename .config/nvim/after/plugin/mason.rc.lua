local status1, mason = pcall(require, "mason")
if not status1 then
    print("mason not installed")
    return
end

local status2, masonlspconfig = pcall(require, "mason-lspconfig")
if not status2 then
    print("mason-lspconfig not installed")
    return
end

local status3, mason_null_ls = pcall(require, "mason-null-ls")
if not status3 then
    print("mason-null-ls not installed")
    return
end

mason.setup({})

masonlspconfig.setup({
    automatic_installation = true,
    ensure_installed = {
        "angularls",
        "csharp_ls",
        "cssls",
        "dockerls",
        "emmet_ls",
        "gradle_ls",
        "html",
        "jdtls",
        "jsonls",
        "kotlin_language_server",
        "lemminx",
        "pyright",
        "rust_analyzer",
        "lua_ls",
        "tailwindcss",
        "tsserver",
        "yamlls",
    },
})

mason_null_ls.setup({
    ensure_installed = {
        "eslint_d",
        "prettier",
        "stylua",
    },
})
