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
                icons_enabled = true,
                theme = custom_catpuccin,
                component_separators = { left = "", right = "" },
                section_separators = { left = "", right = "" },
                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                globalstatus = false,
                refresh = {
                    statusline = 200,
                    tabline = 200,
                    winbar = 200,
                },
            },
            sections = {
                lualine_a = { "filename" },
                lualine_b = { "branch", "diff", "diagnostics" },
                lualine_c = { "mode" },
                lualine_x = { "encoding", "fileformat", "filetype" },
                lualine_y = { "progress" },
                lualine_z = { "location" },
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { "filename" },
                lualine_x = { "location" },
                lualine_y = {},
                lualine_z = {},
            },
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = {},
        })
    end,
}
