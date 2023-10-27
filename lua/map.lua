-- which key maps
require("which-key").register {
    ["<leader>"] = {
	w = { "<cmd>w<cr>", "save file" },
	e = { "<cmd>Neotree toggle<cr>", "Toggle File Explorer" },
	T = { "Telescope" },
	Tf = { "<cmd>Telescope fd<cr>" , "Find" },
	l = { "LSP" },
	lt = { "<cmd>TroubleToggle<cr>", "Show diagnostics" }
    },
}
