return {
	name = "mycustomtheme",
	dir = vim.fn.stdpath("config") .. "/mycustomtheme",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme mycustomtheme")
	end,
}
