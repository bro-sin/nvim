vim.g.mapleader = " " --设置主键为空格

local keymap = vim.keymap

--插入模式退出键
keymap.set("i", "jk", "<ESC>")

--视觉模式
keymap.set("v", "//", "<ESC>")
--移动单行或者多行
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--正常模式
--窗口
keymap.set("n", "<leader>sv", "<C-w>v") --水平新增窗口
keymap.set("n", "<leader>ss", "<C-w>s") --水平新增窗口

-- 设置自动格式化
keymap.set("n", "ff", function()
    vim.lsp.buf.format()
end)

-- ---------- 插件 ---------- ---
-- 切换buffer
keymap.set("n", "<leader>l", ":bnext<CR>")
keymap.set("n", "<leader>h", ":bprevious<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")


-- 设置运行Python快捷键
vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function()
        vim.api.nvim_buf_set_keymap(
            0,
            "n",
            "<leader>r",
            ":w<CR>:split<CR>:te time python3 %<CR>i",
            { silent = true, noremap = true }
        )
    end
})
