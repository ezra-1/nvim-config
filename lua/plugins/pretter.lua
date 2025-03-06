local M = {
   'prettier/vim-prettier',
    run = 'npm install',  -- This will install Prettier when you install the plugin
    ft = { 'javascript', 'typescript', 'html', 'css', 'scss', 'json', 'yaml', 'markdown' },  -- Filetypes to enable Prettier
    config = function()
      -- Prettier options can be configured here
      vim.g['prettier#config#single_quote'] = 1
      vim.g['prettier#config#semi'] = 0
    end
}

function M.config()
end

vim.cmd [[
  augroup PrettierAutoFormat
    autocmd!
    autocmd BufWritePre *.js,*.ts,*.jsx,*.tsx,*.html,*.css,*.json,*.scss PrettierAsync
  augroup END
]]


return M
