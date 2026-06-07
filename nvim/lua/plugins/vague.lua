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
            on_highlights = function(highlights, colors)
                local class = colors.keyword
                local method = colors.func

                highlights.String = { fg = colors.string, italic = true }
                highlights.Character = { fg = colors.string }
                highlights["@string"] = { fg = colors.string, italic = true }

                highlights.Type = { fg = colors.type }
                highlights["@type"] = { fg = colors.type }
                highlights["@type.builtin"] = { fg = colors.builtin, bold = true }
                highlights["@lsp.type.type"] = { fg = colors.type }
                highlights["@lsp.type.builtinType"] = { fg = colors.builtin, bold = true }
                highlights["@lsp.type.typeParameter"] = { fg = colors.type }

                highlights.Function = { fg = method }
                highlights["@function"] = { fg = method }
                highlights["@function.call"] = { fg = method }
                highlights["@function.builtin"] = { fg = method }
                highlights["@function.method"] = { fg = method }
                highlights["@function.method.call"] = { fg = method }
                highlights["@method"] = { fg = method }
                highlights["@method.call"] = { fg = method }
                highlights["@lsp.type.method"] = { fg = method }
                highlights["@lsp.typemod.method.defaultLibrary"] = { fg = method }

                highlights.Structure = { fg = class }
                highlights.Typedef = { fg = class }
                highlights["@type.definition"] = { fg = class }
                highlights["@lsp.type.class"] = { fg = class }
                highlights["@lsp.type.enum"] = { fg = class }
                highlights["@lsp.type.interface"] = { fg = class }
                highlights["@lsp.type.struct"] = { fg = class }
            end,

            -- Override colors
            colors = {
                bg = "#0a0a0b",
                inactiveBg = "#0f0f0f",
                fg = "#bdae93",
                floatBorder = "#4a3c31",
                line = "#1e1e1e",
                comment = "#4a3c31",
                builtin = "#5d8b86",
                func = "#b87586",
                string = "#4f7e7a",
                number = "#8c7a6b",
                property = "#a58678",
                constant = "#a76f68",
                parameter = "#b18b7b",
                visual = "#292523",
                error = "#c35e5a",
                warning = "#b1845f",
                hint = "#5d8b86",
                operator = "#80736a",
                keyword = "#c35e5a",
                type = "#5d8b86",
                search = "#2c3836",
                plus = "#5d8b86",
                delta = "#b1845f",
            }
        })
    end,
}
