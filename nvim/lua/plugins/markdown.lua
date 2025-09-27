return {
    --Plugin para melhor implementação de markdown 
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
        ft = { 'markdown', 'quarto'},
    }

    --Markdown preview
    --  {
    --    "iamcco/markdown-preview.nvim",
    --  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    --ft = { "markdown" },
    -- build = function() vim.fn["mkdp#util#install"]() end,
    --},
}
