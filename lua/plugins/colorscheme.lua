return {
    {
        "RRethy/nvim-base16",
        lazy = true,
        config = function()
            -- 插件加载后配置颜色主题
            vim.cmd.colorscheme("base16-materia")
        end,
        -- 这里使用 'VeryLazy' 事件来加载主题（你可以根据需求选择合适的事件）
        event = "VeryLazy",
    },
}