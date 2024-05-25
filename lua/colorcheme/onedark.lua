local M = {
  "navarasu/onedark.nvim",
  lazy = false,
  priority = 1000,
}

function M.config()
  -- Lua
  require('onedark').setup {
    style = 'deep'
  }
end

return M
