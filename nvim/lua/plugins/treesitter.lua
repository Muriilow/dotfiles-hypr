-- Plugin que reenforça cor nas palavras, ajuda na legibilidade
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects", -- Opcional: para textobjects
        "windwp/nvim-ts-autotag",                     -- Opcional: autofechamento de tags HTML/XML
    },
    config = function() 
        local treeSitter = require("nvim-treesitter")

        treeSitter.setup({
            -- Lista de parsers para instalar automaticamente
            ensure_installed = {
                "c", "cpp", "lua", "python", "javascript", "typescript",
                "html", "css", "json", "bash", "markdown", "vim", "vimdoc"
            },

            -- Ativar highlight
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },

            -- Ativar indentação (experimental)
            indent = {
                enable = true,
            },

            -- Configurações extras (opcionais)
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "gnn",
                    node_incremental = "grn",
                    scope_incremental = "grc",
                    node_decremental = "grm",
                },
            },

            -- Textobjects (requer o plugin de dependencies)
            textobjects = {
                select = {
                    enable = true,
                    lookahead = true,
                    keymaps = {
                        ["af"] = "@function.outer",
                        ["if"] = "@function.inner",
                        ["ac"] = "@class.outer",
                        ["ic"] = "@class.inner",
                    },
                },
            },
        })
    end,
}
