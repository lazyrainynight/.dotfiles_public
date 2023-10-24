local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then
    print("nvim-treesitter.configs not installed")
    return
end

ts.setup {
    highlight = {
        enable = true,
        disable = {},
    },
    indent = {
        enable = true,
        disable = {},
    },
    auto_install = true,
    autotag = { enable = true, },
    ensure_installed = {
        "cpp",
        "css",
        "c_sharp",
        "dart",
        "dockerfile",
        "fish",
        "git_rebase",
        "gitattributes",
        "gitignore",
        "go",
        "html",
        "java",
        "json",
        "julia",
        "kotlin",
        "lua",
        "markdown",
        "php",
        "python",
        "r",
        "rust",
        "scala",
        "scss",
        "sql",
        "swift",
        "toml",
        "tsx",
        "typescript",
        "yaml",
    },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
