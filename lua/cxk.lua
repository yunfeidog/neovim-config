require("lazy").setup({
    -- Vscode-like pictograms
    {
        "onsails/lspkind.nvim",
        event = { "VimEnter" },
    },


    -- Code snippet engine
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
    },
    -- LSP manager
    {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig"
    },

})

-- =============================================================persistence的配置=============================================================


local args = vim.api.nvim_get_vvar("argv")
-- embed
if #args > 2 then
else
    require("persistence").load({ last = true })
end
-- persistence on start
vim.api.nvim_set_hl(0, "@lsp.type.variable.lua", { link = "Normal" })
vim.api.nvim_set_hl(0, "Identifier", { link = "Normal" })
vim.api.nvim_set_hl(0, "TSVariable", { link = "Normal" })


-- =============================================================persistence的配置=============================================================
