return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 30,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = false,
			},
			git = {
				ignore = false, -- Show files that are ignored by .gitignore
			},
		})
		vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
	end,
}
