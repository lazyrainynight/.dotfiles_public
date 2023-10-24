local status, _ = pcall(vim.cmd, "colorscheme melange")
if not status then
    -- print("melange not installed")
    return
end
