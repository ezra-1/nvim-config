local opt = vim.opt
local g = vim.g

vim.opt.backup = false -- creates a backup file
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.cmdheight = 1 -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
-- vim.opt.fileencoding = "utf-8" -- the encoding written to a file
vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.pumheight = 10 -- pop up menu height
vim.opt.pumblend = 10
vim.opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 1 -- always show tabs
vim.opt.smartcase = true -- smart case
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false -- creates a swapfile
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 1000 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 100 -- faster completion (4000ms default)
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2 -- insert 2 spaces for a tab
vim.opt.cursorline = true -- highlight the current line
vim.opt.number = true -- set numbered lines
vim.opt.laststatus = 3
vim.opt.showcmd = false
vim.opt.ruler = false
vim.opt.relativenumber = true -- set relative numbered lines
vim.opt.numberwidth = 4 -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false -- display lines as one long line
vim.opt.scrolloff = 0
vim.opt.sidescrolloff = 8
vim.opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
vim.opt.title = false
-- colorcolumn = "80",
-- colorcolumn = "120",
vim.opt.fillchars = vim.opt.fillchars + "eob: "
vim.opt.fillchars:append {
  stl = " ",
}

vim.opt.shortmess:append "c"

vim.opt.laststatus = 0
vim.opt.showtabline = 0

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]

vim.g.netrw_banner = 0
vim.g.netrw_mouse = 2

if vim.g.neovide then
    -- Put anything you want to happen only in Neovide here

    -- Helper function for transparency formatting
    local alpha = function()
      return string.format("%x", math.floor(255 * g.transparency or 1.0))
    end

    -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
    g.neovide_transparency = 1.0
    g.transparency = 1.0
    g.neovide_background_color = "#0f1117" .. alpha()


    opt.relativenumber = false -- set relative numbered lines
    opt.number = false -- set number lines


    -- set font family on size
    vim.o.guifont = "JetbrainsMono NF Medium:h10" -- text below applies for VimScript

    -- Adding padding to all corns of neovide
    g.neovide_padding_top = 30
    g.neovide_padding_bottom = 20
    g.neovide_padding_right = 20
    g.neovide_padding_left = 30
    

    -- 
    g.neovide_floating_shadow = true
    g.neovide_floating_z_height = 0
    g.neovide_light_angle_degrees = 0
    g.neovide_light_radius = 0


    -- cursor Animate
    g.neovide_cursor_vfx_mode = "railgun"
    --g.neovide_cursor_vfx_mode = "ripple"
    --g.neovide_cursor_vfx_mode = "pixiedust"
    --g.neovide_cursor_vfx_mode = "sonicboom"
    --g.neovide_cursor_vfx_mode = "wireframe"

    -- Animate cursor blink
    g.neovide_cursor_smooth_blink = true

    -- Animate switch to command line
    g.neovide_cursor_animate_in_insert_mode = true

end

