return {

  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd", "ts_ls", "pylsp" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      print(capabilities)

      local lspconfig = require("lspconfig")
      
      lspconfig.eslint.setup({


      })

      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.pylsp.setup({
        capabilities = capabilities,
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.clangd.setup({})
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
