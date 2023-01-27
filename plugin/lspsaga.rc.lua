local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.setup({
  symbol_in_winbar = {
    enable = false
  },
  ui = {
    winblend = 10,
    border = 'rounded',
    title = true,
    colors = {
      normal_bg = '#1a1b26'
    }
  }
})

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-n>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'gl', '<Cmd>Lspsaga show_diagnostic<CR>', opts)

vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)

local codeaction = require("lspsaga.codeaction")
vim.keymap.set("n", "ga", function() codeaction:code_action() end, { silent = true })
