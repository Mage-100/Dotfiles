-- ~/.config/nvim/colors/mycustomtheme.lua
-- 1) tell Neovim the scheme’s name:
vim.g.colors_name = "customtheme"

-- 2) define your palette:
local palette = {
	red = "#ff0000",
	blue = "#0000ff",
	bg = "#1e1e2e",
	fg = "#cdd6f4",
}

-- 3) set up every highlight group you care about:
local highlights = {
	Normal = { fg = palette.fg, bg = palette.bg },
	LineNr = { fg = palette.red },
	["@variable"] = { fg = palette.blue },
	["@function"] = { fg = palette.red, bold = true },
	-- …add any other TS groups or core groups here…
}

for group, opts in pairs(highlights) do
	vim.api.nvim_set_hl(0, group, opts)
end
