return{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        require("neo-tree").setup({
            source_selector = {
                winbar = true,
                statusline = true
            }
        })
        vim.api.nvim_exec([[autocmd BufEnter * lcd %:p:h]], false)
        local map = vim.api.nvim_set_keymap
        local options = { noremap = true }
        map('n', '<C-h>', '<cmd>:Neotree float<cr>', options)
    end
}