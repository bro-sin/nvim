local opt=vim.opt

-- 行号
opt.relativenumber=true
opt.number=true

--缩进
opt.tabstop=4--设置tab缩进为4spaces
opt.shiftwidth=4--设置>>或<<操作以及自动缩进也为4spaces
opt.expandtab=true--设置tab替换为space
opt.autoindent=true--设置自动缩进

--防止包裹
opt.wrap=false

--光标行
opt.cursorline=true

--启用鼠标
opt.mouse:append("a")

--系统剪切板
opt.clipboard:append("unnamedplus")

--默认新窗口在右和下
opt.splitright=true
opt.splitbelow=true

