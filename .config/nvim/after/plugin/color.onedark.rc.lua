local status, _ = pcall(vim.cmd, "colorscheme onedark")
if not status then
    -- print("onedark not installed")
    return
end
