require('base')
require('heighlights')
require('maps')
require('plugins')

-- Clipboard --
local has = function(x)
  return vim.fn.has(x) == 1
end

local is_mac = has "macunix"
local is_win = has "win"

if is_mac then
  require('macos')
end
if is_win then
  require('windows')
end
---------------
