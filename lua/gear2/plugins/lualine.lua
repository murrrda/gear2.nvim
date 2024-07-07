return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local lualine = require("lualine")
        local lazy_status = require("lazy.status") -- to configure lazy pending updates count

        local colors = {
            blue = "#5390d9",
            green = "#E6FF94",
            violet = "#C4A7E7",
            yellow = "#ECB972",
            red = "#FF4A4A",
            fg = "#c3ccdc",
            bg = "#112638",
            inactive_bg = "#2c3043",
        }

        local custom_catpuccin = require("lualine.themes.catppuccin")
        custom_catpuccin.normal.a.bg = colors.blue
        custom_catpuccin.normal.a.fg = colors.bg
        custom_catpuccin.normal.a.gui = "bold"
        custom_catpuccin.normal.b.bg = colors.bg
        custom_catpuccin.normal.b.fg = colors.fg
        custom_catpuccin.normal.c.bg = colors.bg
        custom_catpuccin.normal.c.fg = colors.fg

        -- configure lualine with modified theme
        lualine.setup({
            options = {
                theme = custom_catpuccin,
            },
            sections = {
                lualine_x = {
                    {
                        lazy_status.updates,
                        cond = lazy_status.has_updates,
                        color = { fg = "#ff9e64" },
                    },
                    { "encoding" },
                    { "fileformat" },
                    { "filetype" },
                },
            },
        })
    end,
}
