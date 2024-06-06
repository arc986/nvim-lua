return {
    "nvim-telescope/telescope.nvim",
    opts = {
        defaults = {
            layout_strategy = "vertical",
            layout_config = {preview_cutoff = 6}
        }
    },
    dependencies = {
        {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-live-grep-args.nvim",
            version = "^1.0.0"
        }
    },
    config = function()
        vim.api.nvim_exec([[autocmd BufEnter * lcd %:p:h]], false)
        local map = vim.api.nvim_set_keymap
        local options = { noremap = true }
        map('n', '<C-f>', '<cmd>lua require("telescope.builtin").find_files()<cr>', options)
        map('n', '<C-g>', '<cmd>lua require("telescope.builtin").live_grep()<cr>', options)
        map('n', '<C-b>', '<cmd>lua require("telescope.builtin").buffers()<cr>', options)
        require("telescope").load_extension("live_grep_args")
        require("telescope").setup {
            defaults = {
                prompt_prefix = "🔍 ",
                selection_caret = "❯ ",
                sorting_strategy = "ascending",
                layout_strategy = "horizontal",
                layout_config = {
                    horizontal = {preview_width = 0.5},
                    width = 0.75,
                    height = 0.5
                },
                file_sorter = require("telescope.sorters").get_fuzzy_file,
                file_ignore_patterns = {
                    "*.git/*", "node_modules/*", "vendor/*", ".venv/*", "*.pyc",
                    "*.png", "*.jpg", "*.jpeg", "*.gif", "*.mp4", "*.mp3",
                    "*.ogg", "*.flac", "*.wav", "*.avi", "*.mkv", "*.webm",
                    "*.pdf", "*.doc", "*.docx", "*.xls", "*.xlsx", "*.ppt",
                    "*.pptx", "*.odt", "*.ods", "*.odp", "*.odg", "*.epub",
                    "*.zip", "*.tar.gz", "*.tar.bz2", "*.tar.xz", "*.rar",
                    "*.7z", "*.apk", "*.exe", "*.dmg", "*.iso", "*.img",
                    "*.bin", "*.msi", "*.deb", "*.rpm", "*.pkg", "*.app",
                    "*.dll", "*.so", "*.dylib", "*.class", "*.jar", "*.war",
                    "*.ear", "*.swf", "*.fla", "*.a", "*.lib", "*.obj", "*.o",
                    "*.out", "*.log", "*.tmp", "*.temp", "*.cache", "*.lock",
                    "*.sock", "*.swp", "lazy.vim/*", "__pycache__/*", "*.min.*",
                    "*.map", "*.svg", "*.ttf", "*.woff", "*.woff2", "*.eot",
                    "*.otf", "*.ico", "*.cur", "*.ani", "*.webp", "*.webm",
                    "*.webp", "*.weba", "*.webmanifest", "images/*", "fonts/*",
                },
                winblend = 0,
                border = {},
                borderchars = {
                    "─", "│", "─", "│", "┌", "┐", "┘", "└"
                },
                color_devicons = true,
                use_less = true
            }
        }
    end
}
