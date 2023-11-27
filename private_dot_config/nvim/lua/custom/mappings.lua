local M = {}
M.general = {
  n = {
    ["<leader>fc"] = {"<cmd> ene <CR>"},
    ["<leader>wss"] = {"<cmd> cd %:h <CR>"},
    ["<leader>wsr"] = {"<cmd> cd ~ <CR>"},
   }
}
M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
       function ()
        require('dap_python').test_method()
       end
    }
  }
}

M.telescope = {
  plugin = true,
  n = {
    ["<leader>fg"] = {
       function ()
        require('telescope.builtin').git_files()
       end
    }
  }
}


M.crates = {
  plugin = true,
  n = {
    ["<leader>rcu"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      "update crates"
    }
  }
}

return M
