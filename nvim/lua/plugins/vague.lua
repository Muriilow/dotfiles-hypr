return {
    "vague2k/vague.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other plugins
    config = function()
        require("vague").setup({
            transparent = false, -- don't set background
            -- disable bold/italic globally in `style`
            bold = true,
            italic = true,
            style = {
                -- "none" is the same thing as default. But "italic" and "bold" are also valid options
                boolean = "bold",
                number = "none",
                float = "none",
                error = "bold",
                comments = "italic",
                conditionals = "none",
                functions = "none",
                headings = "bold",
                operators = "none",
                strings = "italic",
                variables = "none",

                -- keywords
                keywords = "none",
                keyword_return = "italic",
                keywords_loop = "none",
                keywords_label = "none",
                keywords_exception = "none",

                -- builtin
                builtin_constants = "bold",
                builtin_functions = "none",
                builtin_types = "bold",
                builtin_variables = "none",
            },
            -- plugin styles where applicable
            -- make an issue/pr if you'd like to see more styling options!
            plugins = {
                cmp = {
                    match = "bold",
                    match_fuzzy = "bold",
                },
                dashboard = {
                    footer = "italic",
                },
                lsp = {
                    diagnostic_error = "bold",
                    diagnostic_hint = "none",
                    diagnostic_info = "italic",
                    diagnostic_ok = "none",
                    diagnostic_warn = "bold",
                },
                neotest = {
                    focused = "bold",
                    adapter_name = "bold",
                },
                telescope = {
                    match = "bold",
                },
            },

            -- Override highlights or add new highlights
            on_highlights = function(highlights, colors) end,

            -- Override colors
            colors = {
                bg = "#0a0a0b",
                inactiveBg = "#121218",
                fg = "#b8b8b8",
                floatBorder = "#6a6a6a",
                line = "#1a1a1f",
                comment = "#4d4d5c",
                builtin = "#9cb8b3",
                func = "#a86e6e",
                string = "#b08e6a",
                number = "#c08a4f",
                property = "#a7a7b8",
                constant = "#9292ad",
                parameter = "#9d819f",
                visual = "#28282d",
                error = "#b84c62",
                warning = "#c99a5c",
                hint = "#6a7ec4",
                operator = "#7a8691",
                keyword = "#5a7a91",
                type = "#81989e",
                search = "#354051",
                plus = "#6b8a57",
                delta = "#c99a5c",
            }
        })
    end,
}
