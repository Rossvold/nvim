return {
        'nvim-telescope/telescope.nvim',
        dependencies = { 
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-ui-select.nvim',
        },

    config = function()
        require('telescope').setup{
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown {
                        -- even more opts
                    }
                }
            }
        }

        require("telescope").load_extension("ui-select")

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<C-p>', builtin.find_files, {})
        vim.keymap.set('n', '<leader>tx', builtin.commands, {})
        vim.keymap.set('n', '<leader>tc', builtin.git_commits, {})
        vim.keymap.set('n', '<leader>ts', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") });
        end)

        -- Branch only
        vim.keymap.set('n', '<leader>tb', builtin.git_branches, {})
        -- Worktree only
        --vim.keymap.set('n', '<leader>tw', "<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>")
        --vim.keymap.set('n', '<leader>tW', "<CMD>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>")

    end
}
