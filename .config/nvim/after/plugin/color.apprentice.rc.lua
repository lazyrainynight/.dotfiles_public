local status, _ = pcall(vim.cmd, "colorscheme apprentice")
if not status then
    -- print("apprentice not installed")
    return
end
