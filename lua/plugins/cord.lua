local M = {
  'vyfor/cord.nvim',
  build = ':Cord update',
  -- opts = {}
}

function M.config()
  require("cord").setup {

  }
end

return M
