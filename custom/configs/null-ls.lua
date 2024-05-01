local null_ls = require("null-ls")

local opts = {
  sources = {
    null_ls.builtins.diagnostics.mypy,
    null_ls.builtins.diagnostics.ruff,
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.rustywind,
    null_ls.builtins.formatting.prettier.with({
        filetypes = {"javascript", "typescript", "css", "scss", "json", "graphql", "markdown", "html", "yaml", "vue", "svelte", "rust"},
    }),
  }
}

return opts
