return {
  "williamboman/mason.nvim",
  dependencies = {
    -- to use lsp implementations
    "williamboman/mason-lspconfig.nvim",

    -- to auto formatter
    "stevearc/conform.nvim",

    -- to linter
    "mfussenegger/nvim-lint",
  },
  config = function()
    -- stup mason
    require("mason").setup({
      ui = {
        icons = {
          package_installed = "",
          package_pending = "",
          package_uninstalled = ""
        }
      }
    })

    -- setup conform
    require("conform").setup({
      format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    })
  end
}
