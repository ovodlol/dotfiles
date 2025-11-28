return {
  'catppuccin/nvim', name='catppuccin',
  opts={
    transparent_background = true, -- aplica fundo tranrente
    integrations={
      neotree = true,
      beacon = false,
      notify = false,
      fidget = false,
      render_markdown = true,
      mini = {
        enabled = true,
        indentscope_color = 'pink',
      },
      illuminate = {
        enabled = true,
        lsp = false
      },
      gitsigns = {
        enabled = true,
        transparent = true,
      }
    },
    custom_highlights = function(colors)
      return {
        Comment = { fg = colors.flamingo }, -- é para deixar os comentários mais legiveis
        TabLineSel = { bg = colors.surface2 },
        TabLine = { bg = colors.surface2 },
        CmpBorder = { fg = colors.surface1 },
        Pmenu = { fg=colors.flamingo, bg = colors.surface1 },
      }
    end
  } 
}



