vim.g.mapleader = " "

local function map(mode, lhs, rhs)
	vim.api.nvim_set_keymap(mode, lhs, rhs, { noremap = true, silent = true })
end

map("n", "<leader>p", ":Pick files<CR>")
map("n", "<leader>fw", ":Pick grep_live<CR>")
map("n", "<leader>ff", ":Pick git_files<CR>")
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
map("n", "J", "mzJ`z")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("x", "<leader>y", '"_dP')
map("n", "<leader>y", '"+y')
map("v", "<leader>y", '"+y')
map("n", "<leader>Y", '"+Y')
map("n", "<leader>d", '"_d')
map("v", "<leader>d", '"_d')
map("n", "Q", "<nop>")
map("n", "<C-f>", "<cmd>lua vim.lsp.buf.format()<CR>")