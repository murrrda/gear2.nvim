return {
    "preservim/tagbar",
    config = function()
        vim.keymap.set("n", "<leader>af", ":TagbarToggle<CR>", { noremap = true, silent = true })
    end,
}
