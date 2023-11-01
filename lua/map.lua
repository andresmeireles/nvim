-- which key maps
require("which-key").register {
	["<leader>"] = {
		c = { "<cmd>Bdelete<cr>", "close buffer" },
		w = { "<cmd>w<cr>", "save file" },
		q = { "<cmd>q<cr>", "close editor" },
		e = { "<cmd>NvimTreeToggle<cr>", "Toggle File Explorer" },
		t = {
			name = "-> Terminal",
			t = { "<cmd>ToggleTerm<cr>", "bottom" },
			f = { "<cmd>ToggleTerm direction=float<cr>", "floating" }
		},
		T = { "-> Telescope" },
		Tf = { "<cmd>Telescope fd<cr>", "Find" },
		lt = { "<cmd>TroubleToggle<cr>", "Show diagnostics" },
		g = {
			name = "-> LSP ",
			d = { gd, "go to definition" },
			r = { gr, "rename" },
			a = { ga, "code action" },
			i = { gi, "go to implementation" },
			R = { gR, "go to references" },
			K = { gk, "Hover documentation" },
			k = { gK, "Signature help" }
		},
	},
}
