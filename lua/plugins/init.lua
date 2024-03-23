local plugins = {
	-- Some basic plugins
	{
		-- Colorscheme
		{
			"catppuccin/nvim",
			name = "catppuccin",
			priority = 1000,
			config = function()
				vim.cmd([[colorscheme catppuccin-macchiato]])
			end,
		},
		{ "tpope/vim-sleuth" },
		{ "nvim-lua/plenary.nvim" },
		{ "nvim-tree/nvim-web-devicons", lazy = true },
		{
			"folke/which-key.nvim",
			event = "VimEnter",
			init = function()
				vim.o.timeout = true
				vim.o.timeoutlen = 300
				require("which-key").setup()
				require("which-key").register({
					["<leader>b"] = { name = "Buffer", _ = "which_key_ignore" },
				})
			end,
		},
	},
	-- Markdown plugins
	{
		{ "preservim/vim-pencil" },
		{ "folke/twilight.nvim" },
		{ "folke/zen-mode.nvim" },
	},
	-- UI plugins
	{
		{
			"rcarriga/nvim-notify",
			config = function()
				require("notify").setup({
					render = "compact",
				})
			end,
			keys = {
				{
					"<leader>wn",
					function()
						require("notify").dismiss({ silent = true, pending = true })
					end,
					desc = "Dismiss [W]orkspace [N]otes",
				},
			},
		},
		{
			"folke/noice.nvim",
			event = "VeryLazy",
			opts = {
				lsp = {
					override = {
						["vim.lsp.util.convert_input_to_markdown_lines"] = true,
						["vim.lsp.util.stylize_markdown"] = true,
						["cmp.entry.get_documentation"] = true,
					},
				},
				presets = {
					bottom_search = true,
					command_palette = true,
					long_message_to_split = true,
					inc_rename = true,
					lsp_doc_border = true,
				},
			},
			dependencies = {
				"MunifTanjim/nui.nvim",
			},
		},
	},
}
return plugins
