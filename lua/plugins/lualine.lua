vim.opt.laststatus = 3
vim.opt.showmode = false
vim.opt.ruler = false

vim.pack.add({
    "https://github.com/nvim-lualine/lualine.nvim",
})
require("lualine").setup()