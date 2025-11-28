return { "vigoux/notifier.nvim", 
  opts ={
    ignore_messages = {},
    status_width = 40, 
    components = {  
      "nvim",
      "lsp"  
    },
    notify = {
      clear_time = 5000,
      -- min_level = vim.log.levels.INFO, 
    },
    component_name_recall = false, 
    zindex = 50, 
  },
}
