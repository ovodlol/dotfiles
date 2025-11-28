local key = vim.keymap.set
local modes = {'n','i','v'}
vim.g.mapleader=','

-- teclas de atalhos
key( modes, '<leader>sp', '<CMD>sp<CR> ',        { } )
key( modes, '<C-z>', '<CMD>undo<CR>',  { } )

key( modes, '<C-a>', '<CMD>w<CR>',     { } )

  -- keymaps para plugins
  key( modes,'<leader>n', '<CMD>Neotree filesystem reveal left<CR>', { } )

  key( modes, '<leader>ff', '<CMD>Telescope find_files<CR>', { } )
  key( modes, '<leader>fb', '<CMD>Telescope buffers<CR>', { } )

  key( modes, '<leader>tt','<CMD>ToggleTerm size=7 direction=horizontal<CR>', { } )
  

