-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- Modes
keymap.set("n", "vb", "<C-v>")

-- Terminal
keymap.set("t", "<C-[>", "<C-\\><C-n>")
keymap.set("t", "<esc>", "<C-\\><C-n>")
keymap.set("n", "<C-t>", ":10split<return>:term<return>i")
keymap.set("i", "<C-t>", "<esc>:15split<return>:term<return>i")

-- Navigations
keymap.set("n", "<home>", "_")
keymap.set("n", "<end>", "g$")
keymap.set("n", "<kHome>", "_")
keymap.set("n", "<kEnd>", "g$")
keymap.set("n", "u", "_")
keymap.set("n", ";", "g$")
keymap.set("n", "<C-home>", ":go 1<return>")
keymap.set("n", "<C-end>", "Gg$")
keymap.set("n", "<C-kHome>", ":go 1<return>")
keymap.set("n", "<C-kEnd>", "Gg$")
keymap.set("n", "<C-u>", ":go 1<return>")
keymap.set("n", "<C-;>", "Gg$")
keymap.set("i", "<home>", "<esc>_i")
keymap.set("i", "<C-home>", "<esc>:go 1<return>i")
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

-- Save
keymap.set("i", "<C-s>", "<esc>:w<return>li")
keymap.set("n", "<C-s>", ":w<return>")

-- Undo/redo
keymap.set("n", "<C-z>", ":undo<return>")
keymap.set("n", "<C-y>", ":redo<return>")
keymap.set("i", "<C-z>", "<esc>:undo<return>i")
keymap.set("i", "<C-y>", "<esc>:redo<return>i")

-- Buffer controls
keymap.set("n", "<S-w>", ":bdelete<return>")
keymap.set("n", "<C-w>", ":bdelete<return>")

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
