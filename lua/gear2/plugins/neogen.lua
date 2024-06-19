return {
    "danymat/neogen",
    event = {
        "InsertEnter",
    },
    config = function()
        require("neogen").setup({
            vim.api.nvim_set_keymap(
                "n",
                "<Leader>gd",
                ":lua require('neogen').generate()<CR>",
                { noremap = true, silent = true }
            ),
            snippet_engine = "luasnip",
        })
    end,
}
