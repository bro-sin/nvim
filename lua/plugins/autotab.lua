return{
     -- 自动补全
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  {"L3MON4D3/LuaSnip", -- snippets引擎，不装这个自动补全会出问题
config=function ()
    require("plugins.lsp.cmp")
end
  },
  "saadparwaiz1/cmp_luasnip",
  "rafamadriz/friendly-snippets",
  "hrsh7th/cmp-path", -- 文件路径
}
