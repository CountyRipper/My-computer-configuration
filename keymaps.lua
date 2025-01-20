-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymaps = vim.keymap
keymaps.set("i", "jk", "<Esc>")
keymaps.set("i", "<C-w>", "<C-o>w", { noremap = true, silent = true })
-- 移动到单词开头并在单词前进入插入模式
keymaps.set("i", "<C-b>", "<Esc>bi", { noremap = true, silent = true })

-- 移动到单词末尾并使用 append 进入插入模式
keymaps.set("i", "<C-f>", "<Esc>ea", { noremap = true, silent = true }) --
---
---方向键
---
keymaps.set("i", "<C-l>", "<Right>", { noremap = true, silent = true })
keymaps.set("i", "<C-h>", "<Left>", { noremap = true, silent = true })
keymaps.set("i", "<C-j>", "<Down>", { noremap = true, silent = true })
keymaps.set("i", "<C-k>", "<Up>", { noremap = true, silent = true })
keymaps.set("i", "<C-a>", "<C-o>^", { noremap = true, silent = true }) -- 移动到行首
keymaps.set("i", "<C-e>", "<C-o>$", { noremap = true, silent = true }) -- 移动到行尾
keymaps.set("i", "<C-z>", "<C-o>u", { noremap = true, silent = true }) --撤销上次操作
