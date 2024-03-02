vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- yank whole file
vim.keymap.set("n", "<leader>y", ":%y+<CR>", { noremap = true, silent = true })

-- Disable arrow keys (unmap them)
vim.keymap.set("", "<Up>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set("", "<Down>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set("", "<Left>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set("", "<Right>", "<Nop>", { noremap = true, silent = true })

-- err != nill keymap for Go dev
vim.keymap.set("n", "<leader>ir", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>jo<Esc>")

-- remove highlights
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
