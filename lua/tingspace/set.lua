vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- Wrapping so that I can see the full inline errors
vim.opt.wrap = true

-- TODO: Figure out what these do
vim.opt.swapfile = false
vim.opt.backup = false

local sysname = vim.loop.os_uname().sysname
if sysname == "Linux" or sysname == "Darwin" then
    vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
end
if sysname == "Windows" then
    vim.opt.undodir = os.getenv("USERPROFILE") .. "/.vim/undodir"
end

vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 16
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@") -- TODO: Figure out what this does

vim.opt.updatetime = 50       -- TODO: Figure out what this does

vim.opt.colorcolumn = "80"
