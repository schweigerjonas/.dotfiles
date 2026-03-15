-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Disable continuations
keymap.set("n", "<leader>o", "o<Esc>_Da", opts)
keymap.set("n", "<leader>O", "O<Esc>_Da", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- LSP renaming
keymap.set("n", "<leader>rn", ":IncRename ", opts)
