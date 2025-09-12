return {
    -- Emacs Org-mode was ported to Neovim
    -- Docs: https://nvim-orgmode.github.io/
    {
        "nvim-orgmode/orgmode",
        -- event = "VeryLazy",
        ft = { "org" },
        config = function()
            -- Setup orgmode
            require("orgmode").setup({
                org_agenda_files = "~/Documents/orgfiles/**/*",
                org_default_notes_file = "~/Documents/orgfiles/refile.org",
            })
        end,
    },
}
