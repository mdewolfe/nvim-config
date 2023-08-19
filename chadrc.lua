--@type ChadrcConfig
local M = {}

M.plugins = "custom.plugins"

M.ui = {
  theme = 'catppuccin',
  hl_override = require("custom.configs.colours"),
  telescope = {style = "bordered"},
  nvdash = { load_on_startup = true },
  statusline = {
    separator_style = "round",
  },
}

M.mappings = require("custom.mappings")

return M
