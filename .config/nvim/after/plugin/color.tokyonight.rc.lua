local status, _ = pcall(vim.cmd, "colorscheme tokyonight")
if not status then
    -- print("tokyonight not installed")
    return
end

-- local status, _ = pcall(vim.cmd, "colorscheme tokyonight-night")
-- if not status then
--     -- print("tokyonight-night not installed")
--     return
-- end

-- local status, _ = pcall(vim.cmd, "colorscheme tokyonight-storm")
-- if not status then
--     -- print("tokyonight-storm not installed")
--     return
-- end

-- local status, _ = pcall(vim.cmd, "colorscheme tokyonight-day")
-- if not status then
--     -- print("tokyonight-day not installed")
--     return
-- end

-- local status, _ = pcall(vim.cmd, "colorscheme tokyonight-moon")
-- if not status then
--     -- print("tokyonight-moon not installed")
--     return
-- end
