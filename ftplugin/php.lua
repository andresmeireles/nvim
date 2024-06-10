vim.cmd("set iskeyword+=\\$")

local wk = require("which-key")

wk.register {
  ["<leader>"] = {
    p = {
      name = 'phpactor',
      p = { "<cmd>PhpActor<cr>", "actions" },
      n = { "<cmd>PhpActor new_class<cr>", "create a new class/enum/interface/trait" }
    }
  }
}
