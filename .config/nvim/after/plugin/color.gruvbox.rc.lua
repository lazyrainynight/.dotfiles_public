local status, _ = pcall(vim.cmd, "colorscheme gruvbox")
if not status then
    -- print("gruvbox not installed")
    return
end
