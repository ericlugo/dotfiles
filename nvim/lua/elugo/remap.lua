-- Make sure to setup `mapleader` and `maplocalleader` BEFORE loading lazy.nvim so that mappings are correct
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- This is also a good place to setup other settings (vim.opt)

-- Keybindings are a programmer's best friend
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

