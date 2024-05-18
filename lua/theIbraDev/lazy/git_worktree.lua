return {
    "theIbraDev/git-worktree.nvim",
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = function ()
        -- Defaults
        require("git-worktree").setup({
            change_directory_command = "cd", -- default: "cd", alt "tcd".
            update_on_change = true, -- default: true,
            update_on_change_command = "e .", -- default: "e .",
            clearjumps_on_change = true, -- default: true,
            autopush = true -- default: false,
        })
    end
}
