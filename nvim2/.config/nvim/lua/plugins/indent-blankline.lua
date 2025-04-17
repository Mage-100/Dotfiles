return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  ---@module "ibl"
  ---@type ibl.config
  config = function()
    -- vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", { fg = "#FFD700", nocombine = true })
    -- vim.api.nvim_set_hl(0, "IndentBlanklineContextStart", { fg = "#FF4500", underline = true })

    require("ibl").setup({
      scope = {
        enabled = true, -- turn on scope-based indent guides
        show_start = true, -- underline the first indent of the scope
        -- highlight = { -- list of highlight groups to cycle through
        --   "IndentBlanklineContextChar",
        --   "IndentBlanklineContextStart",
        -- },
      },
      -- use_treesitter = true,
    })
  end,
}
