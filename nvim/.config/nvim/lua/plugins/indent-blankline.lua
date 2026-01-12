return {
  "lukas-reineke/indent-blankline.nvim",
  enabled=false,
  main = "ibl",
  opts = function()
    local hooks = require("ibl.hooks")

    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      -- vim.api.nvim_set_hl(0, "IblIndent", { fg = "#4b5263" })
      -- vim.api.nvim_set_hl(0, "IblScope", { fg = "#61afef", bold = true })
      vim.api.nvim_set_hl(0, "IblIndent", { fg = "#3B3B3B" })
      vim.api.nvim_set_hl(0, "IblScope", { fg = "#3B3B3B", bold = false })
    end)

    return {
      indent = {
        char = ".",
        highlight = "IblIndent"
      },
      scope = {
        enabled = true,
        show_start = false,
        show_end = false,
        char = ".",
        highlight = "IblScope"
      },
      whitespace = {
        remove_blankline_trail = true,
      },
      exclude = {
        filetypes = {
          "help",
          "terminal",
          "dashboard",
          "lazy",
          "mason",
          "NvimTree",
          "neo-tree",
          "TelescopePrompt",
        },
      },
    }
  end,
}
