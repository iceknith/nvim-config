-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<A-o>", "o<Esc>", { desc = "Insert new line after" })
vim.keymap.set("n", "<A-O>", "O<Esc>", { desc = "Insert new line before" })
