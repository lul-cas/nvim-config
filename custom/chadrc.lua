---@type ChadrcConfig
local M = {}

M.ui = { theme = 'catppuccin' }
vim.opt.wrap = false

vim.api.nvim_set_keymap('n', '<C-q>', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-s>', ':wq<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-t>', ':terminal<CR>', { noremap = true, silent = true })
return M
