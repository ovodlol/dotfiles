return {  "sschleemilch/slimline.nvim", 
  opts = {    
    bold = true,
    style = 'bg',

    components = {
      left = {
        'mode',
        'path',
        'git',
      },
      center = {},
      right = {
        'diagnostics',
        'filetype_lsp',
      },
    },

    configs = {
      mode = { 
        verbose = true 
      },
      path = {
        directory = false
      },
      git = {
        icons = {
          branch = '',
          added = '+',
          modified = '~',
          removed = '-',
        },
      },
    },
  }
}
