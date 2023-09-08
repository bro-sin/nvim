return{
"nvim-tree/nvim-tree.lua",  -- 文档树
config=function ()
    -- 默认不开启nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()
end
}
