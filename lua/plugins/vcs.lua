return {
        -- Git 配置插件
        {
            event = "VeryLazy",
            "tpope/vim-fugitive",
            cmd = "Git",
            config = function()
                -- convert
                vim.cmd.cnoreabbrev([[git Git]])
                vim.cmd.cnoreabbrev([[gp Git push]])
            end,
        },
        {
            event = "VeryLazy",
            "lewis6991/gitsigns.nvim",
            config = function()
                require("gitsigns").setup()
            end,
        },
        {
            "rhysd/conflict-marker.vim",
            event = "VeryLazy",
        },
}