-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Move lines up/down in Normal mode
vim.keymap.set("n", "<C-S-Up>", ":m .-2<CR>==", {
  desc = "Move line up",
})
vim.keymap.set("n", "<C-S-Down>", ":m .+1<CR>==", {
  desc = "Move line down",
})

-- Move selected lines up/down in Visual mode
vim.keymap.set("x", "<C-S-Up>", ":m '<-2<CR>gv=gv", {
  desc = "Move selection up",
})
vim.keymap.set("x", "<C-S-Down>", ":m '>+1<CR>gv=gv", {
  desc = "Move selection down",
})
