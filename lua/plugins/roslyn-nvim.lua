-- ./lua/plugins/roslyn-nvim.lua
vim.pack.add({ "https://github.com/seblyng/roslyn.nvim.git" })

require("roslyn").setup({
        ft = { "cs", "razor" },
})

-- Razor/CSHTML is handled automatically via co-hosting since roslyn.nvim
-- added native Razor support (superseding rzls.nvim). No custom cmd,
-- --razorSourceGenerator, --razorDesignTimePath, or --extension flags needed.
-- Just make sure roslyn-language-server >= 5.8.0-1.26262.10 is installed.
vim.lsp.config("roslyn", {
        settings = {
                ["csharp|inlay_hints"] = {
                        csharp_enable_inlay_hints_for_implicit_object_creation = true,
                        csharp_enable_inlay_hints_for_implicit_variable_types = true,
                        csharp_enable_inlay_hints_for_lambda_parameter_types = true,
                        csharp_enable_inlay_hints_for_types = true,
                        dotnet_enable_inlay_hints_for_indexer_parameters = true,
                        dotnet_enable_inlay_hints_for_literal_parameters = true,
                        dotnet_enable_inlay_hints_for_object_creation_parameters = true,
                        dotnet_enable_inlay_hints_for_other_parameters = true,
                        dotnet_enable_inlay_hints_for_parameters = true,
                        dotnet_suppress_inlay_hints_for_parameters_that_differ_only_by_suffix = true,
                        dotnet_suppress_inlay_hints_for_parameters_that_match_argument_name = true,
                        dotnet_suppress_inlay_hints_for_parameters_that_match_method_intent = true,
                },
                ["csharp|code_lens"] = {
                        dotnet_enable_references_code_lens = true,
                },
                ["csharp|completion"] = {
                        dotnet_show_name_completion_suggestions = true,
                        dotnet_show_completion_items_from_unimported_namespaces = true,
                },
                ["csharp|background_analysis"] = {
                        background_analysis = {
                                dotnet_analyzer_diagnostics_scope = "fullSolution",
                                dotnet_compiler_diagnostics_scope = "fullSolution",
                        },
                },
        },
})