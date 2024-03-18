-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Modes
keymap.set("n", "vb", "<C-v>")

-- Increments/Decrements
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Terminal
keymap.set("t", "<C-[>", "<C-\\><C-n>")
keymap.set("t", "<esc>", "<C-\\><C-n>")
keymap.set("n", "<C-t>", ":10split<return>:term<return>i", opts)
keymap.set("i", "<C-t>", "<esc>:15split<return>:term<return>i", opts)

keymap.set("i", "<C-z>", "<esc>:undo<return>i", opts)
keymap.set("n", "<C-z>", ":undo<return>", opts)

-- Navigations
keymap.set("n", "<home>", "_")
keymap.set("n", "<end>", "g$")
keymap.set("n", "<kHome>", "_")
keymap.set("n", "<kEnd>", "g$")
keymap.set("n", "u", "_")
keymap.set("n", ";", "g$")
keymap.set("n", "<C-home>", ":go 1<return>", opts)
keymap.set("n", "<C-end>", "Gg$")
keymap.set("n", "<C-kHome>", ":go 1<return>", opts)
keymap.set("n", "<C-kEnd>", "Gg$")
keymap.set("n", "<C-u>", ":go 1<return>", opts)
keymap.set("n", "<C-;>", "Gg$")
keymap.set("i", "<home>", "<esc>_i")
keymap.set("i", "<C-home>", "<esc>:go 1<return>i", opts)
keymap.set("i", "<end>", "<esc>g$i")
keymap.set("i", "<C-end>", "<esc>Gg$i")

-- Move lines
keymap.set("n", "<M-up>", "ddkP")
keymap.set("n", "<M-down>", "ddp")
keymap.set("v", "<M-up>", "xkP`[V`]")
keymap.set("v", "<M-down>", "xk`[V`]`")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")
keymap.set("i", "<C-a>", "<esc>gg<S-v>G")

-- Delete a word
keymap.set("i", "<C-bs>", "<C-w>")
keymap.set("i", "<C-del>", "<esc>dei")

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- Save
keymap.set("i", "<C-s>", "<esc>:w<return>li", opts)
keymap.set("n", "<C-s>", ":w<return>", opts)

-- Undo/redo
keymap.set("n", "<C-z>", ":undo<return>", opts)
keymap.set("n", "<C-y>", ":redo<return>", opts)
keymap.set("i", "<C-z>", "<esc>:undo<return>i", opts)
keymap.set("i", "<C-y>", "<esc>:redo<return>i", opts)

-- Buffer controls
keymap.set("n", "<S-w>", ":bdelete<return>", opts)
keymap.set("n", "<C-w>", ":bdelete<return>", opts)

-- Indents
keymap.set("n", "<C-.>", ">>")
keymap.set("n", "<C-,>", "<<")
keymap.set("i", "<C-.>", "<esc>>>i")
keymap.set("i", "<C-,>", "<esc><<i")
keymap.set("v", "<C-.>", ">")
keymap.set("v", "<C-,>", "<")

-- Newline at EOL
keymap.set("n", "<C-Enter>", "o<esc>")
keymap.set("i", "<C-Enter>", "<esc>o")
