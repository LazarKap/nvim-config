-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- :wq closes current buffer instead of quitting nvim
vim.cmd("cabbrev wq bd")

-- Move between buffers with Tab / Shift+Tab
vim.keymap.set("n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })

-- Fast jk to escape
vim.keymap.set("i", "jk", "<Esc>", { desc = "Escape insert mode" })

-- Copy file paths to clipboard
vim.keymap.set("n", "<leader>cp", ':let @+ = expand("%:.")<cr>', { desc = "Copy relative path from cwd" })
vim.keymap.set("n", "<leader>cP", ':let @+ = expand("%:p")<cr>', { desc = "Copy absolute path" })
