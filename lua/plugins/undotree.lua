return {
	"mbbill/undotree",
	cmd = "UndotreeToggle",  -- lazy load on command
	keys = {
		{ "<leader>u", "<cmd>UndotreeToggle<CR>", desc = "Toggle Undotree" },
	},
	config = function()
		vim.g.undotree_WindowLayout = 2
		vim.g.undotree_SplitWidth = 40
	end,
}
