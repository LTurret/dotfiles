local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backward
-- keymap.set("n", "dw", "vb_d")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit<Return>", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<S-tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
keymap.set("n", "<A-Up>", ":NvimTmuxNavigateUp<Return>", opts)
keymap.set("n", "<A-Down>", ":NvimTmuxNavigateDown<Return>", opts)
keymap.set("n", "<A-Left>", ":NvimTmuxNavigateLeft<Return>", opts)
keymap.set("n", "<A-Right>", ":NvimTmuxNavigateRight<Return>", opts)
-- keymap.set("n", "<A-Up>", "<C-w>k", opts)
-- keymap.set("n", "<A-Down>", "<C-w>j", opts)
-- keymap.set("n", "<A-Left>", "<C-w>h", opts)
-- keymap.set("n", "<A-Right>", "<C-w>l", opts)

-- Resize window
keymap.set("n", "<C-Up>", "<C-w>+")
keymap.set("n", "<C-Down>", "<C-w>-")
keymap.set("n", "<C-Left>", "<C-w><")
keymap.set("n", "<C-Right>", "<C-w>>")
