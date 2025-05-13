return {
	{
		"echasnovski/mini.comment",
		enabled = false,
	},
	{
		"numToStr/Comment.nvim",
		opts = { padding = true },
		config = function(_, opts)
			require("Comment").setup(opts)
		end,
	},
}
