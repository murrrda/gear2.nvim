return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local nvimtree = require("nvim-tree")

        -- recommended settings from nvim-tree documentation
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- change color for arrows in tree to light green
        vim.cmd([[ highlight NvimTreeFolderArrowClosed guifg=#9CCFD8 ]])
        vim.cmd([[ highlight NvimTreeFolderArrowOpen guifg=#9CCFD8 ]])

        -- configure nvim-tree
        nvimtree.setup({
            view = {
                width = 35,
                relativenumber = true,
            },
            -- change folder arrow icons
            renderer = {
                indent_markers = {
                    enable = true,
                },
                icons = {
                    glyphs = {
                        folder = {
                            arrow_closed = "", -- arrow when folder is closed
                            arrow_open = "", -- arrow when folder is open
                        },
                    },
                },
            },
            -- disable window_picker for explorer to work well with window splits
            actions = {
                open_file = {
                    window_picker = {
                        enable = false,
                    },
                },
            },
            git = {
                ignore = false,
            },

            on_attach = function(bufnr)
                local api = require("nvim-tree.api")

                -- Default mappings
                api.config.mappings.default_on_attach(bufnr)

                -- Custom mappings
                local function opts(desc)
                    return { desc = "nvim-tree: " .. desc, buffer = bufnr, silent = true, nowait = true }
                end
                vim.keymap.set("n", "<C-t>", api.tree.change_root_to_parent, opts("Up"))
                vim.keymap.set("n", "-", api.tree.close, opts("Close"))
            end,
        })

        vim.keymap.set("n", "-", "<cmd>NvimTreeToggle<CR>", { noremap = true })
    end,
}
