return {
    -- Themes
    { -- tokyonight (Default theme)
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            style = "moon", -- storm, moon(default), night, day
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
        },
    },

    -- { -- catppuccin
    --     "catppuccin/nvim",
    --     name = "catppuccin",
    --     priority = 1000,
    --     opts = {
    --         flavour = "auto", -- auto, latte, frappe, macchiato, mocha
    --         transparent_background = true,
    --         background = { -- :h background
    --             light = "latte",
    --             dark = "mocha",
    --         },
    --     },
    --     -- enabled = false,
    -- },

    -- { -- gruvbox
    --     "ellisonleao/gruvbox.nvim",
    --     priority = 1000,
    --     config = true,
    --     opts = {
    --         -- transparent_mode = true,
    --         contrast = "hard", -- can be "hard", "soft" or empty string
    --         overrides = { -- see https://github.com/ellisonleao/gruvbox.nvim/issues/406
    --             Pmenu = { link = "Normal" },
    --         },
    --     },
    -- },

    {
        "https://gitlab.com/motaz-shokry/gruvbox.nvim",
        name = "gruvbox",
        priority = 1000,
        opts = {
            styles = {
                bold = false,
                italic = false,
                transparency = true,
            },
        },
    },

    -- {
    --     "uloco/bluloco.nvim",
    --     lazy = false,
    --     priority = 1000,
    --     dependencies = { "rktjmp/lush.nvim" },
    -- },

    -- { "nyoom-engineering/oxocarbon.nvim" }, -- oxocarbon

    -- Configure LazyVim theme
    {
        "LazyVim/LazyVim",
        opts = {
            -- colorscheme = "tokyonight",
            colorscheme = "gruvbox-hard",
        },
    },
}
