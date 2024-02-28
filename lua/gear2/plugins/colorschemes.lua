return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
    },
    {
        "rebelot/kanagawa.nvim",
    },
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
        end,
    },
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        opts = {
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "bg",
            },
        },
    },
    {
        "ellisonleao/gruvbox.nvim",
        config = true,
        opts = ...,
    },
}
