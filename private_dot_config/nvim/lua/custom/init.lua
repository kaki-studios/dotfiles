vim.g.dap_virtual_text = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.o.guifont = "Fira Code:h14"
local enable_providers = {
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
}
for _, plugin in pairs(enable_providers) do
  vim.g["loaded_" .. plugin] = nil
  vim.cmd("runtime " .. plugin)
end
