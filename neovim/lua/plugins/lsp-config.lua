return {
 {
  "williamboman/mason.nvim",
  lazy = false,
  config = function()
   require("mason").setup()
  end,
 },
 {
  "williamboman/mason-lspconfig.nvim",
  lazy = false,
  opts = {
   auto_install = true,
  },
 },
 {

  "neovim/nvim-lspconfig",
  lazy = false,

  config = function()
   local capabilities = require("cmp_nvim_lsp").default_capabilities()
   local lspconfig = require("lspconfig")

  lspconfig.eslint.setup({
    capabilities = capabilities,
  })

  lspconfig.html.setup({
    capabilities = capabilities,
  })
  lspconfig.lua_ls.setup({
    capabilities = capabilities,
  })

  lspconfig.pyright.setup({
    capabilities = capabilities,
   })

  lspconfig.svelte.setup({
    capabilities = capabilities
  })

  lspconfig.gopls.setup({
    capabilities = capabilities,
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
        gofumpt = true,
      },
    },
  })

   vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
   vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, { desc = "Definition" })
   vim.keymap.set("n", "<leader>cr", vim.lsp.buf.references, { desc = "References" })
   vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
  end,
 },
}
