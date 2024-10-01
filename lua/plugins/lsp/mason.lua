return {
  "williamboman/mason.nvim",
  dependencies = {
    -- to use lsp implementations
    "williamboman/mason-lspconfig.nvim",

    -- to make instalation of packages more easy
    "WhoIsSethDaniel/mason-tool-installer.nvim",

    "stevearc/conform.nvim"
  },
  config = function ()

    -- stup mason
    require("mason").setup({
      ui = { icons = {
        package_installed = "",
        package_pending = "",
        package_uninstalled = ""
      }}
    })

    -- install tools
    require("mason-tool-installer").setup({
      ensure_installed = {
        "clang-format",   -- formatter for c/c++
        "stylua",          -- formatter for lua
        "cpplint",
--        "cppcheck",
--        "lualint",
--        "luacheck"
      }
    })

    require("conform").setup({
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_format = "fallback",
  },
})
  end
}
