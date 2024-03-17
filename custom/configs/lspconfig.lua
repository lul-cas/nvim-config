local config = require("plugins.configs.lspconfig")
local on_attach = config.on_attach
local capabilities = config.capabilities
local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
  init_options = {
    disableSuggestions = false,
  }
})

lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true,
    }
  }
})

lspconfig.omnisharp.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"omnisharp", "--languageserver", "--hostPID", tostring(vim.fn.getpid())}
})

lspconfig.roslyn.setup({
  dotnet_cmd = "dotnet",
  roslyn_version = "4.8.0-3.23475.7",
  on_attach = on_attach,
  capabilities = capabilities
})
