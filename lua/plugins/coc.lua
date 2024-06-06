-- plugins/coc.lua
return {
    "neoclide/coc.nvim",
    branch = "release",
    event = "VeryLazy",
    config = function()
        local map = vim.api.nvim_set_keymap
        local options = { noremap = true, silent = true }
    
        -- Atajos de teclado para coc.nvim
        map('n', '<leader>gd', '<Plug>(coc-definition)', options)
        map('n', '<leader>gr', '<Plug>(coc-references)', options)
        map('n', '<leader>gi', '<Plug>(coc-implementation)', options)
        map('n', '<leader>rn', '<Plug>(coc-rename)', options)
        map('n', '<leader>ca', '<Plug>(coc-codeaction)', options)
        map('n', '<leader>h', '<Plug>(coc-hover)', options)
        map('n', '<leader>d', '<Plug>(coc-diagnostic)', options)
        map('n', '<leader>ds', '<Plug>(coc-diagnostic)', options)
        map('n', '<leader>ff', '<Plug>(coc-format)', options)

        
      end,
  }






  