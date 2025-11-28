return {
  "roobert/activate.nvim",
  keys = {
    {
      "<leader>ac",
      '<CMD>lua require("activate").list_plugins()<CR>',
      desc = "Plugins",
    },
  },
  dependencies = {
    { 'nvim-telescope/telescope.nvim' }
  }
}
