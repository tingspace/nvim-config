vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "L", "$")
vim.keymap.set("n", "H", "^")

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

-- Treat Ctrl + C the same as Esc in Normal mode
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>f", function()
	-- TODO: Move this to LSP config file
	vim.lsp.buf.format()
end)

-- TODO: Figure out what these do
--vim.keymap.set("n", "<c-k>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<c-j", "<cmd>cprev<CR>zz")
--vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
--vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

if vim.loop.os_uname().sysname == "Linux" then
	vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
end

vim.api.nvim_create_user_command("W", "w", {})
vim.api.nvim_create_user_command("Q", "q", {})
