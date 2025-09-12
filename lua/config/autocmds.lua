-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- https://github.com/LazyVim/LazyVim/discussions/4021
-- Disable spellcheck for <FileType> files.
local set_spellchek = function(pattern, bool_val)
    vim.api.nvim_create_autocmd({ "FileType" }, {
        pattern = pattern,
        callback = function()
            vim.opt_local.spell = bool_val
        end,
    })
end

set_spellchek({ "markdown", "org", "txt" }, false)
set_spellchek({ "latex", "typst" }, false)

-- https://github.com/LazyVim/LazyVim/discussions/141
-- https://www.lazyvim.org/configuration/tips#disable-autoformat-for-some-buffers
-- Disable autoformat for <FileType> files
local set_autoformat = function(pattern, bool_val)
    vim.api.nvim_create_autocmd({ "FileType" }, {
        pattern = pattern,
        callback = function()
            vim.b.autoformat = bool_val
        end,
    })
end

set_autoformat({ "c", "cpp", "cuda" }, false)
set_autoformat({ "fish" }, false)
