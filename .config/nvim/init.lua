require('mynvim.plugins')
require('mynvim.base')
require('mynvim.highlights')
require('mynvim.keymaps')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('mynvim.macos')
end
if is_win then
  require('mynvim.windows')
end
