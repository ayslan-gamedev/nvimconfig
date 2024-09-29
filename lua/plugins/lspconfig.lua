return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })

      require("mason-tool-installer").setup({
        ensure_installed = {
          "clang-format",  -- Formatter for C/C++
          "stylua",        -- Formatter for Lua
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason-lspconfig.nvim"
    },
    config = function()
      local lsp = require'lspconfig'
      local capabilities = vim.lsp.protocol.make_client_capabilities()

      require('mason-lspconfig').setup_handlers({
        -- Default handler for installed servers
        function(server_name)
          lsp[server_name].setup({
            capabilities = capabilities,
          })
        end,
        ["lua_ls"] = function()
          lsp["lua_ls"].setup({
            capabilities = capabilities,
            settings = {
              Lua = {
                diagnostics = { globals = { "vim" }, },
                completion = { callSnippet = "Replace", },
              },
            },
          })
        end,
        ["clangd"] = function()
          lsp["clangd"].setup({
            capabilities = capabilities,
            settings = {
              clangd = {
                cmd = { "clangd", "--background-index" },
              },
            },
          })
        end,
        -- Add more language servers here if needed
      })
    end
  }
}

