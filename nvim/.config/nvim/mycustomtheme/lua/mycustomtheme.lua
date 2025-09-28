vim.g.colors_name = "mycustomtheme"
vim.opt.termguicolors = true
local M = {}

local palette = {
	black_olive = "#1f271b",
	onyx = "#3C3C3B",
	licorice = "#171219",
}
-- #282C34 dark slate balck
function M.apply()
	local highlights = {
		Normal = { fg = "#FFFFF7", bg = "#2e3030", bold = false },
		LineNr = { fg = "gray" },
		CursorLineNr = { fg = "orange" },
		["@function"] = { fg = "#dddddd", bold = false },
		["@keyword"] = { fg = "#CBCBCB", bold = false },
		["@string"] = { fg = "#b6d5b6" },
		["@variable"] = { fg = "#f1c232" },
		["@variable.member"] = { fg = "red" },
		["@type"] = { fg = "fg", bold = true },
		["@type.builtin"] = { fg = "fg", bold = true },
		["@property"] = { fg = "fg" },
	}

	for groups, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, groups, opts)
	end
end

function ReloadTheme()
	vim.cmd("hi clear")
	package.loaded["mycustomtheme"] = nil
	vim.cmd("colorscheme mycustomtheme")
end

vim.keymap.set("n", "<leader>rt", ReloadTheme, { desc = "Reload Theme" })
vim.api.nvim_create_user_command("ReloadTheme", ReloadTheme, {})

-- vim.cmd("colorscheme mycustomtheme")

return M
