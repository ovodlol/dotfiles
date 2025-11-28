return { 'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    defaults = {
      mappings = {
        i = {
          ['<C-d>'] = require('telescope.actions').delete_buffer,
          ['<C-x>'] = require('telescope.actions').delete_buffer, -- Adicione este se preferir
          ['<C-c>'] = require('telescope.actions').close,
        },
        n = {
          ['<C-d>'] = require('telescope.actions').delete_buffer,
          ['<C-x>'] = require('telescope.actions').delete_buffer, -- Adicione este se preferir
          ['<C-c>'] = require('telescope.actions').close,
        },
      },
    },
    pickers = {
      buffers = {
        sort_lastused = true,
      },
    },
  }
}
