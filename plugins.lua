local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "pyright",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.configlsp"
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
    },
    opts = {
      defaults = {
        path_display = {shorten = 3},
        prompt_prefix = "> ",
      },
      extensions_list = {"fzf", "terms", "themes"},
    },

  },
  {
    "NvChad/nvterm",
    config = function()
      require("nvterm").setup({
        terminals = {
          type_opts = {
            float = {
              width = 0.75,
              height = 0.75,
              row = 0.1,
              col = 0.1,
              border =  "double",
            }
          }
        }
      })
    end
  }
}
return plugins
