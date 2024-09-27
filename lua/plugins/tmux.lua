return {
        --tmux
        {
            "numToStr/Navigator.nvim",
            config = function()
                require("Navigator").setup()
            end,
        },
}