return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            open_mapping = [[<c-`>]],
            direction = "horizontal",
            persist_size = false,
            auto_scroll = true, -- automatically scroll to the bottom on terminal output
            close_on_exit = true, -- close the terminal window when the process exits
            float_opts = {
                border = "rounded",
            },
        })
    end,
}
