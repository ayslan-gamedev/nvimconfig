  -- LSP CONFIG
return {
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

