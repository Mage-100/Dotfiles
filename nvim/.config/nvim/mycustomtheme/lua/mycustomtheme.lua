vim.g.colors_name = "mycustomtheme"
vim.opt.termguicolors = true
local M = {}

function M.apply()
	local highlights = {
		Normal = { fg = "#F2F2F2", bg = "#272E2E", bold = false },
		LineNr = { fg = "gray" },
		CursorLineNr = { fg = "#4BBEFF"},
		["@function"] = { fg = "#dddddd", bold = false },
		["@keyword"] = { fg = "#F2F2F2", bold = false },
		["@keyword.modifier"] = { fg = "#FEF1A0", bold=true },
		["@keyword.import"] = { fg = "fg" },
		["@type.builtin"] = { fg = "#FEF1A0" },
		["@string"] = { fg = "#67d66e" },
		["@variable"] = { fg = "#ffb83c", bold=false },
		["@property"] = { fg = "fg" },
		["@punctuation.bracket"] = { fg = "fg" },
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
