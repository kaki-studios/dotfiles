require "core"

local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

if custom_init_path then
  dofile(custom_init_path)
end

require("core.utils").load_mappings()

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

-- bootstrap lazy.nvim!
if not vim.loop.fs_stat(lazypath) then
  require("core.bootstrap").gen_chadrc_template()
  require("core.bootstrap").lazy(lazypath)
end

dofile(vim.g.base46_cache .. "defaults")
vim.opt.rtp:prepend(lazypath)
require "plugins"
vim.opt.clipboard = 'unnamedplus'

vim.wo.wrap = false

-- if vim.g.neovide then
--   vim.g.neovide_transparency = 0.75
--   vim.g.neovide_scroll_animation_length = 0.25
--   vim.g.neovide_refresh_rate = 144
--   vim.g.neovide_scale_factor = 1.0
--   vim.g.neovide_cursor_animation_length = 0.1
--   vim.g.neovide_cursor_trail_size = 0.5
--   vim.g.neovide_cursor_animate_command_line = true
-- end
