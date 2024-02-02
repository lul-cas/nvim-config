---@type ChadrcConfig
local M = {}

M.ui = { theme = 'catppuccin' }
vim.opt.wrap = false

-- close
vim.api.nvim_set_keymap('n', '<C-q>', ':q<CR>', { noremap = true, silent = true })

-- close with save
vim.api.nvim_set_keymap('n', '<C-s>', ':wq<CR>', { noremap = true, silent = true })

-- open terminal on new buffer
vim.api.nvim_set_keymap('n', '<C-t>', ':terminal<CR>', { noremap = true, silent = true })

-- close current buffer
vim.api.nvim_set_keymap('n', '<C-x>', ':bd<CR>', { noremap = true, silent = true })

-- shift tab
vim.api.nvim_set_keymap('v', '<S-Tab>', '<gv', { noremap = true, silent = true })

return M
