return {
  "williamboman/mason.nvim",
  dependencies = {
    -- to use lsp implementations
    "williamboman/mason-lspconfig.nvim",

    -- to make instalation of packages more easy
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function ()

    -- stup mason
    require("mason").setup({
      ui = { icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗"
      }}
    })

    -- install tools
    require("mason-tool-installer").setup({
      ensure_installed = {
        "clang-format",   -- formatter for c/c++
        "stylua"          -- formatter for lua
      }
    })
  end
}
