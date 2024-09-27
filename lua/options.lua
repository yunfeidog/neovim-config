local set = vim.o
set.number = true
set.number = true
set.encoding = "UTF-8"
set.relativenumber = true --相对行号
set.cursorline = true     --高亮所在行



set.clipboard = "unnamed" -- 为了和系统剪切板一致
set.mouse = 'a'           --所有模式下都可以使用鼠标

-- tab
set.tabstop = 4      -- 这个选项设置 Tab 键在视觉上占用的空格数。
set.softtabstop = 4  --这个选项设置编辑时 Tab 键插入的空格数。
set.shiftwidth = 4   --这个选项设置自动缩进时使用的空格数。
set.expandtab = true --这个选项将 Tab 键替换为相等数量的空格

--search
set.incsearch = true  --输入关键字的时候就开始搜索
set.ignorecase = true -- 搜索时候忽略大小写
set.smartcase = true  --搜索时,如果包含大写字母,则区分大小写。


-- 在 copy 后高亮
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
    pattern = { "*" },
    callback = function()
        vim.highlight.on_yank({
            timeout = 300,
        })
    end,
})

vim.o.termguicolors = true
