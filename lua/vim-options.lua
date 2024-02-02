vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set scrolloff=8")
vim.g.mapleader = " "

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Escape insert mode
vim.keymap.set("i", "jj", "<Esc>")

-- Save and quitting
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q!<CR>")

--Navigation
vim.keymap.set("n", "<leader>k", "%")
vim.keymap.set("n", "H", "0")
vim.keymap.set("n", "L", "$")

--select all

vim.keymap.set("n", "<leader>a", "ggVG")

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.wo.number = true

-- highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
})
