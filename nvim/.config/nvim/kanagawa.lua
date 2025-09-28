-- Blend two colors with a given alpha (0 to 1)
local function blend(fg, bg, alpha)
	local function hex_to_rgb(hex)
		hex = hex:gsub("#", "")
		return tonumber("0x" .. hex:sub(1, 2)), tonumber("0x" .. hex:sub(3, 4)), tonumber("0x" .. hex:sub(5, 6))
	end

	local function rgb_to_hex(r, g, b)
		return string.format("#%02x%02x%02x", r, g, b)
	end

	local r1, g1, b1 = hex_to_rgb(fg)
	local r2, g2, b2 = hex_to_rgb(bg)

	local r = math.floor((1 - alpha) * r2 + alpha * r1)
	local g = math.floor((1 - alpha) * g2 + alpha * g1)
	local b = math.floor((1 - alpha) * b2 + alpha * b1)

	return rgb_to_hex(r, g, b)
end

return {
	"rebelot/kanagawa.nvim",
	config = function()
		require("kanagawa").setup({
			compile = false,
			transparent = true,
			overrides = function(colors)
				return {
					["@markup.link.url.markdown_inline"] = { link = "Special" }, -- (url)
					["@markup.link.label.markdown_inline"] = { link = "WarningMsg" }, -- [label]
					["@markup.italic.markdown_inline"] = { link = "Exception" }, -- *italic*
					["@markup.raw.markdown_inline"] = { link = "String" }, -- `code`
					["@markup.list.markdown"] = { link = "Function" }, -- + list
					["@markup.quote.markdown"] = { link = "Error" }, -- > blockcode
					["@markup.list.checked.markdown"] = { link = "WarningMsg" }, -- [x] checked list item
				}
			end,
			colors = {
				theme = {
					wave = {
						ui = {
							bg_gutter = "",
							bg_visual = blend("#ffffff", "#000011", 0.35),
						},
						syn = {
							comment = "#999988",
						},
					},
				},
			},
		})
		-- vim.cmd("colorscheme kanagawa")
	end,
	build = function()
		vim.cmd("KanagawaCompile")
	end,
}
