-- ./init.lua
-- Core
require("config.global")
require("config.filetypes")

-- Plugins
require("plugins.mason-nvim")
require("plugins.webdevicons-nvim")
require("plugins.lualine")
require("plugins.nvim-tree")
require("plugins.roslyn-nvim")
require("plugins.nvim-treesitter")
require("plugins.telescope-nvim")
require("plugins.nvim-dap")
require("plugins.conform-nvim")

-- LSP configuration
require("config.lsp")