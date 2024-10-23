require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!

-- Use 4 spaces instead of 2 or tabs
vim.o.smartindent = true
vim.o.tabstop = 1 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 2 -- Number of spaces inserted when indenting
-- I think the following config is what works for properly editing the nvim config written in lua, uncomment when needed:
-- vim.o.smartindent = true
-- vim.o.tabstop = 2 -- A TAB character looks like 4 spaces
-- vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
-- vim.o.softtabstop = 2 -- Number of spaces inserted instead of a TAB character
-- vim.o.shiftwidth = 2 -- Number of spaces inserted when indenting

-- Conceal level
vim.opt.conceallevel = 1

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Relative numbers
vim.o.relativenumber = true


-- Stuff suggested for Avante
vim.o.laststatus = 3
