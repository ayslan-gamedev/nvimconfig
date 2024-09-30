return {
  -- MASON
  {
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
  },

  -- LSP CONFIG
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- to mason implementations
      "williamboman/mason-lspconfig.nvim"
    },
    config = function ()
      local lspconfig = require('lspconfig')

      local capabilities = vim.lsp.protocol.make_client_capabilities()

      -- Function to handle LSP setup for specific servers
      local function setup_server(server_name)
        lspconfig[server_name].setup({
          capabilities = capabilities
        })
      end

      -- initialize lsp configuration with mason
      require('mason-lspconfig').setup_handlers({
        -- Default handler for all installed servers
        function (server_name)
          setup_server(server_name)
        end,

        -- Specific servers with the same setup function
        ["lua_ls"] = function ()
          setup_server("lua_ls")
        end,

        ["clangd"] = function ()
          setup_server("clangd")
        end
      })
    end
  }
}
