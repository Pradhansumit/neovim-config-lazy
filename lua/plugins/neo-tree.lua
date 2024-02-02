return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			default_component_configs = {
				enable_git_status = true,
				git_status = {
					symbols = {
						-- Change type
						added = "G:A", -- or "✚", but this is redundant info if you use git_status_colors on the name
						modified = "G:M", -- or "", but this is redundant info if you use git_status_colors on the name
						deleted = "G:D", -- this can only be used in the git_status source
						renamed = "G:R", -- this can only be used in the git_status source
						-- Status type
						untracked = "G:U",
						ignored = "G:I",
						unstaged = "G:UN",
						staged = "G:S",
						conflict = "G:C",
					},
				},
			},
		})
		--keybindings
		vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left toggle<CR>", {})
		vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
	end,
}
