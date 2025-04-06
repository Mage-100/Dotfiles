return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
      ensure_installed = {"lua", "c", "cpp", "javascript", "python"},
      highlight = { 
        enable = true ,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
      
      --incremental_selection = {
        --enable = true,
        --keymaps = {
          --init_selection = "<CR>",
          --node_incremental = "<CR>",
          --scope_incremental = "<C-S>",
          --node_decremental = "<C-T>",
        --},
      --}
      
    })
  end 
} 
