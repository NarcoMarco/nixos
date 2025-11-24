require("config.lazy")

if os.getenv('NIX_NEOVIM') == '1' then
  local servers = require('plugins.lsp.servers').servers(on_attach, capabilities)
  for _, v in pairs(servers) do
    v()
  end
else
  local mason_config = require('mason-lspconfig')
  mason_config.setup()

-- Enable relative line numbers  
vim.opt.relativenumber = true  
vim.opt.number = true

-- Use system clipboard  
vim.opt.clipboard = "unnamedplus"

-- Key mappings for tab navigation  
vim.api.nvim_set_keymap("n", "<F7>", ":tabprevious<CR>", { noremap = true, silent = true })  
vim.api.nvim_set_keymap("n", "<F8>", ":tabnext<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<F10>", ":tabnew | terminal<CR>", { noremap = true, silent = true })

vim.api.nvim_create_autocmd("BufEnter", { pattern = "*", command = "TSBufEnable highlight" })

-- Key mapping for opening terminal in a new tab and entering insert mode  
vim.api.nvim_set_keymap("n", "<F10>", ":tabnew | terminal<CR>", { noremap = true, silent = true }) 

-- Key mapping for toggling NERDTree  
vim.api.nvim_set_keymap("n", "<F6>", ":NERDTreeToggle<CR>", { noremap = true, silent = true })

-- Automatically close NERDTree when opening a file
vim.g.NERDTreeQuitOnOpen = 1

-- Fix square brackets around NERDTree icons
vim.cmd('syntax enable')
vim.opt.conceallevel = 3
vim.cmd('call webdevicons#refresh()')

-- Set Tab Width to 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

