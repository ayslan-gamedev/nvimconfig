return {
  "L3MON4D3/LuaSnip",
  dependencies = {
    "saadparwaiz1/cmp_luasnip" -- Fonte de snippets para nvim-cmp
  },
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load() -- Carregar snippets do VSCode
  end,
}
