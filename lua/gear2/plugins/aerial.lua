return {
    "stevearc/aerial.nvim",
    -- Optional dependencies
    opts = {},
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        vim.keymap.set("n", "<leader>af", "<cmd>AerialToggle!<CR>")
    end,
}
