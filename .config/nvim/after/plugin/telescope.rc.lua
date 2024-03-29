local status1, telescope = pcall(require, "telescope")
if not status1 then
    print("telescope not installed")
    return
end

local status2, actions = pcall(require, "telescope.actions")
if not status2 then
    print("telescope.actions not installed")
    return
end

local status3, builtin = pcall(require, "telescope.builtin")
if not status3 then
    print("telescope.builtin not installed")
    return
end

local function telescope_buffer_dir()
    return vim.fn.expand('%:p:h')
end

local fb_actions = telescope.extensions.file_browser.actions

telescope.setup {
    defaults = {
        mappings = {
            n = {
                ["q"] = actions.close
            },
        },
    },
    extensions = {
        file_browser = {
            theme = "dropdown",
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
            mappings = {
                -- your custom insert mode mappings
                ["i"] = {
                    ["<C-w>"] = function() vim.cmd('normal vbd') end,
                },
                ["n"] = {
                    -- your custom normal mode mappings
                    ["N"] = fb_actions.create,
                    ["h"] = fb_actions.goto_parent_dir,
                    ["/"] = function()
                        vim.cmd('startinsert')
                    end
                },
            },
        },
        fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case" -- the default case_mode is "smart_case"
        },
    },
}

telescope.load_extension("file_browser")
telescope.load_extension("fzf")

vim.keymap.set('n', ';f',
    function()
        builtin.find_files({
            no_ignore = false,
            hidden = true
        })
    end)
vim.keymap.set('n', ';r', function()
    builtin.live_grep()
end)
vim.keymap.set('n', ';t', function()
    builtin.grep_string()
end)
vim.keymap.set('n', '\\\\', function()
    builtin.buffers()
end)
vim.keymap.set('n', ';h', function()
    builtin.help_tags()
end)
vim.keymap.set('n', ';;', function()
    builtin.resume()
end)
vim.keymap.set('n', ';d', function()
    builtin.diagnostics()
end)
vim.keymap.set("n", ";e", function()
    telescope.extensions.file_browser.file_browser({
        path = "%:p:h",
        cwd = telescope_buffer_dir(),
        respect_gitignore = false,
        hidden = true,
        grouped = true,
        previewer = false,
        initial_mode = "normal",
        layout_config = { height = 40 }
    })
end)
