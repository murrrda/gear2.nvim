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
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- Load the colorscheme here
            -- vim.cmd.colorscheme("tokyonight-night")
            -- You can configure highlights by doing something like
            vim.cmd.hi("Comment gui=none")
        end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                integrations = {
                    telescope = {
                        enabled = true,
                        -- style = "nvchad",
                    },
                },
            })
            vim.cmd.colorscheme("catppuccin-mocha")
        end,
    },
}
