-- which key maps
require("which-key").register {
    ["<leader>"] = {
	w = { "<cmd>w<cr>", "save file" },
	q = { "<cmd>q<cr>", "close editor" },
	e = { "<cmd>Neotree toggle<cr>", "Toggle File Explorer" },
	T = { "-> Telescope" },
	Tf = { "<cmd>Telescope fd<cr>" , "Find" },
	lt = { "<cmd>TroubleToggle<cr>", "Show diagnostics" },
	g = {
	    name = "-> LSP ",
	    d = { gd, "go to definition"},
	    r = { gr, "rename" },
	    a = { ga, "code action" },
	    i = { gi, "go to implementation" },
	    R = { gR, "go to references" },
	    K = { gk, "Hover documentation" },
	    k = { gK, "Signature help"}
	},
    },
}
