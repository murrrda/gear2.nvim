return {
    "backdround/global-note.nvim",
    event = "VeryLazy",
    config = function()
        local global_note = require("global-note")
        global_note.setup()

        vim.keymap.set("n", "<leader>gn", global_note.toggle_note, {
            desc = "Toggle global note",
        })
    end,
}
