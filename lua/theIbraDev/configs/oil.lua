require("oil").setup({
	default_file_explorer = false,
	columns = { "icon" },
	keymaps = {
		["<C-h>"] = false,
		["<M-h>"] = "actions.select_split",
	},
	view_options = {
		show_hidden = true,
	},
})

--      -- Open parent directory in current window
--      vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

--    -- Open parent directory in floating window
vim.keymap.set("n", "<Leader>-", require("oil").toggle_float)
