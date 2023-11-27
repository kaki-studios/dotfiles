-- vim.g.dashboard_default_executive = 'telescope' (it's default already)
local db = require("dashboard")

db.setup({
  theme = 'doom',
  config = {
    header = {

      '',
      '',
      '',
      '',
      '',
      '',
      'kkkkkkkk                           kkkkkkkk             iiii  ',
      'k::::::k                           k::::::k            i::::i ',
      'k::::::k                           k::::::k             iiii  ',
      'k::::::k                           k::::::k                   ',
      ' k:::::k    kkkkkkkaaaaaaaaaaaaa    k:::::k    kkkkkkkiiiiiii ',
      ' k:::::k   k:::::k a::::::::::::a   k:::::k   k:::::k i:::::i ',
      ' k:::::k  k:::::k  aaaaaaaaa:::::a  k:::::k  k:::::k   i::::i ',
      ' k:::::k k:::::k            a::::a  k:::::k k:::::k    i::::i ',
      ' k::::::k:::::k      aaaaaaa:::::a  k::::::k:::::k     i::::i ',
      ' k:::::::::::k     aa::::::::::::a  k:::::::::::k      i::::i ',
      ' k:::::::::::k    a::::aaaa::::::a  k:::::::::::k      i::::i ',
      ' k::::::k:::::k  a::::a    a:::::a  k::::::k:::::k     i::::i ',
      'k::::::k k:::::k a::::a    a:::::a k::::::k k:::::k   i::::::i',
      'k::::::k  k:::::ka:::::aaaa::::::a k::::::k  k:::::k  i::::::i',
      'k::::::k   k:::::ka::::::::::aa:::ak::::::k   k:::::k i::::::i',
      'kkkkkkkk    kkkkkkkaaaaaaaaaa  aaaakkkkkkkk    kkkkkkkiiiiiiii',
      '',
      '',



    }, --your header
    center = {
      {
        icon = ' ',
        icon_hl = 'Title',
        desc = 'Find File           ',
        desc_hl = 'String',
        keymap = 'SPC f f',
        key = '1',
        key_hl = 'Number',
        key_format = ' (%s)', -- remove default surrounding `[]`
        action = 'Telescope find_files',
      },
      {
        icon = ' ',
        icon_hl = 'Title',
        desc = 'Recent Files',
        desc_hl = 'String',
        keymap = 'SPC f o',
        key = '2',
        key_hl = 'Number',
        key_format = ' (%s)',
        action = 'Telescope oldfiles',
      },
      {
        icon = ' ',
        icon_hl = 'Title',
        desc = 'New file',
        desc_hl = 'String',
        keymap = 'SPC f c',
        key = '3',
        key_hl = 'Number',
        key_format = ' (%s)',
        action = ':ene',
      }
    },
    footer = {}  --your footer
  }
})
