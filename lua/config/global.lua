vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.cmd("set number")
vim.cmd("set shiftwidth=2")
vim.cmd("set tabstop=2")

vim.pack.add({
    { src = "https://github.com/rebelot/kanagawa.nvim" }
})

vim.cmd("colorscheme kanagawa")