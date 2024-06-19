local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set({ "i" }, "jj", "<ESC>", {})

-- Save on CTRL + W
keymap.set({ "n", "i" }, "<C-s>", "<CMD>write<CR>", {})
-- Force quit
keymap.set({ "n", "i" }, "<C-q>", "<CMD>quit<CR>", {})

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")
