local M = {
  "rose-pine/neovim",
  lazy = false,
  priority = 1000,
}

function M.config()
-- Themery block
-- This block will be replaced by Themery.
vim.cmd("colorscheme catppuccin")
vim.g.theme_id = 3
-- end themery block
end

return M
