local M = {
  "zaldih/themery.nvim",
}

function M.config()
  -- Set custom name to the list
require("themery").setup({
  themeConfigFile = "~/.config/nvim/lua/plugins/theme.lua",
  themes = {{
    name = "toykonight",
    colorscheme = "tokyonight",
  },
  {
    name = "rose-pine",
    colorscheme = "rose-pine",
  },
  {
    name = "catppuccin",
    colorscheme = "catppuccin",
  },
  { name = "onedark",
    colorscheme = "onedark",
  }},
})
end

return M
