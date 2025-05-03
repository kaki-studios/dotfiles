require("nvchad.configs.lspconfig").defaults()

local servers = {
  html = {},
  cssls = {},
  gopls = {},
  rust_analyzer = {},
  pyright = {}
}



for name, opts in pairs(servers) do
  vim.lsp.enable(name)  -- nvim v0.11.0 or above required
  vim.lsp.config(name, opts) -- nvim v0.11.0 or above required
end
