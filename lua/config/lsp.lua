-- ./lua/config/lsp.lua
vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(ev)
                local client = vim.lsp.get_client_by_id(ev.data.client_id)
                if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_completion) then
                        vim.opt.completeopt = { "menu", "menuone", "noinsert", "fuzzy", "popup" }
                        vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
                        vim.keymap.set("i", "<C-Space>", function()
                                vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
                                vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
                                vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
                                vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
                                vim.lsp.completion.get()
                        end)
                end
                
                -- Code lens: enable() handles requesting + refreshing internally,
                -- same pattern as completion/inlay_hint/semantic_tokens.enable().
                -- (vim.lsp.codelens.refresh() is deprecated as of Neovim's recent
                -- LSP module cleanup — enable() replaces it.)
                if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_codeLens) then
                        vim.lsp.codelens.enable(true, { bufnr = ev.buf })
                        vim.keymap.set("n", "<leader>cl", vim.lsp.codelens.run, { buffer = ev.buf, desc = "Run code lens" })
                end
        end,
})

-- Diagnostics
vim.diagnostic.config({
        virtual_lines = {
                current_line = true,
        },
})