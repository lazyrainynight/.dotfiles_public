local jdtls_ok, jdtls = pcall(require, "jdtls")
if not jdtls_ok then
    print("JDTLS not found, install with `:LspInstall jdtls`")
    return
end

local data_path = vim.fn.stdpath('data')
local jdtls_path = data_path .. "\\mason\\packages\\jdtls"
local path_to_lsp_server = jdtls_path .. "\\config_win"
local path_to_plugins = jdtls_path .. "\\plugins"
local path_to_jar = path_to_plugins .. "\\org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar"
local lombok_path = jdtls_path .. "\\lombok.jar"

local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = data_path .. '\\site\\java\\workspace-root\\' .. project_name
os.execute("mkdir -Force" .. workspace_dir)

local config = {
    cmd = {
        'java',
        '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        '-Dosgi.bundles.defaultStartLevel=4',
        '-Declipse.product=org.eclipse.jdt.ls.core.product',
        '-Dlog.protocol=true',
        '-Dlog.level=ALL',
        '-javaagent:' .. lombok_path,
        '-Xms1g',
        '--add-modules=ALL-SYSTEM',
        '--add-opens', 'java.base/java.util=ALL-UNNAMED',
        '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
        '-jar', path_to_jar,
        '-configuration', path_to_lsp_server,
        '-data', workspace_dir,
    },
    root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'}),
    settings = {
        java = {
        }
    },
    init_options = {
        bundles = {}
    },
}

jdtls.start_or_attach(config)
