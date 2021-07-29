-- Colorscheme name:    mountain.nvim
-- Description:         Port of articicestudio's mountain theme for neovim
-- Author:              https://github.com/shaunsingh

local util = require('mountain.util')

-- Load the theme
local set = function ()
  util.load()
end

return { set = set }
