require("nvchad.configs.lspconfig").defaults()

local servers = {
  html = {},
  cssls = {},
  gopls = {},
  rust_analyzer = {},
  pyright = {},
  zls = {
    cmd = {
      "/home/kaki/Documents/custom_zls/zls",
    },
    enable_build_on_save = true,
    build_on_save_step = "check",
  },
  clangd = {
    cmd = {
      "clangd",
      "--background-index",
      "--compile-commands-dir=build", --Point to your build dir
      "--query-driver=/usr/bin/clang++",
    },
    filetypes = { "c", "cpp", "h", "hpp" },
  },
}

for name, opts in pairs(servers) do
  vim.lsp.enable(name) -- nvim v0.11.0 or above required
  vim.lsp.config(name, opts) -- nvim v0.11.0 or above required
end
