local nmap = function(map, command)
	vim.keymap.set("n", map, command, {})
end

nmap("<C-Left>", "<cmd>lua require('smart-splits').resize_left()<cr>")
nmap("<C-Right>", "<cmd>lua require('smart-splits').resize_right()<cr>")

-- which key maps
require("which-key").register {
	["<leader>"] = {
		c = { "<cmd>Bdelete<cr>", "close buffer" },
		w = { "<cmd>w<cr>", "save file" },
		q = { "<cmd>q<cr>", "close editor" },
		e = { "<cmd>Neotree toggle<cr>", "Toggle File Explorer" },
		-- e = { "<cmd>NvimTreeToggle<cr>", "Toggle File Explorer" },
		t = {
			name = "-> Terminal",
			t = { "<cmd>ToggleTerm<cr>", "bottom" },
			f = { "<cmd>ToggleTerm direction=float<cr>", "floating" }
		},
		H = { "<cmd>lua require('hlargs').toggle()<cr>", "highlight args" },
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
		G = {
			name = "-> GIT",
			b = { "<cmd>Gitsigns toggle_current_line_blame<cr>", "toggle inline blame" },
			u = { "<cmd>Gitsigns reset_hunk<cr>", "undo alteration" },
			l = { "<cmd>LazyGit<cr>", "lazygit" },
		}
	},
}
