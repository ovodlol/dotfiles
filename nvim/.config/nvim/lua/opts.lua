vcmd = vim.cmd

vcmd("set expandtab")
vcmd("set tabstop=2")
vcmd("set softtabstop=2")
vcmd("set shiftwidth=2")
vim.opt.laststatus = 3

vim.o.wildmenu = true
vim.o.wildmode = 'longest:full,full'

require 'keymaps'
require 'lsp'
