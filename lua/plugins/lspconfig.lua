return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
      require("mason").setup({
        ui = { icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }}
      })

      require("mason-lspconfig").setup({
        -- all languages servers to be load
        ensure_installed = {
          "clangd",
          "lua_ls",
        }
      })

      require("mason-tool-installer").setup({
        ensure_installed = {
          "clang-format",  -- Formatador para C/C++
          "stylua", -- formatador para lua
        }
      })
    end
  },
  {

    "neovim/nvim-lspconfig",
      config = function()
        local lsp = require'lspconfig'

        require('mason-lspconfig').setup_handlers({
          -- default handler for installed servers
          function(server_name)
            lsp[server_name].setup({
              capabilities = capabilities,
            })
          end,
          ["lua_ls"] = function()
            -- configure lua server (with special settings)
            lsp["lua_ls"].setup({
              capabilities = capabilities,
              settings = {
                Lua = {
                  -- make the language server recognize "vim" global
                  diagnostics = { globals = { "vim" },},
                  completion = { callSnippet = "Replace",},
                },
              },
            })
          end

          -- insert here all languages servers
      })
    end
  }
}
