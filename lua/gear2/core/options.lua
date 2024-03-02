local vo = vim.opt

-- relative numbers
vo.number = true
vo.relativenumber = true

-- cursor block in insert mode
vo.guicursor = "a:Block"

-- set tab = 4 spaces
vo.softtabstop = 4
vo.shiftwidth = 4
vo.expandtab = true
vo.autoindent = true

vo.backspace = "indent,eol,start"

vo.ignorecase = true -- ignore case when searching

-- vo.cursorline = true -- enable cursor line

-- Enable break indent
vo.breakindent = true
--
-- use system clipboard as default register
vo.clipboard:append("unnamedplus")

-- disable swap
vo.swapfile = false

-- Set completeopt to have a better completion experience
vo.completeopt = "menuone,noselect"

-- number of screen lines to keep above and below the cursor.
vo.scrolloff = 8

-- better colors
vo.termguicolors = true

-- force all horizontal splits to go below current window
vim.opt.splitbelow = true
-- force all vertical splits to go to the right of current window
vim.opt.splitright = true

-- highlight on yank
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = "*",
})
