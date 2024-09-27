return {
        -- 文件搜索
        {
            cmd = "Telescope",                                                      -- 懒加载，直到输入Telescope 的时候才会加载
            keys = {
                { "<leader>p",  ":Telescope find_files<CR>", desc = "find files" }, --CR就是回车
                { "<leader>P",  ":Telescope live_grep<CR>",  desc = "grep file" },
                { "<leader>rs", ":Telescope resume<CR>",     desc = "resume" },
                { "<leader>q",  ":Telescope oldfiles<CR>",   desc = "oldfiles" },
            },
            "nvim-telescope/telescope.nvim",
            tag = "0.1.4",
            -- or                              , branch = '0.1.1',
            dependencies = { "nvim-lua/plenary.nvim" },
        },
    
}