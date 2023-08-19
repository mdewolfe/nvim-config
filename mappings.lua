local M = {}
M.general = {
  n = {
    ["<Esc>"] = { "<cmd>noh <BAR> echo expand('%:p:h') <CR>", "Clear highlights", "", opts = { noremap = true } },
    ["<C-h>"] = {"<cmd>TmuxNavigateLeft<CR>", "window left"},
    ["<C-l>"] = {"<cmd>TmuxNavigateRight<CR>", "window right"},
    ["<C-k>"] = {"<cmd>TmuxNavigateUp<CR>", "window down"},
    ["<C-j>"] = {"<cmd>TmuxNavigateDown<CR>", "window down"},

    ["<leader>fr"] = {"<cmd>Telescope lsp_references<CR>", "", opts = {noremap = true } },
    ["<leader>td"] = {"<cmd>Telescope diagnostics<CR>", "Open Telescope diagnotics"},
    ["<leader>gb"] = {"<cmd>Telescope git_branches<CR>", "Open git branches", opts = { noremap = true } },

    ["<A-k>"] = {"<cmd>move-2<CR>==", "moves line up"},
    ["<A-j>"] = {"<cmd>move+1<CR>==", "moves line down"},
  },

  x = {
    ["<A-j>"] = {":move '>+<CR>gv=gv", "moves line down", opts = { noremap = true } },
    ["<A-k>"] = {":move -2<CR>gv=gv", "move selected lines up", opts = { noremap = true } },
  }
}

return M
