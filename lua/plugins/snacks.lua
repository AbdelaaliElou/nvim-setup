vim.pack.add({
    "https://github.com/folke/snacks.nvim"
})

require("snacks").setup({
    picker = { enabled = true },
    explorer = { enabled = true }
})


vim.keymap.set("n", "<leader>ff", Snacks.picker.files)
vim.keymap.set("n", "<leader>fg", Snacks.picker.grep)
vim.keymap.set("n", "<leader>fb", Snacks.picker.buffers)
vim.keymap.set("n", "<leader>fd", Snacks.picker.diagnostics)
vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>fs", Snacks.picker.lsp_symbols)
vim.keymap.set("n", "<leader>fe", function() Snacks.explorer() end)
-- vim.keymap.set("n", "<leader>fS", Snacks.picker.lsp_workspace_symbols)
