-- keybindings
local opt={
    noremap=true,  --不会递归映射
    silent=true --不显示消息
}

vim.g.mapleader=" " --leader键为空格，每次使用先按空格

-- 参数说明：1.mode:模式,n表示normal 2.Ihs 要映射的键 3.rhs映射到的目标键 4.opts 选项
-- 也就是将第三个参数的快捷键变成第二个参数要变成的 <C-w> 表示Ctrl+w
--
vim.keymap.set("n", "<C-l>", "<C-w>l", opt)     -- ctrl+w+l --> 替换为ctrl+l ,移动到右侧的屏幕
vim.keymap.set("n", "<C-h>", "<C-w>h", opt)     -- ctrl+w+h --> 替换为ctrl+h ,移动到右侧的屏幕
vim.keymap.set("n", "<C-j>", "<C-w>j", opt)     -- ctrl+w+j --> 替换为ctrl+j ,移动到下侧的屏幕
vim.keymap.set("n", "<C-k>", "<C-w>k", opt)     -- ctrl+w+k --> 替换为ctrl+k ,移动到上侧的屏幕

vim.keymap.set("n","<Leader>v","<C-w>v",opt) --在当前窗口垂直分割新窗口
vim.keymap.set("n","<Leader>s","<C-w>s",opt) --在当前窗口水平分割新窗口
vim.keymap.set("n","<Leader>[","<C-w>o",opt) --跳转到上一个位置
vim.keymap.set("n","<Leader>]","<C-w>i",opt) --跳转到下一个位置

-- Resize with arrows
-- delta: 2 lines
--vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts) --缩小
--vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
--vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
--vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)




-- https://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
-- 如果有计数前缀,则移动物理行;如果没有计数前缀,则移动屏幕行。这可以提高在长行文本中的导航体验。
vim.keymap.set("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
vim.keymap.set("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })

