require("core.options")
require("core.keymaps")
require("config.lazy")

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
vim.api.nvim_set_hl(0, "@variable.builtin.vim", { link = "Normal" })