local config = require("plugins.configs.lspconfig")
local on_attach = config.on_attach
local capabilities = config.capabilities
local lspconfig = require("lspconfig")

vim.filetype.add({
  extension = {
    twig = "html"
  }
})

lspconfig.intelephense.setup({
    settings = {
        intelephense = {
            files = {
                maxSize = 5000000,
            },
        },
    },
})

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

if not lspconfig.rust_analyzer then
  config.rust_analyzer = {
    default_config = {
      cmd = { "rust-analyzer" },
      filetypes = { "rust" },
      root_dir = lspconfig.util.root_pattern("Cargo.toml", "rust-project.json"),
      settings = {
        ["rust-analyzer"] = {
          checkOnSave = {
            command = "clippy"
          };
        };
      };
    };
  };
end

lspconfig.clangd.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "clangd", "--background-index" }
})
