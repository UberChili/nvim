require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
-- map("n", "<leader>j", function() require("nvterm.terminal").toggle "float" end, {desc = "Toggle horizontal term"})
-- -- map("n", "<leader>j", )
-- map("n", "<leader>j", function() require("nvchad.term").toggle({pos = "float", id = 'abc'}) end, {desc = "Toggle horizontal term"})
map({"n", "t"}, "<leader>j", function() require("nvchad.term").toggle({pos = "sp", id = 'Term'}) end, {desc = "Toggle horizontal, small term"})
