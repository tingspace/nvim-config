vim.g.mapleader = " " -- Use Space for Leader
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move selected blocks up and down, updating the indents
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Move to beginning or end of line with H & L
vim.keymap.set("n", "L", "$")
vim.keymap.set("n", "H", "^")

-- Page Down & Page Up with Ctrl + d & Ctrl + u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- TODO: Figure out what these do
--vim.keymap.set("n", "Y", "yg$")
--vim.keymap.set("n", "J", "mzJ`z")
--vim.keymap.set("n", "N", "Nzzzv")
--vim.keymap.set("n", "n", "nzzzv")
--vim.keymap.set("x", "<leader>p", "\"_dP")


-- Copy to System Clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")


-- Delete does not move values to _d register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Treat Ctrl + C the same as Esc in Insert mode (Because I'm lazy)
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

-- TODO: Figure out what these do
--vim.keymap.set("n", "<c-k>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<c-j", "<cmd>cprev<CR>zz")
--vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
--vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

local os_name = vim.loop.os_uname().sysname
if os_name == "Linux" or os_name == "Darwin" then
    vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
end


-- Because I keep fucking this up
vim.api.nvim_create_user_command("W", "w", {})
vim.api.nvim_create_user_command("Q", "q", {})
vim.api.nvim_create_user_command("Wq", "wq", {})
vim.api.nvim_create_user_command("WQ", "wq", {})
