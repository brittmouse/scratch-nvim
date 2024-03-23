-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Set Vim leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Vim options
local vo = vim.opt

vo.number = true
vo.relativenumber = true

vo.scrolloff = 8

vo.hlsearch = true

vo.tabstop = 4
vo.expandtab = true

vo.cursorline = true

vo.updatetime = 250
vo.timeoutlen = 300

vo.splitright = true

vo.splitbelow = true
vo.list = true

-- Vim Keymaps

local vks = vim.keymap.set
vks("n", "<leader>b[", "<cmd>bprevious", { desc = "Prev Buffer" })
vks("n", "<leader>b]", "<cmd>bnext", { desc = "Next Buffer" })
vks("n", "<leader>bk", "<cmd>bdelete", { desc = "Kill Buffer" })
vks("n", "<C-u>", "<C-u>zz")
vks("n", "<C-d>", "<C-d>zz")

require("lazy").setup("plugins")
