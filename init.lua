-- ./init.lua
-- Core
require("config.filetypes")

-- Plugins
require("plugins.mason-nvim")
-- require("plugins.rzls-nvim")
require("plugins.roslyn-nvim")
require("plugins.nvim-treesitter")
require("plugins.telescope-nvim")
require("plugins.nvim-dap")
require("plugins.conform-nvim")

-- LSP configuration
require("config.lsp")