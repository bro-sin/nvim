return
{
    {    "williamboman/mason.nvim",
    config=function()
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
    end
},
{"williamboman/mason-lspconfig.nvim" ,
    config=function()
require("mason-lspconfig").setup()
end
},
{ "neovim/nvim-lspconfig",
config=function()
require("lspconfig").lua_ls.setup {}
require'lspconfig'.pyright.setup{}
require'lspconfig'.clangd.setup{}
require("lspconfig").cmake.setup{}
require("lspconfig").pylsp.setup{}
end
}

}
