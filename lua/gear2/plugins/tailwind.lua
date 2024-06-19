return {
    "luckasRanarison/tailwind-tools.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
        require("tailwind-tools").setup({
            document_color = {
                enabled = false, -- can be toggled by commands
                kind = "background", -- "inline" | "foreground" | "background"
                inline_symbol = "󰝤 ", -- only used in inline mode
                debounce = 200, -- in milliseconds, only applied in insert mode
            },
        })
    end,
}
