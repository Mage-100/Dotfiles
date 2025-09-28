vim.opt.termguicolors = true
-- vim.cmd("syntax on")

vim.o.background = "dark"

require("nvim-treesitter.configs").setup({
	highlight = { enable = true },
})

local set_hl = vim.api.nvim_set_hl
set_hl(0, "TSFunctionCall", { fg = "#ff0000", bold = true })
-- #C7B0E2
-- Then add your “minimal UI” toggles:

-- hide numbers, signcolumn, statusline, etc.
-- vim.opt.number = false
-- vim.opt.relativenumber = false
-- vim.opt.signcolumn = "no"
-- vim.opt.cursorline = false
-- vim.opt.showmode = false
-- vim.opt.showcmd = false
-- vim.opt.ruler = false
-- vim.opt.laststatus = 0
