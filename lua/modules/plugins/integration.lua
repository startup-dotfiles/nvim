return {
    -- integrated with lazydocker
    {
        "mgierada/lazydocker.nvim",
        dependencies = { "akinsho/toggleterm.nvim" },
        config = function()
            require("lazydocker").setup({
                border = "curved", -- valid options are "single" | "double" | "shadow" | "curved"
            })
        end,
        event = "BufRead",
        keys = {
            {
                "<leader>ld",
                function()
                    require("lazydocker").open()
                end,
                desc = "Open Lazydocker floating window",
            },
        },
    },

    -- integrated with yazi
    {
        "mikavilpas/yazi.nvim",
        event = "VeryLazy",
        keys = {
            -- 👇 in this section, choose your own keymappings!
            {
                "<leader>-",
                mode = { "n", "v" },
                "<cmd>Yazi<cr>",
                desc = "Open yazi at the current file",
            },
            {
                -- Open in the current working directory
                "<leader>cw",
                "<cmd>Yazi cwd<cr>",
                desc = "Open the file manager in nvim's working directory",
            },
            {
                "<c-up>",
                "<cmd>Yazi toggle<cr>",
                desc = "Resume the last yazi session",
            },
        },
        opts = {
            -- if you want to open yazi instead of netrw, see below for more info
            open_for_directories = false,
            keymaps = {
                show_help = "<f1>",
            },
        },
    },

    -- integrated with texpresso
    -- {
    --     "let-def/texpresso.vim",
    --     lazy = false,
    --     cmd = "TeXpresso",
    -- },

    -- integrated with Obsidian (a simple, markdown-based notes app)
    -- {
    --     "obsidian-nvim/obsidian.nvim",
    --     version = "*", -- recommended, use latest release instead of latest commit
    --     lazy = true,
    --     ft = "markdown",
    --     dependencies = {
    --         "nvim-lua/plenary.nvim", -- Required.
    --     },
    --     opts = {
    --         workspaces = {
    --             -- fixed workspace (hard-coded path)
    --             -- {
    --             --     name = "notes",
    --             --     path = "~/notes",
    --             -- },
    --             -- dynamic workspace (outside of your fixed vaults)
    --             {
    --                 name = "buf-parent",
    --                 path = function()
    --                     return assert(vim.fs.dirname(vim.api.nvim_buf_get_name(0)))
    --                 end,
    --             },
    --         },
    --         -- `true` indicates that you don't want obsidian.nvim to manage frontmatter.
    --         disable_frontmatter = true,
    --         -- disable UI to avoid conflicts with the UI of the render-markdown.nvim plugin.
    --         ui = { enable = false },
    --     },
    -- },

    -- integrated with quarto-cli
    -- {
    --     "quarto-dev/quarto-nvim",
    --     dependencies = {
    --         "jmbuhr/otter.nvim",
    --         "nvim-treesitter/nvim-treesitter",
    --     },
    -- },
}
