local status, lualine = pcall(require, "lualine")
if not status then
    print("lualine not installed")
    return
end

local new_colors = {
    blue = '#65d1ff',
    green = '#3effdc',
    violet = '#ff61ef',
    yellow = '#ffda7b',
    black = '#000000',
}

local lualine_nightfly = require("lualine.themes.nightfly")
lualine_nightfly.normal.a.bg = new_colors.blue
lualine_nightfly.insert.a.bg = new_colors.green
lualine_nightfly.visual.a.bg = new_colors.violet
lualine_nightfly.command = {
    a = {
        gui = "bold",
        bg = new_colors.yellow,
        fg = new_colors.black,
    },
}

lualine.setup {
    options = {
        icons_enabled = true,
        -- theme = 'solarized_dark',
        -- theme = 'nightfly',
        theme = lualine_nightfly,
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
        disabled_filetypes = {}
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = {
            {
                'filename',
                file_status = true, -- displays file status (readonly status, modified status)
                path = 0 -- 0 = just filename, 1 = relative path, 2 = absolute path
            }
        },
        lualine_x = {
            {
                'diagnostics',
                sources = { "nvim_diagnostic" },
                symbols = {
                    error = ' ',
                    warn = ' ',
                    info = ' ',
                    hint = ' '
                }
            },
            'encoding',
            'filetype'
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
            {
                'filename',
                file_status = true, -- displays file status (readonly status, modified status)
                path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
            }
        },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = { 'fugitive' }
}
