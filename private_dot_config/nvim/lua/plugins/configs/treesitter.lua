local options = {
  ensure_installed = { "lua" },
  -- Enable Netrw to make the 'gx' shortcut work
  disable_netrw = false,
  hijack_netrw = false,
  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}

return options
