return {
    -- A hackable Markdown, HTML, LaTeX, Typst & YAML previewer
    {
        "OXY2DEV/markview.nvim",
        lazy = false, -- see https://github.com/OXY2DEV/markview.nvim#-lazynvim
        priority = 49, -- for `nvim-treesitter` users.
        -- For blink.cmp's completion
        dependencies = {
            "saghen/blink.cmp",
        },
        enabled = false,
    },

    -- A modern Vim and neovim filetype plugin for LaTeX files
    -- {
    --     "lervag/vimtex",
    --     lazy = false, -- Don't need to lazy load VimTeX
    --     init = function()
    --         vim.g.vimtex_view_method = "general" -- :h g:vimtex_view_method
    --     end,
    -- },
}
