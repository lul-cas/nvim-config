---@type ChadrcConfig
local M = {}

M.ui = { theme = 'catppuccin' }
M.plugins = "custom.plugins"
M.mappings =  require "custom.mappings"
vim.opt.wrap = false

-- close
vim.api.nvim_set_keymap('n', '<C-q>', ':q!<CR>', { noremap = true, silent = true })

-- close with save
vim.api.nvim_set_keymap('n', '<F2>', ':wq<CR>', { noremap = true, silent = true })

-- open terminal on new buffer
vim.api.nvim_set_keymap('n', '<C-t>', ':terminal<CR>', { noremap = true, silent = true })

-- close current buffer
vim.api.nvim_set_keymap('n', '<C-x>', ':bd<CR>', { noremap = true, silent = true })


-- shift tab
vim.api.nvim_set_keymap('i', '<S-Tab>', '<-C-d>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-Tab>', '<', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', '<<', { noremap = true, silent = true })
--

return M
