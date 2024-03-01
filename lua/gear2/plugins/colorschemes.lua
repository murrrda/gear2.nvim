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
            vim.cmd("colorscheme rose-pine")
        end,
    },
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        opts = {
            -- transparent = true,
            styles = {
                -- sidebars = "transparent",
                floats = "bg",
            },
        },
    },
}
