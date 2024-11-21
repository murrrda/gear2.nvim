return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                styles = {
                    bold = true,
                    italic = true,
                    transparency = true,
                },
            })
            -- Load the colorscheme here
            -- vim.cmd.colorscheme("rose-pine-moon")
        end,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        -- priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- Load the colorscheme here
            -- You can configure highlights by doing something like
            -- vim.cmd.hi("Comment gui=none")
            -- vim.cmd.colorscheme("tokyonight")
        end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        -- priority = 1000,
        config = function()
            require("catppuccin").setup({
                integrations = {
                    telescope = {
                        enabled = true,
                        -- style = "nvchad",
                    },
                },
                -- transparent_background = true, -- disables setting the background color.
                styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
                    comments = { "italic" }, -- Change the style of comments
                    keywords = { "bold" },
                },
            })
            vim.cmd.colorscheme("catppuccin-mocha")
        end,
    },
}
