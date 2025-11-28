vim.lsp.start({
  name = 'gopls',
  cmd = {'gopls', 'serve'},
  root_dir = vim.fs.find({'go.mod'}, { upward = true })[1],
  capabilities = require('mini.completion').get_lsp_capabilities(),
})

vim.diagnostic.config({ virtual_text = false})
