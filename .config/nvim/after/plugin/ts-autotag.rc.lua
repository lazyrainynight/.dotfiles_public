local status, autotag = pcall(require, "nvim-ts-autotag")
if not status then
    print("nvim-ts-autotag not installed")
    return
end

autotag.setup({})
