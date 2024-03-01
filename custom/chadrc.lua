---@type ChadrcConfig
local M = {}

local highlights = require "custom.highlights"

M.ui = {
  theme = 'tokyonight',
  hl_override = highlights.override,
  hl_add = highlights.add,
}

vim.api.nvim_create_user_command("DiagnosticToggle", function()
	local config = vim.diagnostic.config
	local vt = config().virtual_text
	config {
		virtual_text = not vt,
		underline = not vt,
		signs = not vt,
	}
end, { desc = "toggle diagnostic" })

vim.diagnostic.config({
  virtual_text = false,
  virtual_lines =  {only_current_line = true}
})

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

-- tab
vim.api.nvim_set_keymap('i', '<C-f>', '<Space><Space>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<C-f>', '>gv', {noremap = true, silent = true})

-- undo ctrl z
vim.api.nvim_set_keymap('i', '<C-z>', '<Esc>u', {noremap = true, silent = true})

-- redo ctrl y
vim.api.nvim_set_keymap('i', '<C-y>', '<C-r>', {noremap = true, silent = true})

-- copilot next
vim.api.nvim_set_keymap('i', '<C-/>', '<Plug>(copilot-next)', {noremap = true, silent = true})

-- vertical buffer split
vim.api.nvim_set_keymap('n', '<C-b>', ':vsplit<CR>', { noremap = true, silent = true })

-- Move line up or down in visual mode
vim.api.nvim_set_keymap('n', '<C-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':m .+1<CR>==', { noremap = true, silent = true })

return M
