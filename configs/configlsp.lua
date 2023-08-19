local config = require("plugins.configs.lspconfig")

local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
  on_attach = config.on_attach,
  capabilities = config.capabilitie,
  filetypes = {"python"}
})

local util = require("lspconfig/util")
lspconfig.gopls.setup {
  on_attach = config.on_attach,
  capabilities = config.capabilities,
  cmd = {"gopls"},
  filetypes = {"go", "gomod", "gowork", "gotmpl"},
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true
      },
      staticcheck = true,
    }
  }
}
