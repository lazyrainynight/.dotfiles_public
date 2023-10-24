local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
    -- print("nightfly not installed")
    return
end
